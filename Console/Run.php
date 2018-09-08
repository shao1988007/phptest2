<?php
/**
 * 执行任务
 *
 * example:
 * php path/to/Run.php 1
 *
 * 1指的是task表中的主键
 */

if (!defined('TASKFLOW_ROOT')) {
    define('TASKFLOW_ROOT', __DIR__ . '/../');
}

require TASKFLOW_ROOT . 'vendor/autoload.php';

while (true) {
    sleep(1);
    TaskFlow\Libraries\TaskFlow\Console::run();
}
