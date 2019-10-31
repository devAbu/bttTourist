<?php
include_once('connection.php');

$registerName = mysqli_real_escape_string($conn, ($_REQUEST['register-name']));
$registerEmail = mysqli_real_escape_string($conn, ($_REQUEST['register-email']));
$registerPhone = mysqli_real_escape_string($conn, ($_REQUEST['register-phone']));
$registerPassword = password_hash(mysqli_real_escape_string($conn, ($_REQUEST['register-password'])), PASSWORD_DEFAULT);


$status = 0;
$vals = "";
$code = password_hash(date("Y-m-d h:i:sa") . $registerPassword, PASSWORD_DEFAULT);

$check = "SELECT * FROM `users` WHERE `name`='$registerName' AND email='$registerEmail'";
$result_check = mysqli_query($conn, $check);


if (mysqli_num_rows($result_check) != 0) {
    $vals = "user";
} else {
    if (!preg_match('/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/',  $registerEmail, $matches)) {
        $vals = "email";
    } else {
        $sql = "INSERT INTO users (`name`, `email`, `phone`, `password`, `code`, `status`) VALUES ('$registerName', '$registerEmail', '$registerPhone', '$registerPassword', '$code', 0)";
        $response = @mysqli_query($conn, $sql);
        if ($response) {
            //auth mail          
            $to = $registerEmail;
            $subject = "Activation Code For BTT";
            $from = 'noreply@btt.com';
            $body = 'Please Click On This link <a href="http://localhost/tourist/logreg/activation.php?email=' . $to . '&code=' . $code . '"> ACTIVATE </a>to activate  your account.';
            $headers = "From:" . $from;
            if (mail($to, $subject, $body, $headers)) {
                $vals = "success";
            }
        } else {
            echo mysqli_error($conn);
            $vals = "error";
        }
    }
}

echo $vals;
