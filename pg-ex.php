<?php  
//Connects your database 
$dbhost = 'localhost'; 
$dbuser = 'root'; 
$dbpass = ''; 
$db = 'fourthwall'; 
$connect_db = mysql_connect ( $dbhost, $dbuser, $dbpass ) or die(mysql_error()); 
mysql_select_db ( $db, $connect_db ) or die(mysql_error()); 

//This checks to see if there is a page number, that the number is not 0, and that the number is actually a number. If not, it will set it to page number to 1. 
if ((!isset($_GET['pagenum'])) || (!is_numeric($_GET['pagenum'])) || ($_GET['pagenum'] < 1)) { $pagenum = 1; } 
else { $pagenum = $_GET['pagenum']; } 

//Now you can use this query to see how many rows you are dealing with 
//Edit $result as your query 
$result = mysql_query ("SELECT name FROM events") or die(mysql_error()); 
$rows = mysql_num_rows($result); 

//This is the number of results displayed per page  
$page_rows = 4;  

//This tells us the page number of our last page  
$last = ceil($rows/$page_rows);  

//Seeing if the current page we are on is the last 
if (($pagenum > $last) && ($last > 0)) { $pagenum = $last; } 

//This sets the range to display in our query  
$max = ($pagenum - 1) * $page_rows; 

//This is your query again, just spiced up a bit 
//mysql doesnt have that nice limit ability like mysql... so we use this to make it work... 
//the way the table is designed is, "id" is the unique id, and "name" is just a list of names i have in there. 
$result2 = mysql_query("SELECT  name from events where ID > $max order by ID asc limit $page_rows") or die(mysql_error());  

//This is where you show your results 
while($info = mysql_fetch_array( $result2 ))  
{  
print $info['name'];  
echo "<br>"; 
}  
echo "<p>"; 

// This shows the page they are on, and the total number of pages 
echo " --Page $pagenum of $last-- <p>"; 

// First we check if we are on page one. If we are then we don't need a link to the previous page or the first page so we do nothing. If we aren't then we generate links to the  

//first page, and to the previous page. 
if ($pagenum == 1) { }  
else  
{ 
echo " <a href='{$_SERVER['PHP_SELF']}?pagenum=1'> <<-First</a> "; 
echo " "; 
$previous = $pagenum-1; 
echo " <a href='{$_SERVER['PHP_SELF']}?pagenum=$previous'> <-Previous</a> "; 
}  

//just a spacer 
echo " ---- "; 

//This does the same as above, only checking if we are on the last page, and then generating the Next and Last links 
if ($pagenum == $last)  
{ 
}  
else { 
$next = $pagenum+1; 
echo " <a href='{$_SERVER['PHP_SELF']}?pagenum=$next' > Next -></a> "; 
echo " "; 
echo " <a href='{$_SERVER['PHP_SELF']}?pagenum=$last' > Last ->></a> "; 
}  
?>