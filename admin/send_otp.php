<?php
require_once("../include/initialize.php");
require_once("otp_functions.php"); // Custom file for sending email/SMS

if (isset($_POST['email_or_contact'])) {
    $input = $_POST['email_or_contact'];
    $otp = generateOTP(); // Function to generate a 6-digit OTP
    $expiry_time = date('Y-m-d H:i:s', strtotime('+15 minutes')); // OTP expires in 15 minutes
    
    // Store the OTP in the database
    $sql = "INSERT INTO password_resets (email, otp, expires_at) VALUES ('$input', '$otp', '$expiry_time')";
    $mydb->setQuery($sql);
    $mydb->executeQuery();

    // Send OTP via email or SMS
    sendOTPEmail($input, $otp); // Custom function to send OTP via email
    sendOTPSMS($input, $otp);   // Custom function to send OTP via SMS

     // Redirect to OTP entry page
     header("Location: verify_otp.php?email=" . urlencode($input));
     exit();


    echo "OTP has been sent to your email and phone.";
}
?>
