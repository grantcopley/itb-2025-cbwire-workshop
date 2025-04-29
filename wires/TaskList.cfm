<cfoutput>
<div class="container" style="max-width: 600px; margin: auto; padding-top: 2rem;">

    <h2>Task List Manager</h2>

    <hr>

    <!-- Add Task Form -->
    <form class="grid">
        <input 
            type="text" 
            placeholder="Enter a new task..." 
            wire:model="taskInput"
            required
        >
        <button wire:click="addTask" type="button" class="contrast">Add Task</button>
    </form>

    <!-- Task List -->
    <ul>

        <cfloop array="#tasks#" index="i" item="task">
            <li style="margin-bottom: 0.5rem;">
                <div style="display: flex; align-items: center; gap: 1rem;">
                    <span style="flex-grow:1;">#task#</span>
                </div>
            </li>
        </cfloop>
        <cfif not arrayLen( tasks )>
            <li><em>No tasks yet. Add one above!</em></li>
        </cfif>
    </ul>

</div>
</cfoutput>
    