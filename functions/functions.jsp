<%@ page import="java.sql.*" %> 
<jsp:include page="includes/db.jsp" />
<%!
   public static void getPro(){
    Connection conn =null;
    Statement statement=null;
    try{
   conn = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ecom","root","root");
    statement=conn.createStatement();

   ResultSet resultSet = statement.executeQuery("SELECT * FROM products order by 1 DESC LIMIT 0,6");
   while(resultSet.next()){
%> <%! String pro_id=resultSet.getString("product_id");
   String pro_title=resultSet.getString("product_title");
   String pro_price=resultSet.getString("product_price");
   String pro_img1=resultSet.getString("product_img1");%>


<div class="col-md-4 col-sm-6">
    <div class="product">
        <a href="details.jsp?pro_id=<%=pro_id%>"></a>
    </div>
</div>
<%!
    }
       // video 69
   }
catch(Exception e){
 //Handle errors for Class.forName
 e.printStackTrace();
 }
 //finally block used to close resources
 try{
 if(statement!=null)
 conn.close();
 }catch(SQLException se){
 }// do nothing
 try{
 if(conn!=null)
 conn.close();
 }catch(SQLException se){
 se.printStackTrace();
 }//end finally try
 //end try
}
%>