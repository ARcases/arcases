<?php
@include_once('set.php');
@include_once('steamauth/steamauth.php');
@include_once "langdoc.php";
$lang = $_COOKIE["lang"];

$gamenum = fetchinfo("value","info","name","current_game");
$bank = fetchinfo("cost","games","id",$gamenum);
$timeleft = fetchinfo("starttime","games","id",$gamenum);
if($timeleft == 2147483647) $timeleft = 120;
$timeleft += 120-time();
if($timeleft == 1) {
	echo '<script>
	if(roulet == 0) { roulet = 1;
	setInterval(function(){timerinterval = setInterval("reloadinfo()",1000);},11000);
	clearInterval(timerinterval);
	setTimeout(function(){	
	$.ajax({
		type: "GET",
		url: "loadr.php",
		success: function(msg){
			$(\'.rounditems\').before(msg);
		}
	});},2500)
	}</script>';
}
if(!isset($_SESSION["steamid"])) $admin = 0;
else $admin = fetchinfo("admin","users","steamid",$_SESSION["steamid"]);
$ls=0;
$rs = mysql_query("SELECT * FROM `game".$gamenum."` GROUP BY `userid` ORDER BY `id` DESC");
$crs = "";
$td = "";
if(mysql_num_rows($rs) == 0) {
	
} else {
	$td = '<div class="players-percent"><div class="players-tape">';
	while($row = mysql_fetch_array($rs)) {
		$ls++;
		$avatar = $row["avatar"];
		$userid = $row["userid"];
		$username = fetchinfo("name","users","steamid",$userid);
		$rs2 = mysql_query("SELECT SUM(value) AS value FROM `game".$gamenum."` WHERE `userid`='$userid'");						
		$row = mysql_fetch_assoc($rs2);
		$sumvalue = $row["value"];
		if($admin > 0) $admtext = "<a style=\"color: #FF0000\" href=\"include.php?user=$userid\"> (Победитель)</a>"; 
		else $admtext = "";
		$crs .= '<li style="background: #3a3f42;	padding: 5px; width: 100%; margin-bottom: 5px;">
				<div class="head" style="margin-top: 10px; width: 100%; margin-bottom: 10px;">
					<div class="icon">
						<img src="'.$avatar.'" width="50px" height"50px"="">
					</div>
					<div class="title" style="font-size: 18pt;">
						<a href="http://steamcommunity.com/profiles/'.$userid.'" target="_blank" style="font-size: 20px; text-decoration: none; color: #FFF;">'.$username.'</a> <span style="color: #76cfe2;">'.$msg["en"]["deposit"].' <span style="color: #FFF;">'.round($sumvalue,2).'$</span>'.$admtext.'
					</div>
				</div>
				<ul class="drop-box" style="display: block; margin-bottom: 15px; margin-left: -5px;">';
					$rs3 = mysql_query("SELECT * FROM `game".$gamenum."` WHERE `userid`='$userid'");
					while($row33 = mysql_fetch_array($rs3)) {
					$crs .= '<li style="margin-left: 5px; margin-top: 5px; padding: 3px; border: 1px solid #FFF">
						<a href="http://steamcommunity.com/market/listings/730/'.$row33["item"].'"><img src="http://steamcommunity-a.akamaihd.net/economy/image/'.$row33["image"].'/60fx60f" title="'.$row33["item"].'"></a>
						</li>';
					}
				$td .= '<div class="players-percent-block">
							<img src="'.$avatar.'">
							<div class="players-percent-text">'.round(100*$sumvalue/$bank,1).'%</div>
						</div>';
				$crs .= '</ul>
			</li>';
	}
	$td .= '</div></div>';
}
echo $td.$crs;
echo "<script>if(bets < $ls) { audioElement2.play();} bets = $ls;</script>";

if(isset($_SESSION['steamid'])) {
	$rs = mysql_query("SELECT * FROM messages WHERE `userid` = '".$_SESSION['steamid']."'");
	while($row = mysql_fetch_array($rs)) {
		$mng = $row["msg"];
		if(strlen($msg[$lang][$mng]) > 0) echo "<script type=\"text/javascript\">alert2('<span class=from>".$row["from"].":</span><br/><span class=msg>".$msg[$lang][$mng]."</span>','information');</script>";
		else echo "<script type=\"text/javascript\">alert2('<span class=from>".$row["from"].":</span><br/><span class=msg>".$row["msg"]."</span>','information');</script>";
		mysql_query("DELETE FROM messages WHERE `id`='".$row["id"]."'");
	}
}

?>