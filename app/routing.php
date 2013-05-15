<?php
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

//Routing
$app->get('/', function(){
    $response = uniqid() . ' ' . date("Y-m-d H:i:s");
    return new Response($response, 200);
})->bind('index');
$app->get('/update/dia/{dia}/hora/{hora}', function($dia, $hora) use ($app) {
    
    if ($dia . ' ' . $hora >= '2013-05-15 14:40:25') {
        $return = array('Updated');
    } else {
        $return = array(
            'http://medlabupdate.colldev.com/datfile/5193e4a9991b3',
            '2013-05-15 14:40:25'
        );
    }

    return $app->json($return, 200);
})->bind('update');

$app->get('/datfile/{dat}', function($dat) use ($app) {
    $filename = __DIR__ . "/../src/Main/Resources/public/datfile/". $dat . '.csv';
    if (file_exists($filename) && is_readable($filename)) {
        return new Response(base64_encode(file_get_contents($filename)), 200, array(
            'Content-Type' => 'application/octet-stream',
            'Content-Disposition' => 'attachment; filename="' . $dat . '.dat"'
        ));
    } else {
        $response = 'No se encuentra el archivo';
        return new Response($response, 404);
    }
})->bind('datfile');
//end Routing

if (!$app['debug']) {
    $app->error(function (\Exception $e, $code) use ($app) {
        if ($code == 404) {
            $response = $app['twig']->render('templates/404.html.twig');
            return new Response($response, 404);
        } else {
            $response = $app['twig']->render('templates/error.html.twig', array('code' => $code));
            return new Response($response, $code);
        }
    });
}