---
id: "5301"
title: "Deux tas d'allumettes"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie-gagnante, symetrie, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Games, par Tatiana Shubin (San José State University)"
  reference: "TShubinmathgames.pdf, jeu 2 (a) et (b) ; le document ne donne aucune solution"
  url: "https://mathcircles.org/activity/mathematical-games/"
  original_language: "en"
  local_copy: "sources/originals/namc/TShubinmathgames.pdf"
---

## Statement

Alice et Bob posent sur la table **deux tas d'allumettes** : l'un de $10$ allumettes, l'autre de $7$.

Chacun à son tour, un joueur choisit **un seul** des deux tas et y prend le nombre d'allumettes qu'il veut : au moins une, et au plus tout le tas. Il n'a pas le droit de prendre dans les deux tas au même coup.

Celui qui prend la **dernière** allumette de la table a gagné. Alice commence.

1. Lequel des deux joueurs peut être sûr de gagner ? Décrire sa façon de jouer.
2. Mêmes questions si les deux tas contiennent au départ $m$ et $n$ allumettes.

*Une stratégie gagnante est une manière de jouer qui fait gagner à coup sûr, quoi que fasse l'adversaire.*

## Hints

1. Commencer par de très petites parties : $(1 ; 1)$, puis $(2 ; 2)$, puis $(1 ; 2)$. Qui gagne dans chaque cas ?
2. Dans les parties $(1 ; 1)$ et $(2 ; 2)$, c'est le deuxième joueur qui gagne. Qu'ont ces deux situations en commun ?
3. Si les deux tas sont égaux, le joueur qui **ne** joue **pas** a une réponse toute prête à chaque coup de l'autre : laquelle ?
4. Alice ne peut donc pas laisser deux tas égaux à Bob... mais elle peut lui en imposer. Combien doit-elle prendre au premier coup dans le tas de $10$ ?

## Solution

**Réponse : Alice gagne. Elle prend $3$ allumettes dans le tas de $10$, ce qui laisse deux tas de $7$, puis elle copie chaque coup de Bob dans l'autre tas.**

### Pourquoi deux tas égaux sont une position perdante

Appelons $(a ; b)$ la position où le premier tas contient $a$ allumettes et le second $b$.

Supposons que ce soit **à Bob de jouer** et que les deux tas soient égaux, $(k ; k)$.

- Si $k = 0$, il n'y a plus rien sur la table : la dernière allumette a été prise par Alice, donc Bob a déjà perdu.
- Si $k > 0$, Bob prend un certain nombre $t$ d'allumettes dans l'un des tas. La position devient $(k - t ; k)$ ou $(k ; k - t)$, avec $1 \leqslant t \leqslant k$. Alice **répète exactement le même coup dans l'autre tas** : elle y prend $t$ allumettes. Les deux tas sont de nouveau égaux, à $k - t$ chacun.

Ce coup de réponse est toujours possible, puisque l'autre tas contient lui aussi $k$ allumettes, donc au moins $t$.

À chaque aller-retour, le nombre total d'allumettes diminue d'au moins $2$. La partie s'arrête donc, et elle ne peut s'arrêter qu'à la position $(0 ; 0)$, **juste après un coup d'Alice** : c'est donc Alice qui a pris la dernière allumette.

**Conclusion partielle :** le joueur qui doit jouer alors que les deux tas sont égaux perd, à condition que son adversaire copie tous ses coups.

### La partie $(10 ; 7)$

Les deux tas ne sont pas égaux. Alice, qui commence, égalise :

$$\text{elle prend } 10 - 7 = 3 \text{ allumettes dans le tas de } 10.$$

La position devient $(7 ; 7)$ et c'est à Bob de jouer : d'après ce qui précède, Bob est perdu. Alice n'a plus qu'à copier chacun de ses coups dans l'autre tas.

Par exemple : Bob prend $5$ dans un tas, position $(2 ; 7)$ ; Alice prend $5$ dans l'autre, $(2 ; 2)$ ; Bob prend $2$, $(0 ; 2)$ ; Alice prend $2$ et rafle la dernière allumette.

### Le cas général $(m ; n)$

- **Si $m \neq n$**, le premier joueur gagne : il prend $|m - n|$ allumettes dans le plus gros tas, ce qui égalise les deux tas, puis il copie tous les coups de son adversaire.
- **Si $m = n$**, c'est le **second** joueur qui gagne, en copiant chaque coup dans l'autre tas.

Autrement dit, tout se joue sur une seule question : **les deux tas sont-ils égaux ?**

## Going further

1. On pose la tour d'un jeu d'échecs sur une case d'un damier $8 \times 8$. Cette tour est boiteuse : elle ne peut se déplacer que **vers la gauche** ou **vers le bas**, d'autant de cases qu'on veut. Les deux joueurs la déplacent à tour de rôle, et celui qui ne peut plus la bouger a perdu. Pour quelles cases de départ le premier joueur gagne-t-il ? (C'est le même jeu que celui de l'exercice, habillé autrement : où sont les deux tas ?)
2. Et avec **trois** tas d'allumettes, la copie ne suffit plus. Qui gagne la partie $(1 ; 2 ; 3)$ ?
