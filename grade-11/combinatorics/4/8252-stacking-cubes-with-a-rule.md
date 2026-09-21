---
id: "8252"
title: "Empiler des cubes avec une règle"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [denombrement, recurrence, bijection, empilement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », entraînement de mi-parcours, exercice 2. Le polycopié annonce 3^(n−1) × 2 empilements, ce qui contredit son propre cas de base (6 empilements pour n = 3) : le compte correct est 2 × 3^(n−2)."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $n \ge 1$ un entier. On dispose de $n$ cubes, de côtés $1, 2, \ldots, n$, tous différents.

On veut les empiler **tous**, les uns sur les autres, en une seule tour. La règle est la
suivante : un cube de côté $k$ ne peut être posé directement sur un cube de côté $\ell$ que si

$$\ell \ge k - 2 .$$

Autrement dit, un cube ne peut reposer sur un cube trop petit : l'écart de côté est limité à
$2$. Le cube du bas, lui, repose sur le sol et n'a aucune contrainte.

Combien y a-t-il d'empilements possibles ?

## Hints

1. Fais les petits cas à la main : $n = 1$, $n = 2$, $n = 3$, puis $n = 4$. Tu trouveras $1$,
   $2$, $6$, puis... compte bien.
2. Le bon point de vue est de **construire** l'empilement en posant les cubes du plus petit au
   plus grand.
3. Suppose une tour valide faite des cubes $1, 2, \ldots, n$. À quels endroits peux-tu glisser le
   cube $n+1$ pour que la tour reste valide ?
4. La contrainte porte sur le cube **juste en dessous** de $n+1$ : son côté doit être au moins
   $n - 1$. Cela ne laisse pas beaucoup de cubes. Et il y a aussi la possibilité de mettre
   $n+1$ tout en bas.
5. Vérifie ensuite que rien n'est cassé **au-dessus** de $n+1$, et que la construction n'oublie
   ni ne compte deux fois aucune tour.

## Solution

**Réponse : $1$ empilement pour $n = 1$, et $2 \times 3^{\,n-2}$ empilements pour $n \ge 2$.**

**Les petits cas.**

- $n = 1$ : une seule tour.
- $n = 2$ : deux tours ($1$ sur $2$, ou $2$ sur $1$ : le cube $2$ sur le cube $1$ demande
  $1 \ge 2-2 = 0$, c'est bon).
- $n = 3$ : les six ordres possibles conviennent tous. En effet le cube le plus exigeant est le
  $3$, et il demande un support de côté au moins $1$ : tout support convient.

**L'idée : on insère le plus grand cube en dernier.**

Notons $a_n$ le nombre d'empilements valides avec les cubes $1, \ldots, n$. Soit $n \ge 2$.
Partons d'une tour valide faite des cubes $1, \ldots, n$ et demandons-nous où l'on peut glisser
le cube $n+1$.

*Où peut-il aller ?* Le cube $n+1$ doit reposer sur un cube de côté $\ell \ge (n+1) - 2 = n-1$.
Parmi les cubes disponibles, seuls $n-1$ et $n$ conviennent. À cela s'ajoute la possibilité de
poser $n+1$ **tout en bas** de la tour, sur le sol, sans contrainte. Cela fait

$$3 \ \text{emplacements} : \ \text{juste au-dessus de } n-1, \quad \text{juste au-dessus de }
n, \quad \text{tout en bas}.$$

Ces trois emplacements sont bien distincts, car $n-1$ et $n$ sont deux cubes différents et
« tout en bas » ne désigne aucun des deux.

*Rien ne casse au-dessus.* Si un cube de côté $k$ se retrouve posé sur $n+1$, la condition
demande $n+1 \ge k-2$, ce qui est vrai puisque $k \le n$. L'insertion produit donc toujours une
tour valide.

*Chaque tour est obtenue une fois et une seule.* Réciproquement, partons d'une tour valide
faite des cubes $1, \ldots, n+1$ et retirons le cube $n+1$. Le cube qui était au-dessus de
$n+1$, de côté $k \le n$, vient se poser sur le cube qui était en dessous, de côté $\ell$. Or
$\ell \ge n-1$ d'après la règle appliquée à $n+1$, et $k - 2 \le n-2 \le n-1 \le \ell$ : la tour
obtenue est valide. On récupère donc exactement la tour de départ et l'emplacement choisi.

**La relation de récurrence.**

Chaque tour de $n$ cubes donne exactement $3$ tours de $n+1$ cubes, et chaque tour de $n+1$
cubes vient d'exactement une tour de $n$ cubes. Donc, pour tout $n \ge 2$,

$$a_{n+1} = 3\, a_n .$$

**On conclut.**

Avec $a_2 = 2$, on obtient par récurrence

$$a_n = 2 \times 3^{\,n-2} \qquad \text{pour tout } n \ge 2 .$$

Vérifions : $a_2 = 2$, $a_3 = 6$, $a_4 = 18$, $a_5 = 54$. Les valeurs $a_2$ et $a_3$ sont bien
celles calculées à la main.

Le cas $n = 1$ est à part : $a_1 = 1$ (et la formule donnerait $2/3$, ce qui n'a pas de sens ;
la récurrence ne démarre qu'à $n = 2$, car pour $n = 1$ il n'existe pas de cube $n-1$).

$$\boxed{a_1 = 1 \quad \text{et} \quad a_n = 2 \times 3^{\,n-2} \ \text{ pour } n \ge 2 .}$$

## Going further

1. Pour $n = 4$ il y a $24$ ordres possibles et seulement $18$ tours valides. Décrire les $6$
   ordres interdits.
2. Refaire le raisonnement avec la règle $\ell \ge k - 1$ (l'écart autorisé passe de $2$ à $1$).
   Combien de tours obtient-on ?
3. Et avec la règle $\ell \ge k - 3$ ? Deviner la formule générale pour un écart autorisé de
   $m$, puis la démontrer.
