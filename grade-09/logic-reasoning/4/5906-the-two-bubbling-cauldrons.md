---
id: "5906"
title: "Les deux marmites qui débordent"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [disjonction-de-cas, somme, partage, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Bubbling Cauldrons (Julia Robinson Mathematics Festival)"
  reference: "Bubbling-Cauldrons-Handout.pdf, règles 1 à 4 (le même jeu figure aussi dans Witches-Cauldrons.pdf)"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/Bubbling-Cauldrons-Handout.pdf"
---

## Statement

Deux marmites, $A$ et $B$, bouillonnent sur le feu.

On y jette les nombres entiers dans l'ordre : d'abord $1$ dans la marmite de son choix, puis $2$ dans la marmite de son choix, puis $3$, puis $4$, et ainsi de suite.

**Attention :** si une marmite contient un jour **deux nombres différents dont la somme se trouve elle aussi dans cette même marmite**, tout explose et la partie est perdue. Par exemple, si $3$ et $5$ sont dans la même marmite que $8$, c'est l'explosion.

Quel est le plus grand nombre que l'on peut jeter dans les marmites avant d'exploser ? Autrement dit, quel est le plus grand entier $n$ tel qu'on puisse répartir $1, 2, \ldots, n$ dans les deux marmites sans explosion ?

## Hints

1. Joue d'abord. Essaie d'aller le plus loin possible ; tu dépasseras vite $5$ ou $6$.
2. Si une marmite contient $1$ et un nombre $x$ (avec $x \geq 2$), que peux-tu dire de $x + 1$ ?
3. Donc, à part peut-être le couple $1$ et $2$, la marmite qui contient le $1$ ne contient jamais deux nombres consécutifs. Cela limite beaucoup les possibilités.
4. Pour montrer qu'on ne peut pas aller jusqu'à $9$, il faut examiner tous les partages possibles. Il y en a trop pour les écrire tous ; mais dès qu'on a choisi où vont $1$ et $2$, beaucoup de nombres n'ont plus qu'une seule place possible.
5. Appelle $A$ la marmite qui contient $1$. Sépare en deux cas selon la marmite de $2$, puis en deux sous-cas selon la marmite de $4$ (cas $1$) ou de $3$ (cas $2$). Dans chacun des quatre cas, place les nombres suivants un par un : ils sont forcés.

## Solution

**Réponse : on peut aller jusqu'à $8$, mais pas jusqu'à $9$.**

### On peut aller jusqu'à 8

Voici un partage qui tient :
$$A = \{1,\ 2,\ 4,\ 8\}, \qquad B = \{3,\ 5,\ 6,\ 7\}.$$

Vérifions toutes les sommes de deux nombres différents.

- Dans $A$ : $1+2 = 3$, $1+4 = 5$, $1+8 = 9$, $2+4 = 6$, $2+8 = 10$, $4+8 = 12$. Aucun de ces résultats n'est dans $A$.
- Dans $B$ : $3+5 = 8$, $3+6 = 9$, $3+7 = 10$, $5+6 = 11$, $5+7 = 12$, $6+7 = 13$. Aucun n'est dans $B$.

Pas d'explosion : les nombres $1$ à $8$ sont bien rangés.

### On ne peut pas aller jusqu'à 9

Supposons qu'on ait réussi à répartir $1, 2, \ldots, 9$ dans les deux marmites sans explosion, et appelons $A$ la marmite qui contient $1$. Nous allons aboutir à une contradiction dans tous les cas.

Une remarque revient sans cesse : si $x$ et $x+1$ sont tous deux dans $A$ avec $x \geq 2$, alors $1 + x = x+1$ fait exploser $A$. La marmite $A$ ne contient donc jamais deux nombres consécutifs supérieurs ou égaux à $2$.

**Cas 1 : $2$ est dans $A$.**

Comme $1 + 2 = 3$, le nombre $3$ n'est pas dans $A$ : il est dans $B$.

- **Cas 1a : $4$ est dans $A$.** Alors $A$ contient $1, 2, 4$.
  - $1 + 4 = 5$, donc $5$ est dans $B$.
  - $2 + 4 = 6$, donc $6$ est dans $B$.
  - $B$ contient maintenant $3, 5, 6$. Comme $3 + 5 = 8$, le nombre $8$ n'est pas dans $B$ : il est dans $A$.
  - $A$ contient $1$ et $8$, et $1 + 7 = 8$, donc $7$ n'est pas dans $A$ : il est dans $B$.
  - Où mettre $9$ ? Dans $A$ : impossible, car $1 + 8 = 9$. Dans $B$ : impossible, car $3 + 6 = 9$. **Contradiction.**

- **Cas 1b : $4$ est dans $B$.** Alors $B$ contient $3$ et $4$.
  - $3 + 4 = 7$, donc $7$ est dans $A$.
  - $A$ contient $2$ et $7$, et $2 + 5 = 7$, donc $5$ est dans $B$.
  - $A$ contient $1$ et $7$, et $1 + 6 = 7$, donc $6$ est dans $B$.
  - Où mettre $8$ ? Dans $A$ : impossible, car $1 + 7 = 8$. Dans $B$ : impossible, car $3 + 5 = 8$. **Contradiction.**

**Cas 2 : $2$ est dans $B$.**

- **Cas 2a : $3$ est dans $A$.** Alors $A$ contient $1$ et $3$.
  - $1 + 3 = 4$, donc $4$ est dans $B$.
  - $B$ contient $2$ et $4$, et $2 + 4 = 6$, donc $6$ est dans $A$.
  - $A$ contient $1$ et $6$, et $1 + 5 = 6$, donc $5$ est dans $B$.
  - Où mettre $7$ ? Dans $A$ : impossible, car $1 + 6 = 7$. Dans $B$ : impossible, car $2 + 5 = 7$. **Contradiction.**

- **Cas 2b : $3$ est dans $B$.** Alors $B$ contient $2$ et $3$.
  - $2 + 3 = 5$, donc $5$ est dans $A$.
  - $A$ contient $1$ et $5$, et $1 + 4 = 5$, donc $4$ est dans $B$.
  - Où mettre $6$ ? Dans $A$ : impossible, car $1 + 5 = 6$. Dans $B$ : impossible, car $2 + 4 = 6$. **Contradiction.**

Les quatre cas sont impossibles, donc on ne peut pas ranger $1, 2, \ldots, 9$.

### Conclusion

Le plus grand nombre que l'on peut jeter dans les deux marmites sans explosion est $\boxed{8}$.

*Remarque.* Il est instructif de voir que le neuvième nombre bloque toujours pour la même raison : arrivé là, chaque marmite contient déjà deux nombres dont la somme vaut $9$, ou bien $8$, ou bien $7$, ou bien $6$. Le blocage arrive tôt ou tard selon le chemin, mais il arrive toujours.

## Going further

1. Et avec **trois** marmites, jusqu'où peut-on aller ? Le record est $23$, mais la démonstration qu'on ne peut pas atteindre $24$ demande beaucoup plus de cas : c'est un vrai travail d'ordinateur.
2. Change la règle : l'explosion a lieu aussi quand un nombre est le double d'un autre nombre de la même marmite, c'est-à-dire qu'on autorise $a = b$ dans « $a + b$ ». Avec deux marmites, jusqu'où va-t-on alors ?
3. Avec une seule marmite, quel est le plus grand $n$ ? (La réponse est très petite.)
4. Trouve tous les partages de $1, \ldots, 8$ en deux marmites qui tiennent. Y en a-t-il beaucoup ?
