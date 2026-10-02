---
id: "12038"
title: "Une ligne d'entiers qui finit par se figer"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [monovariant, processus-fini, recurrence, entiers, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2013"
  reference: "2017-10_ofm-2012-2013-test-mai.pdf, exercice 1 (aussi ISL 2012 C1) ; pas de corrigé publié, solution rédigée ici et vérifiée par ordinateur sur les lignes d'au plus 4 nombres valant au plus 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-mai.pdf"
---

## Statement

Sur une ligne, on écrit plusieurs entiers strictement positifs. Une **opération** consiste à choisir deux entiers voisins $x$ et $y$, avec $x$ juste à gauche de $y$ et $x > y$, puis à remplacer le couple $(x, y)$ par l'un des deux couples $(y + 1, x)$ ou $(x - 1, x)$.

Par exemple, sur la ligne $5, \ 2, \ 4$, on peut choisir le couple $(5, 2)$ et obtenir la ligne $3, \ 5, \ 4$ ou la ligne $4, \ 5, \ 4$. On peut ensuite choisir le couple $(5, 4)$, et ainsi de suite.

Montrer qu'on ne peut effectuer qu'un nombre fini d'opérations : quels que soient les choix, on finit toujours par arriver à une ligne où plus aucune opération n'est possible.

## Hints

1. Notez $M$ le plus grand des nombres écrits au départ. Montrez que tous les nombres restent toujours compris entre $1$ et $M$.
2. Dans une opération, que devient le nombre de droite du couple choisi ? Regardez en particulier le dernier nombre de la ligne, celui qui est tout à droite.
3. Raisonnez par l'absurde : supposez qu'il existe une ligne sur laquelle on peut faire une infinité d'opérations, et prenez-en une qui contient le moins de nombres possible.

## Solution

**Étape 1 : les nombres restent entre $1$ et $M$.** Notons $M$ le plus grand des nombres écrits au départ. Supposons qu'à un moment tous les nombres soient entre $1$ et $M$, et faisons une opération sur un couple $(x, y)$ avec $x > y$.

- Dans le couple $(y + 1, x)$ : on a $y + 1 \geqslant 2$, et $y + 1 \leqslant x \leqslant M$ car $y < x$.
- Dans le couple $(x - 1, x)$ : on a $x - 1 \geqslant y \geqslant 1$, car $x > y$, et $x - 1 < x \leqslant M$.

Les autres nombres ne changent pas. Après l'opération, tous les nombres sont donc encore entre $1$ et $M$. De proche en proche, c'est vrai à tout moment.

**Étape 2 : le nombre de droite du couple augmente.** Dans les deux cas, le nombre de droite du couple choisi passe de $y$ à $x$, et $x > y$ : il augmente strictement.

Regardons le dernier nombre de la ligne, celui qui est tout à droite. Il n'a pas de voisin à sa droite, donc il ne peut être modifié que s'il est le nombre de droite du couple choisi. Il ne diminue donc jamais, et chaque fois qu'il change, il augmente d'au moins $1$. Comme il reste entre $1$ et $M$, il ne peut changer qu'au plus $M - 1$ fois.

**Étape 3 : raisonnement par l'absurde.** Supposons qu'il existe une ligne sur laquelle on peut effectuer une infinité d'opérations, l'une après l'autre. Parmi toutes ces lignes, choisissons-en une qui contient le moins de nombres possible ; notons $n$ ce nombre. Sur une ligne d'un seul nombre, aucune opération n'est possible, donc $n \geqslant 2$.

Considérons une suite infinie d'opérations sur cette ligne. D'après l'étape 2, le dernier nombre ne change qu'un nombre fini de fois. Il existe donc un moment à partir duquel il ne change plus jamais. À partir de ce moment, aucune opération ne porte sur le couple formé par les deux derniers nombres, puisqu'une telle opération modifierait le dernier nombre. Toutes les opérations suivantes, en nombre infini, portent donc sur les $n - 1$ premiers nombres seulement.

Ces $n - 1$ premiers nombres forment, à ce moment, une ligne d'entiers strictement positifs sur laquelle on effectue une infinité d'opérations. C'est une ligne plus courte que celle que nous avions choisie, ce qui contredit le choix de $n$.

**Conclusion.** Aucune ligne ne permet une infinité d'opérations : quels que soient les choix, on arrive toujours, après un nombre fini d'opérations, à une ligne où plus aucune opération n'est possible.

## Going further

On peut aussi donner une borne explicite. Pour une ligne $a_1, a_2, \ldots, a_n$ (de gauche à droite) dont tous les nombres sont entre $1$ et $M$, on pose

$$S = a_1 + a_2 \times (M + 1) + a_3 \times (M + 1)^2 + \cdots + a_n \times (M + 1)^{n-1} .$$

Montrer qu'une opération fait augmenter $S$ d'au moins $1$ : le nombre de droite du couple gagne au moins $1$, et le nombre de gauche perd au plus $M - 1$, avec un poids $M + 1$ fois plus petit. En déduire qu'on ne peut pas faire plus de $(M + 1)^n$ opérations.
