function validateForm() {
	var x;
	x = document.forms["addUserForm"]["user_id"].value;
	if (x == null || x == "") {
		alert("User Id cannot be blank");
		return false;
	}
	x = document.forms["addUserForm"]["f_name"].value;
	if (x == null || x == "") {
		alert("First Name cannot be blank");
		return false;
	}
	x = document.forms["addUserForm"]["l_name"].value;
	if (x == null || x == "") {
		alert("Last Name cannot be blank");
		return false;
	}
	x = document.forms["addUserForm"]["password"].value;
	if (x == null || x == "") {
		alert("Password cannot be blank");
		return false;
	}
	x = document.forms["addUserForm"]["mobile_number"].value;
	if (x == null || x == "") {
		alert("Mobile Number cannot be blank");
		return false;
	}
	x = document.forms["addUserForm"]["dob"].value;
	if (x == null || x == "") {
		alert("Date of Birth cannot be blank");
		return false;
	}
	x = document.forms["addNewProject"]["project_name"].value;
	if (x == null || x == "") {
		alert("Project name cannot be blank");
		return false;
}
}