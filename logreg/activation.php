<?php
include_once('connection.php');

if (isset($_REQUEST['code'])) {
    $code = $_REQUEST['code'];
    $email = $_REQUEST['email'];
    $query = "update users set status='1' where email='$email' and code='$code'";
    if (mysqli_query($conn, $query)) {
        header("Location:http://localhost/github/tourist");
        exit();
    }
}
