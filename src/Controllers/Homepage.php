<?php declare(strict_types = 1);

namespace Project\Controllers;

use Http\Request;
use Http\Response;
use Project\Template\FrontendRenderer;
use Project\DB\DB;

class Homepage
{
    private $request;
    private $response;
    private $renderer;

    public function __construct(Request $request, Response $response, FrontendRenderer $renderer)
    {
        $this->request = $request;
        $this->response = $response;
        $this->renderer = $renderer;
    }

    public function show()
    {
        $db = new DB();

        $data = [
            'name' => $this->request->getParameter('name', 'stranger'),
            'db' => $db->query("SELECT * FROM teste"),
        ];
        $html = $this->renderer->render('Homepage', $data);
        $this->response->setContent($html);
    }
}