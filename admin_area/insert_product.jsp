

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert Product</title>

	<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>

    <script>tinymce.init({selector: 'textarea'}); </script>
	  <!-- bootstrap library -->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="styles/style.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- font awesome library -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ page import="java.sql.*" %> 
<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.PreparedStatement.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="java.util.Enumeration" %>

<%
// Connection connection = null;
// Statement statement = null;
// ResultSet resultSet = null;
int id;
String cat_title="";

String product_title="";
String product_cat="";
String cat="";
String product_price="";
String product_desc="";
String product_keywords="";

%>
        <%
                                                      
            int isSubmitted = 0;
       
            if (request.getParameter("isSubmitted") == null) {
            %>
            <p>Hello Form values are comming...</p>	              <!-- form value is not fetching here -->
            <%
             try{
                 Connection  connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ecom","root","root");
                 product_title = request.getParameter("product_title");
                 product_cat = request.getParameter("product_cat");
                 cat = request.getParameter("cat");
                 product_price = request.getParameter("product_price");
                 product_desc = request.getParameter("product_desc");
                 product_keywords = request.getParameter("product_keywords");

                 // String root=getServletContext().getRealPath("product_images");
                 // MultipartRequest mr=new MultipartRequest(request,root);           
                 // MultipartRequest mr2=new MultipartRequest(request,root);          
                 // MultipartRequest mr3=new MultipartRequest(request,root);           
                 // out.print("<p>File Upload succefully..</p>");

                 // Enumeration files=mr.getFileNames();
                 // String name=(String)files.nextElement();
                 // String filename1=mr.getFilesystemName(name);

                 // Enumeration files2=mr2.getFileNames();
                 // String name2=(String)files2.nextElement();
                 // String filename2=mr2.getFilesystemName(name2);

                 // Enumeration files3=mr3.getFileNames();
                 // String name3=(String)files3.nextElement();
                 // String filename3=mr3.getFilesystemName(name3);

                 // PreparedStatement pstm;

                 // pstm =connection.prepareStatement("insert into products(p_cat_id,cat_id,date,product_title,product_img1,product_img2,product_img3,product_price,product_desc,product_keyword) values ('product_cat','cat',NOW(),'product_title','filename1','filename2','filename3','product_price','product_desc','product_keywords')");
                
                 Statement stmt=connection.createStatement(); 
                

                  int x =stmt.executeUpdate("insert into products(p_cat_id,cat_id,date,product_title,product_price,product_desc,product_keyword) values ('product_cat','cat',NOW(),'product_title','product_price','product_desc','product_keywords')");

                 // resultSet = statement.executeQuery(insert_product);
                 
                 if(x==1)
                 {
                 %>
                 	<script>alert("Product Inserted succefully")</script>
                 	<script>window.open("insert_product.jsp")</script>
                 	<%
                 }
                 else{
                 %>
                 	<script>alert("Something was wrong..")</script>
                 <%
                 }
            
      } 
      catch(Exception e)
      {
      	%>
        <script type="text/javascript">alert(e)</script>
      	<%
      }
      }
        %>
<div class="row">      <!-- breadcrumb row start -->
	<div class="col-lg-12">
		<div class="breadcrumb">
			<li class="active">
				<l class="fa fa-dashboard"></l>
				Dashboard / Insert Product
			</li>
		</div>
	</div>
</div>             <!-- breadcrumb row end -->



<div class="row">
    <div class="col-lg-3"> 
		
	</div>
	<div class="col-lg-6">

		<div class="panel panel-default">
			<div class="panel-heading">    <!-- panel-heading start -->
				<h3 class="panel-title">
					<i class="fa fa-money fa-w"></i> Insert Product
				</h3>
			</div>      <!-- panel-heading end -->

			<div class="panel-body">
				<% if (isSubmitted == 0) { %>
				<form class="form-horizontal" method="post" action="insert_product.jsp" enctype="multipart/form-data">
					<div class="form-group">
						<label class="col-md-3 control-label">Product Title</label>
						<input type="text" name="product_title" class="form-control" required>
					</div>

     				<div class="form-group">
						<label class="col-md-3 control-label">Product Category</label>
						<select name="product_cat" class="form-control">
							<option>Select a product category</option>

    <%

    try{ 
 Connection connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ecom","root","root");

%>
<jsp:include page="includes/db.jsp" />
<%

Statement statement=connection.createStatement();
String get_p_cats ="SELECT * FROM product_categories";

ResultSet resultSet = statement.executeQuery(get_p_cats);
while(resultSet.next()){
 id=resultSet.getInt("p_cat_id");          
cat_title=resultSet.getString("p_cat_title");

%>
 <option value='<%=id %>'><%= cat_title %></option>
<%

}
// connection.close();	

} catch (Exception e) {
e.printStackTrace(); 
}
%>

						</select>
					</div>

     				<div class="form-group">
						<label class="col-md-3 control-label"> Categories </label>
						<select name="cat" class="form-control">
							<option>Select Categories</option>

    <%
 
    try{ 
Connection connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ecom","root","root");
Statement statement=connection.createStatement();
String get_p_cats ="SELECT * FROM categories";
  
 ResultSet resultSet = statement.executeQuery(get_p_cats);
while(resultSet.next()){
 // id=resultSet.getInt("p_cat_id");         
 id=resultSet.getInt("cat_id");          

cat_title=resultSet.getString("cat_title");

%>
 <option value='<%=id %>'><%= cat_title %></option>
<%

}
// connection.close();	

} catch (Exception e) {
e.printStackTrace(); 
}
%>                                                           
						</select>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label">Product Image 1</label>
						<input type="file" name="product_img1" class="form-control" required>
					</div>

     				<div class="form-group">
						<label class="col-md-3 control-label">Product Image 2</label>
						<input type="file" name="product_img2" class="form-control" required>
					</div>

    				<div class="form-group">
						<label class="col-md-3 control-label">Product Image 3</label>
						<input type="file" name="product_img3" class="form-control" required>
					</div>

     				<div class="form-group">
						<label class="col-md-3 control-label">Product Price</label>
						<input type="text" name="product_price" class="form-control" required>
					</div>

     				<div class="form-group">
						<label class="col-md-3 control-label">Product Keyword</label>
						<input type="text" name="product_keywords" class="form-control" required>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label">Product Description</label>
						<textarea name="product_desc" class="form-control" rows="6" cols="19">
							
						</textarea>
					</div>

     				<div class="form-group">
     					<input type="submit" name="isSubmitted" value="Insert Product" class="btn btn-primary form-control">
					</div>
				</form>
				 <%}%>
			</div>
		</div>
	</div>
		<div class="col-lg-3"> 
		
	</div>
</div>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>
</html>	