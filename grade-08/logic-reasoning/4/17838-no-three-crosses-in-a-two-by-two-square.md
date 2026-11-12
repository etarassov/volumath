---
id: "17838"
title: "Pas trois croix dans un carré 2 × 2"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [jeu, strategie-gagnante, symetrie-centrale, quadrillage]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, test final"
  reference: "stage_junior_2014.pdf, chapitre « Vendredi : test final », exercices avancés, exercice 6, p.84 ; solution p.87"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Anna et Bob jouent sur un tableau carré de $2013 \times 2013$ cases, vides au départ. Chacun à son tour, en commençant par Anna, un joueur dessine une croix dans une case vide.

Celui qui dessine la troisième croix dans un carré de $2 \times 2$ cases a perdu.

1. Lequel des deux joueurs peut gagner à coup sûr, quoi que fasse l'autre ?
2. Même question avec un tableau de $2014 \times 2014$ cases.

## Hints

1. La partie ne peut pas durer toujours, et elle ne peut pas finir sans perdant. Pourquoi ?
2. Sur le tableau $2013 \times 2013$, il y a une case au centre. Et si Anna commençait par elle, puis copiait les coups de Bob d'une certaine façon ?
3. Une case et sa symétrique par rapport à la case centrale peuvent-elles être dans un même carré $2 \times 2$ ?
4. Sur le tableau $2014 \times 2014$, c'est Bob qui peut copier. Mais cette fois, un seul carré $2 \times 2$ contient une case et sa symétrique. Lequel ? Combien de croix peut-il contenir avant le coup de Bob ?

## Solution

**La partie a toujours un perdant.** Chaque coup remplit une case vide, donc la partie dure au plus $2013^2$ coups. Si elle allait jusqu'au bout, le tableau serait plein, et un carré $2 \times 2$ plein contient $4$ croix : quelqu'un aurait dessiné la troisième. Donc un des joueurs finit par perdre. Par conséquent, un joueur qui a **toujours** un coup qui ne perd pas est sûr de gagner.

On appelle **symétrique** d'une case la case qu'on obtient par la symétrie centrale de centre le centre du tableau. Un carré $2 \times 2$ a pour symétrique un autre carré $2 \times 2$.

**1. Le tableau $2013 \times 2013$ : Anna gagne.**

Comme $2013$ est impair, il y a une case centrale $Z$, et le centre du tableau est le centre de $Z$.

*La stratégie d'Anna.* Elle dessine sa première croix en $Z$. Ensuite, chaque fois que Bob dessine une croix dans une case $X$, elle répond dans la case $X'$ symétrique de $X$.

*Une remarque.* Une case $X$ autre que $Z$ et sa symétrique $X'$ ne sont jamais dans un même carré $2 \times 2$. En effet, si $X$ est à $a$ colonnes et $b$ lignes de $Z$, alors $X'$ est à $a$ colonnes et $b$ lignes de l'autre côté. L'écart entre $X$ et $X'$ est donc de $2a$ colonnes et $2b$ lignes. Dans un carré $2 \times 2$, deux cases ont un écart d'au plus $1$ colonne et $1$ ligne, ce qui oblige $a = b = 0$, c'est-à-dire $X = Z$.

*Pourquoi Anna ne perd jamais.* Après chaque coup d'Anna, la position est symétrique : les croix sont deux par deux symétriques, plus la croix en $Z$. C'est vrai après son premier coup, et elle le garde en copiant Bob. Supposons que Bob vienne de jouer en $X$ sans perdre.

- La case $X'$ est vide. Sinon, par symétrie de la position avant le coup de Bob, la case $X$ aurait déjà été occupée. Et $X' \neq X$, car $X \neq Z$.
- Le coup en $X'$ ne perd pas. Supposons qu'un carré $C$ contienne $X'$ et deux autres croix. D'après la remarque, $X$ n'est pas dans $C$, donc ces deux croix étaient déjà là avant le coup de Bob. Leurs symétriques étaient donc là aussi, et elles sont dans le carré $C'$ symétrique de $C$, avec $X$. Le carré $C'$ contenait alors trois croix juste après le coup de Bob : Bob aurait déjà perdu. C'est impossible.

Anna a toujours un coup qui ne perd pas. **C'est donc Anna qui gagne sur le tableau $2013 \times 2013$.**

**2. Le tableau $2014 \times 2014$ : Bob gagne.**

Comme $2014$ est pair, il n'y a pas de case centrale : le centre $\Omega$ du tableau est un coin commun aux quatre cases du milieu. Ces quatre cases forment le **carré central** $C_0$, qui est son propre symétrique. Aucune case n'est sa propre symétrique.

*La stratégie de Bob.* Chaque fois qu'Anna joue dans une case $X$, Bob répond dans la case $X'$ symétrique de $X$.

*Une remarque.* Le même calcul qu'au 1 montre qu'une case et sa symétrique ne sont dans un même carré $2 \times 2$ que si elles sont toutes les deux dans le carré central $C_0$. Elles y sont alors en diagonale.

*Pourquoi Bob ne perd jamais.* Après chaque coup de Bob, les croix sont deux par deux symétriques (c'est vrai au départ, quand il n'y a aucune croix). Supposons qu'Anna vienne de jouer en $X$ sans perdre.

- La case $X'$ est vide, pour la même raison qu'au 1, et $X' \neq X$.
- Supposons que le coup en $X'$ fasse une troisième croix dans un carré $C$.
  - Si $C$ n'est pas le carré central, alors $X$ n'est pas dans $C$, d'après la remarque. On conclut comme au 1 : le carré symétrique $C'$ contenait déjà trois croix après le coup d'Anna, ce qui est impossible.
  - Si $C$ est le carré central $C_0$, alors $X$ et $X'$ sont tous les deux dans $C_0$, et il y a une troisième croix $Y$ dans $C_0$, qui était déjà là avant le coup d'Anna. Comme la position était symétrique, sa symétrique $Y'$, qui est aussi dans $C_0$, était déjà là. Mais alors, juste après le coup d'Anna, $C_0$ contenait $X$, $Y$ et $Y'$ : trois croix. Anna aurait déjà perdu, c'est impossible.

Bob a toujours un coup qui ne perd pas. **C'est donc Bob qui gagne sur le tableau $2014 \times 2014$.**

## Going further

Le raisonnement ne dépend que de la parité des côtés. Sur un tableau de $m \times n$ cases (avec $m, n \ge 2$), Anna gagne quand $m$ et $n$ sont tous les deux impairs, et Bob gagne quand ils sont tous les deux pairs.

Quand un côté est pair et l'autre impair, la copie par symétrie ne marche plus. Le centre du tableau est alors le milieu du côté commun de deux cases voisines $X$ et $X'$, symétriques l'une de l'autre. Ces deux cases sont dans deux carrés $2 \times 2$, l'un au-dessus et l'autre en dessous, et chacun est le symétrique de l'autre. Si Anna joue d'abord dans une case $U$ du carré du dessus, autre que $X$ et $X'$, Bob copie dans le carré du dessous. Puis Anna joue en $X$ sans perdre, et si Bob copie en $X'$, il fait trois croix d'un coup dans chacun des deux carrés.
