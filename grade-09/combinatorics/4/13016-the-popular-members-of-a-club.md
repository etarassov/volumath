---
id: "13016"
title: "Les membres populaires d'un club"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [graphe, connaissances, raisonnement, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 2 octobre 2013"
  reference: "2017-09_coupe_automne_2013.pdf, exercice 5 ; corrigé 2017-09_coupe_automne_2013_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2013.pdf"
---

## Statement

Un club compte $100$ membres. Quand deux membres se connaissent, la connaissance est réciproque : si $A$ connaît $B$, alors $B$ connaît $A$.

On sait que dans **tout groupe de quatre membres**, il y en a au moins un qui connaît les trois autres.

On dit qu'un membre est **populaire** s'il connaît tous les autres membres du club.

1. Montrer que le club contient au moins un membre populaire.
2. Combien de membres populaires le club peut-il contenir ? Donner toutes les possibilités.

## Hints

1. Si tout le monde se connaît, c'est fini. Sinon, choisis deux membres $A$ et $B$ qui ne se connaissent pas.
2. Prends deux autres membres $X$ et $Y$ et regarde le groupe $\{A, B, X, Y\}$. Qui peut être celui qui connaît les trois autres ?
3. Supposons que ce soit $X$. Pour un autre membre $Z$ quelconque, regarde le groupe $\{A, B, X, Z\}$. Que peux-tu en conclure sur $X$ et $Z$ ?
4. Pour la question 2 : tu viens de montrer qu'entre deux membres autres que $A$ et $B$, au moins l'un des deux est populaire. Combien de membres, au plus, ne sont pas populaires ?

## Solution

**Si tout le monde se connaît.** Alors les $100$ membres sont populaires, et la question 1 est réglée.

**Sinon.** Il existe deux membres $A$ et $B$ qui ne se connaissent pas. Aucun des deux n'est populaire. Montrons ceci :

> *Si $X$ et $Y$ sont deux membres autres que $A$ et $B$, alors l'un des deux, au moins, est populaire.*

Dans le groupe $\{A, B, X, Y\}$, un membre connaît les trois autres. Ce n'est pas $A$, qui ne connaît pas $B$, ni $B$, qui ne connaît pas $A$. C'est donc $X$ ou $Y$. Disons que c'est $X$ : il connaît $A$, $B$ et $Y$.

Montrons que $X$ est populaire. Soit $Z$ un membre quelconque, autre que $A$, $B$ et $X$. Dans le groupe $\{A, B, X, Z\}$, un membre connaît les trois autres, et ce n'est ni $A$ ni $B$. C'est donc $X$ ou $Z$. Dans les deux cas, $X$ et $Z$ se connaissent. Ainsi $X$ connaît tous les membres autres que $A$ et $B$, et il connaît aussi $A$ et $B$ : il est populaire.

**Question 1.** Le club a $100$ membres, donc il y a bien deux membres $X$ et $Y$ en dehors de $A$ et $B$. D'après ce qui précède, l'un des deux est populaire. Dans tous les cas, le club contient au moins un membre populaire.

**Question 2. Ce qui est possible au plus.** Si tout le monde se connaît, il y a $100$ membres populaires. Sinon, prenons $A$ et $B$ comme plus haut. Parmi les $98$ autres membres, deux d'entre eux ne peuvent pas être tous les deux non populaires. Il y a donc au plus un non populaire parmi ces $98$. Les membres non populaires sont donc $A$, $B$, et peut-être un troisième. Le nombre de membres populaires vaut alors $98$ ou $97$.

En particulier, il ne peut jamais y avoir exactement $99$ membres populaires.

**Question 2. Les trois cas existent.** Remarquons d'abord ceci : si au plus trois membres ne sont pas populaires, alors tout groupe de quatre contient un membre populaire, qui connaît les trois autres. La condition de l'énoncé est alors remplie.

- **$100$ membres populaires :** tout le monde se connaît.
- **$98$ membres populaires :** tout le monde se connaît, sauf $A$ et $B$. Les seuls membres non populaires sont $A$ et $B$.
- **$97$ membres populaires :** tout le monde se connaît, sauf $A$ et $B$ d'une part, et $A$ et $W$ d'autre part. Les membres non populaires sont $A$, $B$ et $W$.

Dans ces trois clubs, au plus trois membres ne sont pas populaires, donc la condition est bien remplie.

**Conclusion.**

1. Le club contient toujours au moins un membre populaire.
2. Le nombre de membres populaires est $97$, $98$ ou $100$, et ces trois valeurs sont possibles.

## Going further

1. Reprendre le problème avec un club de $n$ membres, pour $n \geqslant 4$.
2. On suppose maintenant que dans tout groupe de **trois** membres, l'un d'eux connaît les deux autres. Le club contient-il forcément un membre populaire ?
