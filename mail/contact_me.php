<?php
//error_reporting(-1);
//ini_set('display_errors', 'On');
//set_error_handler("var_dump");

// Check for empty fields
/* if (empty($_REQUEST['name']) || empty($_POS_REQUESTT['email']) || empty($_REQUEST['phone']) || empty($_REQUEST['message']) || !filter_var($_REQUEST['email'], FILTER_VALIDATE_EMAIL)) {
  http_response_code(500);
  exit();
} */

$name = strip_tags(htmlspecialchars($_REQUEST['name']));
$email = strip_tags(htmlspecialchars($_REQUEST['email']));
$phone = strip_tags(htmlspecialchars($_REQUEST['phone']));
$message = strip_tags(htmlspecialchars($_REQUEST['message']));

// Create the email and send the message
$to = "abdulrahman.almonajed@gmail.com";
$subject = "Website Contact Form:  $name";

$body = "You have received a new message from your website contact form.\n\n" . "Here are the details:\n\nName: $name\n\nEmail: $email\n\nPhone: $phone\n\nMessage:\n$message";

$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$headers .= "From: " . $email;


if (mail($to, "$subject", $body, $headers)) {
  echo ('sent');
} else {
  echo ('nije poslan mail');
}
/* if(!mail($to, $subject, $body, $header))
  http_response_code(500); */
