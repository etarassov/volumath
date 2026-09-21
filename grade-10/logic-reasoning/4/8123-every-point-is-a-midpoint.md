---
id: "8123"
title: "Chaque point est le milieu de deux autres"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [principe-de-l-extremum, raisonnement-par-l-absurde, coordonnees]
adapted_from: null
see_also: ["7232"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Principe de l'extremum », exercice 3"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On considère un ensemble non vide $E$ de points du plan qui a la propriété suivante :

> chaque point de $E$ est le milieu de deux autres points de $E$.

Montrer que $E$ contient une infinité de points.

## Hints

1. Raisonne par l'absurde : suppose que $E$ ne contienne qu'un nombre fini de points.
2. Quand un ensemble de points est fini, on peut en choisir un « extrême ». Munis-toi d'un repère et regarde les abscisses.
3. Prends un point de $E$ dont l'abscisse est la plus grande possible. Si ce point est le milieu de deux points de $E$, que peux-tu dire de leurs abscisses ?
4. Tu obtiendras que les deux points ont la même abscisse que lui. Recommence alors le même raisonnement avec les ordonnées, en te limitant aux points de cette abscisse-là.

## Solution

Raisonnons par l'absurde et supposons que $E$ soit fini. Comme $E$ est non vide, il contient au moins un point.

**Le choix d'un point extrême.**

Munissons le plan d'un repère. Chaque point de $E$ a donc une abscisse et une ordonnée.

Comme $E$ est fini, il existe parmi ses points une abscisse maximale ; notons-la $a$. Considérons maintenant l'ensemble (non vide, et fini) des points de $E$ d'abscisse $a$, et choisissons parmi eux un point d'ordonnée maximale ; notons-la $b$.

Nous obtenons ainsi un point

$$M = (a,\ b) \in E$$

tel que :

- tout point de $E$ a une abscisse inférieure ou égale à $a$ ;
- tout point de $E$ d'abscisse égale à $a$ a une ordonnée inférieure ou égale à $b$.

**La contradiction.**

Par hypothèse, $M$ est le milieu de deux autres points de $E$. Notons-les

$$P = (x_1,\ y_1) \qquad \text{et} \qquad Q = (x_2,\ y_2),$$

tous deux dans $E$ et tous deux différents de $M$.

Le milieu de $[PQ]$ a pour abscisse $\dfrac{x_1 + x_2}{2}$ et pour ordonnée $\dfrac{y_1 + y_2}{2}$. Donc

$$x_1 + x_2 = 2a \qquad \text{et} \qquad y_1 + y_2 = 2b.$$

*Les abscisses.* On sait que $x_1 \leq a$ et $x_2 \leq a$. Si l'une des deux était strictement inférieure à $a$, la somme $x_1 + x_2$ serait strictement inférieure à $2a$. Ce n'est pas le cas, donc

$$x_1 = x_2 = a.$$

*Les ordonnées.* Les points $P$ et $Q$ sont donc des points de $E$ d'abscisse $a$ : leurs ordonnées vérifient $y_1 \leq b$ et $y_2 \leq b$. Le même raisonnement donne

$$y_1 = y_2 = b.$$

Ainsi $P = Q = (a, b) = M$. Mais $P$ et $Q$ devaient être deux points **autres** que $M$. C'est absurde.

**Conclusion.**

L'ensemble $E$ ne peut pas être fini : **il contient une infinité de points.**

Remarque : un tel ensemble existe bel et bien. Par exemple, l'ensemble de tous les points du plan dont les deux coordonnées sont des entiers convient : le point $(x, y)$ est le milieu de $(x-1, y)$ et $(x+1, y)$.
