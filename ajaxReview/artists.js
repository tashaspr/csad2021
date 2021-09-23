var xmlhttp;

// when the HTML page loads get the Ajax data
window.onload=function(){
	getAjaxData();
}

function getAjaxData()
{	
	xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange = showData;  // when we get a RESPONSE from the server show the data

	// This is the Ajax REQUEST to the the server
	// It runs a PHP program (artists.php) on server.  It will return JSON data
	xmlhttp.open("GET", "artists.php", true);  
	xmlhttp.send();	
}

function showData()
{
	if (xmlhttp.readyState==4 && xmlhttp.status==200)	
	{		
		// converts string received into JS objects and puts them in data array		
		var data = JSON.parse(xmlhttp.responseText);	
		console.log(data);	

		// create HTML <table> for each artist
		var output = '<table border=1>';   
		output += '<tr><th>Artist Name</th></tr>';                  
		for (var i = 0; i < data.artists.length; i++) {			
			output += '<tr>';
			output += '<td>' + data.artists[i].artist_name + '</td>';
			output += '</tr>';
		}
		output += '</table>';

		// put HTML table into div in HTML page
		document.getElementById("myDiv").innerHTML = output;            
	}
}
