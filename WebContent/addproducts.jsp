<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add products</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel="stylesheet" href="addproducts.css">
  <script src=""></script>
</head>
<body id="body">
<div class="container-fluid mt-3">											<!-- Main container open-->
  <div class="row">                                                         <!-- !st row open -->
    <div class="col-sm-3 p-3 text-white"></div>                  <!-- Grid 1 -->
    <div class="col-sm-6 p-3 text-white"> 							<!-- Grid 2 -->
    
	    <div class="container mt-4 cardcontainer">										<!-- container inside grid -->
	         <div class="card" style="box-shadow: 1px 1px 12px gray ;
    color: #fff;">												<!-- card open -->	
	    		<div class="card-header text-dark" ><b>Add Products</b></div>
	   			 <div class="card-body">
	   			 
	       <form action="addproductaction.jsp" method="post" class="formlogin">								<!--login form inside card -->
   		   	 <div class="mb-4 mt-3">
      		    <label for="product" class="label text-dark">Product:</label>
     		    <input type="text"  class="form-control text-black" id="product" placeholder="Enter Product" name="product" autocomplete="off" required>
     		    <div class="invalid-feedback">Please fill out this field.</div>
            </div>
             <div class="mb-3">
      			<label for="product-type" class="label text-dark">User Type: </label>
			    <select class="btn btn-light" id="product-type" name="ptype">
			    <option class="btn btn-dark" value="Mobile">Mobile</option>
			    <option class="btn btn-dark" value="computer Accessories">Computer Accessories</option>
			    <option class="btn btn-dark" value="Electronics">Electronics</option>
			    <option class="btn btn-dark" value="Home appliances">Home Appliances</option>
			    <option class="btn btn-dark" value="Grocery">Grocery</option>
			  </select>
           </div>
            <div class="mb-3">
      			<label for="desc" class="label text-dark">Description:</label>
                <textarea  class="form-control text-black" id="desc" placeholder="Enter Description" name="desc" autocomplete="off" required></textarea>
                <div class="invalid-feedback">Please fill out this field.</div>
           </div>
              <button type="submit" class="btn btn-danger add" id="addbtn"><b>Add</b></button>
  		  </form>
	   			 </div> 
	   			 
	  		</div>															<!-- card close -->
	    </div>
    	
    </div>
    <div class="col-sm-3 p-3 text-white"></div>								<!-- grid 3 in main container -->
  </div>
  
</div>	

</body>
</html>