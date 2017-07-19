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
							// открываем страницу статистики
$handle = fopen("http://hit.ua/stat?i=141613", "rb");
// получаем все данные
$contents = stream_get_contents($handle);
// удаляем из памяти ссылку на файл
fclose($handle);
// разбиваем полученые данные на ячейки (запятая - разделитель)
$arr =  explode(",", $contents);
// переменная онлайна
$online = (!empty($arr)) ? $arr[3] : 0; 
						?>
<!DOCTYPE html>
<!-- saved from url=(0020)http://csgospots.ru/ -->
<html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CSGO-HELL</title>
    <meta name="keywords" content="">

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
	background:#76cfe2;
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
    background: none repeat scroll 0 0 #76cfe2;
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
				<a href="" target="_blank"><button type="button" class="input-group-addon add-funds">Принять участие</button></a>
				
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
<a href="https://vk.com/csgo_hell" target="_blank"><img src="img/vk.png"></a>
        
       
	 
	 
 
 
            <div class="lottery-items-empty">нет предметов удовлетворяющих условиям поиска</div>
    
      


		
					
						
						<div class="game">
							<div class="box">
								<div class="number">
									<p><?php echo $msg[$lang]["game"]; ?>: #<span class="lot_current_game_id"><?php echo $lastgame; ?></span></p>
								</div>
							</div>
					<div class="progress">
							<div class="visual" style="float: left;">
							
								<div id="prograsd" style="position: relative;"><p class="progressbar__label" style="position: absolute; top: 45%; left: 50%; padding: 0px; margin: 0px; transform: translate(-50%, -50%); color: #fff;font: 500 40px/40px roboto,sans-serif;">ЗАГРУЗКА</p><span id="money_round" class="bankbbas"><span id="bank"><?php echo round(fetchinfo("cost","games","id",$lastgame),2); ?></span>$</span></div>
								
							</div>
							<div style="float: right;width: 522px;">
							<div class="amount">
								<span id="end_game1" class="end_game"><?php echo $msg[$lang]["timeleft"]; ?>: <i class="icon-clock"></i> <span id="timeleft">0</span></span>
								<span id="end_game2" class="end_game" style="font: 500 15px/15px roboto,sans-serif;"></span>
							</div>
							<div style="float: none;"><p style="font: 400 14.5px/30px roboto,sans-serif;float: none;text-align: left;">• Вероятность выигрыша зависит от стоимости скинов.</p></div>
							<div style="float: none;"><p style="font: 400 14.5px/30px roboto,sans-serif;float: none;text-align: left;">• Максимум вещей 10 штук в одном раунде.</p></div>
							<div style="float: none;"><p style="font: 400 14.5px/30px roboto,sans-serif;float: none;text-align: left;">• Минимальная стоимость вещей отсутствует.</p></div>
							<div style="float: none;"><p style="font: 400 14.5px/30px roboto,sans-serif;float: none;text-align: left;">• Комиссия 5%</p>
							
							</div>
							
							
							
							
						<?php
						if(!isset($_SESSION["steamid"])) echo '<div id="add_game"><a class="btwn_game" href="?login">'.$msg[$lang]["ingame"].'!</a></div>';
						else {
							$token = fetchinfo("tlink","users","steamid",$_SESSION["steamid"]);
							if(strlen($token) < 2) echo '<div id="add_game"><a class="btwn_game" href="#" onclick="alert2(\'Укажите ссылку для обмена в настройках!\')">'.$msg[$lang]["ingame"].'</a></div>';
							else echo '<div id="add_game"><a class="btwn_game" href="https://steamcommunity.com/tradeoffer/new/?partner=168698067&token=3NHjqjMk" target=_blank>'.$msg[$lang]["ingame"].'</a></div>';
						}
						?>
					</div>
					</div>
						
						<div class="stuffs promo-cover">
						<ul id="game-sts" style="display: block;">
							<div class=rounditems><?php 
								include "items.php";
							?></div>
										<li class="orange" style="min-height: 80px; width: 100%; text-align: center;">
										<div class="text" style="min-height: 80px; padding: 0;">
											<p style="font-size: 18pt;min-height: 60px;vertical-align: middle;padding: 0px;">Раунд начался</p>
										</div>
									</li>
								</ul>
						</div>
						
 
        
    
      
