<?php
namespace TaskFlow\Libraries\TaskFlow\Log;

use Monolog\Handler\StreamHandler;

class Hander extends StreamHandler
{
    public function write(array $record)
    {
        $record['formatted'] = $this->format($record);

        return parent::write($record);
    }

    public function format(array $record)
    {
        $arr[] = '[' . date('Y-m-d H:i:s', time()) . ']';
        $arr[] = $record['levelStr'] . ':';
        $arr[] = $record['message'];

        if (isset($record['context'])) {
            $arr[] = var_export($record['context'], 1);
        }

        return implode(' ', $arr);
    }
}
