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

<html lang="en">
<head>
<link rel="stylesheet" href="/css/colorbox.css" />
   <META content="text/html; charset=utf-8" http-equiv="Content-Type">
	<title><?php echo $title ?></title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="simple-line-icons.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/noty/packaged/jquery.noty.packaged.min.js"></script>
	<script src="js/progressbar.js"></script>
	<script src="js/main.js"></script>
	<script src="js/script.js"></script>
    <script type="text/javascript" src="chat/chat.js"></script>
	<link rel="stylesheet" href="chat/chat.css" type="text/css" />
    <script type="text/javascript">
    
        // ask user for name with popup prompt    
        var name = "<?php echo $steamprofile['personaname'] ?>";
		var ava = "<?php echo $steamprofile['avatarfull'] ?>";
    	
    	// display name on page
    	$("#name-area").html("You are: <span>" + name + "</span>");
    	
    	// kick off chat
        var chat =  new Chat();
    	$(function() {
    	
    		 chat.getState(); 
    		 
    		 // watch textarea for key presses
             $("#sendie").keydown(function(event) {  
             
                 var key = event.which;  
           
                 //all keys including return.  
                 if (key >= 33) {
                   
                     var maxLength = $(this).attr("maxlength");  
                     var length = this.value.length;  
                     
                     // don't allow new content if length is maxed out
                     if (length >= maxLength) {  
                         event.preventDefault();  
                     }  
                  }  
    		 																																																});
    		 // watch textarea for release of key press
    		 $('#sendie').keyup(function(e) {	
    		 					 
    			  if (e.keyCode == 13) { 
    			  
                    var text = $(this).val();
    				var maxLength = $(this).attr("maxlength");  
                    var length = text.length; 
                     
                    // send 
                    if (length <= maxLength + 1) { 
                     
    			        chat.send(text, name, ava);	
    			        $(this).val("");
    			        
                    } else {
                    
    					$(this).val(text.substring(0, maxLength));
    					
    				}	
    				
    				
    			  }
             });
            
    	});
    </script>
</head>
<head>
<meta charset="utf-8">
<script src="scripts/jquery-1.7.2.js"></script>
<script src="scripts/jquery.noty.packaged.min.js"></script>
<script src="scripts/jquery.cookie.js"></script>
<script src="scripts/jquery-tipsy.js"></script>
<script src="scripts/userChat.js"></script>
<script src="scripts/smooth-scroll.js"></script>
<script src="scripts/emoji.js"></script>
<script src="scripts/apps/module.js"></script>
<script src="scripts/apps/jquery-ui.js"></script>
<script src="scripts/swiper.min.js"></script>
<link rel="stylesheet" href="/styles/styles.css">
<link rel="stylesheet" href="/styles/fonts.css">
<link rel="stylesheet" href="/styles/widgets.css">
<link rel="stylesheet" href="/styles/swiper.min.css"">
<?php
if(isset($_SESSION["steamid"])) {
	include_once('steamauth/userInfo.php');
		$connection = new MongoClient();
		$collection = $connection->selectDB('admin')->selectCollection('site_users');
		$list = $collection->find();
		$steam_list = array();
		foreach($list as $key => $value){
			$steam_list[] = $value['steamid'];
		}

		if(!in_array($_SESSION['steamid'],$steam_list)){
			$collection->save(array('steamid' => $_SESSION['steamid'],'name' => $_SESSION['steam_personaname'],'ip' => $_SERVER['REMOTE_ADDR']));
		}

	?>
	<script type="text/javascript">
		window.steam_user = <?php echo json_encode($steamprofile);?>;
		window.chat_user = new steamUser(window.steam_user.personaname,window.steam_user.avatarfull,window.steam_user.steamid);
	</script>
	<?php
}
?>
</head>

