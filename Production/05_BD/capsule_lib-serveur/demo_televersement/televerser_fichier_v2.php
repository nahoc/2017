<?php
/**
 * Démonstration du téléversement de fichiers sur le serveur avec PHP.
 *
 *
 * @author : gsimard
 * @lastmad: 23 février 2011
 */



// @TODO - Modifier ce chemin en fonction de vos besoins
define("CHEMIN_TELEVERSEMENT", "./televersement");
define("NAME_FICHIER", "monFichierATeleverser");

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Téléversement v2</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>

<h1>Téléversement v2</h1>
<?php
	
	if (isset($_POST["Submit"]))
	{
		echo '<h2>Déboguage du téléversement</h2>';
		
		include("scripts/televerser_v2.inc.php");

		$cheminFichier = televerserFichier(NAME_FICHIER, CHEMIN_TELEVERSEMENT);

		$msg = "Le fichier a été téléversé dans le répertoire $cheminFichier <br />" .
				'<a href="'.$cheminFichier.'"> Lien vers le fichier </a><br /><br />';
		
		if($cheminFichier == false)
		{
			$msg = "Une erreur est survenue. <br />";
		}
		echo $msg;

		echo '<pre>';
		print_r($_FILES);
		echo '</pre>';
	}
?>
<h2>Formulaire de téléversement</h2>


<!-- Attention aux valeurs des attributs enctype et method -->
<form enctype="multipart/form-data"
	  method="post"
      action="televerser_fichier_v2.php"
	  name="fTeleversement">

	<fieldset>
		<legend>Fichier à téléverser</legend>
		<input type="file"   name="<?php echo NAME_FICHIER; ?>"  value="Parcourir" /><br />
		<input type="submit" name="Submit" value="Téléverser" />
	</fieldset>

</form>

<h2>Code source</h2>
<?php
echo utf8_encode(highlight_file('scripts/televerser_v2.inc.php', true));
?>
</body>
</html>


