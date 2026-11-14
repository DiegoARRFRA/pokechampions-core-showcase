<p align="right"><a href="README.md">Español</a> · <a href="README.en.md">English</a> · <a href="README.fr.md">Français</a> · <strong>Deutsch</strong> · <a href="README.it.md">Italiano</a> · <a href="README.pt.md">Português</a> · <a href="README.ja.md">日本語</a> · <a href="README.ko.md">한국어</a></p>

# PokeChampions Core

<img src="media/brand/logo.png" width="104" alt="Aktuelles Logo von PokeChampions Core mit transparentem Hintergrund">

**Bereite dein Team vor. Verstehe das Matchup. Lerne aus deinen Spielen.**

Eine Android-App für Pokémon-Champions-Spieler, die Schaden und Initiative vergleichen, Sets ausprobieren und ihre Teams, Notizen und Ergebnisse immer dabeihaben möchten. Die Werkzeuge und mitgelieferten Kataloge funktionieren **offline**, ohne Konto und ohne automatische Synchronisierung mit dem Internet.

Entwickelt von **[Diego de Arriba](https://github.com/DiegoARRFRA)** · Flutter und Dart · Privater Quellcode.

[Funktionen](docs/FEATURES.en.md) · [Galerie](docs/GALLERY.en.md) · [Technischer Überblick](docs/TECHNICAL_OVERVIEW.en.md) · [Dokumentation](docs/README.en.md)

> Diese Projektvorstellung ist auf Deutsch. Die ausführliche Dokumentation ist auf Spanisch und Englisch verfügbar; die obigen Links führen zur englischen Version.

## Ein Blick in die App

Startseite, eine Versus-Berechnung und Attackenfilter. Echte Screenshots von **1.0.1**, aufgenommen am **5. November 2026** in einem Android-Emulator mit spanischer Benutzeroberfläche. Klicke auf ein Bild, um es in voller Größe zu öffnen.

<p>
<a href="media/screenshots/home.png"><img src="media/screenshots/home.png" width="220" alt="Dunkle Startseite mit aktuellem Logo und Verknüpfungen zu den Werkzeugen"></a>
<a href="media/screenshots/versus-result.png"><img src="media/screenshots/versus-result.png" width="220" alt="Versus-Ergebnis für Risikotackle: 45–54 KP Schaden und K.O.-Bedingungen"></a>
<a href="media/screenshots/library.png"><img src="media/screenshots/library.png" width="220" alt="Bibliothek mit kombinierten Filtern und zwei ausgewählten Attackenkategorien"></a>
</p>

[Alle acht Screenshots und historischen Demos ansehen](docs/GALLERY.en.md). Die Galerie unterscheidet zwischen Emulator-Aufnahmen, HOST-Renderings und älteren Videos.

## Werkzeuge zum Vorbereiten und Vergleichen

| Werkzeug | Möglichkeiten |
| --- | --- |
| **Kampf** | Doppelkampf-Szenarien analysieren: Initiative, Fähigkeiten, Wetter und Effekte. Ein oder zwei Mitglieder aus Teams, Turnieren oder Notizen laden und SP/Wesen vorübergehend anpassen. |
| **Versus und EV Lab** | Schadensbereiche, die für einen K.O. nötige Anzahl von Einsätzen und defensive Verteilungen zum Überleben berechnen; Bedingungen im Meistermodus untersuchen. |
| **1HITKO** | K.O.-Kandidaten unter den eingestellten Bedingungen suchen, mit Fortschrittsanzeige, Abbruchfunktion und defensivem Meistermodus. |
| **Teams und Notizen** | Teams erstellen, defensive Typenabdeckung prüfen und gespeicherte Sets mit Fähigkeit, Wesen und SP wiederverwenden. |
| **Turniere und Bibliothek** | Teams nach Regelwerk und Datum, Smogon-Sets, STATS, erlernbare Attacken und deren Nutzer mit kombinierbaren Filtern durchsuchen. |
| **Lead-Trainer und Verlauf** | Die Auswahl der Start-Pokémon üben und Spiele, Gegner und Erkenntnisse manuell festhalten. |

Kampf analysiert Szenarien; **es spielt keinen vollständigen Kampf durch**. Ein garantierter K.O. hängt vom Mindestschaden und den eingestellten Bedingungen ab und setzt voraus, dass die Attacke trifft. [Umfang und Grenzen — Englisch](docs/FEATURES.en.md).

Diese Überarbeitung zeigt nach Pokémon gruppierte Notizen, das Laden von Sets zwischen Werkzeugen, Attackenkategorie-Filter, den aktualisierten Katalog und die aktuellen Symbole. Acht Sprachen sind weiterhin verfügbar: Spanisch, Englisch, Französisch, Deutsch, Italienisch, Portugiesisch, Japanisch und Koreanisch. Helles, dunkles und Systemdesign sowie optionales Audio bleiben ebenfalls erhalten, darunter **Tribute to Anime** und **Jojo´s rute**.

## Verfügbarkeit und Datenschutz

**Version 1.0.1 im internen Test**, gemäß der Mitteilung des Autors vom 5. November 2026. Ein öffentlicher Download wurde für diese Übersicht nicht verifiziert; eine Veröffentlichung in einem geschlossenen Test wird hier nicht angekündigt. Dieses Repository enthält Dokumentation und ausgewählte Medien, keine Installationsdateien und keinen App-Quellcode.

[Öffentliche Datenschutzerklärung](https://pokechampions-core-privacidad.pages.dev/) · [Autor und Kontakt](https://github.com/DiegoARRFRA) · [Feedback und Fehlerberichte — Englisch](CONTRIBUTING.en.md).

## Unter der Haube

Flutter/Dart, nach Funktionen und Schichten gegliedert, mit typisierten Verträgen und Konstruktorinjektion. Drift und SQLite speichern lokale Daten in **11 Tabellen**, mit Transaktionen, Revisionsprüfungen und abgesicherten Migrationen. Die Werkzeuge verwenden gemeinsame Berechnungsregeln; Such- und Speicheraufgaben haben getrennte Lebenszyklen.

**13.706 HOST-Tests bestanden, 0 fehlgeschlagen und 17 optionale Tests übersprungen**, im vollständigen seriellen Testlauf vom **5. November 2026**. Gezielte Prüfungen, das Emulator-Update und frühere Tests auf physischen Geräten sind separat dokumentiert; diese Zahl bestätigt nicht die Funktion auf jedem Gerät.

Technische Dokumentation auf Englisch: [Validierung und Grenzen](docs/VALIDATION.en.md) · [Architektur](docs/ARCHITECTURE.en.md) · [Datenbank](docs/DATABASE.en.md) · [Technische Entscheidungen](docs/ENGINEERING.en.md) · [Historische Leistungsmessungen](docs/PERFORMANCE.en.md) · [Offene Arbeiten](docs/ROADMAP.en.md).

PokeChampions Core ist ein inoffizielles Fanprojekt ohne Verbindung zu Nintendo, Creatures, GAME FREAK oder The Pokémon Company. Pokémon-Marken und -Ressourcen gehören den jeweiligen Rechteinhabern. [Hinweise und Quellenangaben — Englisch](NOTICE.en.md).
