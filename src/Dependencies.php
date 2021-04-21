<?php declare(strict_types = 1);

$injector = new \Auryn\Injector;

$injector->alias('Http\Request', 'Http\HttpRequest');
$injector->share('Http\HttpRequest');
$injector->define('Http\HttpRequest', [
    ':get' => $_GET,
    ':post' => $_POST,
    ':cookies' => $_COOKIE,
    ':files' => $_FILES,
    ':server' => $_SERVER,
]);

$injector->alias('Http\Response', 'Http\HttpResponse');
$injector->share('Http\HttpResponse');

$injector->define('Project\Page\FilePageReader', [
    ':pageFolder' => __DIR__ . '/../pages',
]);

$injector->alias('Project\Page\PageReader', 'Project\Page\FilePageReader');
$injector->share('Project\Page\FilePageReader');

$injector->alias('Project\Template\Renderer', 'Project\Template\TwigRenderer');
$injector->alias('Project\Template\FrontendRenderer', 'Project\Template\FrontendTwigRenderer');
$injector->delegate('\Twig\Environment', function () use ($injector) {
    $loader = new Twig_Loader_Filesystem(dirname(__DIR__) . '/templates');
    return new Twig_Environment($loader);
});

$injector->alias('Project\Menu\MenuReader', 'Project\Menu\ArrayMenuReader');
$injector->share('Project\Menu\ArrayMenuReader');

$injector->share('Project\DB\DB');

return $injector;