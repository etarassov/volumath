---
id: "5305"
title: "Une allumette dans un tas, ou une dans chaque"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie-gagnante, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Games, par Tatiana Shubin (San José State University)"
  reference: "TShubinmathgames.pdf, jeu 7 ; le document ne donne aucune solution"
  url: "https://mathcircles.org/activity/mathematical-games/"
  original_language: "en"
  local_copy: "sources/originals/namc/TShubinmathgames.pdf"
---

## Statement

Sur la table, deux tas d'allumettes : l'un de $10$ allumettes, l'autre de $7$.

Chacun à son tour, un joueur joue l'un des trois coups suivants, à son choix :

- prendre **une** allumette dans le premier tas ;
- prendre **une** allumette dans le second tas ;
- prendre **une** allumette dans chacun des deux tas.

Le joueur qui ne peut plus jouer a perdu, autrement dit celui qui prend la dernière allumette de la table a gagné. Alice commence.

Lequel des deux joueurs a une stratégie gagnante ? Décrire cette stratégie.

## Hints

1. Jouer les toutes petites parties : $(1 ; 0)$, $(0 ; 1)$, $(1 ; 1)$, $(2 ; 0)$, $(2 ; 2)$, $(2 ; 1)$. Noter à chaque fois qui gagne.
2. Faire un tableau des positions $(a ; b)$ avec $a$ et $b$ de $0$ à $4$, en marquant celles où le joueur qui doit jouer est perdant. Quelle forme a le dessin obtenu ?
3. Les positions perdantes sont celles où **les deux tas ont un nombre pair d'allumettes**. Vérifier les deux points suivants : depuis une position à deux tas pairs, tout coup casse cette propriété ; depuis une position qui n'a pas cette propriété, on peut toujours la rétablir.
4. Le couple $(10 ; 7)$ est-il fait de deux nombres pairs ?

## Solution

**Réponse : Alice gagne. Son premier coup : prendre une allumette dans le tas de $7$.**

### Les positions perdantes

Notons $(a ; b)$ la position où le premier tas contient $a$ allumettes et le second $b$.

**Affirmation : le joueur qui doit jouer est perdant exactement quand $a$ et $b$ sont tous les deux pairs.**

Appelons ces positions les *positions paires*. Deux choses à vérifier.

**1. Depuis une position paire, on arrive toujours sur une position qui n'est pas paire.**

Si $a$ et $b$ sont pairs, les trois coups possibles donnent :

- $(a-1 ; b)$ : le premier nombre devient impair ;
- $(a ; b-1)$ : le second devient impair ;
- $(a-1 ; b-1)$ : les deux deviennent impairs.

Dans les trois cas, au moins un des deux tas contient un nombre impair d'allumettes.

**2. Depuis une position qui n'est pas paire, on peut toujours revenir à une position paire.**

- Si $a$ est impair et $b$ pair : prendre une allumette dans le premier tas, ce qui donne $(a-1 ; b)$, deux nombres pairs.
- Si $a$ est pair et $b$ impair : prendre une allumette dans le second tas.
- Si $a$ et $b$ sont tous les deux impairs : prendre une allumette dans **chacun** des deux tas, ce qui donne $(a-1 ; b-1)$, deux nombres pairs.

Ces coups sont toujours jouables : un nombre impair d'allumettes est au moins égal à $1$, donc le tas concerné n'est pas vide.

**3. Conclusion.**

La position $(0 ; 0)$ est paire, et c'est exactement la position où l'on a perdu : on ne peut plus jouer.

Le joueur qui suit la stratégie « je laisse toujours deux tas pairs à l'adversaire » est donc sûr de gagner : à chacun de ses tours, il peut jouer (point 2), et il repasse la main sur une position paire. Son adversaire, lui, ne peut jamais rendre une position paire (point 1). Comme le nombre total d'allumettes diminue à chaque coup, la partie s'arrête ; elle s'arrête forcément sur $(0 ; 0)$, juste après un coup du joueur qui suit la stratégie.

### La partie $(10 ; 7)$

Le nombre $7$ est impair, donc la position de départ n'est pas paire : c'est Alice, qui joue la première, qui est dans la bonne situation.

**Elle prend une allumette dans le tas de $7$**, laissant $(10 ; 6)$, puis elle rétablit à chaque coup la parité des deux tas selon la règle du point 2. Elle prend la dernière allumette et gagne.

Par exemple : $(10 ; 6)$ ; Bob prend une allumette dans chaque tas, $(9 ; 5)$ ; Alice fait de même, $(8 ; 4)$ ; Bob prend une allumette dans le premier tas, $(7 ; 4)$ ; Alice aussi, $(6 ; 4)$ ; et ainsi de suite jusqu'à $(0 ; 0)$.

## Going further

1. Que devient la réponse si l'on ajoute un quatrième coup possible : prendre **deux** allumettes dans un même tas ?
2. Et si le joueur qui prend la dernière allumette a **perdu** ?
