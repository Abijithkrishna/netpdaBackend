<?php
require_once("praveenlib.php");
$keys=array('uname','password');
if(checkPOST($keys)){
    $connection=connectSQL($dbdetails);

    $uname=safeString($connection,$_POST['uname']);
    $password=safeString($connection,$_POST['password']);

    $query="select * from login where uname='".$uname."' AND password='".$password."' limit 1;";
    $result=mysqli_query($connection,$query);

    if($result){
        $count=mysqli_num_rows($result);

        if($count==1){
            echo "login_success";
            //header("location:index.php");
        }
        else echo "login_fail";
    }else{
        echo $connection->error;
    }

}else{
    echo "insufficient credentials";
}

