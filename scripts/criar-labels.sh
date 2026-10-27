#!/usr/bin/env bash
set -euo pipefail

label() { gh label create "$1" --color "$2" --description "$3" --force; }

label "prioridade:must"   "b60205" "Sem o item, o Fiction não entrega sua proposta"
label "prioridade:should" "d93f0b" "Importante, mas o produto funciona sem ele"
label "prioridade:could"  "fbca04" "Desejável; entra se sobrar capacidade"

label "epico:infra"    "5319e7" "Base do projeto e implantação"
label "epico:contas"   "1d76db" "Contas e acesso"
label "epico:escrita"  "0e8a16" "Escrita e publicação"
label "epico:leitura"  "006b75" "Leitura e descoberta"
label "epico:trilha"   "c5def5" "Trilha sonora (Spotify)"
label "epico:metricas" "bfdadc" "Métricas do autor"

label "tipo:funcionalidade" "a2eeef" "Item do Product Backlog"
label "tipo:bug"            "d73a4a" "Algo não funciona como deveria"
