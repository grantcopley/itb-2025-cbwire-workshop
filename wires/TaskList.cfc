component extends="cbwire.models.Component" {

    data = {
        "tasks": [],
        "taskInput": "",
        "inputError": ""
    };

    listeners = {
        "taskListUpdated": "refreshTasks"
    };

    function onMount( params ) {
        session.tasks = [];

        if ( session.keyExists( "tasks" ) && isArray( session.tasks ) ) {
            data.tasks = session.tasks;
        }

        if ( params.keyExists( "allowDelete" ) ) {
            data.allowDelete = params.allowDelete;
        }
    }
    
    function addTask() {
        data.inputError = "";

        if ( data.tasks.findNoCase( data.taskInput ) ) {
            data.inputError = "Task already exists.";
            return;
        }

        if ( data.taskInput.len() ) {
            data.tasks.append( {
                "id": createUUID(),
                "task": data.taskInput
            } );
            data.taskInput = "";
            updateSession();
        }
    }

    function updateSession() {
        session.tasks = duplicate( data.tasks );
    }

    function refreshTasks() {
        if ( session.keyExists( "tasks" ) && isArray( session.tasks ) ) {
            data.tasks = session.tasks;
        }
    }

    function deleteTask( id ) {
        var taskIndex = getTaskIndex( id );
        session.tasks.deleteAt( taskIndex );
        refreshTasks();
    }

    function getTaskIndex( id ) {
        return session.tasks.find( function( task ) {
            return task.id == id;
        } );
    }

}