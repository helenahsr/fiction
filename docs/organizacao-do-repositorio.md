# Organização do repositório

## 1. Criar o repositório

1. No GitHub, crie o repositório `fiction` sem README, sem `.gitignore` e sem licença, porque esses arquivos já estão neste pacote.
2. Na pasta descompactada, rode:

```bash
git init
git add .
git commit -m "Estrutura inicial do projeto"
git branch -M main
git remote add origin https://github.com/<usuario>/fiction.git
git push -u origin main
```

3. Em **Settings > Collaborators**, adicione o outro integrante da equipe.

## 2. Proteger a branch main

Em **Settings > Branches**, crie uma regra para `main` que exija pull request com pelo menos uma aprovação antes do merge. Assim, todo código passa pela revisão do outro integrante.

## 3. Criar labels, sprints e issues

Com o [GitHub CLI](https://cli.github.com) instalado e autenticado (`gh auth login`), rode na pasta do repositório:

```bash
./scripts/criar-labels.sh
./scripts/criar-issues.sh
```

O primeiro script cria as labels de prioridade (MoSCoW), de épico e de tipo. O segundo cria as milestones `Sprint 1` a `Sprint 7` e uma issue para cada um dos 31 itens do Product Backlog, com prioridade, épico, pontos e sprint.

## 4. Criar o quadro no GitHub Projects

1. Na aba **Projects** do repositório, crie um projeto com o modelo **Board** e nome `Fiction`.
2. Adicione as colunas: `Backlog`, `Sprint atual`, `Em andamento`, `Em revisão` e `Pronto`.
3. Adicione todas as issues ao projeto.
4. Crie um campo numérico `Pontos` e preencha com os valores da descrição de cada issue.

## Convenções

| Item | Convenção | Exemplo |
| --- | --- | --- |
| Branch | `feature/PBxx-descricao-curta` | `feature/PB12-vincular-playlist` |
| Commit | Verbo no presente, em português | `Adiciona validação da URL da playlist` |
| Pull request | Referencia a issue com `Closes #n` | `Closes #12` |
