  <!-- 59 video -->

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
             <li> 
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
 
 <div class="container" id="slider">     <!-- container start -->
   <div class="col-md-12">      <!-- col-md-12 start -->
     <div class="carousel slide" id="myCarousel" data-ride="carousel">     <!-- carousel slide start -->
       <ol class="carousel-indicators">    <!--  carousel-indicaters start -->
         <li data-target="myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="myCarousel" data-slide-to="1" ></li>
         <li data-target="myCarousel" data-slide-to="2" ></li>
         <li data-target="myCarousel" data-slide-to="3" ></li> 
       </ol>    <!--  carousel-indicaters end -->
       <div class="carousel-inner">   <!--  carousel-inner start -->
        
        <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
    <%
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
String slider_name="";
String slider_image="";
 
    try{ 
%>
<jsp:include page="includes/db.jsp" />
<%
 connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ecom","root","root");

statement=connection.createStatement();

resultSet = statement.executeQuery("SELECT * FROM slider LIMIT 0,1");
while(resultSet.next()){

 slider_name= resultSet.getString("slider_name")  ;

 slider_image= resultSet.getString("slider_image")  ;
%>
<div class="item active">
  <img src="admin_area/slider_images/<%out.print(slider_image);%>">
</div>
<%
}

resultSet = statement.executeQuery("SELECT * FROM slider LIMIT 1,3");
while(resultSet.next()){

 slider_name= resultSet.getString("slider_name")  ;

 slider_image= resultSet.getString("slider_image")  ;
%>
<div class="item">
  <img src="admin_area/slider_images/<%out.print(slider_image);%>">
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>                                                                             
       </div>   <!--  carousel-inner end -->
    
    <a href="#myCarousel" class="left carousel-control" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a href="#myCarousel" class="right carousel-control" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>

     </div>    <!-- carousel slide end -->
   </div>   <!-- col-md-12 end -->
 </div>   <!-- container end -->

 <div id="advantage">  <!--  advantage start -->
   <div class="container">   <!-- container start -->
    <div class="same-height-row">   <!-- same-heigh-row start -->
      <div class="col-sm-4">   <!-- col-sm-4 start -->
        <div class="box same-height">   <!-- box same-height start -->
          <div class="icon">
              <i class="fa fa-heart"></i>
          </div>
          <h3><a href="#">BEST PRICES</a></h3>
          <p>You can check all other sites about the prices and then compare with us.</p>
        </div>    <!-- box same-height end -->
      </div>   <!-- col-sm-4 end -->
        <div class="col-sm-4">   <!-- col-sm-4 start -->
        <div class="box same-height">   <!-- box same-height start -->
          <div class="icon">
              <i class="fa fa-heart"></i>
          </div>
          <h3><a href="#">100% SATISFACTION GUARANTEED FROM US</a></h3>
          <p>Free returns on everything for 3 months.</p>
        </div>    <!-- box same-height end -->
      </div>   <!-- col-sm-4 end -->
        <div class="col-sm-4">   <!-- col-sm-4 start -->
        <div class="box same-height">   <!-- box same-height start -->
          <div class="icon">
              <i class="fa fa-heart"></i>
          </div>
          <h3><a href="#">WE LOVE OUR CUSTOMERS</a></h3>
          <p>We are known to provide best possible service.</p>
        </div>    <!-- box same-height end -->
      </div>   <!-- col-sm-4 end -->
   
    </div>    <!-- same-heigh-row end -->
   </div>    <!-- container end -->
 </div>  <!--  advantage end -->

 <div id="hot">  <!-- hot start -->
   <div class="box">
     <div class="container">
       <div class="col-md-12">
         <h2>Latest this week</h2>
       </div>
     </div>
   </div>
 </div>   <!-- hot end -->

 <div id="content" class="container">
   <div class="row">
     <div class="col-sm-4 col-sm-6 single">      <!-- col-sm-4 col-sm-6 single start -->
       <div class="product">
         <a href="details.jsp">
           <img src="admin_area\product_images\product.jpg" class="img-responsive">
         </a>
         <div class="text"> 
           <h3><a href="details.jsp">BENETTON White Polo Shirt</a></h3>
           <p class="price"> INR 299</p>
           <p class="buttons">
             <a href="details.jsp" class="btn btn-default">View Details</a>
             <a href="details.jsp" class="btn btn-primary">
               <i class="fa fa-shopping-cart"></i>Add to cart 
             </a>
           </p>
         </div>
       </div>
     </div>    <!-- col-sm-4 col-sm-6 single end -->

          <div class="col-sm-4 col-sm-6 single">    <!-- col-sm-4 col-sm-6 single start -->
       <div class="product">
         <a href="details.jsp">
           <img src="admin_area\product_images\product.jpg" class="img-responsive">
         </a>
         <div class="text"> 
           <h3><a href="details.jsp">BENETTON White Polo Shirt</a></h3>
           <p class="price"> INR 299</p>
           <p class="buttons">
             <a href="details.jsp" class="btn btn-default">View Details</a>
             <a href="details.jsp" class="btn btn-primary">
               <i class="fa fa-shopping-cart"></i>Add to cart 
             </a>
           </p>
         </div>
       </div>
     </div>    <!-- col-sm-4 col-sm-6 single end -->

          <div class="col-sm-4 col-sm-6 single">    <!-- col-sm-4 col-sm-6 single start -->
       <div class="product">
         <a href="details.jsp">
           <img src="admin_area\product_images\product.jpg" class="img-responsive">
         </a>
         <div class="text"> 
           <h3><a href="details.jsp">BENETTON White Polo Shirt</a></h3>
           <p class="price"> INR 299</p>
           <p class="buttons">
             <a href="details.jsp" class="btn btn-default">View Details</a>
             <a href="details.jsp" class="btn btn-primary">
               <i class="fa fa-shopping-cart"></i>Add to cart 
             </a>
           </p>
         </div> 
       </div>
     </div>    <!-- col-sm-4 col-sm-6 single end -->

          <div class="col-sm-4 col-sm-6 single">    <!-- col-sm-4 col-sm-6 single start -->
       <div class="product">
         <a href="details.jsp">
           <img src="admin_area\product_images\product.jpg" class="img-responsive">
         </a>
         <div class="text"> 
           <h3><a href="details.jsp">BENETTON White Polo Shirt</a></h3>
           <p class="price"> INR 299</p>
           <p class="buttons">
             <a href="details.jsp" class="btn btn-default">View Details</a>
             <a href="details.jsp" class="btn btn-primary">
               <i class="fa fa-shopping-cart"></i>Add to cart 
             </a>
           </p>
         </div>
       </div>
     </div>    <!-- col-sm-4 col-sm-6 single end -->
             <div class="col-sm-4 col-sm-6 single">    <!-- col-sm-4 col-sm-6 single start -->
       <div class="product">
         <a href="details.jsp">
           <img src="admin_area\product_images\product.jpg" class="img-responsive">
         </a>
         <div class="text"> 
           <h3><a href="details.jsp">BENETTON White Polo Shirt</a></h3>
           <p class="price"> INR 299</p>
           <p class="buttons">
             <a href="details.jsp" class="btn btn-default">View Details</a>
             <a href="details.jsp" class="btn btn-primary">
               <i class="fa fa-shopping-cart"></i>Add to cart 
             </a>
           </p>
         </div>
       </div>
     </div>    <!-- col-sm-4 col-sm-6 single end -->
             <div class="col-sm-4 col-sm-6 single">    <!-- col-sm-4 col-sm-6 single start -->
       <div class="product">
         <a href="details.jsp">
           <img src="admin_area\product_images\product.jpg" class="img-responsive">
         </a>
         <div class="text"> 
           <h3><a href="details.jsp">BENETTON White Polo Shirt</a></h3>
           <p class="price"> INR 299</p>
           <p class="buttons">
             <a href="details.jsp" class="btn btn-default">View Details</a>
             <a href="details.jsp" class="btn btn-primary">
               <i class="fa fa-shopping-cart"></i>Add to cart 
             </a>
           </p>
         </div>
       </div>
     </div>    <!-- col-sm-4 col-sm-6 single end -->
             <div class="col-sm-4 col-sm-6 single">    <!-- col-sm-4 col-sm-6 single start -->
       <div class="product">
         <a href="details.jsp">
           <img src="admin_area\product_images\product.jpg" class="img-responsive">
         </a>
         <div class="text"> 
           <h3><a href="details.jsp">BENETTON White Polo Shirt</a></h3>
           <p class="price"> INR 299</p>
           <p class="buttons">
             <a href="details.jsp" class="btn btn-default">View Details</a>
             <a href="details.jsp" class="btn btn-primary">
               <i class="fa fa-shopping-cart"></i>Add to cart 
             </a>
           </p>
         </div>
       </div>
     </div>    <!-- col-sm-4 col-sm-6 single end -->
             <div class="col-sm-4 col-sm-6 single">    <!-- col-sm-4 col-sm-6 single start -->
       <div class="product">
         <a href="details.jsp">
           <img src="admin_area\product_images\product.jpg" class="img-responsive">
         </a>
         <div class="text"> 
           <h3><a href="details.jsp">BENETTON White Polo Shirt</a></h3>
           <p class="price"> INR 299</p>
           <p class="buttons">
             <a href="details.jsp" class="btn btn-default">View Details</a>
             <a href="details.jsp" class="btn btn-primary">
               <i class="fa fa-shopping-cart"></i>Add to cart 
             </a>
           </p>
         </div>
       </div>
     </div>    <!-- col-sm-4 col-sm-6 single end -->
 
 <%-- <%@  include file="functions/functions.jsp" %> --%>

       <%--  <%= getPro() %> --%>

   </div>
 </div>

<!-- Footer start -->

<jsp:include page="includes/footer.jsp" />

<!-- Footer end -->

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
</body>
</html>                                                                   