<cfoutput>
<div class="container task-container">

    <h2>Task List Manager</h2>

    <div wire:ignore>Page loaded: #dateTimeFormat( now(), "yyyy-mm-dd h:mm:ss tt" )#</div>

    <hr>

    <!-- Add Task Form -->
    <form wire:submit="addTask" class="grid">
        <input 
            type="text" 
            placeholder="Enter a new task..." 
            wire:model="taskInput"
            class="task-input"
            required
        >

        <button type="submit" class="contrast">Add Task</button>
    </form>

    <cfif inputError.len()>
        <div class="task-error">
            <strong>Error:</strong> #inputError#
        </div>
    </cfif>

    <!-- Task List -->
    <ul>
        <cfloop array="#tasks#" item="task" index="i">
            #wire( "TaskItem", { "task": task, "index": i }, "task-#i#" )#
        </cfloop>
        <cfif not arrayLen( tasks )>
            <li wire:key="no-task"><em>No tasks yet. Add one above!</em></li>
        </cfif>
    </ul>

</div>
</cfoutput>
    