component extends="cbwire.models.Component" {

    data = {
        "tasks": [],
        "taskInput": ""
    };

    function addTask() {
        data.tasks.append( data.taskInput );
    }
}