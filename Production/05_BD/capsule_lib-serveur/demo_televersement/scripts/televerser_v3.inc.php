<?php
/**
 * Retourne un nom unique pour un fichier
 *
 * @param <type> $dir : dossier contenant les fichiers
 * @param <type> $nom : nom du fichier � v�rifier (sans extension)
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
 * Permet de g�rer le t�l�versement d'un fichier
 *
 * @param $fichier_source : le nom du champ de formulaire de type file qui
 *                          re�oit le chemin et nom du fichier � uploader
 *
 * @param $destination : le chemin relatif vers le dossier images ou
 *                       doivent �tre upload�s les fichiers
 *
 * @param $mode : nePasEcraser ou un cha�ne vide
 *
 * @return true si tout s'est bien d�roul�, false autrement.
 *
 * @author gsimard
 */
function televerserFichier($fichierSourceFILES, $dossierDestination, $modeEcraser = false)
{
    // Si le code d'erreur = 0 (false) le fichier a �t� correctement t�l�vers�
    // dans le r�pertoire par d�faut d�fini dans le fichier php.ini (upload_tmp_dir)
	if($_FILES[$fichierSourceFILES]['error'] == 0)
    {
        $succes = true;
        $message = "";

        // v�rifie si le r�pertoire de destination existe
		if(is_dir($dossierDestination))
        {
            // v�rifie si on a la permission d'�criture
			if(is_writable($dossierDestination))
            {
				$nomPropose    = basename($_FILES[$fichierSourceFILES]["name"]);
				$cheminFichier = $dossierDestination . $nomPropose;

				// D�BUT DEBUG
				echo "<p>Dossier destination : " . $dossierDestination;
				echo "<p>Nom propos� : " . $nomPropose;
				echo "<p>Fichier existe : ";
				var_dump(file_exists($cheminFichier));
				echo "<p>Mode �craser : ";
				var_dump($modeEcraser);
				// FIN DEBUG

				if(file_exists($cheminFichier) && $modeEcraser == false)
				{
					$pInfo = pathinfo($nomPropose);
					$nomUnique = creerNomUnique($dossierDestination, $pInfo["filename"], $pInfo["extension"]);

					// D�BUT DEBUG
					var_dump($pInfo);
					$nouveauChemin = $dossierDestination . $nomUnique;
					echo "<p>Nouveau chemin unique : " . $nouveauChemin ;
					// FIN DEBUG
				}
				else
				{
					echo "<p>Fichier �cras�!";
					$nouveauChemin = $dossierDestination . $nomPropose;
				}
				
				$message.="Nom propos� par l'usager : $nomPropose <br />";
				$message.="Chemin final: $nouveauChemin <br />";

				// D�placement du fichier du r�pertoire tmp au dossier officiel
				if(move_uploaded_file($_FILES[$fichierSourceFILES]['tmp_name'], $nouveauChemin))
				{
					$message.="Chemin final : $nouveauChemin  <br />";
				}
				else
				{
					$message.="La copie a �chou�e.<br />";
					$succes  = false;
				}

	  		}
            else
            {
	  			$message = "Le r�pertoire $dossierDestination n'a pas de permission d'�criture.<br />";
      			$succes  = false;
	  		}
    	}
        else
        {
     		$message = "Le r�pertoire $dossierDestination n'existe pas.<br />";
      		$succes = false;
    	}
	}
    else
    {
        // @TODO : Afficher un message d'erreur exacte
    	$message = "Le fichier ne s'est pas correctement t�l�vers�. POURQUOI?";
    	$succes = false;
  	}

    if($succes == false)
    {
		echo("<p>R�pertoire de destination : $dossierDestination <br />");
        
    }
	echo "<p>". $message;

    return $succes;
}
?>
