<?php /**

Program by: Sajith.M.R
contact me: admin@sajithmr.com
*/
?>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="replacement.js"></script>
	<link rel="stylesheet" href="css/replacement-screen2.css" />
</head>
<body>

<p>Téléversement comme Gmail. Il est possible de téléverser plusieurs fichiers sans soumettre le formulaire.</p>
<p>Permet le téléversement comme Ajax. Ce démo utilise un iframe.</p>


<form  target="hiddenframe" enctype="multipart/form-data" action="scripts/televerser_v4.inc.php"
        method="POST" name="uploadform">
		
	<p>
	  <label>
		Attach File:
		<input type="file" name="filefieldname" id="fileField" onchange="document.uploadform.submit()"/>
	  </label>
	</p>

	<p id="uploadedfile" >
	  <label></label>
	</p>

	<p>
	  <label>
		<input type="submit" name="button" id="button" value="Submit" />
	  </label>
	</p>

	<iframe name="hiddenframe" style="display:none" >Loading...</iframe>
</form>
<p>&nbsp; </p>


