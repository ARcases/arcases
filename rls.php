<?php 
@include_once "langdoc.php";
if(!isset($_COOKIE['lang'])) {
	setcookie("lang","en",2147485547);
	$lang = "en";
} else $lang = $_COOKIE["lang"];
$sitename = "Csgo-Hell";
$title = "$sitename Rules";
@include_once('set.php');
@include_once('steamauth/steamauth.php');
@include_once('steamauth/userInfo.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?php echo $title ?></title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="simple-line-icons.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/noty/packaged/jquery.noty.packaged.min.js"></script>
	<script src="https://cdn.rawgit.com/kimmobrunfeldt/progressbar.js/0.5.6/dist/progressbar.js"></script>
	<script src="js/main.js"></script>
</head>
<body>
	<div id="wrapper">
		<header id="header">
			<strong class="logo"><a href="/"><img style="margin-left: px;  margin-top: 20px" src="image/levaia/logo.png" alt="logo"></a></strong>
				<div class="heder-nav1">
					
			<div class="ic-us-online"><i class="icon-users" style="line-height:70px;"></i>
			<div class="us-onll"><script>var _uox = _uox || {};(function() {var s=document.createElement("script");
s.src="http://static.usuarios-online.com/uo2.min.js";document.getElementsByTagName("head")[0].appendChild(s);})();</script>
<a href="http://www.usuarios-online.com/en/" data-id="ff55c9d5771ce173b50125e0a5cfcf1d" data-type="free" target="_blank" id="uox_link" onclick="return false" >users online</a></div>
			</div>		
			
			<div style="float: right;height: 70px;">
				<?php
				if(!isset($_SESSION["steamid"])) {
					steamlogin();
					 "<div class=\"div-login-set1\"><a class=\"login-set1\" href=\"#\"><i class=\"icon-social-facebook\" style=\"line-height:35px;\"></i></a><a class=\"login-set2\" href=\"#\"><i class=\"icon-social-twitter\" style=\"line-height:35px;\"></i></a>
					<a class=\"login-set2\" href=\"#\"><i class=\"icon-social-tumblr\" style=\"line-height:35px;\"></i></a><a class=\"btn1\" href=\"?login\" ><i class=\"icon-login\" style=\"line-height:35px;\"></i></a></div>";
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
							<li><a href="/"><i class="icon-game-controller ic_padd"></i>Играть</a></li>
							<li><a href="/history.php"><i class="icon-clock ic_padd"></i><?php echo $msg[$lang]["history"]; ?></a></li>
							<li><a href="/top.php"><i class="icon-trophy ic_padd"></i><?php echo $msg[$lang]["top"]; ?></a></li>
							<li><a href="/about.php"><i class="icon-question ic_padd"></i><?php echo $msg[$lang]["about"]; ?></a></li>
							<li><a href="/rls.php"><i class="icon-note ic_padd"></i><?php echo $msg[$lang]["rules"]; ?></a></li>
							<?php
				if(!isset($_SESSION["steamid"])) {
					steamlogin();
					 "<div class=\"div-login-set1\"><a class=\"login-set1\" href=\"#\"><i class=\"icon-social-facebok\" style=\"line-height:35px;\"></i></a><a class=\"login-set2\" href=\"#\"><i class=\"icon-social-twiter\" style=\"line-height:35px;\"></i></a>
					<a class=\"login-set2\" href=\"#\"><i class=\"icon-social-umblr\" style=\"line-height:35px;\"></i></a><a class=\"btn1\" href=\"?login\" ><i class=\"icon-login\" style=\"line-height:35px;\"></i></a></div>";
					}
					else {
					echo '<li><a href="/settings.php"><i class="icon-settings ic_padd"></i>Настройки</a></li>';
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
					<h2>Правила</h2>
					<div class="lists">
						<div class="box">
							<h3><span>1.</span>Общие правила</h3>
							<ul>
								<li>
									<p><span>1.1.</span>При регистрации на проекте CSGO-HELL, вы соглашаетесь условиями в полном объеме. Запрещается регистрация и использование сервиса для лиц, которые не согласны с этими правилами.</p>
								</li>
								<li>
									<p><span>1.2.</span>Администрация проекта не несет ответственности за любой ущерб, причиненный вам в результате использования данного сервиса.</p>
								</li>
								<li>
									<p><span>1.3.</span>Любая попытки взлома, использование недостоверных данных при регистрации будут строго наказывается администрацией "CSGO-HELL", до удаления всех аккаунтов, участвующих в вышеуказанных действий.</p>
								</li>
								<li>
									<p><span>1.4.</span>Любое написанное сообщение к администрации "CSGO-HELL" , имея непристойного содержания или оскорбительного характера, будут игнорироваться. В случае повторения инцидента - БАН или удаления учетной записи</p>
								</li>
								<li>
									<p><span>1.5.</span>Администрация имеет право вносить изменения в эти правила уведомив пользователей в новостях.</p>
								</li>
								<li>
									<p><span>1.6.</span>Так как невозможно описать все конкретные правила работы проекта "CSGO-HELL", какие-либо рекомендации или требования администрации проекта, следует рассматривать в качестве дополнения к существующим правилам.</p>
								</li>
							</ul>
						</div>
						<div class="box">
							<h3><span>2.</span>ОБЯЗАННОСТИ ПОЛЬЗОВАТЕЛЕЙ</h3>
							<ul>
								<li>
									<p><span>2.1.</span>В настройке аккаунта на сайте "CSGO-HELL" указывать правильную ссылку на оффтрейд и иметь открытый инвентарь на своём аккаунте в "Steam" </p>
								</li>
								<li>
									<p><span>2.2.</span>Запрещается использовать ненормативную лексику, а также шантаж, вымогательство денег или бонусов. В случае получения жалоб от жертв, аккаунт нарушителя будет забанен и удалён, или лишен права переписки.</p>
								</li>
								<li>
									<p><span>2.3.</span>При обнаружении неисправности или ошибки в скрипте, пользователи должны сначала убедиться, что администрация не знает о этой ошибке. Проверьте раздел "Новости". Если новости с описанием проблемы нет, то сообщите в службу поддержки.</p>
								</li>
								<li>
									<p><span>2.4.</span>Попытка взломать сайт или использовать возможные ошибки в скриптах. Нарушители будут немедленно забанены.</p>
								</li>
								<li>
									<p><span>2.5.</span>Категорически запрещается размещать ссылки, содержащие вирусы и фишинговые сайты / ссылки.</p>
								</li>
							</ul>
						</div>
						<div class="box">
							<h3><span>3.</span>ОСНОВА ДЛЯ УДАЛЕНИЯ и включение в черный список (БАН)</h3>
							<ul>
								<li>
									<p><span>3.1.</span>Все пользователи должны в полной мере и безоговорочно следовать правилам "CSGO-HELL". Несогласие или постоянное оспаривание правил приведет к блокировки аккаунта.</p>
								</li>
								<li>
									<p><span>3.2.</span>Мошенничество в системе, попытки взлома, проникновения в аккаунт других людей.</p>
								</li>
								<li>
									<p><span>3.3.</span>Шантаж пользователей или попытки мошенничества.</p>
								</li>
								<li>
									<p><span>3.4.</span>Апелляции к администрации, имеющие непристойного содержания или ненормативной лексики.</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
</body>
</html>