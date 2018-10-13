<?php

// error_reporting(0);

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");

session_start();

require_once '../Config/constants.php';

// require_once MODEL . DS . 'Usuario.php';

// use App\Model\Usuario;

// $_REQUEST = json_decode($_REQUEST);
$json = file_get_contents('php://input');

$resultado = json_decode($json);

$_REQUEST = "";

$array = array();

foreach($resultado as $key => $value){
    $array[$key] = $value;
}

$_REQUEST = $array;


$action = (isset($_SESSION['crinfo']['action']) && $_SESSION['crinfo']['action']) ? $_SESSION['crinfo']['action'] : 'login';

$action = isset($_REQUEST['action']) ? $_REQUEST['action'] : $action;

$method = isset($_REQUEST['method']) ? $_REQUEST['method'] : 'render';

$_SESSION['crinfo']['action'] = $action;

unset($_REQUEST['action']);

unset($_REQUEST['method']);

if (isset($_REQUEST['dados'])) {

    $param = isset($_REQUEST) ? json_decode($_REQUEST['dados']) : [];

} else {

    $param = isset($_REQUEST) ? $_REQUEST : [];
    $param['file'] = isset($_FILES) ? $_FILES : [];

}

require APP . DS . 'autoload.php';

$method = ($method) ? $method : 'render';

if (file_exists(CONTROLLER . DS . $action . '.php')) {

    require CONTROLLER . DS . $action . '.php';

    $controller = NAMESPACE_CONTROLLER . '\\' . $action;

    $class = new $controller;

    call_user_func_array(array($class, $method), array($param));
    
} else {
    
//    header("location:App/Template/template/404.php");
    $_SESSION['crinfo']['action'] = $action;
}


