<?php
/**
 * Démonstration du téléversement de fichiers sur le serveur avec PHP.
 * 
 * ATTENTION : le téléversement de ce démo n'est pas complet. Il démontre
 *             l'utilisation du formulaire HTML et du tableau PHP $_FILES.
 * 
 * @author : gsimard
 *
 * Théorie sur $_FILES
 * Ce tableau associatif se crée dès qu'une page PHP reçoit un fichier téléversé
 * sous la forme suivante:
 * 
 * $_FILES
 *      monFichier 	'name' de l'élément input de type file utilisé
 * 		name		nom et chemin d'origine du fichier sur le poste de l'usager
 *      type        Type du fichier ex: image/png, text/plain, ...
 * 		size 		la taille maximale en octets du fichier d'origine
 * 					     Exemple: 25000 pour un max. de 25ko
 * 		tmp_name	nom et chemin pour le fichier temp sur le serveur
 * 		error 		code d'erreur retourné par la procédure de téléversement
 * 					valeurs possibles:
 *
 * 					0] téléversement complété avec succès
 *
 * 					1] la taille en octets du fichier excède la limite
 *                                permise par le serveur (fichier .ini)
 *
 * 					2] la taille en octets du fichier excède la limite
 *                                permise dans le code du formulaire
 *
 * 					3] le fichier a été partiellement téléversé
 *
 * 					4] il n'y avait pas de fichier à téléverser
 *
 */
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
	<title>Téléversement V1</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>

<!-- Attention aux valeurs des attributs enctype et method -->
<form enctype="multipart/form-data" method="post"
      action="televerser_fichier_v1.php" name="fTeleversement">

	<fieldset>
	<legend>Fichier(s) à téléverser</legend>
		<input type="file"   name="monFichier"    id="monFichier" title="parcourir" /><br />
		<input type="file"   name="mon2eFichier"  id="mon2eFichier" title="parcourir" /><br />
		
        <input type="hidden" name="max_file_size" value="25000" />
        <input type="submit" name="Submit" id="Submit" value="Téléverser" title="Soumettre" />
	</fieldset>

</form>

<?php
	if (isset($_POST["Submit"]))
	{
		// si le formulaire a été soumis par l'utilisateur alors
		// écrire le tableau associatif des fichiers
		echo '<h2>Contenu du tableau $_FILES</h2>';

		echo '<pre>';
		print_r($_FILES);
		echo '</pre>';
	}
?>

</body>
</html>
