<p align="right"><a href="README.md">Español</a> · <a href="README.en.md">English</a> · <a href="README.fr.md">Français</a> · <a href="README.de.md">Deutsch</a> · <a href="README.it.md">Italiano</a> · <strong>Português</strong> · <a href="README.ja.md">日本語</a> · <a href="README.ko.md">한국어</a></p>

# PokeChampions Core

<img src="media/brand/logo.png" width="104" alt="Logótipo atual do PokeChampions Core com fundo transparente">

**Prepara a tua equipa. Compreende o confronto. Aprende com as tuas partidas.**

Uma aplicação Android para jogadores de Pokémon Champions que querem comparar dano e Velocidade, explorar configurações e ter sempre consigo as suas equipas, notas e resultados. As ferramentas e os catálogos incluídos funcionam **offline**, sem conta nem sincronização automática com a Internet.

Desenvolvida por **[Diego de Arriba](https://github.com/DiegoARRFRA)** · Flutter e Dart · Código-fonte privado.

[Funcionalidades](docs/FEATURES.en.md) · [Galeria](docs/GALLERY.en.md) · [Visão técnica](docs/TECHNICAL_OVERVIEW.en.md) · [Documentação](docs/README.en.md)

> Esta apresentação está em português. A documentação detalhada está disponível em espanhol e inglês; as ligações acima abrem a versão inglesa.

## Um olhar sobre a aplicação

Ecrã inicial, um cálculo Versus e filtros de movimentos. Capturas autênticas da versão **1.0.1**, feitas num emulador Android em **5 de novembro de 2026**, com a interface em espanhol. Seleciona uma imagem para a veres em tamanho completo.

<p>
<a href="media/screenshots/home.png"><img src="media/screenshots/home.png" width="220" alt="Ecrã inicial escuro com o logótipo atual e atalhos para as ferramentas"></a>
<a href="media/screenshots/versus-result.png"><img src="media/screenshots/versus-result.png" width="220" alt="Resultado Versus de Double-Edge: 45–54 HP de dano e condições de KO"></a>
<a href="media/screenshots/library.png"><img src="media/screenshots/library.png" width="220" alt="Biblioteca com filtros combinados e duas categorias de movimentos selecionadas"></a>
</p>

[Ver as oito capturas e as demonstrações históricas](docs/GALLERY.en.md). A galeria distingue as capturas do emulador, as renderizações HOST e os vídeos anteriores.

## Ferramentas para preparar e comparar

| Ferramenta | O que permite fazer |
| --- | --- |
| **Batalha** | Analisar cenários de batalhas em duplas: Velocidade, habilidades, clima e efeitos. Carregar um ou dois membros de equipas, torneios ou notas e ajustar temporariamente SP e natureza. |
| **Versus e EV Lab** | Calcular intervalos de dano, utilizações necessárias para um KO e distribuições defensivas para sobreviver; explorar condições com o Modo Mestre. |
| **1HITKO** | Procurar candidatos a KO no cenário configurado, com progresso, cancelamento e Modo Mestre defensivo. |
| **Equipas e notas** | Criar equipas, consultar a cobertura defensiva e reutilizar configurações guardadas com habilidade, natureza e SP. |
| **Torneios e biblioteca** | Explorar equipas por regulamento e data, configurações Smogon, STATS, movimentos aprendidos e Pokémon que os podem aprender, com filtros combináveis. |
| **Treino de leads e histórico** | Praticar a escolha dos Pokémon iniciais e registar manualmente partidas, adversários e aprendizagens. |

Batalha analisa cenários; **não simula uma batalha completa**. Um KO garantido depende do dano mínimo e das condições configuradas, supondo que o movimento acerta. [Âmbito e limites — inglês](docs/FEATURES.en.md).

Esta revisão destaca as notas agrupadas por Pokémon, o carregamento de configurações entre ferramentas, os filtros por categoria de movimento, o catálogo atualizado e os ícones atuais. Continuam disponíveis oito idiomas: espanhol, inglês, francês, alemão, italiano, português, japonês e coreano. Mantêm-se também os temas claro, escuro e do sistema e o áudio opcional, incluindo **Tribute to Anime** e **Jojo´s rute**.

## Disponibilidade e privacidade

**Versão 1.0.1 em testes internos**, segundo o estado comunicado pelo autor em 5 de novembro de 2026. Não foi verificada uma transferência pública nesta revisão, nem é anunciada uma publicação em testes fechados. Este repositório contém documentação e materiais de apresentação, não instaladores nem código-fonte da aplicação.

[Política de privacidade pública](https://pokechampions-core-privacidad.pages.dev/) · [Autor e contacto](https://github.com/DiegoARRFRA) · [Sugestões e problemas — inglês](CONTRIBUTING.en.md).

## Por dentro

Flutter/Dart, organização por funcionalidades e camadas, contratos tipados e injeção pelo construtor. Drift e SQLite guardam os dados locais em **11 tabelas**, com transações, verificações de revisão e integridade das migrações. As regras de cálculo são partilhadas entre ferramentas; as tarefas de pesquisa e armazenamento têm ciclos de vida separados.

**13 706 testes HOST aprovados, 0 falhas e 17 testes opcionais ignorados**, na execução global sequencial de **5 de novembro de 2026**. As verificações específicas, a atualização no emulador e os testes históricos em dispositivos físicos estão documentados separadamente; este total não certifica todos os dispositivos.

Documentação técnica em inglês: [Validação e limites](docs/VALIDATION.en.md) · [Arquitetura](docs/ARCHITECTURE.en.md) · [Base de dados](docs/DATABASE.en.md) · [Decisões de engenharia](docs/ENGINEERING.en.md) · [Desempenho histórico](docs/PERFORMANCE.en.md) · [Trabalho pendente](docs/ROADMAP.en.md).

PokeChampions Core é um projeto de fãs não oficial, sem afiliação à Nintendo, Creatures, GAME FREAK ou The Pokémon Company. As marcas e os recursos Pokémon pertencem aos respetivos titulares. [Avisos e atribuições — inglês](NOTICE.en.md).
