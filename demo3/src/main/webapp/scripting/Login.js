 function login()
  {
	   var name = document.getElementById("name").value;
	   var pass = document.getElementById("password");
            	  var xhtml = new XMLHttpRequest();
            	  var url = "http://localhost:8080/api/LoginUser/"+name+"/"+pass.value;
            		xhtml.open("GET", url, true);
            		xhtml.setRequestHeader('Content-Type','application/json');
            		xhtml.send();
            		xhtml.onreadystatechange = function() 
            		{
            			if(this.readyState == 4 && this.status == 200)
            			{
            				if(this.responseText != "fail"){
            					window.location.replace('Home.jsp');
            			       }
            				else{
            				 alert("Failed to login!")
            				}
            			}
            		};
  }