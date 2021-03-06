<?php declare(strict_types = 1);

namespace Project\Template;

interface Renderer
{
    public function render($template, $data = []) : string;
}