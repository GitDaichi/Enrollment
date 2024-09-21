<!-- forgot_password.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
</head>
<body>
    <form method="post" action="send_otp.php">
        <label for="email">Enter your Email or Contact Number:</label>
        <input type="text" name="email_or_contact" id="email" required>
        <button type="submit">Send OTP</button>
    </form>
</body>
</html>
