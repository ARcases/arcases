<?php
@include_once "langdoc.php";
if(!isset($_COOKIE['lang'])) {
	setcookie("lang","en",2147485547);
	$lang = "en";
} else $lang = $_COOKIE["lang"];
$sitename = "Рулетка CS:GO";
$title = "$sitename";
@include_once('set.php');
require('steamauth/steamauth.php');
	if(isset($_SESSION["steamid"])) {
include_once('steamauth/userInfo.php');}
?>
<?php 
							$lastgame = fetchinfo("value","info","name","current_game");
							$lastwinner = fetchinfo("userid","games","id",$lastgame-1);
							$winnercost = fetchinfo("cost","games","id",$lastgame-1);
							$winnerpercent = round(fetchinfo("percent","games","id",$lastgame-1),1);
							$winneravatar = fetchinfo("avatar","users","steamid",$lastwinner);
							$winnername = fetchinfo("name","users","steamid",$lastwinner);
							$igr = fetchinfo("games","users","steamid",$_SESSION["steamid"]);
							$deneg = fetchinfo("won","users","steamid",$_SESSION["steamid"]);
						?>
<!DOCTYPE html>
<!-- saved from url=(0020)http://csgospots.ru/ -->
<html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CSGO-HELL</title>   
    <meta name="viewport" content="width=1024">
    <link rel="icon" type="image/png" href="http://csgospots.ru/icon16.png">
    <link rel="stylesheet" href="./CSGOSPOTS_files/normalize.css">
    <link rel="stylesheet" href="./CSGOSPOTS_files/WuXUy.css">
    <link rel="stylesheet" href="./CSGOSPOTS_files/css">
	<link rel="stylesheet" href="/css/style1.css">
    <script>var LOTS = MY_LOTS = FULL_LOT = false; var locale = 'ru';</script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/noty/packaged/jquery.noty.packaged.min.js"></script>
	<script src="js/progressbar.js"></script>
	<script src="js/main.js"></script>
	<script src="js/script.js"></script>
  
<style type="text/css" id="core-notify">
.notify-corner {
  position: fixed;
  margin: 20px;
  z-index: 1050;
}

.notify-corner .notify-wrapper,
.notify-corner .notify-container {
  position: relative;
  display: block;
  height: inherit;
  width: 395px;
  margin: 3px;
}

.notify-wrapper {
  z-index: 1;
  position: absolute;
  display: inline-block;
  height: 0;
  width: 0;
}

.notify-container {
  display: none;
  z-index: 1;
  position: absolute;
}

.notify-hidable {
  cursor: pointer;
}

[data-notify-text],[data-notify-html] {
  position: relative;
}

