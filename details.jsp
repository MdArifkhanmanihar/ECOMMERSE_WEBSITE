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


<div class="col-md-9">    <!-- col-md-9 start -->
  <div class="row" id="productmain">
    <div class="col-sm-6">         <!-- col-sm-6 slider start -->
      <div class="mainimage">
        <div id="mycarousel" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
            <li data-target="#mycarousel" data-slide-to="1"></li>
            <li data-target="#mycarousel" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">  <!-- carousel-inner start -->
            <div class="item active">
              <center>
                <img src="admin_area\product_images\product2.jpg" class="img-responsive">
              </center>
            </div>

            <div class="item">
              <center>
                <img src="admin_area\product_images\product.jpg" class="img-responsive">
              </center>
            </div>
            <div class="item">
              <center>
                <img src="admin_area\product_images\product3.jpg" class="img-responsive">
              </center>
            </div>
          </div>  <!-- carousel-inner end -->
          <a href="#mycarousel" class="left carousel-control" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
          </a>

          <a href="#mycarousel" class="right carousel-control" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>      <!-- col-sm-6 slider end -->

    <div class="col-sm-6">           <!-- col-sm-6 slider start -->
      <div class="box">      <!-- box start -->
        <h1 class="text-center">Mardaz Pack of 5 - Multicolor Cotton V-Neck T-Shirts for Men</h1>
        <form action="details.jsp" method="post" class="form-horizontal">       <!-- form start -->
          <div class="form-group">    <!-- form-group start -->
            <label class="col-md-5 carousel-label">Product Quantity</label>
            <div class="col-md-7">   <!-- col-md-7 start -->
              <select name="product_qty" class="form-control">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
            </div>     <!-- col-md-7 end -->
          </div>   <!-- form-group end -->
          <div class="form-group">
            <label class="col-md-5 control-label">Product Size</label>
            <div class="col-md-7">
              <select name="product_size" class="form-control">
                <option>Select a size</option>
                <option>Small</option>
                <option>Medium</option>
                <option>Large</option>
                <option>Extra Large</option>
              </select>
            </div>
          </div>
       <p class="price">INR 200</p>
       <p class="text-center buttons">
         <button class="btn btn-primary" type="submit">
           <i class="fa fa-shopping-cart"></i>Add to cart
         </button>
       </p>

        </form>              <!-- form end --> 
      </div>        <!-- Box end -->

      <div class="col-xs-4"> 
          <a href="#" class="thumb">
            <img src="admin_area\product_images\product.jpg" class="img-responsive">
          </a>
      </div>
      <div class="col-xs-4"> 
          <a href="#" class="thumb">
            <img src="admin_area\product_images\product2.jpg" class="img-responsive">
          </a>
      </div>
      <div class="col-xs-4"> 
          <a href="#" class="thumb">
            <img src="admin_area\product_images\product3.jpg" class="img-responsive">
          </a>
      </div>
    </div>             <!-- col-sm-6 slider end -->
  </div>

<div class="box" id="details">
  <h4>Product Details</h4>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non viverra urna. Sed nec purus in arcu consequat dignissim. Sed a orci eget lacus vehicula dictum eget ut ipsum. Donec iaculis dui a purus elementum consequat. Quisque tempus diam nisl, vel tristique arcu rutrum commodo. Curabitur consectetur vulputate felis ut sodales. Aliquam convallis dapibus est nec porta.

Curabitur malesuada purus nec nulla faucibus volutpat. Suspendisse vulputate velit quis gravida lobortis. Sed porta venenatis velit et fermentum. Curabitur eu rutrum neque. Aenean condimentum iaculis libero, sit amet euismod ipsum sagittis sed. Fusce purus dui, euismod non tempor ut, tincidunt a massa. Donec convallis pretium nisl vel molestie. Nunc ultricies pellentesque nulla, non consectetur ipsum posuere dignissim. In nec condimentum nunc. Curabitur convallis luctus porta. Maecenas sagittis congue elit, eu lacinia nulla elementum sit amet. Vestibulum pulvinar id odio id dapibus. Aliquam maximus tellus mi, tristique commodo enim tincidunt eu. Sed aliquam est augue, et ultrices lectus suscipit sed. Mauris sodales accumsan fringilla. Donec id lorem ipsum.
</p>

<h4>Size</h4>
<ul>
  <li>Small</li>
  <li>Medium</li>
  <li>Large</li>
  <li>Extra Large</li>
</ul>
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

</div>      <!-- col-md-9 End -->

     </div>    <!-- container End -->
</div>    <!-- content End -->
                                                                                                        
   <!-- footer section start -->

    <jsp:include page="includes/footer.jsp" />

   <!-- footer section end -->

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
</body>
</html>        

