<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>


<?php
    // http://wideimage.sourceforge.net/
    // LGPL
    // Demos : http://wideimage.sourceforge.net/wp-content/current/demo/index.php
    // API   : http://wideimage.sourceforge.net/wp-content/current/doc/WideImage/WideImage_Image.html
    
    include 'WideImage/WideImage.php';

    $imgFileName = 'atomrace.com_sky.png';
    
    $orig = WideImage::load($imgFileName);
    
    
    $orig->crop('center', 'center', 150, 150)->saveToFile('_center.jpg');
    
    
    $orig->roundCorners(20, $orig->allocateColor(255, 255, 255), 2)->saveToFile('_roundCorner.jpg');
    $orig->mirror( )->saveToFile('_mirror.jpg');
    $orig->rotate(180)->mirror( )->saveToFile('_r1.jpg');
    $orig->rotate(180)->saveToFile('_r2.jpg');
    
    
    $orig->resizeDown(150, 150)->saveToFile('_mini.jpg');
    $orig->asGrayscale( )->saveToFile('_grayscale.jpg');
    $orig->asGrayscale( )->asNegative( )->saveToFile('_negative.jpg');


?>

<img src="atomrace.com_sky.png">
<img src="_mirror.jpg">
<img src="atomrace.com_sky.png">
<br>
<img src="_r1.jpg">
<img src="_r2.jpg">
<img src="_r1.jpg">
<p>
<img src="_roundCorner.jpg">
<img src="_center.jpg">
<img src="_mini.jpg">
<p>
<img src="_grayscale.jpg">
<img src="_negative.jpg">



</body>
</html>



