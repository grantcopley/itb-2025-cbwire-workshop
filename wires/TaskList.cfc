component extends="cbwire.models.Component" {

    data = {
        "tasks": [],
        "taskInput": "",
        "inputError": "",
        "editMode": false,
        "editIndex": 0,
        "editInput": "",
        "allowDelete": false
    };

    function onMount( params ) {
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
            data.tasks.append( data.taskInput );
            data.taskInput = "";
            updateSession();
        }
    }

    function startEdit( index ) {
        data.editMode = true;
        data.editIndex = index;
        data.editInput = data.tasks[index];
    }

    function saveEdit() {
        if ( data.editIndex != 0) {
            data.tasks[data.editIndex] = data.editInput;
        }
        cancelEdit();
    }

    function cancelEdit() {
        data.editMode = false;
        data.editIndex = 0;
        data.editInput = "";
    }

    function deleteTask(index) {
        data.tasks.deleteAt( index );
        updateSession();
        cancelEdit();
    }

    function updateSession() {
        session.tasks = duplicate( data.tasks );
    }

    function refreshTasks() {
        if ( session.keyExists( "tasks" ) && isArray( session.tasks ) ) {
            data.tasks = session.tasks;
        }
    }
}