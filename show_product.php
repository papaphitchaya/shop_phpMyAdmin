<?php
session_start();

$servername="localhost";
$username="root";
$password="1212312121";
$dbname="shop";
$per_page=10;

if(isset($_GET["page"])) 
{
  $start_page=$_GET["page"]*$per_page;
}
else 
{
  $start_page=0;
}

// Create connection
$con=mysqli_connect($servername,$username,$password,$dbname);
// Check connection
//if(!$con)
//{
//  die("Connnect mysql database fail!!".mysqli_connect_error());
//}
//echo "Connect mysql successfully!";
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
      <br>
      <h3>Paphitchaya w/ SANRIO</h3>
      <table class="table table-bordered table-hover" style="table-layout: auto; width: 100%;">
          <thead class="thead-light text-center"><tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Image</th>
          </tr></thead>
          <tbody>
            
            <?php
            $sql="SELECT * FROM product";
            $result=mysqli_query($con,$sql);
            $numrow=mysqli_num_rows($result);
            echo "<br>".$numrow." Records <br>";

            echo "<ul class='pagination'>";
            echo "<li><a href='show_product.php?page=".($start_page-1)."' class='button'>Previous</a></li>";
            for($i=0;$i<ceil($numrow/$per_page);$i++)
            {
              echo "<li><a href='show_product.php?page=$i'> ".($i+1)." </a></li>";
            }
            echo "<li><a href='show_product.php?page=".($start_page+1)."' class='button'>NEXT</a></li>";
            
            $sql="SELECT * FROM product LIMIT $start_page,$per_page";
            $result=mysqli_query($con,$sql);

            if (mysqli_num_rows($result) > 0)
            {
                while($row = mysqli_fetch_assoc($result)) {
                  echo "<tr><td>". $row["ID"]. "</td><td>" . $row["Name"]. "</td><td>" . $row["Description"]. "</td><td>" . $row["Price"]."</td><td>";
                  echo "<img style='width:100px' src=";
                  echo $row["Image"];
                  echo "></td><th><a href='add_product.php?id=".$row["ID"]."'>Add item</th></tr>";
                }

                echo "</table>";
                echo "<ul class='pagination'>";
                echo "<li><a href='show_product.php?page=".($start_page-1)."' class='button'>Previous</a></li>";
                for($i=0;$i<ceil($numrow/$per_page);$i++)
                {
                  echo "<li><a href='show_product.php?page=$i'> ".($i+1)." </a></li>";
                }
                echo "<li><a href='show_product.php?page=".($start_page+1)."' class='button'>NEXT</a></li>";
            }
            else
            {
                //echo "0 results";
            }

            ?>

            <table class="table table-bordered table-hover" style="table-layout: auto; width: 100%;">
            <thead class="thead-light text-center"><tr>
              <th>ลำดับ</th>
              <th>ID</th>
              <th>Name</th>
              <th>Description</th>
              <th>Price</th>
            </tr></thead>
            <tbody>
              
            <?php
            echo "<br><br><br>";
            if(isset($_SESSION["cart"])){
              $total=0;
              echo "<h1>ตระกร้าสินค้า</h1>";
                  for($i=0;$i<count($_SESSION["cart"]);$i++)
                  {
                      $item=$_SESSION["cart"][$i];
                      echo "<tr><td>".($i+1)."</td>";
                      echo "<td>".$item['ID']."</td>";
                      echo "<td>".$item['Name']."</td>";
                      echo "<td>".$item['Description']."</td>";
                      echo "<td>".$item['Price']."</td>";
                      echo "<td><a href='del_product.php?i=".$i."'>X</th></tr>";
                      $total+=$item['Price'];
                  }
                
              echo "</table>";
              echo "<h3>ราคาสิ้นค้า $total บาท</h3>";              
              echo "<h4><a href='checkout.php'>สั่งซื้อ</a></h4>";
              echo "<h4><a href='del_all_product.php'>ลบทั้งหมด</h4></a>";
              }

            mysqli_close($con);
            ?>

          </tbody>
        </table>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>