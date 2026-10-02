---
id: "8341"
title: "Relier les points par paires sans croisement"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe-de-lextremum, inegalite-triangulaire, minimum, geometrie-combinatoire]
adapted_from: null
see_also: ["8840"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe B"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe B, « Principes des tiroirs et de l'extrémum » (Pierre-Marie), exercice 14"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

On se donne $2n$ points du plan, trois quelconques d'entre eux n'étant jamais alignés.

Montrer qu'on peut les relier deux à deux par $n$ segments de telle sorte que deux segments ne se
croisent jamais.

## Hints

1. Il y a un nombre **fini** de façons de relier les $2n$ points deux à deux. On peut donc en choisir une qui soit extrémale pour un certain critère.
2. Quel critère choisir ? Il faut qu'il diminue quand on « décroise » deux segments. Essaie la somme des longueurs.
3. Suppose que deux segments $[AB]$ et $[CD]$ se croisent en un point $M$. Remplace-les par $[AC]$ et $[BD]$, ou par $[AD]$ et $[BC]$.
4. Compare $AC + BD$ à $AB + CD$ en passant par le point d'intersection $M$ et en utilisant l'inégalité triangulaire.
5. Le fait que trois points ne soient jamais alignés sert à garantir que l'inégalité triangulaire est **stricte**.

## Solution

**On choisit un appariement de longueur minimale.**

Relier $2n$ points deux à deux, c'est choisir un **appariement** : une façon de les regrouper en
$n$ paires. Il n'y en a qu'un nombre fini (exactement
$1 \times 3 \times 5 \times \cdots \times (2n-1)$). Parmi tous ces appariements, on peut donc en
choisir un pour lequel la **somme des longueurs des $n$ segments** est la plus petite possible.

Appelons-le $\mathcal{A}$, et montrons qu'aucun de ses segments ne se croise.

**Le décroisement raccourcit.**

Supposons par l'absurde que deux segments de $\mathcal{A}$, disons $[AB]$ et $[CD]$, se croisent
en un point $M$.

Comme $M$ est strictement à l'intérieur des deux segments, on a $M \neq A, B, C, D$, et

$$AB = AM + MB , \qquad CD = CM + MD .$$

Remplaçons maintenant les deux segments $[AB]$ et $[CD]$ par $[AC]$ et $[BD]$, en laissant tous
les autres segments inchangés. C'est encore un appariement valable : les quatre points $A$, $B$,
$C$, $D$ sont toujours répartis en deux paires.

Appliquons l'inégalité triangulaire dans les triangles $AMC$ et $BMD$ :

$$AC \leqslant AM + MC \qquad \text{et} \qquad BD \leqslant BM + MD .$$

Ces inégalités sont **strictes**, car $M$ n'est aligné ni avec $A$ et $C$, ni avec $B$ et $D$ :
si $M$ était sur le segment $[AC]$, les trois points $A$, $C$ et $M$ seraient alignés, donc $A$,
$C$ et $B$ aussi puisque $M$ est sur $(AB)$, ce qui contredit l'hypothèse de l'énoncé.

En additionnant :

$$AC + BD \;<\; (AM + MB) + (CM + MD) \;=\; AB + CD .$$

Le nouvel appariement a donc une somme de longueurs **strictement plus petite** que
$\mathcal{A}$. C'est impossible, puisque $\mathcal{A}$ était de longueur minimale.

**Conclusion.** L'appariement de longueur minimale n'a aucun croisement. Un tel appariement
existe donc, ce qu'il fallait démontrer.

## Going further

Ce raisonnement s'appelle le **principe de l'extrémum** : on ne construit pas la solution, on
prend la meilleure possible pour un certain critère et on montre qu'elle a la propriété voulue.
C'est souvent bien plus court qu'une construction explicite.

La clé est de choisir le bon critère : il faut que l'opération de « réparation » le fasse
strictement diminuer. Ici l'opération est le décroisement et le critère la longueur totale.

Le même argument montre par exemple que si l'on a $n$ points rouges et $n$ points bleus, trois
quelconques non alignés, on peut relier chaque point rouge à un point bleu sans qu'aucun segment
n'en croise un autre : il suffit de prendre l'appariement rouge-bleu de longueur totale minimale.
