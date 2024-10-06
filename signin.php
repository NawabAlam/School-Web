<?php
$username = $_POST['username'];
$password = $_POST['password'];

// Database connection here
$conn = new mysqli("localhost","root","","jss_database");
if($conn->connect_error) {
    die("Failed to connect : " .$conn->connect_error);
} else {
    $stmt = $conn->prepare("select * from registration where username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt_result = $stmt->get_result();
    if($stmt_result->num_rows > 0) {
        $data = $stmt_result->fetch_assoc();
        if($data['password'] === $password){
            header("Location:  http://localhost/JSS/logout.html", TRUE, 301);
        } else {
            echo "<h2>Invalid Username or Password</h2>";

           
        }
    }

}

?>