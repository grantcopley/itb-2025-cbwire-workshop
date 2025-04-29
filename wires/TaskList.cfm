<cfoutput>
<div class="container" style="max-width: 600px; margin: auto; padding-top: 2rem;">

    <h2>Task List Manager</h2>

    <hr>

    <!-- Task List -->
    <ul>
        <cfif not arrayLen( tasks )>
            <li><em>No tasks yet. Add one above!</em></li>
        </cfif>
    </ul>

</div>
</cfoutput>
    