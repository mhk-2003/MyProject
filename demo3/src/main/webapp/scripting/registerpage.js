
function confromvalidation()
{
		if(passwordcheck() && emailcheck() && cf() && usernamecheck() && namecheck())
		  register();
		else
		alert('check the incorrect fileds!');
}
function cf()
{
	var p1 = document.getElementById('password').value;
	    var p2 = document.getElementById('cpd').value;
	    if(p1===p2)
		return true;
		else
		return false;
}
function emailcheck()
{
	var email = document.getElementById("email").value;
	if (email === "" || !email.includes('@')) {
        window.alert
            ("Please enter a valid e-mail address.");
        email.focus();
        return false;
    }
    return true;
}
function namecheck()
{
	var name = document.getElementById("name").value;
	if (name === "" || name.length < 5) {
        window.alert("Please enter a valid name.");
        return false;
    }
    return true;
}

function usernamecheck()
{
	var username = document.getElementById("username").value;
	if (username === "" || username.legth < 4) {
        window.alert
            ("Please enter a valid username.");
        email.focus();
        return false;
    }
    return true;
}


function passcheck()
{
document.getElementById('requirements-list').style.display='block'; 
const password = document.getElementById("password");
const requirementsList = document.getElementById("requirements-list");
const requirements = document.getElementById("requirements");
const uppercase = document.getElementById("uppercase");
const number = document.getElementById("number");
const special = document.getElementById("special");
const eightChars = document.getElementById("eight-chars");
function checkRequirements(...requirementsArr){
  let allRequirementsTrue = requirementsArr.every( 
    requirement => requirement.classList.contains("fas"));
  
  if(allRequirementsTrue){
    requirements.remove();
    requirementsList.appendChild(requirements);
    return true;
  }else{
    requirementsList.innerHTML = '';
    requirementsList.appendChild(requirements);
    return false;
  }
}

function requirementTrue(requirement){
  requirement.classList.add("fas");
  requirement.classList.remove("far");
}

function requirementFalse(requirement){
  requirement.classList.add("far");
  requirement.classList.remove("fas");
}

password.oninput = () => {
  let passwordValue = password.value;
  if(passwordValue.match(/[A-Z]/)){
    requirementTrue(uppercase);
  }else{
    requirementFalse(uppercase);
  }
  
  if(passwordValue.match(/[0-9]/)){
    requirementTrue(number);
  }else{
    requirementFalse(number);
  }
  
  if(passwordValue.match(/[!@#$%^&*]/)){
    requirementTrue(special);
  }else{
    requirementFalse(special);
  }
  
  if(passwordValue.length > 7 ){
    requirementTrue(eightChars);
  }else{
    requirementFalse(eightChars);
  }
  
  checkRequirements(uppercase, number, special, eightChars);
}
}
function passwordcheck()
{
   passwordValue = document.getElementById("password").value;
   if(passwordValue.match(/[A-Z]/) && passwordValue.match(/[0-9]/) && passwordValue.match(/[!@#$%^&*]/) && passwordValue.length > 7 ){
     return true;	    
 }	
 return false;     
}
function confirm()
{
	document.getElementById('requirements-list').style.display='none';
	var p1 = document.getElementById('password').value;
	var p2 = document.getElementById('cpd').value;
	if(p1==p2)
	 return true;
	 return false;
}

function register()
{
    var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/userRegister";
	xhtml.open("POST", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');	
	xhtml.send(JSON.stringify({
			password : document.getElementById("password").value,
			name : document.getElementById("name").value,
			username : document.getElementById("username").value,
			email : document.getElementById("email").value
		
		}));
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			if(this.responseText=="sucessfully register"){
		         alert("Successfully record");
		         window.location.replace("index.jsp");
			}
			else{
			 alert(this.responseText);
			}
				
		}
	};
}
