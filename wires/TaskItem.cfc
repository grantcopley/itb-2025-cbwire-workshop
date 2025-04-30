component extends="cbwire.models.Component" {

    data = {
        "task": "",
        "editMode": false,
        "index": 0,
        "editInput": "",
        "allowDelete": false
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
        // let's try updating the session directly
        data.task = data.editInput;
        session.tasks[data.index] = data.editInput;
        cancelEdit();
    }

}