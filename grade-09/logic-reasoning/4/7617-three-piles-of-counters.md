---
id: "7617"
title: "Trois tas de jetons"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, pgcd, parite, jetons]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 1 (solution chapitre XI, résolue par Louis Charnavel)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Sur une table, on dispose trois tas de jetons : un tas de $51$ jetons, un tas de $49$ jetons et un tas de $5$ jetons.

À chaque étape, on a le droit de faire l'une des deux choses suivantes :

- **réunir** deux tas en un seul ;
- **couper en deux parts égales** un tas dont le nombre de jetons est pair.

Peut-on, au bout d'un certain nombre d'étapes, se retrouver avec $105$ tas contenant chacun un seul jeton ?

## Hints

1. Comptez les jetons : il y en a $105$ en tout, et ce nombre ne change jamais. Ce n'est donc pas là qu'est l'obstacle.
2. Au tout début, les trois tas sont $51$, $49$ et $5$. Aucun n'est pair : quelles sont les étapes possibles au premier coup ? Il n'y en a que trois. Écrivez-les.
3. Pour chacune de ces trois situations, cherchez un nombre $d > 1$ qui divise la taille de **tous** les tas présents.
4. Montrez qu'un tel diviseur commun, s'il est **impair**, le reste pour toujours : il survit à une réunion, et aussi à une coupure en deux parts égales.
5. Et si tous les tas contenaient un seul jeton, quel serait leur seul diviseur commun ?

## Solution

**Réponse : non, c'est impossible.**

**Étape 1 : un diviseur commun impair ne disparaît jamais.**

Supposons qu'à un certain moment, un entier **impair** $d$ divise le nombre de jetons de chacun des tas. Regardons ce que devient cette propriété après une étape.

- *On réunit deux tas,* de tailles $m$ et $n$. Le nouveau tas a $m + n$ jetons. Comme $d$ divise $m$ et $n$, il divise $m + n$. Les autres tas n'ont pas bougé. La propriété est conservée.
- *On coupe un tas pair en deux parts égales.* Le tas avait $2k$ jetons, les deux nouveaux en ont $k$ chacun. On sait que $d$ divise $2k$. Comme $d$ est impair, $d$ n'a aucun facteur $2$ dans sa décomposition en facteurs premiers ; tous ses facteurs premiers se trouvent donc déjà dans $k$, et $d$ divise $k$. Là encore, la propriété est conservée.

> **Si, à un moment, un entier impair $d$ divise la taille de tous les tas, alors c'est encore vrai à toutes les étapes suivantes.**

**Étape 2 : après le premier coup, un tel $d$ existe forcément.**

Au départ, les trois tas contiennent $51$, $49$ et $5$ jetons. Tous les trois sont impairs, donc **on ne peut pas couper** : la seule étape possible est de réunir deux tas. Il n'y a que trois façons de le faire :

| Réunion | Tas obtenus | Un diviseur commun impair |
|---|---|---|
| $51 + 49$ | $100$ et $5$ | $d = 5$ |
| $51 + 5$ | $56$ et $49$ | $d = 7$ |
| $49 + 5$ | $54$ et $51$ | $d = 3$ |

Dans chacun des trois cas, il existe un entier impair $d > 1$ qui divise la taille de tous les tas présents : $5$, $7$ ou $3$ selon le coup joué.

**Étape 3 : conclusion.**

D'après l'étape 1, ce $d$ divisera la taille de tous les tas jusqu'à la fin de la partie, quoi qu'on fasse ensuite.

Or, si l'on arrivait à $105$ tas de $1$ jeton, il faudrait que $d$ divise $1$, donc que $d = 1$. Mais $d$ vaut $3$, $5$ ou $7$. Contradiction.

**Il est donc impossible d'obtenir $105$ tas de $1$ jeton.**

## Going further

Remarquez la structure de la démonstration : l'invariant n'existe pas dès le départ (les nombres $51$, $49$ et $5$ n'ont aucun diviseur commun autre que $1$), mais il **apparaît dès le premier coup**, et il ne peut plus disparaître ensuite. C'est une variante utile de la méthode des invariants : quand on n'en trouve pas au départ, il vaut la peine de regarder ce qui se passe juste après le premier coup, surtout quand ce premier coup est très contraint.

Une question pour continuer : avec quels tas de départ **peut-on** arriver à ne plus avoir que des tas de $1$ jeton ? Essayez avec $(1, 1)$, puis $(2, 2)$, puis $(3, 5)$.
