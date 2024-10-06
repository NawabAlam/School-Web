<?php
$conn = mysqli_connect('localhost','root','',);

mysqli_select_db($conn, 'jss_database1');

$full_name = $_POST['full_name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];

$s = "select * from contact where full_name = $full_name";

$result = mysqli_query($conn, $s);

$num = ($result);

$sql = "INSERT INTO contact(full_name,email,phone,subject,message)
VALUES('$full_name','$email',$phone,'$subject','$message')";
mysqli_query($conn, $sql);

if($conn->query(sql)=== TRUE) {
  echo '<script>alert("Query Recieved")</script>';
} else {
  header("Location: http://localhost/JSS/contact.html", TRUE, 301);


}



?>
