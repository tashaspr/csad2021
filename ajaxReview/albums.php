<?php

// This PHP program is expecting a artist_id argument.  Uses it in MySQL query below.
$artist_id = $_GET['artist_id'];

$connection = mysqli_connect("localhost","root","");
mysqli_select_db($connection,"music");
$result = mysqli_query($connection,"select * from album WHERE artist_id=$artist_id");

$rs = array();
$i=0;
while($rs[] = mysqli_fetch_assoc($result)) {
// do nothing ;-)
}
mysqli_close($connection);
unset($rs[count($rs)-1]);  //removes a null value


// This is RESPONSE to the Ajax REQUEST made
print("{ \"albums\":" . json_encode($rs) . "}");


// you can return more than one list of JSON data
//print("{ \"artists\":" . json_encode($rs) . " , \"artists2\":" . json_encode($rs) . "}");
?>