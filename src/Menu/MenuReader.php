<?php declare(strict_types = 1);

namespace Project\Menu;

interface MenuReader
{
    public function readMenu() : array;
}