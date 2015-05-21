	var Params = window.location.toString();
	var parametr = Params.split("&");
	
	document.write("<div style='width:350px;margin:0 auto;background-color:White;padding:10px 10px 10px 10px;border:6px solid #B8B8B8;font-size:18px;-webkit-box-shadow: 0 0 5px#888;-moz-border-radius: 5px; border-radius: 5px;margin-top:50px'>");

	var pole1 = parametr[0].split("?");
	var name = pole1[1].split("=");
	
	
	
	document.write("Hello, <strong> " + name.replace("name,","") + "</strong>!");
	
	var i = 0;
	var values= new Array(); 
	var k=0;
	
	for(i = 1; i < parametr.length; i++) 
	{
		var temp = "";
		temp = parametr[i].split("=");
		values[i-1]=temp[1];
	}
	
	var parts_birth = values[5].split("-");
	var day = parts_birth[0];
	var month = parts_birth[1]; 
	
	var d = new Date();
	var current_date = d.getDate(); 
	var current_month = d.getMonth(); 
	var otr_m = current_date + (current_month+1)*30; 
	month= ~~month; 
	day= ~~day;
	var otr_user = day + month*30; 
	if (otr_m < otr_user) 
	{
		var answer = otr_user - otr_m;
		document.write("<br> How many days left before the birthday: <i>" + answer + "</i></p>");
	}
	else if (otr_m > otr_user)
	{
		var answer = otr_user - otr_m;
		 answer = answer*(-1);
		answer = answer - 365;
		answer = answer*(-1);
		document.write("<br> How many days left before the birthday: <i>" + answer + "</i></p>");
	}
	else
	{
		document.write("<br><em><strong><span style='color:#FF05A3'>DAte of Birth!</p></strong></em></p>");
	}

	
	document.write("<br><span style='color:Red;font-weight:bold'>Other Information: </span><br>");
	document.write("<br><b>Second Name</b>: " + values[0]);
	document.write("<br><b>Password</b>: " + values[1]);
	var part_em = values[3].split("%40");
	document.write("<br><b>Email</b>: " + part_em[0] + "@" + part_em[1]);
	document.write("<br><b>Sex</b>: " + values[4]);
	document.write("<br><b>Date of Birth</b>: " + values[5]);
	document.write("<br><b>Coutry</b>: " + values[6]);
	document.write("</div>");