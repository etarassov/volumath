---
id: "5304"
title: "Les diagonales du polygone convexe"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [jeu, invariant, parite, polygone, triangulation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Games, par Tatiana Shubin (San José State University)"
  reference: "TShubinmathgames.pdf, jeu 4 ; le document ne donne aucune solution. Le cas d'un polygone régulier à 2014 côtés figure aussi dans stage_ete_2013.pdf, chapitre II, groupe A, « TD de stratégies de base », exercice 3, où il est résolu par symétrie."
  url: "https://mathcircles.org/activity/mathematical-games/"
  original_language: "en"
  local_copy: "sources/originals/namc/TShubinmathgames.pdf"
---

## Statement

On dessine un polygone **convexe** à $n$ côtés ($n \geqslant 3$). Alice et Bob tracent à tour de rôle une diagonale de ce polygone, avec une seule contrainte : une diagonale nouvellement tracée ne doit couper aucune des diagonales déjà tracées. Deux diagonales ont le droit de se rejoindre en un sommet du polygone, mais pas de se croiser à l'intérieur.

Le joueur qui ne peut plus tracer de diagonale a perdu. Alice commence.

Pour quelles valeurs de $n$ Alice gagne-t-elle ?

*On rappelle qu'une diagonale est un segment joignant deux sommets non consécutifs.*

## Hints

1. Jouer la partie pour $n = 4$, puis pour $n = 5$, puis pour $n = 6$, plusieurs fois et en jouant mal exprès. Compter à chaque fois le nombre total de diagonales tracées avant le blocage.
2. Ce nombre ne dépend jamais de la façon de jouer. Il ne reste donc qu'à le calculer, puis à regarder s'il est pair ou impair.
3. À quoi ressemble la figure quand plus aucune diagonale ne peut être tracée ? Regarder les morceaux découpés par les diagonales.
4. Quand le blocage arrive, tous les morceaux sont des triangles. Combien y a-t-il de triangles ? Une piste : additionner les angles de tous les morceaux et comparer à la somme des angles du polygone, qui vaut $(n-2) \times 180°$.

## Solution

**Réponse : la partie dure toujours exactement $n - 3$ coups. Alice gagne donc exactement quand $n$ est pair.**

### La partie se bloque sur une figure faite de triangles

Les diagonales déjà tracées découpent le polygone en morceaux, et chaque morceau est lui-même un polygone convexe dont les sommets sont des sommets du polygone de départ.

Supposons qu'un des morceaux ait au moins $4$ côtés. Alors il possède une diagonale, et cette diagonale reste à l'intérieur du morceau, donc elle ne coupe aucune diagonale déjà tracée. Ce serait aussi une diagonale du polygone de départ : en effet, si deux sommets du morceau étaient consécutifs dans le polygone de départ, le côté qui les joint borderait le morceau, et ils seraient aussi consécutifs sur le bord du morceau. Un coup serait donc encore possible.

**Conclusion : la partie s'arrête exactement quand tous les morceaux sont des triangles.**

### Combien de triangles à la fin ?

Additionnons les angles de tous les morceaux. Chaque sommet du polygone est partagé entre les morceaux qui s'y appuient, et la somme des angles de ces morceaux en ce sommet reconstitue exactement l'angle du polygone. Aucune diagonale ne s'arrête au milieu d'une autre, donc il n'apparaît aucun angle supplémentaire.

La somme de tous les angles de tous les morceaux est donc égale à la somme des angles du polygone :
$$(n - 2) \times 180°.$$

Comme chaque morceau est un triangle et apporte $180°$, le nombre de triangles vaut
$$\frac{(n-2) \times 180°}{180°} = n - 2 .$$

### Combien de coups ?

Au départ, il y a $1$ morceau : le polygone entier. Chaque diagonale tracée coupe un morceau en deux, donc **augmente le nombre de morceaux d'exactement $1$**.

En partant de $1$ morceau pour arriver à $n-2$ morceaux, on a donc tracé
$$(n - 2) - 1 = n - 3$$
diagonales, **et ce nombre ne dépend pas du tout de la façon dont les deux joueurs ont joué**.

### Qui joue le dernier coup ?

Alice joue les coups numéro $1, 3, 5, \ldots$, Bob les coups pairs. Le dernier coup est le coup numéro $n-3$.

- Si $n - 3$ est **impair**, le dernier coup est joué par Alice, et Bob est bloqué : **Alice gagne**.
- Si $n - 3$ est **pair**, le dernier coup est joué par Bob, et c'est Alice qui est bloquée : **Bob gagne**.

Or $n - 3$ est impair exactement quand $n$ est pair.

**Conclusion. Alice gagne si et seulement si $n$ est pair.** Ni l'un ni l'autre n'a le moindre choix à faire : le vainqueur est décidé d'avance par la parité de $n$.

### Vérification sur de petits cas

- $n = 3$ : $n - 3 = 0$ coup. Alice est bloquée tout de suite, Bob gagne. ($3$ est impair.)
- $n = 4$ : $n-3 = 1$. Alice trace l'une des deux diagonales du quadrilatère, Bob ne peut plus rien tracer car l'autre diagonale la couperait. Alice gagne. ($4$ est pair.)
- $n = 5$ : $n - 3 = 2$. Quelles que soient les deux premières diagonales, la figure est alors découpée en trois triangles et plus rien n'est possible. Bob gagne.

## Going further

1. On change la règle : le joueur qui trace la **dernière** diagonale a perdu. Qui gagne alors ?
2. Le même raisonnement s'applique à d'autres jeux où le nombre de coups est fixé d'avance. Chercher une quantité qui augmente de $1$ à chaque coup dans le jeu suivant : on casse une tablette de chocolat en morceaux, un morceau à la fois, le long des rainures, et le joueur qui ne peut plus casser a perdu.
3. Dans un polygone convexe à $n$ sommets, de combien de façons différentes peut-on arriver à la figure finale, c'est-à-dire découper le polygone en $n-2$ triangles par des diagonales ne se coupant pas ?
4. Pour un polygone **régulier** à $2014$ côtés, on peut trouver la stratégie d'Alice sans rien compter. Elle trace d'abord une grande diagonale, qui joint deux sommets opposés, puis elle répond à chaque coup de Bob par la diagonale symétrique par rapport à cette grande diagonale. Montrer que cette réponse est toujours possible. Pourquoi cette stratégie ne marche-t-elle plus avec $2015$ côtés, et qui gagne alors ?
