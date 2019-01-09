<?php

include ('baza.php');


if(isSet($_POST['Nr'])){
    $id=isSet($_POST['id'])?intval($_POST['id']):0;
    $fileName=0;
    
if (isSet($_FILES['cover']['error'])&&$_FILES['cover']['error']==0){    
    require ("vendor/autoload.php");
    $uid=uniqid();
    $ext=pathinfo($_FILES['cover']['name'],PATHINFO_EXTENSION);
    $fileName='cover_'.$uid.'.'.$ext;
    $fileNameOrg='org_'.$uid.'.'.$ext;
    
    $imagine = new Imagine\Gd\Imagine();
    $size = new Imagine\Image\Box(50,50);
    $mode=Imagine\Image\ImageInterface::THUMBNAIL_OUTBOUND;
// or
//imagine = new Imagine\Imagick\Imagine();

$imagine->open($_FILES['cover']['tmp_name'])
        ->thumbnail($size,$mode)
        ->save(__DIR__.'/img/'.$fileName);

move_uploaded_file($_FILES['cover']['tmp_name'],__DIR__.'/img/'.$fileNameOrg);
}  
    if($id>0){
        
    if($fileName){
        $sth=$pdo->prepare('UPDATE odzera SET `Nr`=:Nr, `cat_id`=:cat_id,`date`=:date, `currency`=:currency,`cover`=:cover  WHERE Numer=:id');
        $sth->bindParam(':cover',$fileName);
        
        $sthCov=$pdo->prepare('SELECT cover FROM odzera WHERE id=:id');
        $sthCov->bindParam(':id',$idGet);
        $sthCov->execute();
        
        $cover=$sthCov->fetch()['cover'];
        if($cover){
            unlink(__DIR__.'/img/'.$cover);
            unlink(__DIR__.'/img/'.str_replace('cover_','org_',$cover));
        }
        
    } else{
      $sth=$pdo->prepare('UPDATE odzera SET `Nr`=:Nr, `cat_id`=:cat_id,`date`=:date, `currency`=:currency WHERE Numer=:id');  
    }   
        
    
    $sth->bindParam(':id',$id);
    echo "update".$_POST['id'].$_POST['Nr'].$_POST['date'].$_POST['currency'];
}else{
    $sth=$pdo->prepare('INSERT INTO `odzera`(`Nr`,`cat_id`, `date`, `currency`,`cover`) VALUES (:Nr,:cat_id, :date, :currency, :cover)');
    }
    if($fileName){
        $sth->bindParam(':cover',$fileName);
    }
    
    $sth->bindParam(':Nr',$_POST['Nr']);
    $sth->bindParam(':cat_id',$_POST['cat_id']);
    $sth->bindParam(':date',$_POST['date']);
    $sth->bindParam(':currency',$_POST['currency']);
    //$sth->bindParam(':code',$_POST['code']);
    //$sth->bindParam(':mid',$_POST['mid']);
    $sth->execute();
    header ('location:index.php');
}

$idGet=isSet($_GET['id'])?intval($_GET['id']):0;

if($idGet>0){
     $sth=$pdo->prepare('SELECT * FROM odzera WHERE Numer=:id');
     $sth->bindParam(':id',$idGet);
     $sth->execute();
     $result=$sth->fetch();
}

    $sth2=$pdo->prepare('SELECT * FROM category ORDER BY name ASC');
     $sth2->bindParam(':id',$idGet);
     $sth2->execute();
     $category=$sth2->fetchAll();
   


?>
  
<form method="post" action="add.php" enctype="multipart/form-data" >
   
   <?php
        if($idGet>0){
            echo '<input type="hidden" name="id" value="'.$idGet.'">';
        }
    ?> 
    
    Autor:<input type="text" name="Nr" <?php if(isSet($result['Nr'])){echo 'value="'.$result['Nr'].'"';}?>
                 ><br><br>
    Kategoria:<select name="cat_id"><?php 
        foreach ($category as $value){
              $selected = ( $value['id']  == $result['cat_id'] ) ? 'selected="selected"' : ' ';
            //$selected=($value['id']==$result['cat_id'])?'selected="selected"' : ' ';
            echo '<option '.$selected.'value="'.$value['id'].'">'.$value['name'].'</option>';//WAŻNE SĄ ODSTĘPY MIĘDZY HTML a PHP, ŻEBY NIE POŁĄCZYŁ
             //echo '<option ' . $selected . ' value="' . $value['id'] . '">' . $value['name'] . '</option>';
        }?>
    </select>
        <br> <br>
    Tytul:<input type="text" name="date" <?php if(isSet($result['date'])){echo 'value="'.$result['date'].'"';}?>
                 ><br><br>
    Okładka: <input type="file" name="cover">
    <?php
    if(isSet($result['cover']) && $result['cover']){
        echo '<img src="img/'.$result['cover'].'">';
        
    }
    
    
    ?>
    
    Recenzja:<textarea name="currency"> <?php if(isSet($result['currency'])){echo $result['currency'].'"';}?>
                       </textarea><br><br>
    <input type="submit" value="Zapisz"> 
</form>