<body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>  
 <script src="/jquery.colorbox.js"></script>
 <script>
 unction openColorBox(){
$.colorbox({html:"<h2>ТЕХНИЧЕСКИЕ РАБОТЫ!</h2>"});
 }
 
 setTimeout(openColorBox, 1000); /*вот здесь задается время всплытия окна 5000 = 5сек, соответственно 50=5мс, т.е. почти сразу после загрузки страницы*/
 </script>
	<div id="wrapper">

		<header id="header">
			<strong class="logo"><a href="/"><img style="margin-left: px;  margin-top: 20px" src="image/levaia/logo.png" alt="logo"></a></strong>
			    <div class="heder-nav1">
					
			<div class="ic-us-online"><i class="icon-users" style="line-height:70px; color: #ffc600;"></i>
			<div class="us-onll" ><script>var _uox = _uox || {};(function() {var s=document.createElement("script");
s.src="http://static.usuarios-online.com/uo2.min.js";document.getElementsByTagName("head")[0].appendChild(s);})();</script>
<a  href="http://www.usuarios-online.com/en/" data-id="ff55c9d5771ce173b50125e0a5cfcf1d" data-type="free" target="_blank" id="uox_link" onclick="return false" >users online</a></div>
			</div>			
			
			<div style="float: right;height: 70px;">
				<?php
				if(!isset($_SESSION["steamid"])) {
					steamlogin();
					 "<div class=\"div-login-set1\"><a class=\"login-set1\" href=\"#\"><i class=\"icon-social-facebok\" style=\"line-height:35px;\"></i></a><a class=\"login-set2\" href=\"#\"><i class=\"icon-social-twiter\" style=\"line-height:35px;\"></i></a>
					<a class=\"login-set2\" href=\"#\"><i class=\"icon-social-umblr\" style=\"line-height:35px;\"></i></a><a class=\"btn1\" href=\"?login\" ><i class=\"icon-login\" style=\"line-height:35px;\"></i></a></div>";
					}
					else {
						
					echo '<div class="barboss22"><div class="barbossov"><img src="'.$steamprofile['avatar'].'" class="ava_top"></div><div class="barboss">'.$steamprofile['personaname'].'</div></div>';
					echo "<div class=\"div-login-set\"><a class=\"login-set\"  href=\"http://csgo-hell.ru/settings.php\" onclick=\"return false\"> <i class=\"icon-user\" style=\"line-height:35px;\"></i></a><a class=\"btn\" href=\"steamauth/logout.php\" ><i class=\"icon-logout\" style=\"line-height:35px;\"></i></a></div>";
					mysql_query("UPDATE users SET name='".$steamprofile['personaname']."', avatar='".$steamprofile['avatarfull']."' WHERE steamid='".$_SESSION["steamid"]."'");
					}
				?>
    		</div>
			
			</div>
			
	    </header>
		
		
			<div id="main">
				<div class="sidebar">
					<nav id="nav">
					
					
						<ul>
							<li><a href="/"><i style="color: #ffc600;" class="icon-game-controller ic_padd"></i>Играть</a></li>
							<li><a href="/history.php"><i style="color: #ffc600;" class="icon-clock ic_padd"></i><?php echo $msg[$lang]["history"]; ?></a></li>
							<li><a href="/top.php"><i style="color: #ffc600;" class="icon-trophy ic_padd"></i><?php echo $msg[$lang]["top"]; ?></a></li>
							<li><a href="/about.php"><i style="color: #ffc600;" class="icon-question ic_padd"></i><?php echo $msg[$lang]["about"]; ?></a></li>
							<li><a href="/rls.php"><i style="color: #ffc600;" class="icon-note ic_padd"></i><?php echo $msg[$lang]["rules"]; ?></a></li>
							<?php
				if(!isset($_SESSION["steamid"])) {
					steamlogin();
					 "<div class=\"div-login-set1\"><a class=\"login-set1\" href=\"#\"><i class=\"icon-social-facebok\" style=\"line-height:35px;\"></i></a><a class=\"login-set2\" href=\"#\"><i class=\"icon-social-twiter\" style=\"line-height:35px;\"></i></a>
					<a class=\"login-set2\" href=\"#\"><i class=\"icon-social-umblr\" style=\"line-height:35px;\"></i></a><a class=\"btn1\" href=\"?login\" ><i class=\"icon-login\" style=\"line-height:35px;\"></i></a></div>";
					}
					else {
					echo '<li><a href="/settings.php"><i style="color: #ffc600;" class="icon-settings ic_padd"></i>Настройки</a></li>';
					}
				?>
						</ul>
					</nav>
					
					
					
					<div class="bonus-block">
						<div class="box">
							<p style=" color: #ffffff; padding-top: 10px;"></i> Первый вложивший получает <span style="color: #ffc600;">+10%</span> к шансу выйграть.</p>
							<div class="text-box">
								<p style="color: #ffffff;"> Добавь <span style="color: #ffc600;">csgo-hell.ru</span> к нику и получи -2% к комиссии.</p>
							</div>
						</div>
					</div>
					<div class="last-winner">
						<div class="barbbbb" style="text-align: center;"><i class="icon-badge ic_padd" style= "line-height: 44px;padding: 0 10px 0 0;"></i>Последний победитель</div>
						<?php 
							$lastgame = fetchinfo("value","info","name","current_game");
							$lastwinner = fetchinfo("userid","games","id",$lastgame-1);
							$winnercost = fetchinfo("cost","games","id",$lastgame-1);
							$winnerpercent = round(fetchinfo("percent","games","id",$lastgame-1),1);
							$winneravatar = fetchinfo("avatar","users","steamid",$lastwinner);
							$winnername = fetchinfo("name","users","steamid",$lastwinner);
						?>
						<div class="visual">
							<img style="border-radius: 60px; border: 5px #ffc600 solid;" src="<?php echo $winneravatar ?>" alt="image description" width="109" height="109">
						</div>
						<center><h3><marquee direction="left" bgcolor="rgba(41, 38, 34, 0)" width="240" style="height: 15px; margin-top: 0px; width: 200px; margin-left: 0px; margin-bottom: -10px; color: rgb(255, 255, 255); text-shadow: rgb(212, 87, 2) 0px 0px 5px; font-weight: 800; font-size: 16px; background-color: rgba(41, 38, 34, 0);"><div class="name" id="winner-name"><?php echo $winnername ?></div></marquee> 
      </h3></center>
						<ul>
							<li>
								<span class="val"><?php echo $msg[$lang]["win"]; ?>:</span>
								<span class="price">$<?php echo round($winnercost,2); ?></span>
							</li>
							<li>
								<span class="val"><?php echo $msg[$lang]["chanceee"]; ?>:</span>
								<span class="price"><?php echo $winnerpercent ?>%</span>
							</li>
						</ul>
					</div>
					<div class="bonus-block">
