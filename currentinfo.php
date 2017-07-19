<?php
@include_once ("set.php");
@include_once('steamauth/steamauth.php');
// текущий банк
$game = fetchinfo("value","info","name","current_game");
$bank000 = round(fetchinfo("cost","games","id",$game),2);

// текущая игра
$game000 = fetchinfo("value","info","name","current_game");

// текущие предметы
$game2 = fetchinfo("value","info","name","current_game");
$items000 = fetchinfo("itemsnum","games","id",$game2);

// текущий шанс
if(!isset($_SESSION["steamid"])) {
	$r = 0;
}
$lastgame = fetchinfo("value","info","name","current_game");
$steam = $_SESSION["steamid"];
$bank = fetchinfo("cost","games","id",$lastgame);
if($bank == 0)  $r = 0;
$result = mysql_query("SELECT SUM(value) AS value FROM `game$lastgame` WHERE `userid`='$steam'");
$row = mysql_fetch_assoc($result);

$chance000 = "0%";

if($bank == 0) { 
	$chance000 = "0%";
} else {
	$chance000 = round($row["value"]*100/$bank,1)."%";
}

$game3 = fetchinfo("value","info","name","current_game");
$r = fetchinfo("starttime","games","id",$game3);
if($r == 2147483647) {
	$r = 120;
} else {
	$r += 120-time();
	if($r < 0) $r = 0;
}
$time000 = $r;

$json = array("bank"=>$bank000, "game"=>$game000,"items"=>$items000, "chance"=>$chance000, "time"=>$time000);

echo json_encode($json);
?>