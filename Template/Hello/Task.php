<?php
/**
 * 任务类例子
 */
namespace TaskFlow\Template\Hello;

use TaskFlow\Libraries\TaskFlow\InterfaceTask;

use TaskFlow\Libraries\TaskFlow\Model\Task as TaskModel;
use TaskFlow\Libraries\TaskFlow\Model\SubTask as SubTaskModel;

class Task implements InterfaceTask
{
    public function create(TaskModel $task, SubTaskModel $subTask)
    {
        $data = ['str' => 'say hello'];
        return SubTaskModel::add($task->id, 'saySomething', $data);
    }

    public function saySomething(TaskModel $task, SubTaskModel $subTask)
    {
        print_r($subTask->data . PHP_EOL);
        $res = ['action' => 'do love me'];
        return SubTaskModel::add($task->id, 'doSomething', $res);
    }

    public function doSomething(TaskModel $task, SubTaskModel $subTask)
    {
        print_r($subTask->data . PHP_EOL);
        return false;
    }
}