<nav class="box">
<div class="barbbbb" style="text-align: center;"><i class="icon-book-open ic_padd" style="line-height: 45px;padding: 0 5px 0 0;"></i><a href="http://vk.com/id147461559" target="_blank" style="color: #fff;" >Техническая поддержка</a></div>
</div>
</div>

				</div>				
				<div class="content">
					<div class="items">
							<ul>
								<li>
									<div class="text">
										<p><?php echo $msg[$lang]["gtd"]; ?></p>
										<strong><?php
											$result = mysql_query("SELECT id FROM games WHERE `starttime` > ".(time()-86400));
											echo mysql_num_rows($result);
										?></strong>
									</div>
								</li>
								<li>
									<div class="text">
										<p><?php echo $msg[$lang]["ptd"]; ?></p>
										<strong><?php
										$row = mysql_fetch_array($result);
										$pls = 0;
										$itms = 0;
										for($i=$row["id"]; $i <= $lastgame; $i++) {
											$rst = mysql_query("SELECT id FROM game".$i." GROUP BY userid");
											$pls += mysql_num_rows($rst);
										}
										echo $pls;
										?></strong>
									</div>								
								</li>
								<li>
									<div class="text">
										<p><?php echo $msg[$lang]["itd"]; ?></p>
									<strong><?php
									$result = mysql_query("SELECT SUM(itemsnum) AS itemsnum FROM games WHERE `starttime` > ".(time()-86400));
									$row = mysql_fetch_assoc($result);
									echo $row["itemsnum"];
									?></strong>
									</div>
								</li>
								<li>
									<div class="text">
									
						<?php 
						$result = mysql_query("SELECT MAX(cost) AS cost FROM games");
						$row = mysql_fetch_assoc($result);
						$maxcost =  $row["cost"];
						?>
										<p><?php echo $msg[$lang]["mwin"]; ?></p>
										<strong><?php echo round($maxcost,2); ?>$</strong>
									</div>
								</li>
							</ul>
						</div>
						<div class="jackpot">
						<div class="infohni">Информация</div>
						<div><p><i class="icon-question ic_padd3" style="margin:0; color:#ffc600;"></i>Участвующие вкладывают скины, при достижении заданного максимального числа случайно выбирается победителем, который получит все скины.</p></div>
						<div><p><i class="icon-question ic_padd3" style="margin:0; color:#ffc600;"></i>Если добавить к нику в steam "Csgo-Hell.ru", комиссия уменьшается в 2 раза.</p></div>
						<div><p><i class="icon-question ic_padd3" style="margin:0; color:#ffc600;"></i>Первый игрок получаеет к выйгрушу 10%.</p></div>						
													<div style="text-align: center;"><?php 
													if(!isset($_SESSION["steamid"])) {
														echo "<a class=\"enter_btn\" href=\"?login\" id='money_round2'><i class=\"ico_enter_btn\"></i>".$msg[$lang]["login"]."</a>";
													}
													?>	</div>																
					</div>
					
						
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
							<div style="float: none;"><p style="font: 400 14.5px/30px roboto,sans-serif;float: none;text-align: left;"><i class="icon-question ic_padd3" style="margin:0; color:#ffc600;"></i>Вероятность выигрыша зависит от стоимости скинов.</p></div>
							<div style="float: none;"><p style="font: 400 14.5px/30px roboto,sans-serif;float: none;text-align: left;"><i class="icon-question ic_padd3" style="margin:0; color:#ffc600;"></i>Максимум вещей 10 штук в одном раунде.</p></div>
							<div style="float: none;"><p style="font: 400 14.5px/30px roboto,sans-serif;float: none;text-align: left;"><i class="icon-question ic_padd3" style="margin:0; color:#ffc600;"></i>Минимальная стоимость вещей отсутствует.</p></div>
							<div style="float: none;"><p style="font: 400 14.5px/30px roboto,sans-serif;float: none;text-align: left;"><i class="icon-question ic_padd3" style="margin:0; color:#ffc600;"></i>Комиссия 5%</p></div>
							<div style="float: none;"><p style="font: 400 14.5px/30px roboto,sans-serif;float: none;text-align: left;"><i class="icon-question ic_padd3" style="margin:0; color:#ffc600;"></i>Превый кто поставит ставку, ставьте одну вещь, иначе бот заберёт комиссию после рулетки.</p></div>
							
							
							
							
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
<div class="chat" style="height: auto; z-index: 1000;">
  <header>
    <h2 class="title"><a>ЧАТ</a></h2>    
  </header>
  
	<div id="page-wrap">
        <p id="name-area"></p>
        <div id="chat-wrap">
		<div id="chat-area">		
			<?php
