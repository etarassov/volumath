---
id: "13436"
title: "Les produits de 1 à 8 sur les côtés d'un octogone"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres-premiers, produit, multiples, raisonnement-par-l-absurde, octogone]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve collège, exercice 4 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Sur chaque sommet d'un octogone, Anna écrit en bleu un entier strictement positif. Les $8$ entiers bleus ne sont pas forcément différents.

Ensuite, sur chacun des $8$ côtés de l'octogone, Anna écrit en rouge le produit des deux entiers bleus écrits aux deux extrémités de ce côté.

Anna peut-elle choisir les entiers bleus de sorte que les $8$ entiers rouges soient exactement $1, 2, 3, 4, 5, 6, 7$ et $8$, dans un ordre quelconque ?

## Hints

1. Il y a $8$ côtés et $8$ nombres rouges à obtenir. Combien de fois chacun des nombres $1, 2, \ldots, 8$ doit-il apparaître ?
2. Le nombre $7$ est premier. De quelle façon peut-on l'écrire comme le produit de deux entiers strictement positifs ?
3. Regarde un sommet qui porte le nombre bleu $7$. Il touche deux côtés. Que peux-tu dire des deux nombres rouges écrits sur ces côtés ?

## Solution

On va montrer que **c'est impossible**. On raisonne par l'absurde : on suppose qu'Anna a réussi, et on aboutit à une contradiction.

**Chaque nombre apparaît une seule fois.** Il y a $8$ côtés, donc $8$ nombres rouges, et ces nombres doivent être exactement les $8$ nombres $1, 2, \ldots, 8$. Chacun de ces nombres apparaît donc exactement une fois en rouge : deux côtés ne portent jamais le même nombre rouge.

**Le côté qui porte $7$.** Un des côtés porte le nombre rouge $7$. C'est le produit des deux nombres bleus de ses extrémités. Or $7$ est premier : la seule façon de l'écrire comme produit de deux entiers strictement positifs est $7 = 1 \times 7$. Ce côté relie donc un sommet bleu $1$ et un sommet bleu $7$.

**L'autre côté du sommet $7$.** Le sommet qui porte $7$ touche deux côtés de l'octogone. Le premier est le côté qu'on vient de voir, qui porte le nombre rouge $7$. Sur le second, on lit $7 \times m$, où $m$ est le nombre bleu de l'autre voisin. Ce nombre rouge $7m$ est un multiple de $7$, et il fait partie de $1, 2, \ldots, 8$. Or le seul multiple de $7$ entre $1$ et $8$ est $7$ lui-même. Donc $7m = 7$.

On aurait alors deux côtés différents qui portent tous les deux le nombre rouge $7$. C'est impossible, d'après la première remarque.

**Conclusion.** Anna ne peut pas choisir les entiers bleus de sorte que les nombres rouges soient $1, 2, \ldots, 8$.

*Une autre idée.* Notons $b_1, b_2, \ldots, b_8$ les nombres bleus, dans l'ordre autour de l'octogone. Chaque nombre bleu est à l'extrémité de deux côtés, donc il apparaît dans deux produits rouges. En multipliant les $8$ nombres rouges, on obtient donc

$$1 \times 2 \times 3 \times 4 \times 5 \times 6 \times 7 \times 8 = (b_1 \times b_2 \times \ldots \times b_8)^2,$$

qui serait le carré d'un entier. Or, quand on décompose un carré en facteurs premiers, chaque nombre premier apparaît un nombre pair de fois, puisque la décomposition de $N^2$ est celle de $N$ écrite deux fois. Mais dans le produit $1 \times 2 \times \ldots \times 8$, le nombre premier $7$ n'apparaît qu'une seule fois, dans le facteur $7$. Ce produit n'est donc pas un carré, et on retrouve la même conclusion.

## Going further

Montrer que c'est encore impossible avec un hexagone et les nombres rouges $1, 2, \ldots, 6$, puis avec un polygone à $10$ côtés et les nombres rouges $1, 2, \ldots, 10$.
