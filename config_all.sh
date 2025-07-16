#!/bin/bash

DIR=${1:-.}

echo "Buscancdo arquivos .yaml e .yml em: $DIR"

find "$DIR" -type f \( -iname "*.yaml" -o -iname "*.yml" \) | while read -r file; do
  echo "Aplicando: $file"
  kubectl apply -f "$file"
done
