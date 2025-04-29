component extends="cbwire.models.Component" {

    data = {
        "tasks": [],
        "taskInput": ""
    };

    function addTask() {
        if ( data.taskInput.len() ) {
            data.tasks.append( data.taskInput );
            data.taskInput = "";
        }
    }
}