<?php
/**
 * Retourne un nom unique pour un fichier
 *
 * @param <type> $dir : dossier contenant les fichiers
 * @param <type> $nom : nom du fichier à vérifier (sans extension)
 * @param <type> $ext : extention du fichier
 * @return <type>
 */
function creerNomUnique($dir, $nom, $ext)
{
    $compteur = 1;
    while(file_exists($dir.$nom.$compteur.'.'.$ext))
    {
        $compteur++;
    }
    return $nom.$compteur.".".$ext;
}

/**
 * Permet de gérer le téléversement d'un fichier
 *
 * @param $fichier_source : le nom du champ de formulaire de type file qui
 *                          reçoit le chemin et nom du fichier à uploader
 *
 * @param $destination : le chemin relatif vers le dossier images ou
 *                       doivent être uploadés les fichiers
 *
 * @param $mode : nePasEcraser ou un chaîne vide
 *
 * @return true si tout s'est bien déroulé, false autrement.
 *
 * @author gsimard
 */
function televerserFichier($fichierSourceFILES, $dossierDestination, $modeEcraser = false)
{
    // Si le code d'erreur = 0 (false) le fichier a été correctement téléversé
    // dans le répertoire par défaut défini dans le fichier php.ini (upload_tmp_dir)
	if($_FILES[$fichierSourceFILES]['error'] == 0)
    {
        $succes = true;
        $message = "";

        // vérifie si le répertoire de destination existe
		if(is_dir($dossierDestination))
        {
            // vérifie si on a la permission d'écriture
			if(is_writable($dossierDestination))
            {
				$nomPropose    = basename($_FILES[$fichierSourceFILES]["name"]);
				$cheminFichier = $dossierDestination . $nomPropose;

				// DÉBUT DEBUG
				echo "<p>Dossier destination : " . $dossierDestination;
				echo "<p>Nom proposé : " . $nomPropose;
				echo "<p>Fichier existe : ";
				var_dump(file_exists($cheminFichier));
				echo "<p>Mode écraser : ";
				var_dump($modeEcraser);
				// FIN DEBUG

				if(file_exists($cheminFichier) && $modeEcraser == false)
				{
					$pInfo = pathinfo($nomPropose);
					$nomUnique = creerNomUnique($dossierDestination, $pInfo["filename"], $pInfo["extension"]);

					// DÉBUT DEBUG
					var_dump($pInfo);
					$nouveauChemin = $dossierDestination . $nomUnique;
					echo "<p>Nouveau chemin unique : " . $nouveauChemin ;
					// FIN DEBUG
				}
				else
				{
					echo "<p>Fichier écrasé!";
					$nouveauChemin = $dossierDestination . $nomPropose;
				}
				
				$message.="Nom proposé par l'usager : $nomPropose <br />";
				$message.="Chemin final: $nouveauChemin <br />";

				// Déplacement du fichier du répertoire tmp au dossier officiel
				if(move_uploaded_file($_FILES[$fichierSourceFILES]['tmp_name'], $nouveauChemin))
				{
					$message.="Chemin final : $nouveauChemin  <br />";
				}
				else
				{
					$message.="La copie a échouée.<br />";
					$succes  = false;
				}

	  		}
            else
            {
	  			$message = "Le répertoire $dossierDestination n'a pas de permission d'écriture.<br />";
      			$succes  = false;
	  		}
    	}
        else
        {
     		$message = "Le répertoire $dossierDestination n'existe pas.<br />";
      		$succes = false;
    	}
	}
    else
    {
        // @TODO : Afficher un message d'erreur exacte
    	$message = "Le fichier ne s'est pas correctement téléversé. POURQUOI?";
    	$succes = false;
  	}

    if($succes == false)
    {
		echo("<p>Répertoire de destination : $dossierDestination <br />");
        
    }
	echo "<p>". $message;

    return $succes;
}
?>