if(isset($_SESSION["steamid"])) {?><div class="form hidden">
				<textarea id="sendie" placeholder="<?=$msg['send_sms'] ?>"></textarea>
				<input type="submit" id="sendie" name="" value="">
			</div>	
			
			
			
		<div id="emoji_box" class="scroll">
		<div class="emoji_scroll_wrap">				
		<div id="emoji_list" style="top: 0px;">
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px 0px" id="smile" onclick="add_smile(':)')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -17px" id="smile" onclick="add_smile(':-d')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -34px" id="smile" onclick="add_smile(';-)')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -51px" id="smile" onclick="add_smile('xd')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -68px" id="smile" onclick="add_smile(';-p')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -85px" id="smile" onclick="add_smile(':-p')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -102px" id="smile" onclick="add_smile('8-)')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -119px" id="smile" onclick="add_smile('b-)')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -136px" id="smile" onclick="add_smile(':-(')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -153px" id="smile" onclick="add_smile(';-]')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -170px" id="smile" onclick="add_smile('uâ€”(')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -187px" id="smile" onclick="add_smile(':l(')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -204px" id="smile" onclick="add_smile(':_(')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -221px" id="smile" onclick="add_smile(':((')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -238px" id="smile" onclick="add_smile(':o')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -255px" id="smile" onclick="add_smile(':|')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -272px" id="smile" onclick="add_smile('3-)')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -323px" id="smile" onclick="add_smile('o*)')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -340px" id="smile" onclick="add_smile(';o')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -374px" id="smile" onclick="add_smile('8o')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -357px" id="smile" onclick="add_smile('8|')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -391px" id="smile" onclick="add_smile(':x')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -442px" id="smile" onclick="add_smile('*3')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -409px" id="smile" onclick="add_smile(':-*')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -425px" id="smile" onclick="add_smile('}^)')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -306px" id="smile" onclick="add_smile('>((')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -289px" id="smile" onclick="add_smile('>(')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -459px" id="smile" onclick="add_smile(':like:')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -476px" id="smile" onclick="add_smile(':dislike:')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -493px" id="smile" onclick="add_smile(':u:')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -510px" id="smile" onclick="add_smile(':v:')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/white.gif" style="background-position: 0px -527px" id="smile" onclick="add_smile(':kk:')"><br>	
</div>
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDC4F.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ‘')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDC4A.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ‘Š')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/270B.png"  id="smile" style="background:none;" onclick="add_smile('âœ‹')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDE4F.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ™')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDC43.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ‘ƒ')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDC46.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ‘†')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDC47.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ‘‡')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDC48.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ‘ˆ')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDCAA.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ’ª')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDC42.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ‘‚')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDC8B.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ’‹')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDCA9.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ’©')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/2744.png"  id="smile" style="background:none;" onclick="add_smile('â„')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83CDF77.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ·')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83CDF78.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ¸')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83CDF85.png"  id="smile" style="background:none;" onclick="add_smile('ðŸŽ…')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDCA6.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ’¦')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDC7A.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ‘º')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83DDC28.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ¨')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83CDF4C.png"  id="smile" style="background:none;" onclick="add_smile('ðŸŒ')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83CDFC6.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ†')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83CDFB2.png"  id="smile" style="background:none;" onclick="add_smile('ðŸŽ²')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83CDF7A.png"  id="smile" style="background:none;" onclick="add_smile('ðŸº')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->
<!-- ÑÐ¼Ð°Ð¹Ð» Ð½Ð°Ñ‡Ð°Ð»Ð¾ -->
<div class="smileadd itemk over">
<img src="/styles/images/chat/D83CDF7B.png"  id="smile" style="background:none;" onclick="add_smile('ðŸ»')"><br>	
</div>
<!-- ÑÐ¼Ð°Ð¹Ð»Ñ‹ ÐºÐ¾Ð½ÐµÑ† -->

	</br>			
				
