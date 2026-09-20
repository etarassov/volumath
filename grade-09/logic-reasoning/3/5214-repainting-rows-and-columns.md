---
id: "5214"
title: "Repeindre une ligne ou une colonne entière"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [parite, invariant, tableau, coloriage]
adapted_from: null
see_also: ["0711"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par_extra.pdf, « More Parity problems », problème 3"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par_extra.pdf"
---

## Statement

On dispose d'un tableau de $6 \times 6$ cases. Toutes les cases sont blanches, **sauf une case d'angle**, qui est noire.

Une *opération* consiste à choisir une ligne entière ou une colonne entière, et à changer la couleur de chacune de ses six cases : les blanches deviennent noires, les noires deviennent blanches.

**Peut-on, en répétant cette opération autant de fois qu'on veut, rendre le tableau entièrement blanc ?**

## Hints

1. Essayez sur le papier : vous verrez vite qu'on n'y arrive pas. Il reste à le **démontrer**.
2. Cherchez une quantité dont la parité ne change pas quand on effectue une opération.
3. Comptez le nombre total de cases noires du tableau. Si la ligne choisie contient $k$ cases noires avant l'opération, combien en contient-elle après ?
4. La ligne passe de $k$ cases noires à $6 - k$ cases noires. De combien le nombre total de cases noires du tableau varie-t-il ?

## Solution

**L'invariant.**

Notons $N$ le nombre total de cases noires du tableau.

Effectuons une opération sur une ligne. Notons $k$ le nombre de cases noires que contient cette ligne avant l'opération ; elle contient donc $6 - k$ cases blanches. Après l'opération, les couleurs sont échangées : la ligne contient $6 - k$ cases noires.

Les cases des autres lignes n'ont pas bougé, donc le nombre total de cases noires varie de

$$(6 - k) - k = 6 - 2k .$$

C'est un nombre **pair**, quelle que soit la valeur de $k$. Le raisonnement est identique pour une colonne, qui compte elle aussi six cases.

Donc chaque opération fait varier $N$ d'un nombre pair : **la parité de $N$ ne change jamais**.

**Conclusion.**

Au départ, une seule case est noire, donc $N = 1$, qui est impair. La parité de $N$ étant conservée, $N$ reste impair à tout moment.

Un tableau entièrement blanc correspond à $N = 0$, qui est pair. On ne peut donc jamais l'atteindre.

**Il est impossible de rendre le tableau entièrement blanc.**

## Going further

Le raisonnement n'utilise nulle part le fait que la case noire est dans un coin : il marcherait avec n'importe quelle case noire unique. En revanche il utilise de façon essentielle le fait que $6$ est **pair**. Sur un tableau $5 \times 5$ dont une seule case est noire, la même opération fait varier le nombre de cases noires de $5 - 2k$, qui est impair, et la conclusion tombe : on peut alors effectivement tout blanchir, en repeignant la ligne puis la colonne de la case noire.
