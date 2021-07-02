<?php

require 'broker.php';
$broker=Broker::getBroker();

$broker->izvrsiUpit("insert into model(marka,naziv,karoserija,kubikaza,snaga) values (".$_POST['marka'].",'".$_POST['naziv']."','".$_POST['karoserija']."','".$_POST['kubikaza']."','".$_POST['snaga']."')");
$rezultat=$broker->getRezultat();
if(!$rezultat){
   echo $broker->getMysqli()->error;
}else{
   
    
    echo '1';
}

?>