<?php declare(strict_types=1);

return [
    ['GET', '/', ['Project\Controllers\Homepage', 'show']],
    ['GET', '/{slug}', ['Project\Controllers\Page', 'show']],
];
