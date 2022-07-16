// Este archivo no debería ser versionado, podría contener información sensible
// Lo versiono a modo de ejemplo

// Archivo de definción de variables...
host_os = "MAC OS"



// Hay una precedencia de vairables... si la misma vairable está definida
// en distintos lugares, determinará quién sobreescribe a quién
// Hay variables de entorno, de este archiv tfvars, variables pasadas en el CLI, etc

// Por defecto terraform buscará usar variables.tfvars, pero se puede sobreescribir el archivo
// si pasamos el nombre del archivo de definición de variables --var-file="dev.tfvars"  
