---
id: "6011"
title: "Deux voisins qui n'ont jamais de diviseur commun"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 40
tags: [pgcd, premiers-entre-eux, recurrence, suites]
adapted_from: null
see_also: ["1805", "6017"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Problem Circle : Number Sum Triangles » (Joshua Zucker)"
  reference: "MTCircularAutumn2012.pdf, p. 17 : construction issue de la 2012 Bay Area Math Olympiad for Teachers ; la revue pose une autre question sur la même construction et ne publie pas de solution"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularAutumn2012.pdf"
---

## Statement

On construit des lignes de nombres. La première est
$$1, \quad 1 .$$

Pour passer d'une ligne à la suivante, on **intercale entre deux voisins leur somme**, sans rien effacer. Les premières lignes sont donc :

$$L_1 : \quad 1, \ 1$$
$$L_2 : \quad 1, \ 2, \ 1$$
$$L_3 : \quad 1, \ 3, \ 2, \ 3, \ 1$$
$$L_4 : \quad 1, \ 4, \ 3, \ 5, \ 2, \ 5, \ 3, \ 4, \ 1$$

1. Écrire la ligne $L_5$.
2. Calculer la somme des nombres de chaque ligne jusqu'à $L_5$, puis deviner et démontrer une formule donnant la somme de la ligne $L_k$.
3. Montrer que **deux nombres voisins d'une même ligne sont toujours premiers entre eux**.

## Hints

1. Pour la question 2, comparer la somme d'une ligne et celle de la suivante. Chaque nombre de la nouvelle ligne est soit un ancien, soit la somme de deux anciens voisins.
2. Combien de fois un nombre donné de l'ancienne ligne est-il compté dans les sommes intercalées ? Attention aux deux nombres des extrémités, qui n'ont qu'un voisin.
3. Pour la question 3, se demander ce que deviennent les couples de voisins quand on passe d'une ligne à la suivante. Si $a$ et $b$ étaient voisins, quels sont les nouveaux couples de voisins ?
4. Se souvenir que $\mathrm{PGCD}(a, a+b) = \mathrm{PGCD}(a, b)$ : un diviseur commun à $a$ et $a+b$ divise aussi leur différence $b$.

## Solution

### Question 1 : la ligne $L_5$

On intercale les sommes dans $L_4 : 1,\ 4,\ 3,\ 5,\ 2,\ 5,\ 3,\ 4,\ 1$ :
$$L_5 : \quad 1,\ 5,\ 4,\ 7,\ 3,\ 8,\ 5,\ 7,\ 2,\ 7,\ 5,\ 8,\ 3,\ 7,\ 4,\ 5,\ 1 .$$

### Question 2 : la somme d'une ligne

Notons $S_k$ la somme des nombres de $L_k$. On calcule :
$$S_1 = 2, \quad S_2 = 4, \quad S_3 = 10, \quad S_4 = 28, \quad S_5 = 82 .$$

Ces nombres sont $3^0 + 1$, $3^1 + 1$, $3^2 + 1$, $3^3 + 1$, $3^4 + 1$. On conjecture
$$S_k = 3^{\,k-1} + 1 .$$

**Démonstration.** Voyons comment passe-t-on de $S_k$ à $S_{k+1}$.

La ligne $L_{k+1}$ contient tous les nombres de $L_k$, ce qui donne déjà $S_k$, plus toutes les sommes intercalées. Dans la somme de toutes ces intercalations, chaque nombre de $L_k$ apparaît une fois par voisin qu'il possède : les nombres de l'intérieur ont deux voisins et sont donc comptés deux fois, les deux nombres des extrémités n'ont qu'un voisin et ne sont comptés qu'une fois. Or les deux extrémités valent toujours $1$, car on n'ajoute jamais rien au-delà. La somme des intercalations vaut donc
$$2 S_k - 1 - 1 = 2 S_k - 2 .$$

D'où
$$S_{k+1} = S_k + (2S_k - 2) = 3 S_k - 2 .$$

Vérifions la conjecture avec cette relation. Elle est vraie pour $k = 1$, puisque $S_1 = 2 = 3^0 + 1$. Et si $S_k = 3^{k-1} + 1$, alors
$$S_{k+1} = 3\left(3^{\,k-1} + 1\right) - 2 = 3^{\,k} + 3 - 2 = 3^{\,k} + 1 ,$$
ce qui est bien la formule au rang suivant. Elle est donc vraie pour toutes les lignes.

### Question 3 : deux voisins sont premiers entre eux

**Comment se transforment les couples de voisins.** Soient $a$ et $b$ deux voisins de $L_k$. Dans $L_{k+1}$, on a intercalé $a+b$ entre eux, et le morceau
$$\ldots,\ a,\ b,\ \ldots$$
est devenu
$$\ldots,\ a,\ a+b,\ b,\ \ldots$$
Les deux nouveaux couples de voisins issus de ce morceau sont donc $(a,\ a+b)$ et $(a+b,\ b)$.

Et c'est tout : **tout** couple de voisins de $L_{k+1}$ est de cette forme, car chaque nombre intercalé sépare deux anciens voisins, et deux anciens voisins ne sont plus jamais côte à côte.

**Le calcul de PGCD.** Si $d$ divise $a$ et $a+b$, alors $d$ divise la différence $(a+b) - a = b$. Réciproquement, si $d$ divise $a$ et $b$, il divise $a+b$. Les diviseurs communs de $a$ et $a+b$ sont donc exactement les diviseurs communs de $a$ et $b$, ce qui donne
$$\mathrm{PGCD}(a,\ a+b) = \mathrm{PGCD}(a,\ b) .$$
De la même façon, $\mathrm{PGCD}(a+b,\ b) = \mathrm{PGCD}(a,\ b)$.

**Conclusion.** Dans $L_1$, le seul couple de voisins est $(1,1)$, dont le PGCD vaut $1$.

Supposons que tous les couples de voisins de $L_k$ aient un PGCD égal à $1$. Chaque couple de voisins de $L_{k+1}$ est de la forme $(a, a+b)$ ou $(a+b, b)$ pour un certain couple de voisins $(a,b)$ de $L_k$, et son PGCD vaut alors
$$\mathrm{PGCD}(a, b) = 1 .$$

Donc tous les couples de voisins de $L_{k+1}$ sont eux aussi formés de nombres premiers entre eux, et la propriété se propage de ligne en ligne. Elle est vraie partout.

## Going further

1. Quel est le plus grand nombre de la ligne $L_k$ ? Regarder la suite $1, 2, 3, 5, 8, \ldots$ obtenue et la reconnaître.
2. Combien de nombres compte la ligne $L_k$ ?
3. Dans la ligne $L_5$, le nombre $5$ apparaît quatre fois, et le nombre $7$ quatre fois aussi. Compter les apparitions de $n$ dans la ligne $L_n$ pour $n = 2, 3, 4, 5, 6$. La suite obtenue est célèbre.
4. Prendre un couple de voisins, par exemple $(5, 7)$ dans $L_5$, et remonter : de quel couple de $L_4$ vient-il ? et de quel couple de $L_3$ ? Que reconnaît-on dans ce procédé de remontée ?
