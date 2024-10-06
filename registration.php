<?php
$conn = mysqli_connect('localhost','root','',);

mysqli_select_db($conn, 'jss_database');

$full_name = $_POST['full_name'];
    $Email = $_POST['Email'];
    $father = $_POST['father'];
    $username = $_POST['username'];
    $password = $_POST['password'];

$s = "select * from registration where full_name = $full_name'";

$result = mysqli_query($conn, $s);

$num = ($result);

if($num == 5) {
    echo "Username Already Taken";
} else {
    $sql = "INSERT INTO registration(full_name,Email,father,username,password) 
VALUES('$full_name','$Email','$father','$username','$password')";
mysqli_query($conn, $sql);
header("Location: http://localhost/JSS/signin.html", TRUE, 301);
}

  

?>