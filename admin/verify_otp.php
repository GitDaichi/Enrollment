<?php
require_once("../include/initialize.php");
require_once("otp_functions.php"); // Custom file for sending email/SMS

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $otp = $_POST['otp'];

    // Debugging output

    // Query to find the OTP for the given email that has not expired and has not been used
    $sql = "SELECT * FROM password_resets WHERE email = '$email' AND otp = '$otp' AND expires_at > NOW() AND is_used = 0";
    $mydb->setQuery($sql);
    $result = $mydb->loadSingleResult(); // Adjusted method based on your previous code

    // Debugging output

    if ($result) {
        // OTP is valid
        echo "OTP is valid!";

        // Optionally, mark OTP as used
        $update_sql = "UPDATE password_resets SET is_used = 1 WHERE id = '{$result->id}'";
        $mydb->setQuery($update_sql);
        $mydb->executeQuery();

        // Redirect to the password reset page
        header("Location: reset_password.php");
        exit(); // Ensure no further code is executed
    } else {
        // OTP is invalid or expired
        
    }
} else {
    echo "Email or OTP not set.";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify OTP</title>
</head>
<body>
    <form method="post" action="verify_otp.php">
        <input type="hidden" name="email" value="<?php echo htmlspecialchars($_GET['email'] ?? '', ENT_QUOTES, 'UTF-8'); ?>">

        <label for="otp">Enter OTP:</label>
        <input type="text" name="otp" id="otp" required>
        <button type="submit">Verify OTP</button>
    </form>
</body>
</html>
