---
id: "5302"
title: "Le nombre à vingt chiffres et le nombre 7"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie-gagnante, divisibilite, dernier-chiffre]
adapted_from: null
see_also: ["5303"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Games, par Tatiana Shubin (San José State University)"
  reference: "TShubinmathgames.pdf, jeu 3 (a) ; le document ne donne aucune solution"
  url: "https://mathcircles.org/activity/mathematical-games/"
  original_language: "en"
  local_copy: "sources/originals/namc/TShubinmathgames.pdf"
---

## Statement

Alice et Bob écrivent ensemble un nombre de $20$ chiffres, **de gauche à droite**, en alternant : Alice écrit le premier chiffre, Bob le deuxième, Alice le troisième, et ainsi de suite. Chacun écrit le chiffre qu'il veut, sauf Alice au tout premier coup, où elle ne peut pas écrire $0$. Un chiffre écrit ne s'efface plus.

Quand les $20$ chiffres sont posés :

- **Alice gagne** si le nombre obtenu **n'est pas** divisible par $7$ ;
- **Bob gagne** s'il **est** divisible par $7$.

Lequel des deux joueurs a une stratégie gagnante ?

## Hints

1. Qui écrit le tout dernier chiffre ? Compter les coups : Alice joue les coups de rang impair, Bob ceux de rang pair.
2. Juste avant le dernier coup, $19$ chiffres sont posés et forment un nombre, appelons-le $M$. Écrire le nombre final en fonction de $M$ et du dernier chiffre $c$.
3. Quand $c$ parcourt $0, 1, 2, \ldots, 9$, on obtient dix nombres qui se suivent : $10M$, $10M+1$, …, $10M+9$.
4. Parmi dix entiers consécutifs, combien y a-t-il de multiples de $7$ ? Peut-il n'y en avoir aucun ?

## Solution

**Réponse : c'est Bob qui gagne, et il n'a même pas besoin de réfléchir avant son dernier coup.**

### Qui joue en dernier

Les coups sont numérotés de $1$ à $20$. Alice joue les coups impairs, Bob les coups pairs. Le coup numéro $20$ est donc joué par **Bob** : c'est lui qui pose le dernier chiffre, celui des unités.

### Ce que Bob voit avant son dernier coup

Juste avant ce dernier coup, $19$ chiffres sont écrits. Ils forment un nombre entier $M$, que Bob ne contrôle pas et qui peut être n'importe quoi : peu importe.

Si Bob écrit le chiffre $c$ à la fin, le nombre final vaut
$$N = 10M + c .$$

En effet, ajouter un chiffre à droite revient à multiplier par $10$ puis à ajouter ce chiffre.

### Bob a toujours un bon chiffre sous la main

Bob a le choix entre les dix chiffres $c = 0, 1, 2, \ldots, 9$, ce qui lui donne le choix entre les dix nombres
$$10M,\quad 10M+1,\quad 10M+2,\quad \ldots,\quad 10M+9 .$$

Ce sont **dix entiers consécutifs**. Or, parmi sept entiers consécutifs, il y en a toujours exactement un qui est un multiple de $7$ : les multiples de $7$ reviennent de sept en sept. À plus forte raison, parmi dix entiers consécutifs, il y en a au moins un.

Bob choisit ce chiffre-là. Le nombre final est alors un multiple de $7$, et **Bob gagne**.

### Un exemple

Supposons qu'après $19$ coups le nombre écrit soit $M$ et que la division de $10M$ par $7$ donne un reste de $3$. Alors $10M + 4$ est un multiple de $7$ : Bob écrit $4$.

Si le reste de $10M$ par $7$ est $0$, Bob écrit $0$ (ou $7$, les deux conviennent).

**Ce qui fait tout basculer, c'est donc uniquement le fait que Bob écrive le dernier chiffre.** Rien de ce qu'Alice fait pendant les dix-neuf premiers coups ne peut l'en empêcher.

## Going further

1. Et si la partie se jouait sur $21$ chiffres, c'est-à-dire si c'était Alice qui écrivait le dernier chiffre ? Qui gagnerait alors ?
2. Bob gagne parce que dix chiffres suffisent à atteindre tous les restes possibles dans la division par $7$. Par quels nombres pourrait-on remplacer $7$ sans rien changer au raisonnement ?
