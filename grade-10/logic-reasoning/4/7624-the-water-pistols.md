---
id: "7624"
title: "Les pistolets à eau"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [recurrence forte, distances, principe extremal, comptage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 17 (solution chapitre XI, résolue par Louis Charnavel ; le même énoncé est l'exercice 6 du cours/TD de stratégies de base du groupe A, p. 23)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Dans une cour, un nombre **impair** d'élèves sont dispersés, chacun muni d'un pistolet à eau. On suppose que toutes les distances entre deux élèves sont différentes les unes des autres : il n'y a jamais d'égalité.

À midi précises, chaque élève arrose l'élève le plus proche de lui.

Démontrer qu'il existe au moins un élève qui reste sec.

## Hints

1. Comme toutes les distances sont différentes, il existe une unique paire d'élèves qui sont les plus proches l'un de l'autre. Que font ces deux-là ?
2. Ces deux élèves une fois mis de côté, combien en reste-t-il ? Ce nombre est-il pair ou impair ?
3. Séparez deux cas : ou bien quelqu'un du reste arrose l'un des deux, ou bien personne.
4. Dans le premier cas, comptez les tirs qui atterrissent sur les élèves restants et comparez à leur nombre.
5. Dans le second cas, les élèves restants ne tirent qu'entre eux : que peut-on faire alors ?

## Solution

Notons $2n+1$ le nombre d'élèves. Démontrons le résultat par **récurrence forte** sur $n$.

**Le cas de départ : un seul élève ($n = 0$).**

Il n'y a personne à arroser, donc personne n'est arrosé : l'unique élève reste sec. La propriété est vraie.

**L'hérédité.**

Soit $n \geqslant 1$. Supposons la propriété vraie pour tout nombre impair d'élèves strictement inférieur à $2n+1$, et considérons $2n+1$ élèves.

Toutes les distances étant différentes, il existe **une** paire d'élèves dont la distance est la plus petite de toutes. Appelons-les $A$ et $B$.

L'élève le plus proche de $A$ est $B$ : en effet, si un autre élève $C$ était plus proche de $A$ que $B$, la distance $AC$ serait plus petite que $AB$, ce qui contredirait le choix de $A$ et $B$. De même, l'élève le plus proche de $B$ est $A$. Donc

> **$A$ et $B$ s'arrosent mutuellement.**

Mettons $A$ et $B$ de côté. Il reste $2n - 1$ élèves, ce qui est encore un nombre impair.

*Premier cas : au moins un des $2n-1$ élèves restants arrose $A$ ou $B$.*

Comptons les tirs qui peuvent atteindre un des $2n-1$ élèves restants. Les tirs de $A$ et de $B$ sont dirigés l'un vers l'autre : ils n'en atteignent aucun. Les $2n-1$ élèves restants tirent chacun une fois, mais au moins un de ces tirs sort du groupe (il va sur $A$ ou sur $B$). Il reste donc au plus

$$(2n-1) - 1 = 2n - 2$$

tirs pour arroser $2n-1$ élèves. Comme $2n - 2 < 2n - 1$, l'un au moins de ces élèves n'est visé par personne : il reste sec.

*Second cas : aucun des $2n-1$ élèves restants n'arrose $A$ ni $B$.*

Alors chacun de ces $2n-1$ élèves arrose quelqu'un de son propre groupe, et cette personne est son plus proche voisin **dans tout le groupe**, donc en particulier son plus proche voisin **à l'intérieur des $2n-1$**.

Autrement dit, ces $2n-1$ élèves forment à eux seuls une situation du même type : un nombre impair d'élèves, des distances deux à deux distinctes, chacun arrosant son plus proche voisin. Comme $2n - 1 < 2n + 1$, l'hypothèse de récurrence s'applique : l'un d'eux reste sec parmi les $2n-1$. Et il reste sec tout court, puisque $A$ et $B$ arrosent uniquement l'un l'autre.

Dans les deux cas, un élève reste sec : la propriété est vraie au rang $n$.

**Conclusion.** Pour tout nombre impair d'élèves, il y a toujours au moins un élève qui reste sec.

## Going further

**Pourquoi l'hypothèse « nombre impair » ?** Avec deux élèves, ils s'arrosent mutuellement et personne ne reste sec. Plus généralement, avec un nombre pair d'élèves on peut les regrouper par paires très éloignées les unes des autres, chaque paire s'arrosant en interne : tout le monde est mouillé. L'imparité est donc indispensable.

**Pourquoi l'hypothèse « toutes les distances différentes » ?** Sans elle, un élève pourrait avoir deux plus proches voisins à égalité, et l'énoncé ne dirait plus qui il arrose. On peut alors construire des situations où tout le monde est arrosé : par exemple trois élèves aux sommets d'un triangle équilatéral, chacun arrosant son voisin dans le sens des aiguilles d'une montre.

Une question pour continuer : avec $2n+1$ élèves, quel est le nombre **maximal** d'élèves qui peuvent rester secs ?
