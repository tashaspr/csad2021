var xmlhttp;
var category;

// when the HTML page loads get the Ajax data
window.onload=function(){
	// (4) add an event handler to call getAjaxData() each time a change occurs in the dropdown box
	getAjaxData();
}

function getAjaxData()
{	
	xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange = showData;  // when we get a RESPONSE from the server show the data

	// This is the Ajax REQUEST to the the server.  
	// It runs a PHP program (games.php) on server.  It will return JSON data

	// (1)
	xmlhttp.open("GET", "games.php", true);  

	// (2)
	// xmlhttp.open("GET", "games.php?category=1", true);  

	// (3)
	// category=2;
	// xmlhttp.open("GET", "games.php?category="+category, true); 

	// (4)
	// category=???
	// xmlhttp.open("GET", "games.php?category="+category, true); 


	xmlhttp.send();	
}

function showData()
{
	if (xmlhttp.readyState==4 && xmlhttp.status==200)	
	{		
		// converts string received into JS objects and puts them in data array		
		var data = JSON.parse(xmlhttp.responseText);	
		console.log(data);	

		// create HTML <table> for each game
		var output = '<table border=1>';   
		output += '<tr><th>Date</th><th>Team 1</th><th>Team 2</th></tr>';                  
		for (var i = 0; i < data.games.length; i++) {			
			output += '<tr>';
			output += '<td>' + data.games[i].datetime + '</td>';
			output += '<td>' + data.games[i].team1 + '</td>';
			output += '<td>' + data.games[i].team2 + '</td>';
			output += '</tr>';
		}
		output += '</table>';

		// put HTML table into div in HTML page
		document.getElementById("myDiv").innerHTML = output;            
	}
}
