---
id: "13833"
title: "Onze livres rangés par auteur"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, permutations, factorielle, principe-multiplicatif]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices lycée, exercice 18 ; corrigé dans le même fichier, solution 18 (inspirée des Olympiades mathématiques belges, demi-finale maXi 2000, Q10). L'original demande la réponse en centaines (864) pour qu'elle tienne entre 0 et 999."
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Francis possède $11$ livres tous différents : $5$ livres de Tolkien, $5$ livres de C. S. Lewis
et $1$ livre d'Abbott. Il veut les ranger côte à côte sur une étagère, sans jamais séparer les
livres d'un même auteur : les $5$ livres de Tolkien doivent se suivre, et de même pour les $5$
livres de Lewis.

De combien de façons peut-il ranger ses livres ?

## Hints

1. Commence par choisir l'ordre des trois auteurs sur l'étagère. Combien de choix ?
2. Une fois l'ordre des auteurs fixé, de combien de façons peut-on ordonner les $5$ livres de
   Tolkien entre eux ?
3. Les choix sont indépendants : on multiplie.

## Solution

Un rangement est entièrement décrit par trois choix successifs.

**L'ordre des auteurs.** Les livres de chaque auteur forment un bloc. Il faut choisir l'ordre
des trois blocs sur l'étagère : $3$ choix pour le premier bloc, puis $2$ pour le deuxième, puis
$1$ pour le dernier, soit $3 \times 2 \times 1 = 6$ façons.

**L'ordre dans le bloc de Tolkien.** On choisit le livre de gauche parmi $5$, puis le suivant
parmi les $4$ restants, et ainsi de suite : $5 \times 4 \times 3 \times 2 \times 1 = 120$
façons.

**L'ordre dans les autres blocs.** De même, il y a $120$ façons d'ordonner le bloc de Lewis, et
une seule pour le bloc d'Abbott, qui ne contient qu'un livre.

**On multiplie.** Chaque choix peut être combiné avec chacun des autres, et deux suites de
choix différentes donnent deux rangements différents. Le nombre de rangements vaut donc

$$6 \times 120 \times 120 \times 1 = 86\,400.$$

**Francis peut ranger ses livres de $86\,400$ façons.**

## Going further

Le produit $5 \times 4 \times 3 \times 2 \times 1$ se note $5!$ et se lit « factorielle $5$ ».
La réponse s'écrit donc $3! \times 5! \times 5! \times 1!$. Combien de rangements y aurait-il
si Francis acceptait de séparer les livres ? Le nombre obtenu, $11!$, est exactement $462$ fois
plus grand.
