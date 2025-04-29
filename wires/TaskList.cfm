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
        <cfif not arrayLen( tasks )>
            <li><em>No tasks yet. Add one above!</em></li>
        </cfif>
    </ul>

</div>
</cfoutput>
    