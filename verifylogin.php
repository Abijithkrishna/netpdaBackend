<?php
require_once("praveenlib.php");
$keys=array('uname','password');
if(checkPOST($keys)){
    $connection=connectSQL($dbdetails);

    $uname=safeString($connection,$_POST['uname']);
    $password=safeString($connection,$_POST['password']);

}else{
    echo "insufficient credentials";
}

