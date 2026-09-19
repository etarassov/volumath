---
id: "4425"
title: "Sept convives et sept chaises"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [denombrement, permutation, cercle, factorielle]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Combinatorics II"
  reference: "Handout-1207-1218.pdf, problèmes 2 et 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1207-1218.pdf"
---

## Statement

Sept personnes s'installent autour d'une table ronde qui compte exactement sept places.

1. Les chaises sont numérotées de $1$ à $7$. Combien y a-t-il de façons d'installer les sept
   personnes ?
2. On enlève les numéros. Deux installations qui se déduisent l'une de l'autre en faisant
   tourner tout le monde d'un cran autour de la table sont maintenant considérées comme
   identiques, car chacun a les mêmes voisins. Combien reste-t-il de façons différentes ?

## Hints

1. Pour la première question, oublie que la table est ronde : tu places sept personnes sur sept
   chaises que l'on sait distinguer.
2. Pour la seconde, regarde une installation donnée. Combien d'installations de la première
   question lui sont identiques une fois les numéros enlevés ?
3. Autre méthode pour la seconde question : fixe une personne, disons Alice, et place les six
   autres par rapport à elle.

## Solution

**Question 1.** Les chaises sont numérotées, donc elles sont toutes différentes. Installer les
sept personnes, c'est choisir qui est sur la chaise $1$ ($7$ possibilités), puis qui est sur la
chaise $2$ ($6$ possibilités restantes), et ainsi de suite :

$$7 \times 6 \times 5 \times 4 \times 3 \times 2 \times 1 = 7! = 5040.$$

**Il y a $5040$ façons.**

**Question 2, première méthode.** Partons d'une installation sur les chaises numérotées. En
faisant tourner tout le monde d'un cran, on obtient une autre installation numérotée, mais qui
devient identique à la première une fois les numéros enlevés. En tournant $0$, $1$, $2$, …, $6$
crans, on obtient $7$ installations numérotées différentes (car chacun change de chaise à chaque
rotation), et ce sont exactement celles qui donnent la même installation sans numéros.

Les $5040$ installations numérotées se regroupent donc par paquets de $7$, et chaque paquet
correspond à une installation sans numéros :

$$\frac{5040}{7} = 720.$$

**Question 2, seconde méthode.** Puisque seules comptent les positions les uns par rapport aux
autres, on peut décider qu'Alice est le point de repère et « bloquer » la rotation en la
regardant. Il reste alors à placer les six autres personnes sur les six places restantes, qui
sont bien distinctes une fois Alice fixée (la place à sa gauche, la suivante, etc.) :

$$6! = 720.$$

**Il reste $720$ façons.**

## Going further

Le même raisonnement donne la règle générale : $n$ personnes autour d'une table ronde,
rotations considérées comme identiques, cela fait $(n-1)!$ installations. Si l'on décide en plus
qu'une installation et son image dans un miroir sont identiques, il faut encore diviser par $2$,
ce qui donne $\dfrac{(n-1)!}{2}$ pour $n \geqslant 3$.
