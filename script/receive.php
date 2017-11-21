<?php

require_once("funtions.php");
$nombre  = $_POST["name_soft"];

guardar_software($nombre);

echo '<script type="text/javascript">
self.location = "../index.html"
</script>';
