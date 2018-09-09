<?php
/**
 * 配置完成后执行init.sql
 */
return [
    'default'     => 'mysql',

    'connections' => [

        /*
        |--------------------------------------------------------------------------
        | Database
        |--------------------------------------------------------------------------
        |
        | Available Drivers: "mysql"
        |
         */

        'mysql' => [
            'driver'    => 'mysql',
            'host'      => '127.0.0.1',
            'port'      => '3306',
            'database'  => '',
            'username'  => '',
            'password'  => '',
            'charset'   => 'utf8',
            'collation' => 'utf8_general_ci',
            'prefix'    => 'taskflow_',
        ],

    ],

];
