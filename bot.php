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
	<link rel="stylesheet" href="css/1.css">
	<link rel="stylesheet" href="simple-line-icons.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/noty/packaged/jquery.noty.packaged.min.js"></script>
	<script src="js/progressbar.js"></script>
	<script src="js/main.js"></script>
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
					
			<div class="ic-us-online"><i class="icon-users" style="line-height:70px;"></i>
			<div class="us-onll"><script>var _uox = _uox || {};(function() {var s=document.createElement("script");
s.src="http://static.usuarios-online.com/uo2.min.js";document.getElementsByTagName("head")[0].appendChild(s);})();</script>
<a href="http://www.usuarios-online.com/en/" data-id="ff55c9d5771ce173b50125e0a5cfcf1d" data-type="free" target="_blank" id="uox_link" onclick="return false" >users online</a></div>
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
					
						<div class="jackpot">
						          
		
			
			
			
			<div align="center">
            <div class="stock">
                <div style="color: #ffc600" class="title-stock">ИНВЕНТАРЬ БОТА</div>
                <div class="content-stock">
<div align="center">
  <?php 
$steamapi ='7E4588BEAFDDFC3E275DB57D82CED8A5';

function getInventory($steamapi, $steamid, $userid) {

$uid = $_GET['steamid'];

    $url = "http://steamcommunity.com/profiles/76561198128963795".$_SESSION['steam_steamid']."";
    $json_object = file_get_contents($url);
    $json_decoded = json_decode($json_object);

    $str = $json_decoded->response->players[0]->steamid;

    $urlInv = "http://steamcommunity.com/profiles/76561198128963795" . $str . "/inventory/json/730/2/?trading=2";

    $json_object_inv = file_get_contents($urlInv);
    $json_decoded_inv = json_decode($json_object_inv, true);

    // iterate through Inventory and find ids.
    $rgInventory = $json_decoded_inv[rgInventory];
    $rgInventory = array_values($rgInventory);

    $rgDesc = $json_decoded_inv[rgDescriptions];
    $rgDesc = array_values($rgDesc);

    $itemnames = array();

    for ($i = 0; $i < count($rgInventory); $i++) {  //iterate through rgInventory.
        $classidInv = $rgInventory[$i]['classid'];
        $instanceidInv = $rgInventory[$i]['instanceid'];

        for ($j = 0; $j < count($rgDesc); $j++) {   //iterate through rgDesc.
            $classid = $rgDesc[$j]['classid'];
            $instanceid = $rgDesc[$j]['instanceid'];

            if ($classidInv == $classid && $instanceidInv == $instanceid) {
                $icon_url = $rgDesc[$j]['icon_url'];
                $market_name = $rgDesc[$j]['market_name'];
                $market_name_formatted = str_replace(" ", "%20", $market_name);
                $st_color = $rgDesc[$j]['name_color'];
                @$itemnames = array_push($itemnames, $market_name_formatted);



                for ($k = 0; $k < count($rgDesc[$j]['tags']); $k++) {
                    if ($rgDesc[$j]['tags'][$k]['category'] == "Rarity") {
                        $name_color = $rgDesc[$j]['tags'][$k]['color'];
                    } else if ($rgDesc[$j]['tags'][$k]['category'] == "Exterior") {

                        $name_exterior = $rgDesc[$j]['tags'][$k]['name'];
                    }
                }
            }
        }

        if ($st_color == "CF6A32") {
            $name_color = "CF6A32";
        }
            $market_names = str_replace(" ", '%20', $market_name);
        $link = "http://steamcommunity.com/market/priceoverview/?country=EN&currency=1&appid=730&market_hash_name=".$market_names."";
        $string = file_get_contents($link);
        $obj = json_decode($string);
        $result = substr(strstr($string, '$'), 1, strlen($string));
        $a = explode('$', $result);  
        $a = $a[1]; 
        $a = str_replace('"}','', $a);
        $lowest_price = (float)($a);
        $lowest_prices = $lowest_price;
        echo '<div class="divinv" style="border: 2px solid #' . $name_color . '" data-toggle="tooltip" data-placement="bottom" title="'.$market_name.'"><img id="stay" class="weaponinv"  src="http://steamcommunity-a.akamaihd.net/economy/image/' . $icon_url . '" width="80px" height="60px" alt="' . $market_name.'"/><div class="rarityinv">' . $lowest_prices . ' $</div></div>';

        $name_exterior = null;
    }

    priceInv($itemnames);
}



echo @getInventory();
 ?>  
                
                </div>
				</div>
                </div>
 </div>
  </div>
																					
					    </div>
					
						
						
							<div class="box">
								
							</div>
					
						
</body>
</html>