<cfoutput>
    <li class="task-item" wire:key="task-#id#">
        <div class="task-row">
            <cfif editMode>
                <input 
                    type="text" 
                    wire:model="editInput"
                    class="task-input"
                >
                <button wire:click="saveEdit" class="secondary">Save</button>
                <button wire:click="cancelEdit" class="secondary">Cancel</button>
            <cfelse>
                <span class="task-text">#task#</span>
                <button wire:click="startEdit" class="secondary">Edit</button>
                <cfif allowDelete>
                    <button wire:click="deleteTask" class="secondary">Delete</button>
                </cfif>
            </cfif>
        </div>
    </li>
</cfoutput>