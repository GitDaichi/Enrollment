<?php
require_once("../include/initialize.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the submitted email and new password
    $email = $_POST['email'] ?? '';
    $new_password = $_POST['new_password'] ?? '';

    // Validate inputs
    if (empty($email) || empty($new_password)) {
        echo "Email and new password are required.";
        exit;
    }

    // Hash the new password
    $hashed_password = password_hash($new_password, PASSWORD_BCRYPT);

    // Update the password in the database
    $sql = "UPDATE users SET password = :password WHERE email = :email";
    $stmt = $mydb->prepare($sql);
    $stmt->bindParam(':password', $hashed_password);
    $stmt->bindParam(':email', $email);
    
    if ($stmt->execute()) {
        echo "Password has been reset successfully.";
        // Optionally redirect to a login page or another page
        header("Location: login.php");
        exit();
    } else {
        echo "Failed to update password.";
    }
} else {
    // If the request method is not POST, show an error
    echo "Invalid request.";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
</head>
<body>
    <form method="post" action="reset_password.php">
        <input type="hidden" name="email" value="<?php echo htmlspecialchars($_GET['email'] ?? '', ENT_QUOTES, 'UTF-8'); ?>">

        <label for="new_password">New Password:</label>
        <input type="password" name="new_password" id="new_password" required>

        <button type="submit">Reset Password</button>
    </form>
</body>
</html>
