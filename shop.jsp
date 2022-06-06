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
       	  		<a href="checkout.jsp"> My Account</a>
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
             <li >
               <a href="index.jsp">Home</a>
             </li>
             <li class="active"> 
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
            <li>
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
          Shop
        </li>
      </ul>
    </div>  <!-- col-md-12 End -->
    <div class="col-md-3">    <!-- col-md-3 start -->

     <jsp:include page="includes/sidebar.jsp" />

    </div>  <!--  col-md-3 end -->
 
 <div class="col-md-9">  <!-- col-md-9 start -->
   <div class="box">  <!--  box start -->
     <h1>Shop</h1>
     <p>this theme is created by Er. Arif khan, who is the instructor of institute of computer science & research Rewa, M.P.</p>
   </div>    <!-- box end -->

    <div class="row">
   <div class="col-md-4 col-sm-6 center responsive">   <!-- col-md-4 col-sm-6 center responsive start -->   
     <div class="product"> 
       <a href="details.jsp">
         <img src="admin_area/product_images/product.jpg" class="img-responsive">
       </a>
       <div class="text">
         <h3>
           <a href="details.jsp">Mardaz Pack of 5 - Multicolor Cotton V-Neck T-shirts for men </a>
         </h3>
         <p class="price">INR 200</p>
         <p class="buttons">
           <a href="details.jsp" class="btn btn-default">View Details</a>
           <a href="details.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a>
         </p>
       </div>
     </div>
   </div>     <!-- col-md-4 col-sm-6 center responsive end -->

   <div class="col-md-4 col-sm-6 center responsive">   <!-- col-md-4 col-sm-6 center responsive start -->   
     <div class="product"> 
       <a href="details.jsp">
         <img src="admin_area/product_images/product.jpg" class="img-responsive">
       </a>
       <div class="text">
         <h3>
           <a href="details.jsp">Mardaz Pack of 5 - Multicolor Cotton V-Neck T-shirts for men </a>
         </h3>
         <p class="price">INR 200</p>
         <p class="buttons">
           <a href="details.jsp" class="btn btn-default">View Details</a>
           <a href="details.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a>
         </p>
       </div>
     </div>
   </div>     <!-- col-md-4 col-sm-6 center responsive end -->

   <div class="col-md-4 col-sm-6 center responsive">   <!-- col-md-4 col-sm-6 center responsive start -->   
     <div class="product"> 
       <a href="details.jsp">
         <img src="admin_area/product_images/product.jpg" class="img-responsive">
       </a>
       <div class="text">
         <h3>
           <a href="details.jsp">Mardaz Pack of 5 - Multicolor Cotton V-Neck T-shirts for men </a>
         </h3>
         <p class="price">INR 200</p>
         <p class="buttons">
           <a href="details.jsp" class="btn btn-default">View Details</a>
           <a href="details.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a>
         </p>
       </div>
     </div>
   </div>     <!-- col-md-4 col-sm-6 center responsive end -->

   <div class="col-md-4 col-sm-6 center responsive">   <!-- col-md-4 col-sm-6 center responsive start -->   
     <div class="product"> 
       <a href="details.jsp">
         <img src="admin_area/product_images/product.jpg" class="img-responsive">
       </a>
       <div class="text">
         <h3>
           <a href="details.jsp">Mardaz Pack of 5 - Multicolor Cotton V-Neck T-shirts for men </a>
         </h3>
         <p class="price">INR 200</p>
         <p class="buttons">
           <a href="details.jsp" class="btn btn-default">View Details</a>
           <a href="details.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a>
         </p>
       </div>
     </div>
   </div>     <!-- col-md-4 col-sm-6 center responsive end -->

   <div class="col-md-4 col-sm-6 center responsive">   <!-- col-md-4 col-sm-6 center responsive start -->   
     <div class="product"> 
       <a href="details.jsp">
         <img src="admin_area/product_images/product.jpg" class="img-responsive">
       </a>
       <div class="text">
         <h3>
           <a href="details.jsp">Mardaz Pack of 5 - Multicolor Cotton V-Neck T-shirts for men </a>
         </h3>
         <p class="price">INR 200</p>
         <p class="buttons">
           <a href="details.jsp" class="btn btn-default">View Details</a>
           <a href="details.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a>
         </p>
       </div>
     </div>
   </div>     <!-- col-md-4 col-sm-6 center responsive end -->

   <div class="col-md-4 col-sm-6 center responsive">   <!-- col-md-4 col-sm-6 center responsive start -->   
     <div class="product"> 
       <a href="details.jsp">
         <img src="admin_area/product_images/product.jpg" class="img-responsive">
       </a>
       <div class="text">
         <h3>
           <a href="details.jsp">Mardaz Pack of 5 - Multicolor Cotton V-Neck T-shirts for men </a>
         </h3>
         <p class="price">INR 200</p>
         <p class="buttons">
           <a href="details.jsp" class="btn btn-default">View Details</a>
           <a href="details.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a>
         </p>
       </div>
     </div>
   </div>     <!-- col-md-4 col-sm-6 center responsive end -->

   
 </div>  <!-- row end -->

 <center>
   <ul class="pagination">
     <li><a href="search.jsp">First Page</a></li>
     <li><a href="search.jsp">1</a></li>
     <li><a href="search.jsp">2</a></li>
     <li><a href="search.jsp">3</a></li>
     <li><a href="search.jsp">4</a></li>
     <li><a href="search.jsp">5</a></li>
     <li><a href="search.jsp">Last Page</a></li>
   </ul>
 </center>
 </div>  <!-- col-md-9 end -->

  </div>    <!-- container End -->
</div>    <!-- content End -->

   <!-- footer section start -->

<jsp:include page="includes/footer.jsp" />

   <!-- footer section end -->
   <!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
</body>
</html>        