component extends="cbwire.models.Component" {

    data = {
        "task": "",
        "editMode": false,
        "editIndex": 0,
        "editInput": "",
        "allowDelete": false
    };

    function onMount( params ) {
        data.task = params.task;
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
        // what are we going to do here now!?
        throw( type="NotImplemented", message="saveEdit not implemented" );
    }

}