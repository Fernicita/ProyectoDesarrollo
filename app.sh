#!/bin/bash

sectiona=(0 SCRUM X.P. Kanban Crystal)
sectiont=(0 Cascada Espiral ModeloV)

function agregar() {
  read -p "Ingrese el identificador del concepto: " concepto
  read -p "Ingrese la definición del concepto: " definicion
  echo "[$concepto] .- $definicion" >> "$1"
}

function buscar() {
  read -p "Ingrese el concepto a buscar: " buscar
  grep "\[$buscar\]" "$1"
}


function eliminar() {
  read -p "Ingrese el concepto a eliminar:" eliminar
  if ! grep -q "\[$eliminar\]" "$1"; then
	echo "El concetpo '$eliminar' no existe en el archivo"
	return 1
  fi
  if ! sed -i ''"/\[$eliminar\]/d" "$1";then 
  	echo "Error al eliminar el concepto '$eliminar'"
	return 1
  fi 
  echo "El concepto '$eliminar' fue eliminado exitosamente del archvivo"
  return 0
}

function leer() {
  cat "$1"
}

case $1 in
  -a)
    while true; do
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
            agregar "$archivo"
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
      read -p "Quieres seguir en el programa? (s/n): " continuar
      if [ "$continuar" != "s" ]; then
        break
      fi
      done
      ;;

  -t)
  while true; do
    echo "Bienvenido a la guia rapida de Metodologias Tradicionales"
    echo "1. Cascada"
    echo "2. Espiral"
    echo "3. Modelo V"
    read -p "Para continuar seleccione un tema: " x
      case $x in
        1)
        echo "Usted esta en la seccion ${sectiont[$x]}"
        archivo="Cascada.inf"
        ;;
        2)
        echo "Usted esta en la seccion ${sectiont[$x]}"
        archivo="Espiral.inf"
        ;;
        3)
        echo "Usted esta en la seccion ${sectiont[$x]}"
        archivo="ModeloV.inf"
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
            agregar "$archivo"
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
      read -p "Quieres seguir en el programa? (s/n): " continuar
      if [ "$continuar" != "s" ]; then
        break
      fi
      done
      ;;
  *)
  echo "Flag no encontrada"
  ;;
esac
