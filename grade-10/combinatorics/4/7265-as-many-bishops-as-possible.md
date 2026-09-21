---
id: "7265"
title: "Le plus grand nombre de fous sur un échiquier"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [echiquier, diagonales, tiroirs, construction et majoration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Chéron 2024"
  reference: "Poly_StCheron_2024.pdf, groupe A, « Principe des tiroirs », exercice 12 ; la solution du polycopié annonce 14 mais n'en donne qu'une esquisse, la majoration ci-dessous est rédigée ici"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_StCheron_2024.pdf"
---

## Statement

Un **fou** se déplace sur un échiquier le long de ses deux diagonales. Deux fous se menacent donc
lorsqu'ils sont sur une même diagonale.

Combien peut-on placer de fous au maximum sur un échiquier $8 \times 8$ sans qu'aucun d'eux n'en
menace un autre ? (On ne tient pas compte de la couleur des fous.)

## Hints

1. Un exercice comme celui-ci demande **deux** réponses : un exemple qui atteint le nombre annoncé,
   et une preuve qu'on ne peut pas faire mieux.
2. Pour l'exemple : deux fous d'une même **ligne** ne se menacent jamais. Peux-tu en mettre beaucoup
   sur deux lignes bien choisies ?
3. Pour la majoration : combien y a-t-il de diagonales dans un seul des deux sens ? Combien de fous
   au plus sur chacune ?
4. Cela donne d'abord une majoration un peu trop grande. Regarde alors les deux diagonales qui ne
   contiennent qu'une seule case.

## Solution

Repérons chaque case par un couple $(\ell, c)$, où $\ell$ est le numéro de sa ligne et $c$ celui de
sa colonne, tous deux compris entre $1$ et $8$.

Deux cases sont sur une même diagonale « montante » lorsque $\ell + c$ est le même pour les deux,
et sur une même diagonale « descendante » lorsque $\ell - c$ est le même pour les deux.

**Un exemple avec $14$ fous.**

Plaçons un fou sur chacune des $8$ cases de la première ligne, et un fou sur chacune des $6$ cases
de la dernière ligne sauf les deux coins. Cela fait $8 + 6 = 14$ fous.

Vérifions qu'aucun ne menace un autre.

- Deux fous d'une même ligne ne se menacent pas : ils ont la même valeur de $\ell$ mais des valeurs
  de $c$ différentes, donc ni $\ell+c$ ni $\ell-c$ ne coïncident.
- Un fou de la première ligne, en $(1, c)$, et un fou de la dernière, en $(8, c')$ : ils sont sur
  une même diagonale exactement lorsque $|c - c'| = |8 - 1| = 7$, c'est-à-dire lorsque
  $\{c, c'\} = \{1, 8\}$. Cela demanderait un fou en $(8,1)$ ou en $(8,8)$, or nous avons justement
  écarté les deux coins de la dernière ligne.

**On peut donc placer $14$ fous sans qu'aucun ne menace un autre.**

**On ne peut pas en placer $15$.**

Regardons les diagonales montantes, celles où $\ell + c$ est constant. Comme $\ell$ et $c$ vont de
$1$ à $8$, la somme $\ell + c$ prend les valeurs $2, 3, \ldots, 16$ : il y a **$15$ diagonales
montantes**, et chaque case appartient à exactement une d'entre elles.

Deux fous sur une même diagonale montante se menacent. Il y a donc **au plus un fou par diagonale
montante**, et donc au plus $15$ fous en tout.

Supposons maintenant qu'on ait réussi à en placer $15$. Il y aurait alors exactement un fou sur
chacune des $15$ diagonales montantes.

Or deux de ces diagonales ne contiennent qu'une seule case :

- celle de somme $2$ est réduite à la case $(1,1)$ ;
- celle de somme $16$ est réduite à la case $(8,8)$.

Il y aurait donc un fou en $(1,1)$ et un fou en $(8,8)$. Mais ces deux cases vérifient
$\ell - c = 0$ toutes les deux : elles sont sur la **même diagonale descendante**, la grande
diagonale de l'échiquier. Ces deux fous se menaceraient.

C'est impossible, donc on ne peut pas placer $15$ fous.

**Conclusion.**

$$\boxed{14}$$

## Going further

Sur un échiquier $n \times n$, le même raisonnement donne $2n - 2$ fous au maximum : il y a
$2n - 1$ diagonales montantes, et les deux diagonales réduites à un seul coin s'excluent l'une
l'autre. L'exemple se généralise de la même façon, avec une ligne complète et une ligne privée de
ses deux extrémités.

Pour $n = 8$ on retrouve $14$. Pour comparaison, le problème analogue avec des tours donne $n$, et
celui des dames, bien plus difficile, donne également $n$ mais sans formule simple pour le nombre
de placements.
