<?php
    require_once("praveenlib.php");
    $keys = array('name','password','dob','designation','phone','email','about');
    if(checkPOST($keys)){
        $conn =connectSQL($dbdetails);
        $name = safeString($conn,$_POST['name']);
        $password = safeString($conn,$_POST['password']);
        $dob = safeString($conn,$_POST['dob']);
        $designation = safeString($conn,$_POST['designation']);
        $phone = safeString($conn,$_POST['phone']);
        $email = safeString($conn,$_POST['email']);
        $about = safeString($conn,$_POST['about']);
        if(!is_numeric($phone)){
            echo "invalid_phone_number";
            die();
        }


        $login = "insert into login(uname,password) VALUES ('{$email}','{$password}');";

        if($rs = $conn->query("select uname from login where uname = '{$email}' ")){

            $count= $rs->num_rows;
            if( $count > 0){
                echo "Already Registered";
            }
            else{
                if($rs1 = $conn->query($login)){
                    $query = "insert into user_details(uid,name,dob,designation,description,contact_num,email) VALUES
                                ((SELECT uid from login where uname='{$email}'),'{$name}','{$dob}','{$designation}','{$about}','{$phone}','{$email}')";

                    if($rs2 = $conn->query($query)){
                        echo "Insert Successful";

                    }
                    else{
                        echo "Insert into User_Details failed";
                    }
                }
                else{

                    echo "Insert into login failed";
                }
            }
        }
        else{
            echo "Select Query Failed";
        }
    }
    else{
        echo "not enough parameters";
    }
?>