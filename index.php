<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Książki</title>
        <meta name="author" content="pawelgawel.c0.pl">
		<meta name="content" content="Książki">
		<meta name="description" content="stronnicowanie paginator">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		
		
		<link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <?php
        include ('baza.php');
       
        function t1($val,$min,$max){
            return ($val>=$min&&$val<=$max);
        }
        
        
        $count=$pdo->query('SELECT COUNT(Numer) as cnt FROM odzera')-> fetch()['cnt'];
        $page=isSet($_GET['page'])?intval($_GET['page']-1):0;
        $limit=10;
        $allPage=ceil($count/$limit);
        $from=$page*$limit;
        $sql = 'SELECT r.*, c.name FROM odzera r LEFT JOIN category c ON r.cat_id = c.id ORDER BY r.Numer DESC LIMIT ' . $from . ', ' . $limit;
        //$sql='SELECT r.*,c.name FROM odzera r LEFT JOIN category c ON r.cat_id=c.id ORDER BY r.Numer DESC LIMIT'.$from.', '.$limit;
        //$tbl=$pdo->query ('SELECT  r.*,c.name FROM odzera r LEFT JOIN category c ON r.cat_id=c.id ORDER BY r.Numer DESC LIMIT'.$from.','.$limit;
        
        /*echo "PAGE:".$page."<BR>";
        echo "Count:".$count."<BR>";
        echo "limit:".$limit."<br>";
        echo "FROM:".$from.'<br>';
        echo "all Page:".$allPage."<br>";
        echo "SQL:".$sql."<br>";*/
        //$tbl=$pdo->query($sql);
        $tbl = $pdo->query( $sql  );
        echo '<br><h1 class="center">Książki</h1><br><table><thead><tr><td>Nr</td>
		
		<td>Kategoria</td>
		<td>Autor</td>
		<td>Tytuł</td>
		<td>Recencja</td>
	
		
		</thead><tbody>';
      
        foreach($tbl->fetchAll() as $value){
           //echo '<pre>';
           //print_r($value);
           echo "<tr><td>";
           echo $value['Numer'];
           echo "</td><td>";
          
            echo $value['name'];
           
           echo "</td><td>";
           echo $value['Nr'];
           echo "</td><td>";
           echo $value['date'];
           echo "</td><td>";
           echo $value['currency'];
           echo "</td><td>";
           
          // echo $value['code'];
          // echo "x x";
          // echo $value['mid'];
           echo '<a href="usun.php?id='.$value['Numer'].'">Usun</a></td><td><a href="add.php?id='.$value['Numer'].'">Edytuj</a></td></tr>';
        
            /*echo 'Imie';
            echo $value['date'];*/    
        } 
        
		echo '</tbody></table><div class="center">';
        if ($page>4){
            echo '<a href="index.php?page=1">< pierwsza strona</a>|';
        }
         
        for ($i=1;$i<=$allPage;$i++){
            $bold=($i==($page+1))?'style="font-size:24px";':' ';
            if(t1($i,($page-3),($page+5))){
               echo '<a '.$bold.' href="index.php?page='.$i.'">'.$i.'</a>  | '; 
            }  
        }
        
        if ($page<$allPage-1){
            echo '<a href="index.php?page='.$allPage.'"> ostatnia strona></a>|';
        }
		echo '<br><br><a href="add.php"><span>Dodaj książkę</span></a></div>';
        ?>
    </body>
</html>
