<?php declare(strict_types = 1);

namespace Project\DB;

use \PDO;

class DB
{

    public $user = 'root';
    public $pass = '';

    public function __construct($config = [])
    {
        foreach ($config as $key => $val) {
            if (property_exists($this, $key)) {
                $this->$key = $val;
            }
        }
    }

    public function query($query)
    {
        $dbh = new PDO('mysql:host=localhost;dbname=nf', $this->user, $this->pass);

        $sth = $dbh->prepare($query);
        $sth->execute();

        return $sth->fetch(PDO::FETCH_ASSOC);;
    }
}