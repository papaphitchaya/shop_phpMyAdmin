<?php
session_start();
$id=$_GET['id'];

$servername="localhost";
$username="root";
$password="1212312121";
$dbname="shop";

$con=mysqli_connect($servername,$username,$password,$dbname);
if(!$con) die("Connnect mysql database fail!!".mysqli_connect_error());
//echo "Connect mysql successfully!";

$sql="SELECT * FROM product WHERE id=$id";
$result=mysqli_query($con,$sql);

if(mysqli_num_rows($result)>0){
    $success=1;
    $row=mysqli_fetch_assoc($result);
    echo $row['ID']."<br>";
    echo $row['Name']."<br>";
    echo $row['Description']."<br>";
    echo $row['Price']."<br>";
    

    if(!isset($_SESSION["cart"]))
        $_SESSION["cart"]=array();
    $item=array("ID"=>$row['ID'],
                "Name"=>$row['Name'],
                "Description"=>$row['Description'],
                "Price"=>$row["Price"]);
    array_push($_SESSION["cart"],$item);
    print_r($_SESSION["cart"]);
}

mysqli_close($con);
?>

<?php
    if($success!=0){
?>
    <script>
        window.alert("นำสินค้าใส่ตะกร้าเรียบร้อยแล้ว");
        window.location.replace("show_product.php");
    </script>
<?php
    }
    else
    {
?>
<script>
        window.alert("เกิดข้อผิดพลาด!!!");
        window.location.replace("show_product.php");
    </script>
<?php
    }
?>