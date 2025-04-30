component extends="cbwire.models.Component" {

    data = {
        "task": "",
        "editMode": false,
        "id": 0,
        "editInput": "",
        "allowDelete": true
    };

    function onMount( params ) {
        data.task = params.task;
        data.id = params.id;
    }

    function startEdit() {
        data.editMode = true;
        data.editInput = data.task;
    }

    function cancelEdit() {
        data.editMode = false;
        data.editInput = "";
    }

    function saveEdit() {
        data.task = data.editInput;

        var taskIndex = getTaskIndex( data.id );

        session.tasks[taskIndex].task = data.editInput;
        cancelEdit();
    }

    function getTaskIndex( id ) {
        return session.tasks.find( function( task ) {
            return task.id == id;
        } );
    }

}