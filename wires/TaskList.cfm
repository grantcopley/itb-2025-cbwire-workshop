<cfoutput>
<div class="container task-container">

    <h2>Task List Manager</h2>

    <hr>

    <!-- Add Task Form -->
    <form class="grid">
        <input 
            type="text" 
            placeholder="Enter a new task..." 
            wire:model="taskInput"
            class="task-input"
            required
        >
        <button wire:click="addTask" type="button" class="contrast">Add Task</button>
    </form>


    <cfif inputError.len()>
        <div class="task-error">
            <strong>Error:</strong> #inputError#
        </div>
    </cfif>

    <!-- Task List -->
    <ul>
        <cfloop array="#tasks#" index="i" item="task">
            <li class="task-item">
                <div class="task-row">
                    <cfif editMode AND editIndex EQ i>
                        <input 
                            type="text" 
                            wire:model="editInput"
                            class="task-input"
                        >
                        <button wire:click="saveEdit" class="secondary">Save</button>
                        <button wire:click="cancelEdit" class="secondary">Cancel</button>
                    <cfelse>
                        <span class="task-text">#task#</span>
                        <button wire:click="startEdit(#i#)" class="secondary">Edit</button>
                        <button wire:click="deleteTask(#i#)" class="secondary">Delete</button>
                    </cfif>
                </div>
            </li>
        </cfloop>
        <cfif not arrayLen( tasks )>
            <li><em>No tasks yet. Add one above!</em></li>
        </cfif>
    </ul>

</div>
</cfoutput>
    