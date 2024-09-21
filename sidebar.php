<!-- search -->  
<!-- <div class="panel panel-default">
    <div class="panel-body">
     <form action="index.php?q=product" method="post">
       <div class="input-group custom-search-form">
            <input type="search" class="form-control" name="search" placeholder="Search for...">
            <span class="input-group-btn">
                <button class="btn btn-default" id="btnsearch" name="btnsearch" type="submit">
                    <i class="fa fa-search"></i>
                </button>
            </span>
        </div>
    </form>

    </div> 
</div> -->
<!-- end serch -->




<!-- category -->
 <div class="panel panel-default"> 
    <div class="panel-body">
    <div class="list-group">
     <div class="well well-sm " style="background-color:#098744;color:#fff;"><b> Courses </b> </div>
        <ul >
        <?php 
            $mydb->setQuery("SELECT distinct(COURSE_DESC)
                      FROM  `course`");
              $cur = $mydb->loadResultList();

            foreach ($cur as $result) {
            echo ' <li><a href="index.php?q=product&id='.$result->COURSE_DESC.'" >'.$result->COURSE_DESC.'</a></li> ';
            }
        ?>
         </ul>
      </div> 
   </div> 
</div>
<!-- end category -->

<!-- login -->
<?php 
if(!isset($_SESSION['IDNO'])){
?>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="well well-sm" style="background-color:#098744;color:#fff;"><b>Login Student</b></div>

        <form class="form-horizontal span6" action="login.php" method="POST">
            <div class="form-group">
                <div class="col-md-12">
                    <label class="control-label" for="U_USERNAME">Username:</label> 
                    <input id="U_USERNAME" name="U_USERNAME" placeholder="Username" type="text" class="form-control input">
                </div>

                <div class="col-md-12">
                    <label class="control-label" for="U_PASS">Password:</label> 
                    <div class="input-group">
                        <input name="U_PASS" id="U_PASS" placeholder="Password" type="password" class="form-control input">
                        <div class="input-group-addon" style="cursor: pointer;" onclick="togglePassword()">
                            <i class="fa fa-eye"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-12">
                    <button type="submit" id="sidebarLogin" name="sidebarLogin" style="background-color:#098744;color:#fff;" class="btn btn-primary btn-sm">
                         Login
                    </button>
                    <a href="#" style="margin-left: 15px; font-size: 14px; text-decoration: underline; color: #098744;">Forgot Password?</a>
                    <a href="http://localhost/onlineenrolmentsystem/admin/login.php" style="margin-left: 15px; font-size: 14px; text-decoration: underline; color: #098744;" target="_blank">Login as Admin</a>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    function togglePassword() {
        var passwordField = document.getElementById("U_PASS");
        var eyeIcon = document.querySelector(".input-group-addon i");

        if (passwordField.type === "password") {
            passwordField.type = "text";
            eyeIcon.classList.remove("fa-eye");
            eyeIcon.classList.add("fa-eye-slash");
        } else {
            passwordField.type = "password";
            eyeIcon.classList.remove("fa-eye-slash");
            eyeIcon.classList.add("fa-eye");
        }
    }
</script>
<?php } ?>


 