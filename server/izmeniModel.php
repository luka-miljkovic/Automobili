<?php

require 'broker.php';
$broker=Broker::getBroker();

$broker->izvrsiUpit("update model set naziv='".$_POST['naziv']."', karoserija='".$_POST['karoserija']."', kubikaza='".$_POST['kubikaza']."', snaga='".$_POST['snaga']."' where id=".$_POST['id']." and marka=".$_POST['marka']);
$rezultat=$broker->getRezultat();
if(!$rezultat){
   echo $broker->getMysqli()->error;
}else{
    echo '1';
}

?>