</div>
</div>
		
		</div>
			
			
			
			
			<?php
}
?>



<script type="text/javascript">





  $(document).ready(function() { 
      $("A.smiles").toggle(function() { 
        // ÐžÑ‚Ð¾Ð±Ñ€Ð°Ð¶Ð°ÐµÐ¼ ÑÐºÑ€Ñ‹Ñ‚Ñ‹Ð¹ Ð±Ð»Ð¾Ðº 
        $("DIV#emoji_box").fadeIn(); // fadeIn - Ð¿Ð»Ð°Ð²Ð½Ð¾Ðµ Ð¿Ð¾ÑÐ²Ð»ÐµÐ½Ð¸Ðµ
        return false; // Ð½Ðµ Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´Ð¸Ñ‚ÑŒ Ð¿ÐµÑ€ÐµÑ…Ð¾Ð´ Ð¿Ð¾ ÑÑÑ‹Ð»ÐºÐµ
      },  
      function() { 
        // Ð¡ÐºÑ€Ñ‹Ð²Ð°ÐµÐ¼ Ð±Ð»Ð¾Ðº 
        $("DIV#emoji_box").fadeOut(); // fadeOut - Ð¿Ð»Ð°Ð²Ð½Ð¾Ðµ Ð¸ÑÑ‡ÐµÐ·Ð½Ð¾Ð²ÐµÐ½Ð¸Ðµ 
        return false; // Ð½Ðµ Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´Ð¸Ñ‚ÑŒ Ð¿ÐµÑ€ÐµÑ…Ð¾Ð´ Ð¿Ð¾ ÑÑÑ‹Ð»ÐºÐµ
      }); 
	  
	  $(document).click(function(e){ var elem = $("#emoji_box"); if(e.target!=elem[0]&&!elem.has(e.target).length){ elem.hide(); } }) 

	  
	  
	  // end of toggle() 
    }); // end of ready() 

</script>


			<div class="scroll">
			<div id="chat_messages"></div>
			</div>
			<div class="bottom hidden">
				<div class="left"><?=$msg['all'] ?> <span id="inf1"></span></div>
					<?php
if(isset($_SESSION["steamid"])) {?><div class="buttons right hidden">
					<a href="#" class="smiles"></a>
		
				</div><?php
}
?>
			</div>
		
		
		</div></div>
		
    </div>
</div>
</body>
</html>