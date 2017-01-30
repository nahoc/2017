<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<h1>Téléversement de fichier PHP</h1>
<?php
include 'uploader.php';

$uploader = new Uploader();
$uploader->setDir('uploads/images/');                       // Dossier de téléversement
$uploader->setExtensions(array('jpg','jpeg','png','gif'));  // Extensions permises
$uploader->sameName = true;                                 // Conserve le même nom de fichier
$uploader->setMaxSize(5);                                   // Taille max en Mo 

if($uploader->uploadFile('fichierProjet'))                  // Attribut name du formulaire  
{       
    $imageName = $uploader->getUploadName();                // Retourne le nom du fichier téléversé

    echo "<p>Nom du fichier téléversé : $imageName";
    echo '<p><img src="uploads/images/'.$imageName.'">';
}
else
{                                                      // Échec lors du téléversement
    $message = $uploader->getMessage();                // Message d'erreur
    
    var_dump($message);
}


?>

</body>
</html>



