
<?php
  // Function returns Steam status (default timeout: 5 seconds)
  function get_steam_status($steamID64, $timeout = 5) {
    $ch = curl_init();
    $curl_options = array(
      CURLOPT_URL => 'http://steamcommunity.com/profiles/' . $steamID64 . '/?xml=1',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_MAXREDIRS => 3,
      CURLOPT_TIMEOUT => $timeout
    );
    curl_setopt_array($ch, $curl_options);
    $data = curl_exec($ch);
    $xml = @simplexml_load_string($data);
    if (isset($xml->onlineState)) {
      $online_state = (string)$xml->onlineState;
      $state_message = ($online_state == 'offline' ? 'Offline' : str_replace('<br />', ' ', $xml->stateMessage));
    } else {
      // Error loading profile
      $online_state = 'offline';
      $state_message = 'Offline';
    }
    $state_css = array('online' => 'on', 'in-game' => 'ing', 'offline' => 'off');
    return 'I am: <span class="steam_' . $state_css[$online_state] . '"><a href="http://steamcommunity.com/profiles/' . $steamID64 . '/" target="_blank">' . $state_message . '</a> on Steam</span>';
  }

  // ID = Last part of your profile url (http://steamcommunity.com/profiles/76561197966744834)
  echo get_steam_status('76561197966744834');
?>