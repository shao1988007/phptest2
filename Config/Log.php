<?php
/**
 * 没写呢
 */
return [
    'default'     => 'file',

    'connections' => [

        'file' => [
            'dir'     => TASKFLOW_ROOT . 'Log/',
            'channel' => 'daily',
        ],

    ],

];
