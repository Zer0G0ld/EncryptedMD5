#!/usr/bin/bash

# Obtém o tamanho do arquivo e exibe uma mensagem informativa
tamanho_arquivo=$(wc -l < wordlist.txt)
echo "Iniciando criptografia MD5 para $tamanho_arquivo palavras. Isso pode levar algum tempo..."

# Loop para criptografar e salvar os hashes em um novo arquivo
while read -r palavra; do
  echo -n "$palavra" | md5sum | cut -d' ' -f1 >> md5.txt
done < wordlist.txt

# Obtém o tamanho do arquivo de hashes e exibe mensagem de conclusão
tamanho_hashes=$(wc -c < md5.txt)
echo "Criptografia concluída. Hashes salvos em md5.txt."
echo "Tamanho do arquivo: $tamanho_hashes bytes."

