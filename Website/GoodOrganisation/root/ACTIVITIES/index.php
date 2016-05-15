<?php
    require_once '../default/phpfunc/dbconfig.php';
    require_once 'php/getallactivities.php';
?>


<!DOCTYPE html>
<html>
<head>
<title>ACTIVITIES</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- TRYING TO CONNECT GOOGLE PROVIDED JQUERY -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script type="text/javascript" src="../DEFAULT/JS/jquery-1.12.2.min.js"></script>

<!-- main stuff -->
<link rel="stylesheet" type="text/css" href="CSS/activities.css">
<link rel="stylesheet" type="text/css" href="../DEFAULT/CSS/INTEGRAL.css">
<link rel="stylesheet" type="text/css" href="../DEFAULT/CSS/FOOTER.css">
<script type="text/javascript" src="JS\activities.js"></script>
<link rel="stylesheet" type="text/css" href="../DEFAULT/CSS/fixedmenu.css">

</head>
<body>
	<div id="header" class="scrolled">
		<?php include '../DEFAULT/PAGEPARTS/Header.php';?>
	</div>
    
    <div id="contents">
        
        <!-- for a table of activities on the left-->
        <div id="actpad">
            <div id="padinnercontainer">
                <div id="desctextbox">
                    <h1 id="actcap">ENJOY THE VAST CHOICE OF ACTIVITIES</h1>
                    <h2 id="rescap">RESERVE IN ADVANCE FOR THE BEST EXPERIENCE</h2>
                </div>
                <div id="allactivities">
                    <ul class="act_container">
                        <?php 
                            for ($i=0; $i < count($activities); $i++) {
                                
                            echo 
                                '
                        <li class="act_item">
                            <div class="activity">
                                <div class="activity_img" style=\'background-image: url("images/deficon.png")\'>
                                    
                                </div>
                                <form action="php/processreservation.php" method="post">
                                <div class="activity_info">
                                    <p class="text actname">'.$activities[$i]./*the name 0 7*/'</p>
                                    <div class="description">
                                        <p class="text desc">
                                            '.$activities[$i+=1]./*description 1 */' 
                                        </p>
                                        <p class="text tinyline numbplaces">
                                            Activity Code: '.$activities[$i+=1]./*ID 2 ..*/'
                                        </p>
                                        <input class="secret" type="text" name="actid" value="'.$activities[$i+=1]./*ID 3 ..*/'">
                                        <p class="text tinyline numbplaces">
                                            Places available: '.$activities[$i+=1]./*places 4*/'
                                            <input class="secret" type="text" name="avplaces" value="'.$activities[$i]./*nr of available places 4 ..*/'">
                                        </p>
                                        <input class="secret" type="text" name="resplaces" value="'.$activities[$i+=1]./*nr of res places 5 ..*/'">
                                        <input type="checkbox" class="chkbox" required name="reserve" checked="true" value="yes"><label class="chkbox"> I want to reserve </label>
                                    </div>
                                    <p class="text actdate">'.$activities[$i+=1]./*date 6*/'</p>
                                </div>
                                <div class="reservebtn">
                                    <!-- <h3 class="text resbtntext">RESERVE</h3> -->
                                    <button type="submit" class="btn text resbtntext">RESERVE</button>
                                </form>
                                </div>
                            </div>
                            
                        </li>';
                        }
                        ?>
                        
                        
                    </ul>
                    
                </div>
            </div>
        </div>
        
        
        <!-- for personal stats, login required -->
        <div id="personstat">
            <div id="managingbtn">
                <p id="arrow_sign">&lt&lt</p>
            </div>
        </div>
    </div>
    
    <?php include '../DEFAULT/PAGEPARTS/footer.php';?>
</body>
