#!/bin/bash

sectiona=(0 SCRUM X.P. Kanban Crystal)
sectiont=(0 Cascada Espiral ModeloV)



function agregar() {
  read -p "Ingrese el identificador del concepto: " id
  read -p "Ingrese la definición del concepto: " definicion
  echo "[$id] .- $definicion" >> "$1"
}

function buscar() {
  read -p "Ingrese el concepto a buscar: " buscar
  grep "\[$buscar\]" "$1"
}


function eliminar(){
  echo
}

function leer(){
  echo 
}


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
    archivo="SCRUM.inf"
    ;;
    2)
    echo "Usted esta en la seccion ${sectiona[$x]}"
    archivo="XP.inf"
    ;;
    3)
    echo "Usted esta en la seccion ${sectiona[$x]}"
    archivo="Kanban.inf"
    ;;
    4)
    echo "Usted esta en la seccion ${sectiona[$x]}"
    archivo="Crystal.inf"
    ;;
    *)
    echo "Opcion no valida"
    ;;
  esac

  if [ -n "$archivo" ]; then
    while true; do
      echo "1. Agregar informacion"
      echo "2. Buscar"
      echo "3. Eliminar informacion"
      echo "4. Leer base de informacion"
      read -p "Seleccione la opcion que desea utilizar: " opc

      case $opc in
        1)
        add_info "$archivo"
        ;;
        2)
        buscar "$archivo"
        ;;
        3)
        eliminar "$archivo"
        ;;
        4)
        leer "$archivo"
        ;;
        *)
        echo "Opcion no valida"
        ;;
      esac

      read -p "Desea continuar en esta seccion? (s/n): " continuar
      if [ "$continuar" != "s" ]; then
        break
      fi
    done
  fi




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
