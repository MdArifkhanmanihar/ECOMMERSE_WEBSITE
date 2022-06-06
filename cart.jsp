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
             <li > 
               <a href="shop.jsp">Shop</a>
             </li>
             <li> 
               <a href="customer/my_account.jsp">My Account</a>
             </li>
             <li class="active">
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
          Cart
        </li>
      </ul>
    </div> <!-- col-md-12 End -->
   
   <div class="col-md-9" id="cart">   <!-- col-md-9 start -->
     <div class="box">
       <form action="cart.jsp" method="post" enctype="multipart-form-data">
         <h1>Shopping Cart</h1>
         <p class="text-muted">Currently you have 3 item(s) in your cart</p>
         <div class="table-responsive">    <!-- table-responsive start -->
          <table class="table">
            <thead>
              <tr>
                <th colspan="2">Product</th>
                <th>Quantity</th>
                <th>Unit Price</th>
                <th>Size</th>
                <th colspan="1">Delete</th>
                <th colspan="1">Sub Total</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><img src="admin_area/product_images/product.jpg"></td>
                <td>Mardaj Pack of 5-Multicolor Cotton V-Neck T-Shirts for men</td>
                <td>2 </td>
                <td>INR 199 </td>
                <td>Large</td>
                <td><input type="checkbox" name="remove[]"></td>
                <td>INR 398</td>
              </tr>

              <tr>
                <td><img src="admin_area/product_images/product.jpg" ></td>
                <td>Mardaj Pack of 5-Multicolor Cotton V-Neck T-Shirts for men</td>
                <td>2 </td>
                <td>INR 50 </td>
                <td>Large</td>
                <td><input type="checkbox" name="remove[]"></td>
                <td>INR 398</td>
              </tr>
            </tbody>
            <tfoot>
              <tr>
                <th colspan="5">Total</th>
                <th colspan="2">INR 398</th>
              </tr>
            </tfoot>
          </table>
         </div>    <!-- table-responsive end -->
         <div class="box-footer">
           <div class="pull-left">   <!-- pull-left start -->
             <a href="index.jsp" class="btn btn-default">
               <i class="fa fa-chevron-left"></i>Continue Shopping
             </a>
           </div>     <!-- pull-left end -->
           <div class="pull-right">
             <button class="btn btn-default" type="submit" name="submit" name="update" value="Update Cart">
               <i class="fa fa-refresh">Update Cart</i>
             </button>
             <a href="checkout.jsp" class="btn btn-primary">
               Proceed to checkout<i class="fa fa-chevron-right"></i>
             </a>
           </div>
         </div>
       </form>
     </div>
     <div id="row same-height-row">    <!-- row same-height-row start -->
  <div class="col-md-3 col-sm-6">    <!-- col-md-3 col-sm-6 start -->
    <div class="box same-height headline">    <!-- box same-height headline start -->
      <h3 class="text-center">You Also Like These Products</h3>
    </div>                <!-- box same-height headline end -->
  </div>                <!-- col-md-3 col-sm-6 end -->
  <div class="center-responsive col-md-3">    <!-- center-responsive col-md-3 start -->
      <div class="product same-height">
        <a href="">
          <img src="admin_area\product_images\product.jpg" class="img-responsive">
        </a>
        <div class="text">
          <h3><a href="details.jsp">Mardaz Pack of 5 - Multicolor Cotton V-Neck T-Shirts for Men</a></h3>
          <p class="price">INR 199</p>
        </div>
      </div>
  </div>               <!-- center-responsive col-md-3 end -->

  <div class="center-responsive col-md-3">    <!-- center-responsive col-md-3 start -->
      <div class="product same-height">
        <a href="">
          <img src="admin_area\product_images\product.jpg" class="img-responsive">
        </a>
        <div class="text">
          <h3><a href="details.jsp">Mardaz Pack of 5 - Multicolor Cotton V-Neck T-Shirts for Men</a></h3>
          <p class="price">INR 199</p>
        </div>
      </div>
  </div>               <!-- center-responsive col-md-3 end -->

  <div class="center-responsive col-md-3">    <!-- center-responsive col-md-3 start -->
      <div class="product same-height">
        <a href="">
          <img src="admin_area\product_images\product.jpg" class="img-responsive">
        </a>
        <div class="text">
          <h3><a href="details.jsp">Mardaz Pack of 5 - Multicolor Cotton V-Neck T-Shirts for Men</a></h3>
          <p class="price">INR 199</p>
        </div>
      </div>
  </div>               <!-- center-responsive col-md-3 end -->
</div>        <!-- row same-height-row end -->
   </div>   <!-- col-md-9 end -->
  
  <div class="col-md-3">    <!-- col-md-3 start -->
    <div class="box" id="order-summary">
      <div class="box-header">
        <h3>Order Summary</h3>
      </div>
      <p class="text-muted">
        Shipping and additional costs are calculated based on the values you have entered
      </p>
      <div class="table-responsive">
        <table class="table">
          <tbody>
            <tr>
              <td>Order Subtotal</td>
              <th>INR 398</th>
            </tr>
            <tr>
              <td>Shipping and handling</td>
              <th>INR 0</th>
            </tr>
            <tr class="total">
              <td>Total</td>
              <th>INR 399</th>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>    <!-- col-md-3 end -->

     </div>    <!-- container End -->
</div>    <!-- content End -->

   <!-- footer section start -->

    <jsp:include page="includes/footer.jsp" />

   <!-- footer section end -->
   <!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
</body>
</html>        

<!-- ---------------------------------now 42 no. video watch --------------------------------------------------->
