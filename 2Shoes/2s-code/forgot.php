<?php
    require_once('init.php');
    
    $page_title = 'Forgot Password';
    $page_style = '  label.error {
                        float: none; 
                        color: red; 
                        font-size: 16px;
                        font-weight: normal;
                        line-height: 1.4;
                        margin-top: 0.5em;
                        width: 100%;
                        display: block;
                      }
                      label.success {
                        float: none; 
                        color: green; 
                        font-size: 16px;
                        font-weight: normal;
                        line-height: 1.4;
                        margin-top: 0.5em;
                        width: 100%;
                        display: block;
                      }';
    
    $page_script = '    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.7/jquery.validate.min.js"></script>
                        <script type="text/javascript">
                        $(document).ready(function() {
                            $("#forgot").validate({
                                submitHandler: function(form) {                            
                                    form.submit();
                                }
                            });
                        });
                        </script>';
    
    $page_header_text = 'Forgot Password';
    
    $content = '    <form id="forgot" class="validate" method="post" action="forgot.php" data-ajax="false">';
    
    $email = (isset($_POST['email']) && strlen(trim($_POST['email'])) > 0) ? trim($_POST['email']) : '';
    
    $error = 0;
    $error_msg = '';
    if(isset($_REQUEST['recover'])) {
        if(strlen($email) == 0) {
            $error++;
            $error_msg .= 'You did not enter your Email Address<br />';
        } else if(strlen($email) > 0 && !email_exists($email)) {
            $error++;
            $error_msg .= 'The Email Address does not exist<br />';
        }
        
        if($error == 0) {
            try {
                $db = DB::getInstance();
                
                $query = $db->prepare("SELECT d.fname,d.email_own AS email,u.id FROM 4962d92_users_data AS d LEFT JOIN 4962d92_users_nfo AS u ON d.uid = d.id WHERE d.email_own = :email LIMIT 1");
                $query->execute(array(":email" => $email));
                
                if($query->rowCount() == 1) {
                    $row = $query->fetch(PDO::FETCH_ASSOC);
                    
                    $message = str_replace("[@fname]",$row['fname'],FORGOT);
                    $message = str_replace("[@uid]",$row['id'],$message);
                    
                    $headers  = 'MIME-Version: 1.0' . "\r\n";
                    $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
                    $headers .= 'From: '.MAILNAME.' <'.MAILADDRESS.'>' . "\r\n";
                    
                    $ret = mail($row['email'],"Recover Password",$message,$headers);
                    
                    if($ret)
                    {
                        $email = '';
                        
                        $content .= '   <label class="success">Please check your email address and follow the given instructions !</label>';
                    } else {
                        $error++;
                        $error_msg .= 'An error occured when trying to send you the recovery email.Please try again !';
                    }
                }
            } catch(PDOException $e) {
                echo $e->getMessage();
            }
            $db = null;
        }
        
        if($error > 0) {
            $content .= '   <label class="error">'.$error_msg.'</label>';
        }
    }
    
    $content .= '       <fieldset data-role="controlgroup">
                            <input class="required email" name="email" type="text" id="email" placeholder="Email Address" value="'.$email.'" />
                        </fieldset>
                        
                        <input type="submit" name="recover" value="Recover Password" data-theme="a" />
                    </form>';
    
    $template = new Template('template.html');
    $template->set('title',$page_title);
    $template->set('style',$page_style);
    $template->set('script',$page_script);
    $template->set('domain',DOMAIN);
    $template->set('header_text',$page_header_text);
    $template->set('content',$content);
    echo $template->output();
?>