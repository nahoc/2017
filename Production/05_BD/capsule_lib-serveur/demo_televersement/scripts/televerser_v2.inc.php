<?php
/**
 * Permet de gérer le téléversement d'un fichier
 *
 * @TODO : Ajouter des messages d'erreur précis en fonction de l'erreur.
 *
 * @param $fichier_source : le nom du champ de formulaire de type file qui
 *                          reçoit le chemin et nom du fichier à uploader
 * 
 * @param $destination : le chemin relatif vers le dossier destination ou
 *                       doit être téléversé le fichier
 * 
 * @return true si tout s'est bien déroulé, false autrement.
 *
 * @author gsimard
 */
function televerserFichier($fichier_source, $destination)
{
    // Si le code d'erreur = 0 (false) le fichier a été correctement téléversé
    // dans le répertoire par défaut défini dans le fichier php.ini (upload_tmp_dir)
	if($_FILES[$fichier_source]['error'] == 0)
    {
        $succes = true;
        $message = "";

        // vérifie si le répertoire de destination existe
		if(is_dir($destination))	
        {
            // vérifie si on a la permission d'écriture
			if(is_writable($destination))
            {
   	  			// concatène le répertoire de destination et le nom actuel du fichier
	  			$nomFichierFinal = $destination."/".$_FILES[$fichier_source]["name"];

				// le fichier placé dans le répertoire par défaut est maintenant déplacé
	  			if(move_uploaded_file($_FILES[$fichier_source]["tmp_name"], $nomFichierFinal))
                {
        			// Si la copie est réussie on retourne le chemin et nom du fichier final
        			return $destination."/".basename($nomFichierFinal);
      			}
                else
                {
        			$message = "Le déplacement a échouée.<br />";
        			$succes  = false;
      			}
	  		}
            else
            {
	  			$message = "Le répertoire $destination n'a pas de permission d'écriture.<br />";
      			$succes  = false;
	  		}
    	}
        else
        {
     		$message = "Le répertoire $destination n'existe pas.<br />";
      		$succes = false;
    	}
	}
    else
    {
		// @TODO : Afficher un message d'erreur exacte
    	$message = "Le fichier ne s'est pas correctement téléversé. POURQUOI!";
    	$succes = false;
  	}

    if($succes == false)
    {
		echo("Répertoire de destination : $destination <br />");
        echo $message;
    }

    return $succes;
}	
?>
