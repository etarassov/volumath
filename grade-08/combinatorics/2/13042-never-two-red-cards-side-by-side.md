---
id: "13042"
title: "Jamais deux cartes rouges côte à côte"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, permutations, cartes, cases vides]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire lycéens"
  reference: "2017-09_coupe_automne_2015_elim_lycee.pdf, exercice 5 ; corrigé 2017-09_coupe_automne_2015_elim_lycee_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_lycee.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_lycee.pdf"
---

## Statement

Un joueur possède quatre cartes noires et trois cartes rouges, toutes différentes. Il les pose en ligne, les unes à côté des autres.

De combien de façons peut-il les ranger pour que deux cartes voisines ne soient jamais toutes les deux rouges ?

## Hints

1. Sépare le problème en deux : d'abord choisir **où** sont les cartes rouges (sans regarder lesquelles), ensuite décider quelle carte va à quelle place.
2. Pose d'abord les quatre cartes noires en ligne, en laissant de la place entre elles et aux deux bouts. Combien y a-t-il d'endroits où l'on peut glisser une carte rouge ?
3. Deux cartes rouges ne doivent pas aller au même endroit. De combien de façons peut-on choisir $3$ endroits parmi ceux-là ?

## Solution

**Les positions des couleurs.** Notons $N$ une carte noire et $R$ une carte rouge, et commençons par chercher les suites de $4$ lettres $N$ et $3$ lettres $R$ dans lesquelles deux $R$ ne se touchent jamais.

Posons les quatre $N$ en laissant un espace avant, entre et après elles :
$$\_\ N\ \_\ N\ \_\ N\ \_\ N\ \_$$
Cela fait $5$ espaces. Chaque $R$ doit aller dans un espace, et deux $R$ ne peuvent pas aller dans le même espace (elles seraient voisines). Inversement, si les trois $R$ sont dans trois espaces différents, il y a au moins un $N$ entre deux $R$. Il s'agit donc de choisir $3$ espaces parmi $5$.

Choisir les $3$ espaces occupés revient à choisir les $2$ espaces laissés vides. Pour choisir $2$ espaces parmi $5$, il y a $4 + 3 + 2 + 1 = 10$ façons (le premier espace vide est le n° 1, et le second est l'un des $4$ suivants ; ou le premier est le n° 2, et il reste $3$ choix ; et ainsi de suite). On peut aussi les écrire toutes :

$$NRNRNRN,\quad RNNRNRN,\quad RNRNNRN,\quad RNRNRNN,\quad NNRNRNR,$$
$$NRNNRNR,\quad NRNRNNR,\quad RNNNRNR,\quad RNNRNNR,\quad RNRNNNR .$$

**Les cartes elles-mêmes.** Pour chacune de ces $10$ suites, il reste à placer les quatre cartes noires, toutes différentes, sur les quatre places $N$ : il y a $4 \times 3 \times 2 \times 1 = 24$ façons. De même, il y a $3 \times 2 \times 1 = 6$ façons de placer les trois cartes rouges sur les trois places $R$.

**Conclusion.** Le nombre de rangements cherché est
$$10 \times 24 \times 6 = 1440 .$$

## Going further

1. Combien y a-t-il de rangements des sept cartes **sans** contrainte ? Quelle proportion d'entre eux respecte la règle ?
2. Avec quatre cartes noires, combien de cartes rouges peut-on avoir au plus pour qu'un rangement sans deux rouges voisines existe encore ?
3. On pose maintenant les sept cartes **en cercle** autour d'une table. Combien y a-t-il de suites de couleurs, lues à partir d'une place fixée, où deux cartes rouges ne sont jamais voisines ?
