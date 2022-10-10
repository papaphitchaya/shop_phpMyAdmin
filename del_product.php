<?php
session_start();
$i = $_GET['i'];

if(isset($_SESSION["cart"])){
    if(count($_SESSION["cart"]) <= 1){
        $_SESSION['cart'] =null;
    }else{
        array_splice($_SESSION["cart"],$i,1);
    }
    array_splice($_SESSION["cart"],$i,1);
    }
    
?>
<script>
    window.alert("นำสินค้าออกจากตระกร้าเรียบร้อยแล้ว");
    window.location.replace('show_product.php');
</script>