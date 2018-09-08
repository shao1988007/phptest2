<?php
namespace TaskFlow\Libraries\TaskFlow\Model;

use Illuminate\Database\Eloquent\Model;
use TaskFlow\Libraries\TaskFlow\Model\SubTask;
use TaskFlow\Libraries\TaskFlow\Log;

class Task extends Model
{
    protected $table = 'task';

    protected $fillable = ['name', 'status'];

    public function subTasks()
    {
        return $this->hasMany(new SubTask, 'task_id', 'id');
    }

    public function finished(Task $task)
    {
        Log::debug('task ' . $task->name . ' finished', ['id' => $task->id]);
        $task->status = 'finished';
        $task->save();
    }

    public function pause(Task $task)
    {
        Log::debug('task ' . $task->name . ' pause', ['id' => $task->id]);
        $task->status = 'pause';
        $task->save();
    }

    public function running(Task $task)
    {
        Log::debug('task ' . $task->name . ' running', ['id' => $task->id]);
        $task->status = 'running';
        $task->save();
    }

    public function normal(Task $task)
    {
        Log::debug('task ' . $task->name . ' normal', ['id' => $task->id]);
        $task->status = 'normal';
        $task->save();
    }
}
