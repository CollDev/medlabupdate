<?php

use Silex\Provider\TwigServiceProvider as Twig;
use Silex\Provider\ServiceControllerServiceProvider as Controller;
use Silex\Provider\UrlGeneratorServiceProvider as Url;
use Silex\Provider\HttpCacheServiceProvider as Cache;
use Silex\Provider\DoctrineServiceProvider as Doctrine;
use Silex\Provider\SecurityServiceProvider as Security;
use Silex\Provider\SessionServiceProvider as Session;

$app['debug'] = true;
$app['locale'] = 'es';

//Cache
$app->register(new Cache(), array(
    'http_cache.cache_dir' => __DIR__ . '/../app/cache/',
));
//end Cache

//Twig
$app->register(new Twig(), array(
    'twig.path'       => __DIR__ . '/../src/Main/Resources/views/',
    'twig.class_path' => __DIR__ . '/../vendor/twig/twig/lib/'
));
//end Twig

//Controller
$app->register(new Controller());

$app['entity.entry'] = $app->share(function() {
    return new Entry();
});

$app['entry.controller'] = $app->share(function() use ($app) {
    return new EntryController($app['entity.entry']);
});

$app->get('/getEntries', "entry.controller:getEntriesAction");
//end Controller

//Doctrine
$app->register(new Doctrine(), array(
    'db.options' => array(
        'mysql_read' => array(
            'driver'    => 'pdo_mysql',
            'host'      => 'localhost',
            'dbname'    => 'medlabupdate',//royalhoster_tcon
            'user'      => 'root',//royalhoster_tcon
            'password'  => 'decenio97',//wasp513
            'charset'   => 'utf8',
        ),
    ),
));
//end Doctrine

//Routing
$app->register(new Url());
//end Routing