<?php
$env = getenv();
?>

<!DOCTYPE html>
<html>
  <head>
    <title>Testing website</title>
  </head>
  <body>
    <h1>This website is hosted in the ☁</h1>
    <p>Docker + Kubernetes + Rancher</p>

    <p>Environment variables:</p>
    <pre><?php echo json_encode($env, JSON_PRETTY_PRINT) ?></pre>
  </body>
</html>
