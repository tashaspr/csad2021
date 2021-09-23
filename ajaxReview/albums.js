var xmlhttp;

// when the HTML page loads get the Ajax data
window.onload=function(){
	getAjaxData();
}

function getAjaxData()
{	
	xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange = showData;  // when we get a RESPONSE from the server show the data

	// This is the Ajax REQUEST to the the server.  Passing argument and value: album_id=1
	// It runs a PHP program (albums.php) on server.  It will return JSON data
	xmlhttp.open("GET", "albums.php?artist_id=1", true);  
	xmlhttp.send();	
}

function showData()
{
	if (xmlhttp.readyState==4 && xmlhttp.status==200)	
	{		
		// converts string received into JS objects and puts them in data array		
		var data = JSON.parse(xmlhttp.responseText);	
		console.log(data);	

		// create HTML <table> for each album
		// ...
		// ...
		// ...
		// ...
		// ...
		// ...
		// ...
		// ...		

		// put HTML table into div in HTML page
		document.getElementById("myDiv").innerHTML = output;            
	}
}
