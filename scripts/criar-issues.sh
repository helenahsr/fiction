#!/usr/bin/env bash
set -euo pipefail

for n in 1 2 3 4 5 6 7; do
  gh api "repos/{owner}/{repo}/milestones" -f title="Sprint $n" >/dev/null 2>&1 || true
done

issue() {
  local titulo="$1" corpo="$2" labels="$3" sprint="$4"
  if [ -n "$sprint" ]; then
    gh issue create --title "$titulo" --body "$corpo" --label "$labels" --milestone "Sprint $sprint"
  else
    gh issue create --title "$titulo" --body "$corpo" --label "$labels"
  fi
}

issue "PB01. Base do projeto, banco de dados e pipeline de implantação no Azure" "$(printf '%b' "**Origem:** RNF01 a RNF10\n**Prioridade:** Must\n**Pontos:** 5\n**Sprint:** 1\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:infra" "1"
issue "PB02. Cadastro, login e logout com e-mail e senha" "$(printf '%b' "**Origem:** RF01, RF03, RF05\n**Prioridade:** Must\n**Pontos:** 5\n**Sprint:** 1\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:contas" "1"
issue "PB03. Recuperação de senha por e-mail" "$(printf '%b' "**Origem:** RF04\n**Prioridade:** Must\n**Pontos:** 3\n**Sprint:** 1\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:contas" "1"
issue "PB04. Cadastro de história" "$(printf '%b' "**Origem:** RF09\n**Prioridade:** Must\n**Pontos:** 3\n**Sprint:** 2\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:escrita" "2"
issue "PB05. Editor de capítulos em Markdown com pré-visualização" "$(printf '%b' "**Origem:** RF10\n**Prioridade:** Must\n**Pontos:** 8\n**Sprint:** 2\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:escrita" "2"
issue "PB06. Rascunho, publicação e despublicação de capítulos" "$(printf '%b' "**Origem:** RF15, RF16, RF17\n**Prioridade:** Must\n**Pontos:** 5\n**Sprint:** 2\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:escrita" "2"
issue "PB07. Avisos de conteúdo obrigatórios para publicar" "$(printf '%b' "**Origem:** RF13\n**Prioridade:** Must\n**Pontos:** 2\n**Sprint:** 3\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:escrita" "3"
issue "PB08. Página da história com avisos e lista de faixas" "$(printf '%b' "**Origem:** US09, RF34\n**Prioridade:** Must\n**Pontos:** 3\n**Sprint:** 3\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:leitura" "3"
issue "PB09. Leitura e navegação entre capítulos" "$(printf '%b' "**Origem:** RF36\n**Prioridade:** Must\n**Pontos:** 3\n**Sprint:** 3\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:leitura" "3"
issue "PB10. Busca por título, autor e tag" "$(printf '%b' "**Origem:** RF32\n**Prioridade:** Must\n**Pontos:** 5\n**Sprint:** 3\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:leitura" "3"
issue "PB11. Vincular conta do Spotify e indicador de conexão" "$(printf '%b' "**Origem:** US02, RF06, RF08\n**Prioridade:** Must\n**Pontos:** 5\n**Sprint:** 4\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:trilha" "4"
issue "PB12. Vincular playlist à história e guardar a lista de faixas" "$(printf '%b' "**Origem:** US01, RF18 a RF21\n**Prioridade:** Must\n**Pontos:** 5\n**Sprint:** 4\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:trilha" "4"
issue "PB13. Player incorporado para leitores sem Premium" "$(printf '%b' "**Origem:** US06, RF27\n**Prioridade:** Must\n**Pontos:** 3\n**Sprint:** 4\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:trilha" "4"
issue "PB14. Reprodução somente por ação do leitor, com pausa sempre visível" "$(printf '%b' "**Origem:** US08, RF28\n**Prioridade:** Must\n**Pontos:** 2\n**Sprint:** 4\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:trilha" "4"
issue "PB15. Desvincular conta do Spotify" "$(printf '%b' "**Origem:** US03, RF07\n**Prioridade:** Must\n**Pontos:** 2\n**Sprint:** 5\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:trilha" "5"
issue "PB16. Salvar a trilha na conta do leitor" "$(printf '%b' "**Origem:** US05, RF25\n**Prioridade:** Must\n**Pontos:** 3\n**Sprint:** 5\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:must,epico:trilha" "5"
issue "PB17. Player integrado para leitores Premium" "$(printf '%b' "**Origem:** US04, RF26\n**Prioridade:** Should\n**Pontos:** 8\n**Sprint:** 5\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:should,epico:trilha" "5"
issue "PB18. Opção \"Ler sem trilha sonora\"" "$(printf '%b' "**Origem:** US08, RF29\n**Prioridade:** Should\n**Pontos:** 2\n**Sprint:** 6\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:should,epico:trilha" "6"
issue "PB19. Avisos de falha na reprodução" "$(printf '%b' "**Origem:** RF30, RF31\n**Prioridade:** Should\n**Pontos:** 3\n**Sprint:** 6\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:should,epico:trilha" "6"
issue "PB20. Lembrete de avisos no topo dos capítulos" "$(printf '%b' "**Origem:** US10, RF35\n**Prioridade:** Should\n**Pontos:** 2\n**Sprint:** 6\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:should,epico:leitura" "6"
issue "PB21. Favoritos" "$(printf '%b' "**Origem:** RF37, RF38, RF39\n**Prioridade:** Should\n**Pontos:** 3\n**Sprint:** 6\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:should,epico:leitura" "6"
issue "PB22. Reordenar capítulos" "$(printf '%b' "**Origem:** RF11\n**Prioridade:** Should\n**Pontos:** 2\n**Sprint:** 6\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:should,epico:escrita" "6"
issue "PB23. Pré-visualizar capítulo como leitor" "$(printf '%b' "**Origem:** RF14\n**Prioridade:** Should\n**Pontos:** 3\n**Sprint:** 7\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:should,epico:escrita" "7"
issue "PB24. Salvar e retomar a posição de leitura" "$(printf '%b' "**Origem:** RF40, RF41\n**Prioridade:** Should\n**Pontos:** 5\n**Sprint:** 7\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:should,epico:leitura" "7"
issue "PB25. Ajustes de leitura salvos no perfil" "$(printf '%b' "**Origem:** US07, RF42 a RF46\n**Prioridade:** Should\n**Pontos:** 5\n**Sprint:** 7\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:should,epico:leitura" "7"
issue "PB26. Login com conta Google" "$(printf '%b' "**Origem:** RF02\n**Prioridade:** Could\n**Pontos:** 3\n**Sprint:** a definir\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:could,epico:contas" ""
issue "PB27. Importar capítulo de arquivo .md ou .txt" "$(printf '%b' "**Origem:** RF12\n**Prioridade:** Could\n**Pontos:** 3\n**Sprint:** a definir\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:could,epico:escrita" ""
issue "PB28. Filtro por histórias com trilha sonora" "$(printf '%b' "**Origem:** RF33\n**Prioridade:** Could\n**Pontos:** 1\n**Sprint:** a definir\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:could,epico:leitura" ""
issue "PB29. Montar playlist buscando músicas na plataforma" "$(printf '%b' "**Origem:** RF22, RF23, RF24\n**Prioridade:** Could\n**Pontos:** 8\n**Sprint:** a definir\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:could,epico:trilha" ""
issue "PB30. Registro de leituras e de uso da trilha" "$(printf '%b' "**Origem:** RF47, RF48, RF49\n**Prioridade:** Could\n**Pontos:** 3\n**Sprint:** a definir\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:could,epico:metricas" ""
issue "PB31. Painel de métricas do autor" "$(printf '%b' "**Origem:** RF50\n**Prioridade:** Could\n**Pontos:** 5\n**Sprint:** a definir\n\nCritérios de aceitação: ver as histórias e os requisitos de origem.")" "tipo:funcionalidade,prioridade:could,epico:metricas" ""
