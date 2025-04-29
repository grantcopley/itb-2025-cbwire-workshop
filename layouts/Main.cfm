<cfoutput>
<!doctype html>
<html lang="en" data-theme="light">
<head>
    <meta charset="utf-8">
    <title>Task List App - CBWIRE Workshop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- PicoCSS -->
    <link rel="stylesheet" href="https://unpkg.com/@picocss/pico@1.5.10/css/pico.min.css">
	<!-- Styles -->
	<style>
		.task-container {
			max-width: 600px;
			margin: auto;
			padding-top: 2rem;
		}
	
		.task-form {
			display: grid;
			gap: 0.5rem;
		}
	
		.task-item {
			margin-bottom: 0.5rem;
		}
	
		.task-row {
			display: flex;
			align-items: center;
			gap: 1rem;
		}
	
		.task-text {
			flex-grow: 1;
		}
	
		.task-input {
			flex-grow: 1;
		}

		.task-error {
			margin-top: 1rem;
			margin-bottom: 1rem;
		}

	</style>
</head>
<body>
    <main class="container">
        #renderView()#
    </main>
</body>
</html>
</cfoutput>