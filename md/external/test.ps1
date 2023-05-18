$c = code --list-extensions; 
$c -replace '^(.+)$', 'code --install-extension $1' > code.txt; 
Start-Process .