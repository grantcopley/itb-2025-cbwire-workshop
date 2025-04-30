<cfoutput>
<div class="container task-container" style="max-width: 600px; margin: auto; padding-top: 2rem;">

    <h2>Task List Manager</h2>

    <!-- Add Task Form -->
    <form wire:submit="addTask" class="grid">
        <input 
            type="text" 
            placeholder="Enter a new task..." 
            wire:model.defer="taskInput"
            required
        >
        <button type="submit" class="contrast">Add Task</button>
    </form>

    <hr>

    <!-- Task List -->
    <ul>
        <cfloop array="#tasks#" index="i" item="task">
            <li style="margin-bottom: 0.5rem;">
                <div style="display: flex; align-items: center; gap: 1rem;">
                    <cfif editMode AND editIndex EQ i>
                        <input 
                            type="text" 
                            wire:model.defer="editInput"
                            style="flex-grow:1;"
                        >
                        <button wire:click="saveEdit" class="secondary">Save</button>
                        <button wire:click="cancelEdit" class="secondary">Cancel</button>
                    <cfelse>
                        <span style="flex-grow:1;">#task#</span>
                        <button wire:click="startEdit(#i#)" class="secondary">Edit</button>
                        <button wire:click="deleteTask(#i#)" class="secondary">Delete</button>
                    </cfif>
                </div>
            </li>
        </cfloop>

        <cfif !arrayLen(tasks)>
            <li><em>No tasks yet. Add one above!</em></li>
        </cfif>
    </ul>

</div>
</cfoutput>
    