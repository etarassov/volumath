---
id: "8182"
title: "Retourner des carrés 3×3 ou 4×4"
grade: 10
theme: coloring
difficulty: 5
duration_min: 40
tags: [invariant, parite, echiquier, colonnes, signes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe C"
  reference: "stage_ete_2018.pdf, chapitre V « Groupe C », section 3 « Combinatoire », cours « Monovariants et invariants », exercice 7 (le polycopié ne nomme pas l'auteur du cours). La solution imprimée tient en deux lignes ; celle ci-dessous détaille le décompte colonne par colonne."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Chaque case d'un échiquier $8 \times 8$ porte un signe $+$ ou un signe $-$.

Une opération consiste à choisir un carré de $3 \times 3$ cases ou un carré de $4 \times 4$
cases à l'intérieur de l'échiquier, et à changer tous les signes qu'il contient : les $+$
deviennent des $-$ et les $-$ deviennent des $+$.

Peut-on, quelle que soit la situation de départ, arriver à un échiquier ne portant que des
$+$ ?

## Hints

1. La réponse est non. Il suffit donc de trouver **une** situation de départ dont on ne peut
   pas sortir, et une bonne raison.
2. Cherche une quantité dont la parité ne change jamais. Compter tous les $-$ ne marche pas :
   un carré $3 \times 3$ retourne $9$ cases, un nombre impair.
3. Alors ne compte pas les $-$ partout : choisis à l'avance un ensemble de cases, et ne compte
   que les $-$ qui s'y trouvent. Il faut que tout carré $3 \times 3$ et tout carré
   $4 \times 4$ rencontre cet ensemble en un nombre **pair** de cases.
4. Prends l'ensemble formé de colonnes entières. Un carré $3 \times 3$ occupe trois colonnes
   consécutives, un carré $4 \times 4$ en occupe quatre.
5. Essaie de mettre de côté les colonnes $3$ et $6$, et de marquer toutes les autres. Compte,
   pour chaque position possible, combien de colonnes marquées sont touchées.

## Solution

**La réponse est non.**

**Les cases que l'on marque.**

Marquons toutes les cases qui ne sont **ni dans la colonne $3$, ni dans la colonne $6$**. Cela
fait $6$ colonnes entières, soit $6 \times 8 = 48$ cases marquées.

Notons $N$ le nombre de signes $-$ situés sur une case marquée. Nous allons montrer que **la
parité de $N$ ne change jamais**.

**Un carré $3 \times 3$ retourne un nombre pair de cases marquées.**

Un tel carré occupe trois colonnes consécutives. Il y a six positions possibles, et on regarde
à chaque fois lesquelles de ces colonnes sont marquées :

| colonnes occupées | colonnes marquées parmi elles | nombre de colonnes marquées |
|---|---|---|
| $1,2,3$ | $1,2$ | $2$ |
| $2,3,4$ | $2,4$ | $2$ |
| $3,4,5$ | $4,5$ | $2$ |
| $4,5,6$ | $4,5$ | $2$ |
| $5,6,7$ | $5,7$ | $2$ |
| $6,7,8$ | $7,8$ | $2$ |

Ce n'est pas un hasard : trois colonnes consécutives choisies parmi $1, \ldots, 8$ contiennent
toujours **exactement une** des colonnes $3$ et $6$, puisque celles-ci sont distantes de $3$.
Il en reste donc toujours deux de marquées.

Le carré a $3$ lignes, donc il retourne
$$3 \times 2 = 6$$
cases marquées : un nombre pair.

**Un carré $4 \times 4$ aussi.**

Un tel carré occupe quatre colonnes consécutives, et il y a cinq positions :

| colonnes occupées | colonnes marquées parmi elles | nombre de colonnes marquées |
|---|---|---|
| $1,2,3,4$ | $1,2,4$ | $3$ |
| $2,3,4,5$ | $2,4,5$ | $3$ |
| $3,4,5,6$ | $4,5$ | $2$ |
| $4,5,6,7$ | $4,5,7$ | $3$ |
| $5,6,7,8$ | $5,7,8$ | $3$ |

Le carré a $4$ lignes, donc il retourne $4 \times 3 = 12$ ou $4 \times 2 = 8$ cases marquées.
Dans les deux cas, un nombre pair.

**La parité de $N$ est un invariant.**

Une opération retourne un nombre pair de cases marquées. Parmi ces cases retournées, certaines
portaient un $-$ qui devient un $+$, les autres portaient un $+$ qui devient un $-$. Si on
retourne $p$ cases marquées portant un $-$ et $q$ cases marquées portant un $+$, alors $N$
varie de
$$q - p, \qquad \text{avec } p + q \text{ pair}.$$
Or $q - p$ et $q + p$ ont la même parité. Donc $q - p$ est pair : **$N$ change d'un nombre
pair, sa parité est conservée.**

**Une situation de départ dont on ne peut pas sortir.**

Prenons l'échiquier ne portant qu'un seul $-$, dans le coin en haut à gauche, c'est-à-dire en
ligne $1$, colonne $1$. Cette case est marquée, donc au départ
$$N = 1, \qquad \text{un nombre impair.}$$

L'échiquier entièrement rempli de $+$ donne $N = 0$, un nombre pair.

Comme la parité de $N$ ne change jamais, on ne peut pas passer de l'un à l'autre.

**Conclusion : non, on ne peut pas toujours arriver à un échiquier rempli de $+$.**

## Going further

Les colonnes $3$ et $6$ n'ont rien de magique : ce qui compte est qu'elles soient distantes de
$3$, et placées de sorte que tout groupe de trois colonnes consécutives en contienne exactement
une. Les **lignes** $3$ et $6$ donnent de la même façon un second invariant, obtenu en faisant
tourner la figure d'un quart de tour.

Un calcul plus poussé montre qu'il y a en tout $12$ contraintes indépendantes de ce type. Les
configurations que l'on peut ramener à un tableau de $+$ sont donc $2^{52}$ sur les $2^{64}$
possibles, c'est-à-dire **une sur $4096$**.
