<?php

$db = mysqli_connect('localhost','localconnect','localserver');
if (!$db)
{

    echo 'Connection State is successful'
}

$username = $_POST['$username'];
$password = $_POST['$PASSWORD'];


$sql = SELECT * FROM users WHERE username = '"$username"' and password = '"$password"';
$result = mysqli_query ($db, $sql);
$count = mysqli_num_rows($result);

//To show it database connection is successful

if($count >= 1)
{

    echo 'Connection  to database is successful'
}

else
{

    echo 'Connection error'
}

?>