<!-- hit.ua -->
<a href='http://hit.ua/?x=141613' target='_blank'>
<script language="javascript" type="text/javascript"><!--
Cd=document;Cr="&"+Math.random();Cp="&s=1";
Cd.cookie="b=b";if(Cd.cookie)Cp+="&c=1";
Cp+="&t="+(new Date()).getTimezoneOffset();
if(self!=top)Cp+="&f=1";
//--></script>
<script language="javascript1.1" type="text/javascript"><!--
if(navigator.javaEnabled())Cp+="&j=1";
//--></script>
<script language="javascript1.2" type="text/javascript"><!--
if(typeof(screen)!='undefined')Cp+="&w="+screen.width+"&h="+
screen.height+"&d="+(screen.colorDepth?screen.colorDepth:screen.pixelDepth);
//--></script>
<script language="javascript" type="text/javascript"><!--
Cd.write("<img src='http://c.hit.ua/hit?i=141613&g=0&x=2"+Cp+Cr+
"&r="+escape(Cd.referrer)+"&u="+escape(window.location.href)+
"' border='0' wi"+"dth='1' he"+"ight='1'/>");
//--></script>
<noscript>
<img src='http://c.hit.ua/hit?i=141613&amp;g=0&amp;x=2' border='0'/>
</noscript></a>
<!-- / hit.ua -->



   


<div style="display: none;">    <div id="support">        <div class="emodal">            <div class="box-modal_close arcticmodal-close mini"></div>            <h2>Поддержка</h2>            <hr class="style-two">            <div class="modalText" style="font-size: 14px; line-height: 14px;">                <div style="margin-bottom: 7px; border-bottom: 1px dashed #6A717B; padding-bottom: 7px;">                    <span style="color: #ECA594;">Вопрос:</span> Я победил, а мне не пришел предмет!<br>                    <span style="color: #B7E5B7;">Ответ:</span> Отправка предметов может занимать до 30 минут (в зависимости от загруженности ботов), а также обратите внимание на то, что в настройках приватности вашего аккаунта Steam ваш инвентарь должен быть открыт: <a href="http://steamcommunity.com/id/me/edit/settings/" style="color: #86C9EA;" target="_blank">http://steamcommunity.com/id/me/edit/settings/</a>, а также убедитесь, что у вас нет никаких ограничений на обмен в Steam.<br>                    Если на вашей стороне все в порядке, тогда напишите нашему саппорту с описанием проблемы, вашим ником на сайте и номером лота.                </div>                <div style="margin-bottom: 7px; border-bottom: 1px dashed #6A717B; padding-bottom: 7px;">                    <span style="color: #ECA594;">Вопрос:</span> Как часто будут появляться новые предметы?<br>                    <span style="color: #B7E5B7;">Ответ:</span> Сайт автоматически обновляется по мере появления необходимых предметов у нашего <a href="https://steamcommunity.com/id/csgospots-ru/inventory/" target="_blank" style="color: #86C9EA;">бота</a>.                </div>            </div>            <div style="font-size: 13px; line-height: 13px; text-align: center; color: #ccc; padding-top: 10px;">Если вы здесь не нашли ответа на ваш вопрос, тогда вы можете задать его<br> нашему саппорту через эту форму отправки сообщений в VK.</div>            <a class="vksupBtn" href="http://vk.com/csgospots" target="_blank">Отправить сообщение саппорту в ВК</a>        </div>    </div></div><div style="display: none;">   <div id="fairplay">       <div class="emodal">           <div class="box-modal_close arcticmodal-close mini"></div>           <h2>ЧЕСТНАЯ ИГРА - КАК ЭТО РАБОТАЕТ?</h2>           <hr class="style-two">           <div class="modalText">               <p>Технология «честной игры» на нашем сайте работает таким образом, что победителя выбирает не наша система, а сайт <a href="https://www.random.org/" target="_blank">Random.org</a></p>               <p><a href="https://www.random.org/" target="_blank">Random.org</a> – самый популярный и авторитетный генератор случайных чисел в мире.</p>               <p>Как только набирается необходимое количество пользователей на одном предмете - мы посылаем запрос на random.org с числом, которое является количеством всех пользователей, после чего random.org возвращает нашей системе случайное число, под которым и выбирается обладатель предмета.</p>               <p>После завершения, под выбраным победителем появится такая панель,<br> в которой, нажав на кнопку <span style="color: #fff; font-weigh: bold;">«проверить»</span> вас перебросит на сайт random.org, где вы сможете все проверить сами.</p>               <center><img src="./CSGOSPOTS_files/fairplayexample.jpg"></center>           </div>       </div>   </div></div><div style="display: none;">    <div id="history" style="min-width: 500px;">        <div class="emodal" style="width: auto;">            <div class="box-modal_close arcticmodal-close mini"></div>            <table style="width: 100%;">                <thead>                <tr>                    <th>ID лота</th>                    <th>Название предмета</th>                    <th>Результат</th>                    <th>Статус отправки</th>                </tr>                </thead>                <tbody><tr><td colspan="5" style="text-align: center">Вы не участвовали ни в одном покупке</td></tr></tbody>            </table>        </div>    </div></div></body></html>