<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Extension jQuery imgAreaSelect</title>
		<link rel="stylesheet" type="text/css" href="css/imgareaselect-animated.css" />
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery-imgareaselect-0.9.3/jquery.imgareaselect.pack.js"></script>

		<script type="text/javascript">
			$(document).bind("ready",configuration);

			function configuration(){
				$("#photo").imgAreaSelect({
					handles: true,
					//aspectRatio : "5:1",
					minWidth: 100,
					minHeight: 50,
					x1 : 0,
					y1 : 0,
					x2 : 100,
					y2 : 50,
					onSelectEnd: onSelectEnd
				});
			}

			function onSelectEnd(image, selection){
				$("#x1")[0].value = selection.x1;
				$("#y1")[0].value = selection.y1;
				$("#x2")[0].value = selection.x2;
				$("#y2")[0].value = selection.y2;
				$("#width")[0].value = selection.width;
				$("#height")[0].value = selection.height;
			}
		</script>
        <style>
        *{ font-family: Chunkfive, Georgia, Palatino, Times New Roman, serif;}
        </style>
	</head>

	<body>

		<h1>Extension jQuery imgAreaSelect</h1>

		<p>
			<img src="images/action_canot.jpg" alt="Test" id="photo" />
		</p>

		<form action="crop_gd.php" method="post">
			<label for="x1">x1 :</label><input type="text" name="x1" id="x1" size="3"    />
			<label for="y1">y1 :</label><input type="text" name="y1" id="y1" size="3" />
			<label for="x2">x2 :</label><input type="text" name="x2" id="x2" size="3" />
			<label for="y2">y2 :</label><input type="text" name="y2" id="y2" size="3" /> 
			<label for="width">width :</label><input type="text" name="width" id="width" size="3" />
			<label for="height">height :</label><input type="text" name="height" id="height" size="3" />

			<p>
				<label for="Nom">Nom :</label>
				<input type="text" name="nom" id="nom" value="images/action_canot.jpg" />
			</p>
			
			<input type="submit" name="btnSubmit" />
		</form>

	</body>
</html>
