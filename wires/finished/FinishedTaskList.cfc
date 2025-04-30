component extends="cbwire.models.Component" {

    data = {
        "tasks": [],
        "taskInput": "",
        "editMode": false,
        "editIndex": null,
        "editInput": ""
    };

    function addTask() {
        data.tasks.append( data.taskInput );
        data.taskInput = "";
    }

    function startEdit(index) {
        data.editMode = true;
        data.editIndex = index;
        data.editInput = data.tasks[index];
    }

    function cancelEdit() {
        data.editMode = false;
        data.editIndex = null;
        data.editInput = "";
    }

    function saveEdit() {
        validateOrFail();
        if (!isNull(data.editIndex)) {
            data.tasks[data.editIndex] = data.editInput;
        }
        cancelEdit();
    }

    function deleteTask(index) {
        arrayDeleteAt(data.tasks, index);
        cancelEdit();
    }

}
