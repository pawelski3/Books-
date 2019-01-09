<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>category</title>
        <style>
            body{
                background-color:black;
                color: white;
            }
        </style>
    </head>
    <body>
        <?php
        include ('baza.php');
        echo "ok";
           
        $tbl=$pdo->query("SELECT * FROM category");
        echo '<br><a href="add_cat.php">Dodaj kategorię</a><br>';
        
        foreach($tbl->fetchAll() as $value){
           //echo '<pre>';
           //print_r($value);
           echo "<br>";
           echo $value['name'];
           echo "x x";
          
          // echo $value['code'];
          // echo "x x";
          // echo $value['mid'];
           echo '<a href="usun_cat.php?id='.$value['id'].'">Usun</a>|<a href="add_cat.php?id='.$value['id'].'">Edytuj</a>';
         
            /*echo 'Imie';
            echo $value['date'];*/    
        }    
        ?>
    </body>
</html>

