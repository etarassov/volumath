---
id: "0310"
title: "La tablette de chocolat"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [jeu, invariant, parite, denombrement]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов"
  reference: "AU.pdf, листок 11 «Математические игры-1: явные стратегии», задача 3 (с. 65)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Marie et Jean cassent à tour de rôle une tablette de chocolat formée de $6 \times 8 = 48$ carrés.

Un coup consiste à prendre l'un des morceaux présents sur la table et à le casser en deux, en ligne droite, le long d'une rainure. On n'a pas le droit de casser deux morceaux à la fois, ni de casser en biais.

Le joueur qui ne peut plus jouer a perdu. Marie commence.

Lequel des deux gagne ?

## Hints

1. Jouer d'abord avec une petite tablette, par exemple $1 \times 3$, puis $2 \times 2$. Compter le nombre de coups joués en tout. Dépend-il de la façon de jouer ?
2. Compter les morceaux présents sur la table. Combien y en a-t-il au tout début ? Combien y en a-t-il à la fin de la partie ?
3. De combien le nombre de morceaux augmente-t-il à chaque coup ?
4. Le nombre total de coups de la partie est donc connu d'avance. Est-il pair ou impair ? Qui joue les coups de rang impair ?

## Solution

**L'idée : compter les morceaux.**

Suivons le nombre de morceaux posés sur la table.

- **Au début**, la tablette est entière : il y a $1$ morceau.
- **À chaque coup**, on prend un morceau et on le casse en deux. Le nombre de morceaux augmente donc d'exactement $1$, quel que soit le morceau choisi et quel que soit l'endroit de la cassure.
- **À la fin**, plus aucun coup n'est possible. Cela veut dire qu'aucun morceau ne peut plus être cassé, donc que tous les morceaux sont des carrés isolés $1 \times 1$. Il y en a $6 \times 8 = 48$.

**Le nombre de coups est fixé d'avance.**

On part de $1$ morceau, on arrive à $48$ morceaux, et chaque coup en ajoute exactement $1$. La partie dure donc
$$48 - 1 = 47 \text{ coups},$$
**et ce nombre ne dépend absolument pas de la façon dont les deux joueurs jouent.**

**Qui joue le dernier coup ?**

Marie commence, donc elle joue les coups numéro $1$, $3$, $5$, et ainsi de suite : tous les coups de rang impair. Jean joue les coups de rang pair.

Or $47$ est impair. Le dernier coup de la partie, le $47^{\text{e}}$, est donc joué par Marie. Après ce coup, plus rien n'est cassable, et c'est au tour de Jean : il ne peut pas jouer, il a perdu.

**Conclusion.** **Marie gagne**, et cela quelle que soit la façon dont l'un et l'autre s'y prennent. Aucun des deux joueurs n'a de choix à faire : le résultat est décidé d'avance par la taille de la tablette.

**L'idée à retenir.** Ce genre de jeu s'appelle parfois un *jeu-blague* : le vainqueur ne dépend pas des coups joués. Pour le repérer, on cherche une quantité qui évolue toujours de la même manière, ici le nombre de morceaux, qui augmente de $1$ à chaque coup. On en déduit le nombre exact de coups, puis on regarde sa parité.

## Going further

1. Reprendre le problème avec une tablette $m \times n$. Pour quelles dimensions Marie gagne-t-elle ?
2. On change la règle : le joueur qui joue le **dernier** coup a perdu. Qui gagne alors, pour la tablette $6 \times 8$ ?
3. On autorise maintenant à empiler plusieurs morceaux et à les casser tous d'un coup, en ligne droite. Le nombre de coups est-il encore fixé d'avance ?
