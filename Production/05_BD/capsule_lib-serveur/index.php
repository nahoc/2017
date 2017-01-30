<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Librairies serveur :: Scripts PHP</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>


<h1>Librairies serveur PHP</h1>
<?php

echo '<img src="' . $_SERVER['PHP_SELF'] .'?=' . php_logo_guid() . '" alt="Logo PHP !" />';
?>


<h2>Téléversement de fichiers</h2>
<ul>
    <li><a href="demo_televersement/televerser_fichier_v1.php">Théorie</a></li>
    <li><a href="demo_uploader/index.php">Classe Uploader à implanter V1</a></li>
    <li><a href="demo_uploader/index-v2.php">Classe Uploader à implanter V2</a></li>
    <li><a href="demo_uploader/index-v3.php">Classe Uploader à implanter V3</a></li>
    <li><a href="http://blueimp.github.com/jQuery-File-Upload/">Pour les pros de la prog [lien externe]</a></li>
</ul>

<!--<h2>Adaptive Images - PHP</h2>
<ul>
    <li><a href="demo_AI">Démo d'utilisation</a></li>
    <li><a href="http://timunix.cegep-ste-foy.qc.ca/~gsimard/prgm1/ai/test.php?">Démo fonctionnel sur Timunix [lien externe]</a></li>
    <li><a href="http://adaptive-images.com/">AI - site officiel [lien externe]</a></li>
</ul>
-->

<!--<h2>Mobile detect - PHP</h2>
<ul>
    <li><a href="demo_mobileDetect">Possibilités de mobiledetect</a></li>
    <li><a href="demo_mobileDetect/demo-mobileMe.php">Fonction mobileMe()</a></li>
    <li><a href="http://mobiledetect.net/">mobiledetect- site officiel [lien externe]</a></li>
</ul>
-->


<h2>Manipulation d'images avec GD</h2>
<ul>
    <li><a href="demo_gd_wideimage">Démo d'utilisation de WideImage - coins ronds, création de vignettes et +</a></li>
</ul>

<h2>Recadrer une image avec jQuery, imgAreaSelect & GD</h2>
<ul>
    <li><a href="demo_gd_rogner_jQuery">Rognage d'image (crop) (GD et jQuery)</a></li>
</ul>

<h2>Librairie Nicedit</h2>
<ul>
	<li><a href="demo_nicedit">Démo d'utilisation de Nicedit</a></li>
    <li><a href="demo_nicedit/demos/demo01.html">Démo1 fonctionnel sur Timunix</a></li>
	<li><a href="demo_nicedit/demos/demo02.html">Démo2 fonctionnel sur Timunix</a></li>
	<li><a href="demo_nicedit/demos/demo03.html">Démo3 fonctionnel sur Timunix</a></li>
	<li><a href="demo_nicedit/demos/demo04.html">Démo4 fonctionnel sur Timunix</a></li>
	<li><a href="demo_nicedit/demos/demo05.html">Démo5 fonctionnel sur Timunix</a></li>
    <li><a href="http://nicedit.com//">Nicedit - site officiel [lien externe]</a></li>
</ul>





<h3>Vérifiez que GD est bien installé</h3>
<?php
// vérification du support de la librairie GD
if(!function_exists('ImageCreate'))
{
    fatal_error('Erreur: Ce serveur ne supporte pas la génération d\'images par PHP.') ;
}
else
{
	echo "<ul><li><em>function_exists('ImageCreate')</em> nous dit que GD est bien installé sur votre serveur!</li></ul>";
}
?>

<hr />

<h3>Information sur les modules PHP installés</h3>

<?php phpinfo(INFO_MODULES); ?>

</body>
</html>


