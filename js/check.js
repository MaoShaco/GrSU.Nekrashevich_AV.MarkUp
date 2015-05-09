function check(element)
{	
	var return_value = true;
	var error_msg = "You must check next fields:\n";
	var reg_mail = /[0-9a-z_]+@[0-9a-z_^.]+.[a-z]{2,3}/i;
	var reg_date = /(\d{2}\-){2}\d{4}/;
	var reg_sender = /[a-z]+/i;

	var mail = element.mail.value;
	var name = element.name.value;
	var date = element.birth.value;
	var surname = element.surname.value;	  

	if(reg_sender.exec(name) == null && name =="")
	{
		error_msg += "Х Name\n";
		return_value = false; 
	}

	if(reg_mail.exec(mail) == null)
	{
		error_msg += "Х E-mail\n";
		return_value = false;
	}

	if(reg_sender.exec(surname) == null || surname =="")
	{
		error_msg += "Х Surname\n";
		return_value = false;
	}
	
	if(reg_date.exec(date) == null || date =="")
	{
		error_msg += "Х Date\n";
		return_value = false;
	}
	
	if (document.forms["form1"].elements["password"].value == "" || document.forms["form1"].elements["password"].value == null ||
	document.forms["form1"].elements["rpassword"].value == "" || document.forms["form1"].elements["rpassword"].value == null
	) 
	{
		error_msg += "Х Password and confirm password\n";
		return_value = false;
	}
	else if (document.forms["form1"].elements["password"].value != document.forms["form1"].elements["rpassword"].value) // провер€ем чтобы пол€ password и rpassword совпадали
	{
		error_msg += "Х Password confirm password not equal!\n";
		return_value = false;
	}

	if(!return_value)
	{
		alert(error_msg);
	}
	  
	return return_value;
}