---
id: "4002"
title: "Trois films en trois langues"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, principe-multiplicatif, principe-additif]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2B, Basic Combinatorics and Probability"
  reference: "Handout-3816-3443.pdf, exercice 7 (réponse dans Handout-3817-3443.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3816-3443.pdf"
---

## Statement

Une médiathèque propose $5$ films en anglais, $3$ films en français, $2$ films en russe et
$4$ films en hindi. Les $14$ films sont tous différents.

Lucie veut emprunter trois films, chacun dans une langue différente des deux autres.
De combien de façons peut-elle choisir ses trois films ?

## Hints

1. Combien y a-t-il de façons de choisir les trois **langues** ? Fais-en la liste : il n'y en a pas beaucoup.
2. Une fois les trois langues fixées, par exemple anglais, français et russe, combien y a-t-il de choix de films ?
3. Traite chaque liste de trois langues séparément, puis additionne les résultats obtenus.

## Solution

**Étape 1. Choisir les trois langues.**

Il y a quatre langues disponibles et il faut en écarter une. Il y a donc $4$ listes de
trois langues possibles :

- anglais, français, russe ;
- anglais, français, hindi ;
- anglais, russe, hindi ;
- français, russe, hindi.

**Étape 2. Compter les films pour chaque liste de langues.**

Une fois les trois langues fixées, Lucie choisit un film dans chacune des trois, et ces
choix sont indépendants : on multiplie.

- anglais, français, russe : $5 \times 3 \times 2 = 30$
- anglais, français, hindi : $5 \times 3 \times 4 = 60$
- anglais, russe, hindi : $5 \times 2 \times 4 = 40$
- français, russe, hindi : $3 \times 2 \times 4 = 24$

**Étape 3. Additionner.**

Un choix de trois films correspond à une seule liste de langues, donc les quatre cas
comptés ci-dessus sont bien séparés : aucun choix n'est compté deux fois. On additionne :

$$30 + 60 + 40 + 24 = 154.$$

**Réponse : Lucie a $154$ façons de choisir ses trois films.**
