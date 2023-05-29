# Realiza un programa bash que permita al usuario cargar tareas a un archivo llamado tareasDiarias.txt 
#!/bin/bash
tarea="tarea"

read -p "Ingrese una tarea: " tarea
echo "$tarea" >> tareasDiarias.txt

echo "Tarea agregada" 