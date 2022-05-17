<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
  <meta charset="utf-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel="stylesheet" href="dashboard.css">
  <script src="dashboard.js"></script>
  
</head>
<body class="dashbody">
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li >
          <a id="dashboard"><i class="bi bi-cart3"> </i>E-Cart</a>
        </li>
        <li class="nav-item">
        
          <a class="nav-link profilebtn" href="profile.jsp"><i class="bi bi-person-fill" > </i>Seller Profile</a>
        </li>
      </ul>
      <form class="d-flex">
         <a href="Login.html" class="btn btn-danger ">Log Out</a>
      </form>
    </div>
  </div>
</nav>
   <div class="row">
   		 <div class="col-sm-3 p-3">						<!-- Grid 1 -->
  			  <div class="card">
    			<div class="card-body">
    
  					<div class="container-fluid">
  					  <ul class="navbar-nav">
  					  <li class="nav-item">
     					   <a class="nav-link" href="#"><i class="bi bi-house-door-fill"> </i>Home</a>
    				    </li>
 					     <li class="nav-item">
     					   <a class="nav-link" href="#"><i class="bi bi-inbox"> </i>Inbox</a>
    				    </li>
    				      <li class="nav-item">
      					   <a class="nav-link" href="addproducts.jsp"><i class="bi bi-bag-plus-fill"> </i>Add Products</a>
                        </li>
                        <li class="nav-item">
      					   <a class="nav-link" href="viewproducts.jsp"><i class="bi bi-view-list"> </i>View Products</a>
                        </li>
     					 <li class="nav-item">
    				       <a class="nav-link" href="#"><i class="bi bi-people-fill"> </i>My Customers</a>
     				    </li>
                        <li class="nav-item">
      					   <a class="nav-link" href="#"><i class="bi bi-gear-fill"> </i>Settings</a>
                        </li>
                      </ul>
                   </div>
				 </div>
               </div>
            </div>
                 <div class="col-sm-4 p-2">										<!-- Grid 2 -->
                 <h5>Quick Access</h5>
                    <div class="card">
                        <div class="card-body">
   			             <p id="currentdate" style="color:black"><b>Today : </b></p>
  
   	                     </div>
                    </div>
                    <h5 style="margin-top:20px">Feedbacks Received</h5>
                    <div class="card">
                        <div class="card-body">
   			             <p id="feedback" style="color:black"><b></b></p>
  
   	                     </div>
                    </div>
                  </div>
                 <div class="col-sm-5 p-3">							<!-- Grid 3 -->
                   <div class="card">
                      <div class="card-header">Post</div>
                         <div class="card-body" style="height:300px">
                         
                        </div> 
                      </div>								
    	            </div>
                 </div>
  <script>
  const months = [
      "January", "February", 
      "March", "April", "May", 
      "June", "July", "August",
      "September", "October", 
      "November", "December"
  ];

  var today=new Date();
  var dd=today.getDate();
  var mm=months[today.getMonth()];
  var yyyy=today.getFullYear();
  var date=(mm)+' '+(dd)+', '+(yyyy);

  document.getElementById("currentdate").innerHTML= document.getElementById("currentdate").innerHTML+date;
	
  </script>
</body>
</html>