<?php
/**
 * Permet de g�rer le t�l�versement d'un fichier
 *
 * @TODO : Ajouter des messages d'erreur pr�cis en fonction de l'erreur.
 *
 * @param $fichier_source : le nom du champ de formulaire de type file qui
 *                          re�oit le chemin et nom du fichier � uploader
 * 
 * @param $destination : le chemin relatif vers le dossier destination ou
 *                       doit �tre t�l�vers� le fichier
 * 
 * @return true si tout s'est bien d�roul�, false autrement.
 *
 * @author gsimard
 */
function televerserFichier($fichier_source, $destination)
{
    // Si le code d'erreur = 0 (false) le fichier a �t� correctement t�l�vers�
    // dans le r�pertoire par d�faut d�fini dans le fichier php.ini (upload_tmp_dir)
	if($_FILES[$fichier_source]['error'] == 0)
    {
        $succes = true;
        $message = "";

        // v�rifie si le r�pertoire de destination existe
		if(is_dir($destination))	
        {
            // v�rifie si on a la permission d'�criture
			if(is_writable($destination))
            {
   	  			// concat�ne le r�pertoire de destination et le nom actuel du fichier
	  			$nomFichierFinal = $destination."/".$_FILES[$fichier_source]["name"];

				// le fichier plac� dans le r�pertoire par d�faut est maintenant d�plac�
	  			if(move_uploaded_file($_FILES[$fichier_source]["tmp_name"], $nomFichierFinal))
                {
        			// Si la copie est r�ussie on retourne le chemin et nom du fichier final
        			return $destination."/".basename($nomFichierFinal);
      			}
                else
                {
        			$message = "Le d�placement a �chou�e.<br />";
        			$succes  = false;
      			}
	  		}
            else
            {
	  			$message = "Le r�pertoire $destination n'a pas de permission d'�criture.<br />";
      			$succes  = false;
	  		}
    	}
        else
        {
     		$message = "Le r�pertoire $destination n'existe pas.<br />";
      		$succes = false;
    	}
	}
    else
    {
		// @TODO : Afficher un message d'erreur exacte
    	$message = "Le fichier ne s'est pas correctement t�l�vers�. POURQUOI!";
    	$succes = false;
  	}

    if($succes == false)
    {
		echo("R�pertoire de destination : $destination <br />");
        echo $message;
    }

    return $succes;
}	
?>
