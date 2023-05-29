# Otro programa (delTareasEquipoX.sh) que permita eliminar las N ultimas tareas donde N corresponde a la cantidad de tareas que desea eliminar. 
#!/bin/bash
eliminarTareas=0
read -p "Ingrese las tareas que desea eliminar: " eliminarTareas

lineasTotales=$(wc -l < "tareasDiarias.txt")
lineasActuales=$((lineasTotales - eliminarTareas))

head -n "$lineasActuales" "tareasDiarias.txt" > "tareasDiarias.txt.tmp"
mv "tareasDiarias.txt.tmp" "tareasDiarias.txt"
echo "Tareas eliminadas"