---
id: "0803"
title: "Les semis autour de la table ronde"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [somme, carre, mise-en-equation]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 3, d'après Mathematical Olympiads for Middle School (Moscou), 2013"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Un sac de graines est posé sur une table ronde, avec plusieurs personnes assises autour.

La première personne prend $1$ graine, la deuxième $2$ graines, la troisième $3$, et ainsi de suite : chaque fois, une personne prend une graine de plus que la personne précédente. Quand on a fait le tour de la table, on continue avec la première personne, puis la deuxième, et ainsi de suite.

Au deuxième tour de table, il a été pris $100$ graines de plus qu'au premier tour.

Combien de personnes sont assises à table ?

## Hints

1. Fais un dessin avec un petit nombre de personnes, par exemple $4$, et écris ce que prend chacune au premier tour, puis au deuxième tour.
2. Avec $4$ personnes : au premier tour $1, 2, 3, 4$ ; au deuxième tour $5, 6, 7, 8$. Compare chaque personne à elle-même.
3. Combien de graines de plus une même personne prend-elle au deuxième tour par rapport au premier ?
4. Si $n$ est le nombre de personnes, chacune prend exactement $n$ graines de plus au deuxième tour.

## Solution

**Réponse : $10$ personnes.**

**Étape 1. Regarder chaque personne séparément.**

Appelons $n$ le nombre de personnes autour de la table.

Au premier tour, elles prennent $1, 2, 3, \ldots, n$ graines.
Au deuxième tour, elles prennent $n+1, n+2, \ldots, 2n$ graines.

Comparons chaque personne à elle-même :

- la première prend $1$ graine, puis $n+1$ : c'est $n$ de plus ;
- la deuxième prend $2$ graines, puis $n+2$ : c'est encore $n$ de plus ;
- et ainsi de suite jusqu'à la dernière, qui prend $n$ graines puis $2n$ : toujours $n$ de plus.

**Étape 2. Additionner.**

Chacune des $n$ personnes prend $n$ graines de plus au deuxième tour. En tout, le deuxième tour consomme donc
$$n \times n = n^2$$
graines de plus que le premier.

**Étape 3. Résoudre.**

L'énoncé dit que cette différence vaut $100$ :
$$n^2 = 100, \qquad \text{donc} \qquad n = 10$$
(le nombre de personnes est positif).

**Vérification.** Avec $10$ personnes : premier tour $1 + 2 + \cdots + 10 = 55$ graines ; deuxième tour $11 + 12 + \cdots + 20 = 155$ graines. La différence vaut bien $155 - 55 = 100$. ✓

**Conclusion.** Il y a $10$ personnes assises à table.

## Going further

1. Combien de graines ont été prises en tout au bout de deux tours ?
2. Au troisième tour, combien de graines de plus qu'au deuxième seront prises ? Et au dixième tour par rapport au neuvième ?
