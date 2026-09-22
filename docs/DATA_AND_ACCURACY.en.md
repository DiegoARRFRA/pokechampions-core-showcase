<p align="right">
  <a href="DATA_AND_ACCURACY.md">Español</a> · <strong>English</strong>
</p>

# Data & Accuracy

[← Overview](../README.en.md) · [Documentation index](README.en.md)

PokeChampions Core separates **data provenance** from **authority over runtime behaviour**. No source is assumed correct for every kind of question.

## Authority model

The data process distinguishes official Pokémon Champions information for regulation, legal availability and published rules; pinned technical references for master data, identifiers, learnsets and reproducible behaviour; Champions-specific overrides of generic rules; and declarative project overrides only when independently justified and not safely derivable elsewhere.

Human-readable descriptions are documentation: they never govern a mechanic on their own.

## Offline catalogues

Data is packaged with the application. Research, import and generation happen during development, not on each execution. Every release retains a stable snapshot: a mutable external website or repository cannot silently change an already-installed build.

## Revisions and integrity

Internal tools record immutable revisions and hashes where practical. Generated artefacts can then be compared with the exact inputs they came from. Hashes check integrity and traceability; they do not independently prove a rule is correct.

## Conflicts and uncertainty

A Champions-specific official rule takes precedence over a generic interpretation. A Champions-specific technical override takes precedence over a general rule where that override applies.

Insufficient evidence leads to explicit insufficient context, a documented unsupported interaction or a scoped, evidence-backed override. Gaps are not filled simply because another Pokémon format behaves similarly.

## Regulation changes

A new regulation is a data change requiring its own acceptance. Participants, mechanics or entries introduced later do not automatically inherit historical validation campaigns.

An earlier passing campaign is not proof of a state that did not yet exist when it ran.

[How the data is used](TECHNICAL_OVERVIEW.en.md) · [Validation](VALIDATION.en.md)
