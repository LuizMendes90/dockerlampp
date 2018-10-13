<?php

session_start();

$action = isset($_REQUEST['action']) ? $_REQUEST['action'] : '';

if ($action == 'logout') {
    $_SESSION['crinfo'] = [];
}

if (isset($_SESSION['crinfo']['login']['id'])) {

    include 'App/Template/template/corpo.php';

} else {

    $_SESSION['crinfo'] = [];

    include 'App/Template/template/login.php';

}


