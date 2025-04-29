component extends="cbwire.models.Component" {

    data = {
        "tasks": [],
        "taskInput": "",
        "inputError": "",
        "editMode": false,
        "editIndex": 0,
        "editInput": ""
    };

    
    function addTask() {
        data.inputError = "";

        if ( data.tasks.findNoCase( data.taskInput ) ) {
            data.inputError = "Task already exists.";
            return;
        }

        if ( data.taskInput.len() ) {
            data.tasks.append( data.taskInput );
            data.taskInput = "";
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
        cancelEdit();
    }
}