.notify-arrow {
  position: absolute;
  z-index: 2;
  width: 0;
  height: 0;
}
.roulet {
	height: 135px !important; 
	background: #3a3f42;
	text-align: left;
	white-space: nowrap;
	overflow: hidden;
}
.weaponline {
	position: absolute; 
	margin-left: 450px; 
	width:10px; 
	height: 135px !important; 
	background:#ffc600;
}
.weaponbox {
	width: 125px;
	margin: 5px;
	display:inline-block;
	-webkit-box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 1);
	-moz-box-shadow:    0px 0px 10px 0px rgba(0, 0, 0, 1);
	box-shadow:         0px 0px 10px 0px rgba(0, 0, 0, 1);
}
.weaponheader {
	height: 125px; 
	background: #3d3d3d; /* Old browsers */
	background: -moz-linear-gradient(top,  #3d3d3d 0%, #b3b3b3 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#3d3d3d), color-stop(100%,#b3b3b3)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top,  #3d3d3d 0%,#b3b3b3 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top,  #3d3d3d 0%,#b3b3b3 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top,  #3d3d3d 0%,#b3b3b3 100%); /* IE10+ */
	background: linear-gradient(to bottom,  #3d3d3d 0%,#b3b3b3 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3d3d3d', endColorstr='#b3b3b3',GradientType=0 ); /* IE6-9 */

}

.players-percent {
    background: none repeat scroll 0 0 #ffc600;
    overflow: hidden;
    position: relative;
    width: 100%;
}
.players-tape {
    height: 100px;
    position: relative;
    text-align: center;
    width: 100%;
    z-index: 90;
}
.players-percent-block {
    display: inline-block;
    height: 80px;
    margin: 10px 6px;
    position: relative;
    width: 80px;
}
.players-percent-block img {
    height: 80px;
    left: 0;
    position: absolute;
    top: 0;
    width: 80px;
}
.players-percent-text {
    background: none repeat scroll 0 0 rgba(33, 49, 55, 0.85);
    color: #48c8e4;
    font: 700 19px "Pt Sans";
    height: 24px;
    left: 0;
    position: absolute;
    top: 56px;
    width: 80px;
}
.players-arrows {
    cursor: pointer;
    height: 100px;
    position: absolute;
    width: 16px;
    z-index: 100;
}

</style>
</head>
<body class="cover" style="overflow: visible; margin-right: 0px;">
<header>
    <div class="container">
        <div class="logotype">
            <a href="/index.php"><img src="./CSGOSPOTS_files/logo.png" style="margin-top: 4px;"></a>
        </div>
        <div class="header-menu">
            <ul>
                <li><a href="/index.php"><span>Главная</span></a></li>
                <li><a href="/history.php"><span>История</span></a></li>
                  <li><a href="https://vk.com/csgo_hell"><span>Поддержка</span></a></li>
                <li><a href="/twitch.php"><span>Стримы</span></a></li>
            </ul>
        </div>
    </div>
</header>

<div class="container">
<?php 
													if(!isset($_SESSION["steamid"])) {
														echo "
   <div class=\"container\">
    <div class=\"lottery-container clearfix\" style=\"height: 47px;\">
    <div class=\"lottery-container-wrap\">
        <div class=\"headerSiteInfoLeft\">
            CSGO-HELL.RU - сайт, на котором вы можете получить<br/>желаемый предмет в сотни раз дешевле, чем в Steam
        </div>
        <div class=\"headerSiteInfoRight\">
            <a href=\"?login\" class=\"authBtn Steam\">Войти через Steam</a>
        </div>
        <div class=\"headerSiteInfoMid\">
            Пройдите авторизацию на сайте<br/>чтобы начать игру
        </div>
    </div>
</div>";
													}
													?>
    
<?php
				if(!isset($_SESSION["steamid"])) {
					steamlogin();
					 "<div class=\"div-login-set1\"><a class=\"login-set1\" href=\"#\"><i class=\"icon-social-facebok\" style=\"line-height:35px;\"></i></a><a class=\"login-set2\" href=\"#\"><i class=\"icon-social-twiter\" style=\"line-height:35px;\"></i></a>
					<a class=\"login-set2\" href=\"#\"><i class=\"icon-social-umblr\" style=\"line-height:35px;\"></i></a><a class=\"btn1\" href=\"?login\" ><i class=\"icon-login\" style=\"line-height:35px;\"></i></a></div>";
					}
					else {
						
					echo '
<div class="lottery-container clearfix" id="user-bar">
    <div class="lottery-container-wrap">
        <div class="booking-block">
            <div class="booking-block-profile">
                <img src="'.$steamprofile['avatar'].'">
                <div class="user-container">
                    <div class="type-aut steam-ic">ПРОФИЛЬ</div>
                    <div class="user-name">'.$steamprofile['personaname'].'</div>
                </div>
                <a href="steamauth/logout.php" class="exit"><span>Выйти</span></a>
            </div>

            <div class="booking-block-refill clearfix">
                <div class="booking-block-refill-balance">
                    Выиграно игр <span class=" rur-ic user-balance">'.$igr.'</span>				
                </div>
				<div class="booking-block-refill-balance">
                    Выиграно $ <span class=" rur-ic user-balance">'.$deneg.' </span>					
                </div>
				
				
                <div>
				<a href="https://steamcommunity.com/tradeoffer/new/?partner=168698067&token=3NHjqjMk" target="_blank"><button type="button" class="input-group-addon add-funds">Принять участие</button></a>
				
                </div>
				

    

                
            </div>
			

            <div class="booking-block-offerlink">
			
			<div class="input-group">			
			<form method="POST" action="./updatelink.php">                    
                    <input type="text" name="link" id="link" placeholder="Вставьте ссылку на обмен..." value="'.fetchinfo("tlink","users","steamid",$_SESSION["steamid"]).'">
                    <button type="submit" class="input-group-addon save-link"></button>
							
			        <a href="http://steamcommunity.com/id/me/tradeoffers/privacy#trade_offer_access_url" target="_blank"><button type="button" class="input-group-getlink"></button>
				
			</form>
			
            </div>
            </div>
        </div>

        <div class="history-block">
            <ul id="tabs">
                
                <li class="active"><a tab="#myLots">Сейчас на сайте: '.$online.'<span id="myLotsCount"></span></a></li>               
            </ul>
			
            <div class="tab_container">
									<div class="barbbbb" style="text-align: center;"><i class="icon-badge ic_padd" style= "line-height: 44px;padding: 0 10px 0 0;"></i>Последний победитель</div>
			<div id="myLots" class="history-slide-items tab_content empty" style="display: block;line-height: 0px;padding: 0 100px 0 0;"><div class="empty"><span>Ник: '.$winnername.' | Шанс: '.$winnerpercent.'% | Выиграно:  '.round($winnercost,2).'$</span></div></div>
			                              
            </div>			
        </div>
    </div>
</div>';
					
					mysql_query("UPDATE users SET name='".$steamprofile['personaname']."', avatar='".$steamprofile['avatarfull']."' WHERE steamid='".$_SESSION["steamid"]."'");
					}
				?>

        

	 <div class="lottery-full clearfix  lot-not-finished ">

        <div class="lottery-full-wrapper">

            <div class="availability-container">
                <div class="busy-space " style="width: 24.5%"></div>
                <div class="busy-space-info">
                    <span>1</span>местo <br> занято
                </div>
				<p class="jslots" style="padding-top: 5px;font-size: 16px;">
                   <center><span> </span></center>
                </p>
                <p class="jslots">
                   <H3> <center><span>ViktorDropex</span></center></H3>
                </p>
            </div>

            <div class="lottery-full-sidebar">
                <div class="lotAbout">
                    <div class="lotAboutTitle">Информация о стримере</div>
                    <ul></ul>
                </div>

                <div class="lottery-full-item-desc">                    
                    <div class="lottery-full-image ">
                        <img src="http://static-cdn.jtvnw.net/jtv_user_pictures/viktordropex-profile_image-56be276bf65c278f-300x300.jpeg" />
                    </div>
					<center><span>Follows</span>
                    <?php
$json = json_decode(file_get_contents("https://api.twitch.tv/kraken/channels/VIKTORDROPEX/follows?limit=25"));
$currentFollower = 0;
$currentPage     = 0;
$resultsPerPage  = 5;
// Use http://json.parser.online.fr/ to get the string parse of the Json_Decode
$tableHtml = <<<TABLE
<div id="page-number-%s" style="%s">
    <table>
        <tr>
            
        </tr>
        %s  
    </table>
</div>
TABLE;
$rowHtml = <<<ROW
<tr>
    <td><a href="%s"style="color:#FFFFFF"; >%s</a></td>    
    
</tr>
ROW;
$html = "";
$rows = "";
foreach ($json->follows as $follow)
{
    if ($currentFollower % $resultsPerPage == 0 && $currentFollower> 0)
    {
        $style = $currentPage === 0 ? '' : 'display:none';
        $html .= sprintf($tableHtml, $currentPage, $style, $rows);
        $rows = "";
        $currentPage++;
    }   
    $rows .= sprintf(   $rowHtml, 
                        $follow->user->_links->self,  
                        $follow->user->name . ' (' . $currentFollower .')',
                        $follow->user->created_at,
                        $follow->user->type
    );
    $currentFollower++;
}
$javascript = <<<JS

JS;
echo $javascript.$html;
?></center>
                   <ul>                       
						<a href="https://steamcommunity.com/id/Viktor_Dropex/" target="_blank" style="color:#A7B2B9;">Steamcommunity.com</a>
                        
                        </ul>
                </div>
            </div>

            <div class="lottery-full-content" id="full-lot-72">

                

                     
                
                <div class="members-lottery-container">
                    <div id="lotUsers" class="usersbox">
					<iframe src="http://www.twitch.tv/viktordropex/embed" frameborder="0" scrolling="no" height="378" width="738"></iframe>
					<div class="take-part-block">
                      
                        
                    </div>
					</div>

                  
					
                </div>

            </div>

        </div>

    </div>
        


   </body>
   </html>
   