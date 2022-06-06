<div class="panel panel-default sidebar-menu">
	<div class="panel-heading">     <!-- panel-heading Start -->
		<center>
			<img src="customer_images/Arif.png" class="img-responsive">
		</center>                                                                  
		<br>
		<h3 align="center" class="panel-title">Name:Arif Khan</h3>
	</div>               <!-- panel-heading End -->
	<div class="panel-body">
		<%
              String author1;          //global variable for author1
		%>
		 <ul class="nav nav-pills nav-stacked">
			
		<!-- 	<li class="<%  author1 = request.getParameter("my_order");if (author1 != null ) { out.print("active");} %> ">             
				<a href="my_account.jsp?my_order=my_order">
                    <i class="fa fa-list"></i> My Order  
				</a>
			</li> -->
<!-- 			<form action="">
				<input type="text" name="my_order" placeholder="my_order">
			</form>

	      <form action="">
				<input type="text" name="my_order" placeholder="Pay Offline">
			</form>

	      <form action="">
				<input type="text" name="my_order" placeholder="Edit Account">
			</form>
	      
	      <form action="">
				<input type="text" name="my_order" placeholder="Change Password">
			</form>

          <form action="">
				<input type="text" name="my_order" placeholder="Delete Account">
			</form>
	      
	       <form action="">
				<input type="text" name="my_order" placeholder="my_order">
			</form> -->

			<form action="">
				 <input type="text" list="cars" name="my_order"/>
<datalist id="cars" >
  <option value="my_order">
  <option value="Edit Account">
  <option value="Change Password">
  <option value="Delete Account">
  <option value="LogOut">
</datalist>
			</form>
		</ul>
	</div>
</div>


             