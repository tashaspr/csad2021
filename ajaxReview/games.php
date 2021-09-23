<?php

// (2)
// $category = $_GET['category'];


$connection = mysqli_connect("localhost","root","");
mysqli_select_db($connection,"gaa2013");


// (1)
$result = mysqli_query($connection,"select * from games");

//OR

// (2)
// $result = mysqli_query($connection,"select * from games where category = $category");



$rs = array();
$i=0;
while($rs[] = mysqli_fetch_assoc($result)) {
// do nothing ;-)
}
mysqli_close($connection);
unset($rs[count($rs)-1]);  //removes a null value


// This is RESPONSE to the Ajax REQUEST made
print("{ \"games\":" . json_encode($rs) . "}");


// you can return more than one list of JSON data
//print("{ \"artists\":" . json_encode($rs) . " , \"artists2\":" . json_encode($rs) . "}");
?>