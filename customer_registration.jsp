<!DOCTYPE html> 
<html>
<head>
  <!-- bootstrap library -->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="styles/style.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- font awesome library -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<title>E Commerce Store</title>
</head>
<body>

 <div id="top">   <!-- TopBar Start -->-
 	<div class="container">  <!-- Container Start -->
 		<div class="col-md-6 offer">    <!-- col-md-6 offer Start -->   
 			  
           <a href="#" class="btn btn-success btn-sm">Welcome Guest</a>
           <a href="#">Shopping Cart Total Price: INR 100, Total Items 2</a>

 		</div>   <!-- col-md-6 offer End --> 
        
       <div class="col-md-6">
       	  <ul class="menu">
       	  	<li> 
       	  		<a href="customer_registration.jsp"> Register</a>
       	  	</li>
       	  	<li>
       	  		<a href="customer/my_account.jsp"> My Account</a>
       	  	</li>
       	  	<li>
       	  		<a href="cart.jsp"> Goto Cart</a>
       	  	</li>
       	  	<li>
       	  		<a href="admin_area\login.jsp"> Login</a>
       	  	</li>
       	  </ul>
       </div>

 	</div>   <!-- Container End -->
 </div>   <!-- TopBar End -->

 

 <div class="navbar navbar-default" id="navbar">   <!--   navbar navbar-default start -->
  <div class="container" >
    <div class="navbar-header" ><!--  navbar-header start -->
      <a class="navbar-brand home" href="index.jsp">
        <img src="images/logo.jpg" height="50px" width="150px" style="margin-bottom: 30px;" alt="Multivendor" class="hidden-xs" >
        <img src="images/logo-small.jpg" height="60px" width="150px" alt="Multivendor" class="visible-xs" >
      </a>
     
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
        <span class="sr-only">Toggle Navigation</span>
        <i class="fa fa-align-justify"></i>
      </button>

       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
        <span class="sr-only"></span>
        <i class="fa fa-search"></i>
      </button>

    </div> <!--  navbar-header end -->
       <div class="navbar-collapse collapse" id="navigation">  <!--   navbar-collapse collapse start-->
         
         <div class="padding-nav">  <!-- padding-nav start -->
           <ul class="nav navbar-nav navbar-left"> 
             <li class="active">
               <a href="index.jsp">Home</a>
             </li>
             <li > 
               <a href="shop.jsp">Shop</a>
             </li>
             <li> 
               <a href="customer/my_account.jsp">My Account</a>
             </li>
             <li>
               <a href="cart.jsp">Shopping Cart</a>
             </li>
             <li>
               <a href="about.jsp">About Us</a>
             </li>
             <li>
               <a href="services.jsp">Services</a>
             </li>
             <li >
               <a href="contactus.jsp">CONTACT US</a>
             </li> 
           </ul>
         </div>   <!-- padding-nav end -->


          <a href="cart.jsp" class="btn btn-primary navbar-btn right">
         <i class="fa fa-shopping-cart"></i>
         <span>4 items In Cart</span>
          </a>
          <div class="navbar-collapse collapse right">  <!-- navbar-collapse collapse right start -->
            <button class="btn navbar-btn btn-primary" type="button" data-toggle="collapse" 
            data-target="#search">  
            <span class="sr-only">Toggle Search</span> 
            <i class="fa fa-search"></i> 
            </button> 
          </div>    <!-- "navbar-collapse collapse-right End" --> 

        <div class="collapse clearfix" id="search">
        <form class="navbar-form" method="get" action="result.jsp">
          <div class="input-group">
            <input type="text" name="user_query" placeholder="Search" class="form-control" required="">
            
     <span class="input-group-btn">
            <button type="submit" value="Search" name="search" class="btn btn-primary">
              <i class="fa fa-search"></i>
            </button>
    </span>
          </div>
        </form>
      </div>
       </div>  <!--   navbar-collapse collapse end-->


       </div>  

 </div>   <!-- navbar navbar-default End -->


<div id="content">
  <div class="container">    <!-- container start -->
    <div class="col-md-12">  <!-- col-md-12 start -->
      <ul class="breadcrumb">
        <li><a href="home.jsp">Home</a></li>
        <li>
          Registration  
        </li>
      </ul>
    </div>  <!-- col-md-12 End -->
    <div class="col-md-3">    <!-- col-md-3 start -->

      <jsp:include page="includes/sidebar.jsp" />

    </div>  <!--  col-md-3 end -->

    <div class="col-md-9">    <!-- col-md-9 start -->
      <div class="box">    <!-- box start -->
        <div class="box-header">    <!-- box-header start -->
          <center>
            <h2>Customer Registration</h2>

          </center>
        </div>     <!-- box-header end -->
        <form action="customer_registration.jsp"method="post" enctype="multipart/form-data">
          <div class="form-group">
            <label>Customer Name</label>
            <input type="text" name="c_name" required class="form-control"> 
          </div>

          <div class="form-group">
            <label>Customer Email</label>
            <input type="text" name="c_email" required class="form-control"> 
          </div>

          <div class="form-group">
            <label>Customer Password</label>
            <input type="password" name="c_password" required class="form-control"> 
          </div>

          <div class="form-group">
            <label>Country</label>
            <input type="text" name="c_country" required class="form-control"> 
          </div>

          <div class="form-group">
            <label>City</label>
            <input type="text" name="c_city" required class="form-control"> 
          </div>
          <div class="form-group">
            <label>Contact Number</label>
            <input type="text" name="c_contact" required class="form-control"> 
          </div>

          <div class="form-group">
            <label>Address</label>
            <input type="text" name="c_address" required class="form-control"> 
          </div>

          <div class="form-group">
            <label>Image</label>
            <input type="file" name="c_image" required class="form-control"> 
          </div>
          <div class="text-center"> 
            <button type="submit" name="submit" class="btn btn-primary">
              <i class="fa fa-user-md"></i>Register
            </button>
          </div>
        </form>
      </div>     <!-- box end -->
    </div>    <!-- col-md-9 end -->

      </div>    <!-- container End -->
</div>    <!-- content End -->

   <!-- footer section start -->

    <jsp:include page="includes/footer.jsp" />

   <!-- footer section end -->
   <!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
</body>
</html>        


<!-- 44no video dekho -->