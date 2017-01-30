<?php
/**
 * @author Pascal Larose <palarose@cegep-ste-foy.qc.ca>
 * @copyright Copyright (c)2013 – Cégep de sainte-Foy
 * Date: 25 octobre 2012
 * Le fichier de configuration s'occupe de:
 * - centraliser les paramètres du site comme la connexion à la BD
 * - définir un gestionnaire d'erreurs
 * - définir des fonctions utilitaires pour le déboguage et pour la sécurité (échapper les données clientes)
 */

// DEBUT Paramètres du site

// personne responsable des bogues (gestion des erreurs)
// nota bene: les envois de courriels sur timunix n'ont fonctionné qu'avec l'adresse de cegep-ste-foy.qc.ca
$courrielContact= '';

// Verifier si l'exécution se fait sur le serveur de développement (local) ou celui de la production(hébergement):
if (stristr($_SERVER['HTTP_HOST'], 'local') || (substr($_SERVER['HTTP_HOST'], 0, 7) == '192.168')) {
    $local = TRUE;
} else {
    $local = FALSE;
}

/**
 * Selon l'environnement d'exécution (développement ou production)
 * @todo Adapter les variables de connexion des 2 environnements
 */
if ($local) {
    $bd_server = "localhost";
    $bd_username = "root";
    $bd_password = "monMotDePasse";
    $bd_name = "monNomdeBD";
} else {
    $bd_server = 'timunix.cegep-ste-foy.qc.ca';
    $bd_username = 'monUtilisateurTimUnix';
    $bd_password = 'monMotDePasse';
    $bd_name = 'monNomdeBD';
}
// Modification de la configuration du fichier ini des serveurs
// Sur MAMP la valeur par défaut de display_errors est false
if ($local) {
    // (réglages pour le DÉVELOPPEMENT)
    // Affiche toutes les Errors, warnings, notices et syntaxes dépréciées
    error_reporting(E_ALL | E_STRICT);
    ini_set('display_errors', true);
} else {
    ini_set('display_errors', false);
}

// Connexion à la base de données.
// Utilise un traitement d'exception au cas où il surviendrait un problème de communication.
try{
    $objConnMySQLi = new mysqli($bd_server,$bd_username,$bd_password,$bd_name);

    if ($objConnMySQLi->connect_error) {
        $strMessage="La connexion à la base de données cause problème, réessayez plus tard.";
        $except = new Exception($strMessage);

        throw $except;
    }
    // les lignes suivantes forcent mysql à servir les données en utf8 (pour afficher les accents correctement)
    $objConnMySQLi->query("SET CHARACTER SET utf8");
    $objConnMySQLi->query("SET NAMES utf8");
}
catch(Exception $e){
    //echo $e->getMessage();
    //Ce message n'est pas récupéré puisqu'il y en aura un autre de généré lors de l'appel du SQL.
}
// FIN paramètres du site


// DEBUT Gestion des erreurs et fonctions utilitaires

// Pour pouvoir utiliser de  manière fiable la fonction date(), dans le gestionnaire d'erreurs, il faut spécifier le fuseau horaire.
date_default_timezone_set('America/Montreal');

/**
 * Creer le gestionnaire d'erreurs
 * @param $e_number
 * @param $e_message
 * @param $e_file
 * @param $e_line
 * @param $e_vars
 * @return void
 */
function gererErreurs ($e_number, $e_message, $e_file, $e_line, $e_vars) {

    // Construire le message d'erreur
    $strMessage = "Une erreur est survenue dans le script '$e_file' a la ligne $e_line: \n<br />$e_number : $e_message\n<br />";
    // Ajouter la date et l'heure
    $strMessage .= "Date/Time: " . date('n-j-Y H:i:s') . "\n<br />";
    // Ajouter $e_vars au $strMessage.
    $strMessage .= "<pre>" . print_r ($e_vars, 1) . "</pre>\n<br />";
    // On peut aussi créer un journal d'erreurs et/ou envoyer par courriel.
    //@todo ramener la gestion selon $local. C'est fait.
    if ($GLOBALS['local']) {
        echo '<p class="error">' . $strMessage . '</p>';
        error_log ($strMessage, 3, "log-err.txt");
    } else {
        // En production, on veut seulement un courriel.
        error_log ($strMessage, 1, $GLOBALS['courrielContact']);
    }

}
// Utiliser le gestionnaire d'erreurs: (C'est cette fonction qui appelle notre gestionnaire maison)
set_error_handler ('gererErreurs');

/** Creer une function pour echapper les donnees
 * @param $data
 * @return void
 * @todo tester la fonction escape_data
 */
function escape_data ($data) {
    // Besoin de la connexion:
    $GLOBALS["objConnMySQLi"];
    // Verifier Magic Quotes.
    if (ini_get('magic_quotes_gpc')) {
        $data = stripslashes($data);
    }
    // Trim et escape:
    return mysqli_real_escape_string($GLOBALS["objConnMySQLi"], trim($data));
}
// FIN Gestion des erreurs et fonctions utilitaires