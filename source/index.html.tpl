<!DOCTYPE html>
<html>
<head>
	<title><%- appTitle %></title>	
	<link rel="stylesheet" type="text/css" href="<%- baseUrl %>style/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div id="content">
	<div id="wheel" style="    margin-left: 30%;margin-top: 10%">
		<canvas width="320" height="320">
		Sorry, your browser does not support HTML5 Canvas!
		</canvas>
		<div class="canvas-label">Click wheel to spin</div>
	</div>
</div>
</body>
<script src="<%- baseUrl %>scripts/router/app.js"></script>
<script type="text/javascript">
	require(["backbone", "scripts/router/app"],
		function(Backbone, App) {
			var app = new App();
			app.route('', 'init', function() {
				app.navigate("<%- initialRoute %>", {trigger: true});
			});
			Backbone.history.start({pushState: true, root: "<%- baseUrl %>"});	
		}
	);
</script>
</html>
