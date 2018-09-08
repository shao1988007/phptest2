# task-flow
```自定义任务流```

#数据结构为:
```任务表 task```
```子任务表 task_sub```

#使用方法:
```首先建库,再导入Config/init.sql,再配置Config/Database.php;```
```命令行执行 php -f pathTo/Console/Example.php Hello 即可插入一个Hello模板的任务```
```命令行执行 php -f pathTo/Console/Run.php & 即可创建常驻进程的任务消费脚本,请按照pathTo/Console/Example.php编写新的任务流```