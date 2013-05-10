<?php
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

//Routing
$app->get('/update/dia/{dia}/hora/{hora}', function ($dia, $hora) use ($app) {
    
    if ($dia . ' ' . $hora >= '2013-05-09 00:00:00') {
        $return = array('Updated');
    } else {
        $return = array(
            'http://medlabupdate.colldev.com/datfile/' . uniqid() . '.dat',
            '2013-05-09 00:00:00'
        );
    }

    return $app->json($return, 200);
})->bind('index');
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