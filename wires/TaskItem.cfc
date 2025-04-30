component extends="cbwire.models.Component" {

    data = {
        "task": "",
        "editMode": false,
        "index": 0,
        "editInput": "",
        "allowDelete": true
    };

    function onMount( params ) {
        data.task = params.task;
        data.index = params.index;
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
        session.tasks[data.index] = data.editInput;
        cancelEdit();
    }

    function deleteTask() {
        // This deletes it but why isn't the list refreshing?
        data.task = "";
        session.tasks.deleteAt( data.index );
    }

}