#!/bin/bash

sectiona=(0 SCRUM X.P. Kanban Crystal)
sectiont=(0 Cascada Espiral ModeloV)
case $1 in
  -a)
  echo "Bienvenido a la guia rapida de Agile"
  echo "1. SCRUM"
  echo "2. X.P."
  echo "3. Kanban"
  echo "4. Crystal"
  read -p "Para continuar seleccione un tema: " x
  case $x in
    1)
    echo "Usted esta en la seccion ${sectiona[$x]}"
    echo "1. Agregar informacion"
    echo "2. Buscar"
    echo "3. Eliminar informacion"
    echo "4. Leer base de informacion"
    read -p "Selecione la opcion que desea utilizar" opc

    ;;
    2)
    echo "Usted esta en la seccion ${sectiona[$x]}"
    echo "1. Agregar informacion"
    echo "2. Buscar"
    echo "3. Eliminar informacion"
    echo "4. Leer base de informacion"
    read -p "Selecione la opcion que desea utilizar" opc
    ;;
    3)
    echo "Usted esta en la seccion ${sectiona[$x]}"
    echo "1. Agregar informacion"
    echo "2. Buscar"
    echo "3. Eliminar informacion"
    echo "4. Leer base de informacion"
    read -p "Selecione la opcion que desea utilizar" opc
    ;;
    4)
    echo "Usted esta en la seccion ${sectiona[$x]}"
    echo "1. Agregar informacion"
    echo "2. Buscar"
    echo "3. Eliminar informacion"
    echo "4. Leer base de informacion"
    read -p "Selecione la opcion que desea utilizar" opc
    ;;
    *)
    echo "Opcion no valida"
    ;;
  esac
  ;;
  -t)
  echo "Bienvenido a la guia rapida de Metodologias Tradicionales"
  echo "1. Cascada"
  echo "2. Espiral"
  echo "3. Modelo V"
  read -p "Para continuar seleccione un tema: " x
  case $x in
    1)
    echo "Usted esta en la seccion ${sectiont[$x]}"
    echo "1. Agregar informacion"
    echo "2. Buscar"
    echo "3. Eliminar informacion"
    echo "4. Leer base de informacion"
    read -p "Selecione la opcion que desea utilizar" opc
    ;;
    2)
    echo "Usted esta en la seccion ${sectiont[$x]}"
    echo "1. Agregar informacion"
    echo "2. Buscar"
    echo "3. Eliminar informacion"
    echo "4. Leer base de informacion"
    read -p "Selecione la opcion que desea utilizar" opc
    ;;
    3)
    echo "Usted esta en la seccion ${sectiont[$x]}"
    echo "1. Agregar informacion"
    echo "2. Buscar"
    echo "3. Eliminar informacion"
    echo "4. Leer base de informacion"
    read -p "Selecione la opcion que desea utilizar" opc
    ;;
    *)
    echo "Opcion no valida"
    ;;
  esac
  ;;
  *)
  echo "Flag no encontrada"
  ;;
esac
