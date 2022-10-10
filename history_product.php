<?php
$servername="localhost";
$username="root";
$password="1212312121";
$dbname="shop";
$con=mysqli_connect($servername,$username,$password,$dbname);
if(!$con) die("Connnect mysql database fail!!".mysqli_connect_error());
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <title>6230300567</title>
</head>

<body>
  <div class="container text-center">
  <h3>ประวัติการซื้อสินค้า</h3>
    <?php
    $sql1 = "SELECT * FROM order_product";
    $allCus=mysqli_query($con,$sql1);
    if(mysqli_num_rows($allCus)>0){
    
        while($row=mysqli_fetch_assoc($allCus)){
                $order = $row['id'];
                echo "<p>Name : ".$row['fname']." ".$row['lname']."</p>";
                echo "<p>Address : ".$row['address']."</p>";
                echo "<p>Mobile : ".$row['mobile']."</p>";
                echo "<p>Order : ".$row['id']."</p>";
                echo "<p>Date : ".$row['date']."</p>";
                echo "<br>";

                $sql2="SELECT  * FROM  order_details INNER JOIN product ON product.id = order_details.product_id
                        INNER JOIN order_product ON order_details.order_id = order_product.id WHERE order_product.id = $order";
                $productList=mysqli_query($con,$sql2);
            
                if(mysqli_num_rows($productList)>0){
                    $total = 0;
                    echo "<table border=1>
                        <tr>
                        <th>id</th>
                        <th>name</th>
                        <th>description</th>
                        <th>price</th>
                        </tr>";
                    while($row=mysqli_fetch_assoc($productList)){
                        echo "<tr>
                        <td>".$row["product_id"]."</td>
                        <td>".$row["name"]."</td>
                        <td>".$row["description"]."</td>
                        <td>".$row["price"]."</td>
                        <tr>";
                        $total += $row["price"];
                    }
                    echo "</table>";
                    echo "<h3>ราคาสิ้นค้า $total บาท</h3>";
                }
        }
    
    }
    echo "<h3><a href='show_product.php'>สั่งสินค้าอีกครั้ง</a></h3>";
    ?>