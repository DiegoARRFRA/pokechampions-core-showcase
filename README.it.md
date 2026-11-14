<p align="right"><a href="README.md">Español</a> · <a href="README.en.md">English</a> · <a href="README.fr.md">Français</a> · <a href="README.de.md">Deutsch</a> · <strong>Italiano</strong> · <a href="README.pt.md">Português</a> · <a href="README.ja.md">日本語</a> · <a href="README.ko.md">한국어</a></p>

# PokeChampions Core

<img src="media/brand/logo.png" width="104" alt="Logo attuale di PokeChampions Core con sfondo trasparente">

**Prepara la tua squadra. Comprendi il confronto. Impara dalle tue partite.**

Un’app Android per i giocatori di Pokémon Champions che vogliono confrontare danni e Velocità, esplorare configurazioni e avere sempre con sé squadre, note e risultati. Gli strumenti e i cataloghi inclusi funzionano **offline**, senza account né sincronizzazione automatica con Internet.

Sviluppata da **[Diego de Arriba](https://github.com/DiegoARRFRA)** · Flutter e Dart · Codice sorgente privato.

[Funzionalità](docs/FEATURES.en.md) · [Galleria](docs/GALLERY.en.md) · [Panoramica tecnica](docs/TECHNICAL_OVERVIEW.en.md) · [Documentazione](docs/README.en.md)

> Questa presentazione è in italiano. La documentazione dettagliata è disponibile in spagnolo e inglese; i link qui sopra aprono la versione inglese.

## Uno sguardo all’app

Schermata iniziale, calcolo Versus e filtri delle mosse. Screenshot autentici della versione **1.0.1**, acquisiti in un emulatore Android il **5 novembre 2026**, con interfaccia in spagnolo. Seleziona un’immagine per visualizzarla a grandezza naturale.

<p>
<a href="media/screenshots/home.png"><img src="media/screenshots/home.png" width="220" alt="Schermata iniziale scura con il logo attuale e le scorciatoie agli strumenti"></a>
<a href="media/screenshots/versus-result.png"><img src="media/screenshots/versus-result.png" width="220" alt="Risultato Versus per Sdoppiatore: 45–54 PS di danno e condizioni di K.O."></a>
<a href="media/screenshots/library.png"><img src="media/screenshots/library.png" width="220" alt="Biblioteca con filtri combinati e due categorie di mosse selezionate"></a>
</p>

[Visualizza tutti gli otto screenshot e le demo storiche](docs/GALLERY.en.md). La galleria distingue le acquisizioni dall’emulatore, i rendering HOST e i video precedenti.

## Strumenti per preparare e confrontare

| Strumento | Cosa permette di fare |
| --- | --- |
| **Lotta** | Analizzare scenari di lotta in doppio: Velocità, abilità, meteo ed effetti. Caricare uno o due membri da squadre, tornei o note e modificare temporaneamente SP e natura. |
| **Versus ed EV Lab** | Calcolare intervalli di danno, utilizzi necessari per un K.O. e distribuzioni difensive per sopravvivere; esplorare le condizioni con la modalità Maestro. |
| **1HITKO** | Cercare candidati al K.O. nello scenario configurato, con avanzamento, annullamento e modalità Maestro difensiva. |
| **Squadre e note** | Creare squadre, consultarne la copertura difensiva e riutilizzare configurazioni salvate con abilità, natura e SP. |
| **Tornei e biblioteca** | Esplorare squadre per regolamento e data, configurazioni Smogon, STATS, mosse apprendibili e Pokémon che le imparano, con filtri combinabili. |
| **Allenamento dei lead e cronologia** | Esercitarsi nella scelta dei Pokémon iniziali e registrare manualmente partite, avversari e lezioni apprese. |

Lotta analizza scenari; **non simula una lotta completa**. Un K.O. garantito dipende dal danno minimo e dalle condizioni configurate, supponendo che la mossa vada a segno. [Ambito e limiti — inglese](docs/FEATURES.en.md).

Questa revisione mette in evidenza le note raggruppate per Pokémon, il caricamento di configurazioni tra strumenti, i filtri per categoria di mossa, il catalogo aggiornato e le icone attuali. Restano disponibili otto lingue: spagnolo, inglese, francese, tedesco, italiano, portoghese, giapponese e coreano. Sono inoltre disponibili i temi chiaro, scuro e di sistema e l’audio facoltativo, inclusi **Tribute to Anime** e **Jojo´s rute**.

## Disponibilità e privacy

**Versione 1.0.1 in test interno**, secondo lo stato comunicato dall’autore il 5 novembre 2026. In questa revisione non è stato verificato un download pubblico e non viene annunciata una pubblicazione in test chiuso. Questo repository contiene documentazione e materiali dimostrativi, non programmi di installazione né codice sorgente dell’app.

[Informativa sulla privacy pubblica](https://pokechampions-core-privacidad.pages.dev/) · [Autore e contatti](https://github.com/DiegoARRFRA) · [Feedback e segnalazioni — inglese](CONTRIBUTING.en.md).

## Dietro le quinte

Flutter/Dart, organizzazione per funzionalità e livelli, contratti tipizzati e iniezione tramite costruttore. Drift e SQLite archiviano i dati locali in **11 tabelle**, con transazioni, controlli di revisione e integrità delle migrazioni. Le regole di calcolo sono condivise tra gli strumenti; le attività di ricerca e archiviazione hanno cicli di vita separati.

**13.706 test HOST superati, 0 falliti e 17 test facoltativi saltati**, nell’esecuzione globale seriale del **5 novembre 2026**. Le verifiche mirate, l’aggiornamento nell’emulatore e i test storici su dispositivi fisici sono documentati separatamente; questo totale non certifica tutti i dispositivi.

Documentazione tecnica in inglese: [Validazione e limiti](docs/VALIDATION.en.md) · [Architettura](docs/ARCHITECTURE.en.md) · [Database](docs/DATABASE.en.md) · [Scelte ingegneristiche](docs/ENGINEERING.en.md) · [Prestazioni storiche](docs/PERFORMANCE.en.md) · [Attività aperte](docs/ROADMAP.en.md).

PokeChampions Core è un progetto amatoriale non ufficiale, senza affiliazione con Nintendo, Creatures, GAME FREAK o The Pokémon Company. I marchi e le risorse Pokémon appartengono ai rispettivi titolari. [Avvisi e attribuzioni — inglese](NOTICE.en.md).
