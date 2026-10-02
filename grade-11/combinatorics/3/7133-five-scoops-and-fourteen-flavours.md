---
id: "7133"
title: "Cinq boules et quatorze parfums"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, combinaisons-avec-repetition, bijection, cloisons]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Débutants : combinatoire », jeudi matin (Matthieu Piquerez), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Un marchand de glaces ne propose que des glaces à **cinq boules**, et il dispose de
**quatorze parfums** différents. On peut choisir plusieurs fois le même parfum, et l'ordre
des boules dans le cornet n'a pas d'importance.

Combien de glaces différentes peut-on commander ?

## Hints

1. Une glace est entièrement décrite par la liste des quantités : combien de boules du
   parfum 1, combien du parfum 2, et ainsi de suite jusqu'au parfum 14. Ces quatorze nombres
   sont positifs ou nuls et leur somme vaut $5$.
2. Représente une telle glace par un dessin : cinq ronds (les boules) et des cloisons qui
   séparent les parfums. Combien faut-il de cloisons pour séparer quatorze parfums ?
3. Compte les dessins possibles : combien de symboles en tout, et combien de choix ?
4. Vérifie que deux glaces différentes donnent deux dessins différents, et que tout dessin
   correspond à une glace.

## Solution

**Une glace est une suite de quantités.** Numérotons les parfums de $1$ à $14$ et notons
$n_k$ le nombre de boules du parfum $k$ dans la glace. Une glace est alors entièrement
décrite par le quatorzuplet $(n_1, n_2, \ldots, n_{14})$, où les $n_k$ sont des entiers
positifs ou nuls tels que

$$n_1 + n_2 + \cdots + n_{14} = 5 .$$

Réciproquement, tout tel quatorzuplet donne une glace. Il s'agit donc de compter ces
quatorzuplets.

**Le dessin en ronds et cloisons.** Représentons une glace par une ligne de symboles : on
écrit $n_1$ ronds, puis une cloison, puis $n_2$ ronds, puis une cloison, et ainsi de suite,
jusqu'au parfum $14$. Comme il y a $14$ parfums, il faut $13$ cloisons pour les séparer, et
il y a $5$ ronds en tout.

Par exemple, avec $14$ parfums, la glace « $2$ boules du parfum $1$, $1$ boule du parfum $3$,
$2$ boules du parfum $4$ » s'écrit

$$\circ\, \circ \mid \; \mid \circ \mid \circ\, \circ \mid \; \mid \; \mid \cdots$$

Chaque ligne comporte donc $5 + 13 = 18$ symboles, et la ligne est entièrement déterminée
par la position des $5$ ronds parmi ces $18$ places (les autres places recevant les
cloisons).

**La correspondance est parfaite.** À chaque glace correspond une seule ligne, et à chaque
ligne de $18$ symboles dont $5$ ronds correspond une seule glace : on lit les quantités entre
les cloisons. Compter les glaces revient donc à compter ces lignes.

**Le compte.** Il s'agit de choisir les $5$ places des ronds parmi $18$, soit

$$\binom{18}{5} = \frac{18 \times 17 \times 16 \times 15 \times 14}{5 \times 4 \times 3 \times 2 \times 1}
= \frac{1\,028\,160}{120} = 8568 .$$

**Conclusion.** Le marchand peut servir $\boxed{8568}$ glaces différentes.

## Going further

Cette technique s'appelle la méthode des **ronds et des cloisons** (ou « étoiles et barres »).
Elle donne d'un coup la formule générale : le nombre de façons de choisir $n$ objets parmi
$p$ sortes, avec répétitions autorisées et sans tenir compte de l'ordre, vaut

$$\binom{n + p - 1}{n} .$$

Ici $n = 5$ et $p = 14$, d'où $\binom{18}{5}$.

Attention à ne pas confondre avec le cas sans répétition, où la réponse serait
$\binom{14}{5} = 2002$. Le client qui accepte de répéter des parfums a bien plus de choix.

Une question pour continuer : et si le marchand imposait que les cinq boules soient de cinq
parfums **tous différents** ? Et s'il imposait au contraire qu'aucun parfum ne soit absent,
avec $5$ boules et $5$ parfums seulement ?
