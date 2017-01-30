<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script> 
    <script src="http://malsup.github.com/jquery.form.js"></script> 
 
    <script> 
        $(document).ready(function() {  
        
            // http://malsup.com/jquery/form/#options-object
            var options = { 
                target:     '#divToUpdate', 
                success:    function() {  },
                error:      function() {  },
            }; 
            
            $('#uploadform').ajaxForm(options); 
        });
    </script> 
    
</head>
<body>
<h1>Téléversement de fichier - Ajax</h1>

<a href="index.php">V1 - PHP</a>
<a href="index-v2.php">V2 - Ajax </a>
<a href="index-v3.php">V3 - Ajax Progrès</a>

<form  enctype="multipart/form-data" action="upload.php" method="POST" name="uploadform" id="uploadform" >

	<p>
	  <label>
		Fichier à téléverser:
		<input type="file" name="fichierProjet" id="fileField" />
	  </label>
	</p>

	<p>
	  <label>
		<input type="submit" name="button" value="Submit" />
	  </label>
	</p>

</form>

<div id="divToUpdate"><div>


</body>
</html>



