# Fiction

Plataforma web de leitura e escrita de fanfics em que cada história pode ter uma trilha sonora do Spotify, que o leitor ouve e salva sem sair da página.

> **Status:** planejamento concluído (2026/2). A implementação ainda não começou.

## Problema

Autores de fanfics e songfics montam playlists para definir o clima das suas histórias, mas as plataformas atuais (Wattpad, Spirit Fanfics e AO3) não têm integração com música. A trilha fica num link do Spotify colado nas notas do capítulo, e a maioria dos leitores ignora o link para não ter que alternar entre abas e aplicativos.

Isso gera três problemas:

- **Para quem escreve:** a curadoria musical, que faz parte da obra, não chega ao leitor.
- **Para quem lê:** ouvir a trilha exige sair do texto, procurar a playlist e voltar, o que quebra a concentração.
- **Para quem coleciona:** quando o autor apaga a playlist, a trilha se perde, e salvá-la exige copiar música por música.

Ao mesmo tempo, leitores com sensibilidade sensorial evitam sites que tocam música automaticamente.

## Objetivos

**Objetivo geral:** entregar uma plataforma web em que autores vinculem playlists do Spotify às suas histórias e leitores ouçam e salvem a trilha sem sair da página.

**Objetivos específicos:**

- Permitir que qualquer usuário escreva e publique histórias em um editor Markdown com pré-visualização.
- Vincular uma playlist do Spotify a cada história e guardar a lista de faixas na plataforma.
- Oferecer um player integrado para leitores com Spotify Premium e um player incorporado para os demais.
- Permitir salvar a trilha de uma história na própria conta do Spotify com um clique.
- Garantir que a música só toque por ação do leitor, com avisos de conteúdo visíveis antes e durante a leitura.
- Atender às WCAG 2.1 nível AA, com ajustes de fonte, espaçamento e largura do texto.

## Principais funcionalidades

| Para quem escreve | Para quem lê |
| --- | --- |
| Editor Markdown com pré-visualização | Busca por título, autor e tag |
| Rascunho e publicação de capítulos | Página da história com avisos e lista de faixas |
| Avisos de conteúdo obrigatórios | Player integrado (Premium) ou incorporado (sem Premium) |
| Playlist do Spotify vinculada à história | Salvar a trilha no próprio Spotify |
| Painel de métricas da história | Favoritos, progresso de leitura e ajustes de tipografia |

## Equipe

| Integrante |
| --- |
| Helena Santos Rezende |
| Artur Ribeiro Piumbini |

## Tecnologias previstas

| Camada | Tecnologia |
| --- | --- |
| Framework full-stack | Next.js (App Router) com TypeScript |
| Interface | Tailwind CSS |
| Editor de texto | CodeMirror 6 |
| Renderização de Markdown | unified, remark e rehype-sanitize |
| Autenticação | Auth.js |
| Banco de dados | PostgreSQL com Prisma |
| Música | Spotify Web API, Web Playback SDK e iFrame API do Embed |
| Testes | Vitest e Playwright |
| Infraestrutura | Microsoft Azure: App Service, PostgreSQL Flexible Server, Blob Storage, Key Vault e Application Insights |
| CI/CD | GitHub Actions e Docker |

A arquitetura é um monólito modular em camadas. Os motivos de cada escolha estão no documento de arquitetura, na pasta [`docs/`](docs/).

## Estrutura do repositório

```
.
├── .github/              # templates de issue e PR, workflows de CI e deploy
├── docs/                 # documentação do projeto
├── prisma/               # esquema e migrações do banco
├── public/               # arquivos estáticos
├── scripts/              # scripts de organização do repositório
├── src/
│   ├── app/              # rotas e páginas do Next.js
│   ├── lib/              # utilitários compartilhados
│   └── modules/          # módulos de domínio
│       ├── contas/
│       ├── historias/
│       ├── conteudo/
│       ├── trilha-sonora/
│       ├── leitura/
│       └── metricas/
└── tests/
    ├── unit/
    └── e2e/
```

## Como executar

As instruções serão completadas na primeira sprint da implementação. O fluxo previsto é:

```bash
cp .env.example .env
npm install
npx prisma migrate dev
npm run dev
```

## Fluxo de trabalho

- A branch `main` é protegida e só recebe código por pull request revisado pelo outro integrante.
- Cada item do backlog é uma issue, desenvolvida em uma branch `feature/PBxx-descricao-curta`.
- O backlog e as sprints são acompanhados no GitHub Projects do repositório.

## Documentação

| Documento | Conteúdo |
| --- | --- |
| Personas e histórias de usuário | 5 personas e 10 histórias de usuário |
| Requisitos funcionais e não funcionais | 50 requisitos funcionais, 10 não funcionais e análise de concorrentes |
| Arquitetura de software e tecnologias | Arquitetura, diagramas e justificativa das tecnologias |
| Product Backlog | 31 itens priorizados e plano de 7 sprints |
| Project Model Canvas | Canvas do projeto |
