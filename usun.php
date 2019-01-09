<?php

include ('baza.php');
$id=isSet($_GET['id'])?intval($_GET['id']):0;
if($id>0){
    $sth=$pdo->prepare('DELETE FROM odzera WHERE Numer=:id');
    $sth->bindParam(':id',$id);
    $sth->execute();
    header('location:index.php');
    
}
else{header ('location:index.php');}


?>
