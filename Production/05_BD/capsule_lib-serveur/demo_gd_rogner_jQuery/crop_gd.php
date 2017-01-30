<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Extension jQuery imgAreaSelect</title>
		<link rel="stylesheet" type="text/css" href="css/imgareaselect-animated.css" />
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery-imgareaselect-0.9.3/jquery.imgareaselect.pack.js"></script>
        <style>
        *{ font-family: Chunkfive, Georgia, Palatino, Times New Roman, serif;}
        </style>
<body>

<h1>Résultat du recadrage</h1>

<?php
/**
 * Redmensionnement d'une image.
 * Recupere les dimensions dans le tableau associatif $_POST
 *
 * @see http://www.sitepoint.com/forums/showthread.php?t=561308
 */

echo "<h2>Contenu de \$_POST[]</h2>";
echo "<pre>";
print_r($_POST);
echo "<pre><br />";


/**
 * Recupere une section d'une image source et l'enregistre en format jpeg.
 * 
 * @param <type> $cheminFichierImageSource : image source format jpeg
 * @param <type> $x position	x de dert pour le rognage
 * @param <type> $y				y de dert pour le rognage
 * @param <type> $largeur		largeur du rognage a partir du x
 * @param <type> $hauteur		hauteur du rognage a partir du y
 * @param <type> $cheminFichierImageDestination 
 */
function rognerImage($cheminFichierImageSource, $x, $y, $largeur, $hauteur, $cheminFichierImageDestination)
{
	// cree une image jpeg a artir de l'image sur le disque
    $imageRessourceSource = imagecreatefromjpeg($cheminFichierImageSource);

    //  Cree une nouvelle ressource image vide en couleurs vraies
    $imageRessourceDestination = imagecreatetruecolor($largeur, $hauteur);

    if($imageRessourceDestination == false)
    {
        echo "Impossible de cree un flux d'image GD.";
    }
    else
    {
        // Copie une partie d'une image
        // bool imagecopy ( resource $dst_im, resource $src_im,
		//					int $dst_x, int $dst_y,
		//					int $src_x, int $src_y,
		//					int $src_w, int $src_h )
        imagecopy($imageRessourceDestination, 
					$imageRessourceSource,
					0, 0,
					$x, $y,
					$largeur, $hauteur);
        
        // sauvegarde une image JPEG vers un fichier avec la qualite maximale (100)
        imagejpeg($imageRessourceDestination, $cheminFichierImageDestination, 100);
    }
}


if(isset($_POST['btnSubmit']))
{
    // w
    $w = $_POST['width'];
    // h est facultatif
    $h = isset($_POST['height'])?$_POST['height']:$_POST['width'];
    // x est facultatif
    $x = isset($_POST['x1'])?$_POST['x1']:0;
    // y est facultatif
    $y = isset($_POST['y1'])?$_POST['y1']:0;
    // nom du fichier de l'image source
    $filename = $_POST['nom'];

	// Un nom unique pour la nouvelle image
	$nom_unique = 'vignettes/' . time() . ".jpg";

	rognerImage($filename, $x, $y, $w, $h, $nom_unique);
}
?>

<img src="<?php echo $nom_unique;?>" />

<p>Nouvelle vignette: <a href="<?php echo $nom_unique;?>"><?php echo $nom_unique;?></a>




</body>
</html>
