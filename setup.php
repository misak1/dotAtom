<?php
echo(file_get_contents('setup.txt'));
system('\ls -1 ~/.atom/packages | sed -e "s#^#apm install #g" | sed -e "s#/##g"');
?>

# apm rebuild-module-cache
