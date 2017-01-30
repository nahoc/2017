<?php
if (isset($_POST["Submit"]))
{
	include("scripts/televerser_v3.inc.php");
	/* Dans cet exemple, un paramètre supplémentaire est envoyé à la fonction
     * pour le cas où il existe un fichier du même nom que celui téléversé */
	$message = televerserFichier("monFichier", 'televersement/', false);
    if($message != false)
    {
		echo $message;
    }
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Téléversement v3</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>

<form action="televerser_fichier_v3.php" method="post" enctype="multipart/form-data" name="fTeleversement">
    <p><input type="file" alt="UP"   name="monFichier"  id="monFichier" title="parcourir"  /></p>
    <p><input type="submit" name="Submit" id="Submit" value="Submit" title="soumettre"  /></p>
</form>

</body>
</html>
