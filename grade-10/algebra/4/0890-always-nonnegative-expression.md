---
id: "0890"
title: "Une expression toujours positive"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, somme de carres, forme canonique, cas d egalite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 12, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$a$, $b$ et $c$ sont trois nombres réels. Montrer que

$$2a^2 + 20b^2 + 5c^2 + 8ab - 4bc - 4ac \geqslant 0,$$

et trouver le cas d'égalité.

## Hints

1. Une expression qui reste positive quels que soient les nombres, c'est presque toujours une somme de carrés déguisée. Cherche à l'écrire comme telle.
2. Il n'y a qu'un seul terme en $ab$, avec le coefficient $+8$. Quel carré fabrique du $+8ab$ ? Essaie $(a+4b)^2$ et retranche-le.
3. Il reste $a^2 + 4b^2 + 5c^2 - 4bc - 4ac$. Le terme $-4ac$ fait penser à $(a-2c)^2$. Retranche-le à son tour.
4. Il ne devrait plus rester que $4b^2 - 4bc + c^2$. Une dernière identité remarquable, et c'est fini. Pour le cas d'égalité, il faudra que les trois carrés s'annulent en même temps.

## Solution

**L'idée : écrire l'expression comme une somme de trois carrés.**

Notons $E = 2a^2 + 20b^2 + 5c^2 + 8ab - 4bc - 4ac$. Alors

$$\boxed{\,E = (a+4b)^2 + (a-2c)^2 + (2b-c)^2\,}$$

**Vérifions en développant** le membre de droite :

$$(a+4b)^2 = a^2 + 8ab + 16b^2,$$
$$(a-2c)^2 = a^2 - 4ac + 4c^2,$$
$$(2b-c)^2 = 4b^2 - 4bc + c^2.$$

En additionnant :

- les $a^2$ : $a^2 + a^2 = 2a^2$ ;
- les $b^2$ : $16b^2 + 4b^2 = 20b^2$ ;
- les $c^2$ : $4c^2 + c^2 = 5c^2$ ;
- les termes croisés : $8ab$, $-4ac$ et $-4bc$.

On retrouve exactement $E$.

**L'inégalité.** $E$ est une somme de trois carrés, donc $E \geqslant 0$ pour tous réels $a$, $b$, $c$.

**Le cas d'égalité.** On a $E = 0$ si et seulement si les trois carrés sont nuls en même temps :

$$a + 4b = 0, \qquad a - 2c = 0, \qquad 2b - c = 0.$$

La troisième égalité donne $c = 2b$. La deuxième donne alors $a = 2c = 4b$. En reportant dans la première : $4b + 4b = 0$, donc $8b = 0$, donc $b = 0$, puis $c = 0$ et $a = 0$.

**Conclusion : $E \geqslant 0$ pour tous réels $a$, $b$, $c$, et $E = 0$ uniquement pour $a = b = c = 0$.**

### Comment trouve-t-on cette décomposition ?

On ne la devine pas, on la construit, en regroupant les termes autour d'une lettre à la fois (c'est la méthode de la forme canonique). Regroupons tout ce qui contient $a$ :

$$2a^2 + 8ab - 4ac = 2\left(a^2 + 4ab - 2ac\right) = 2\left(a + 2b - c\right)^2 - 2(2b-c)^2.$$

Il reste alors

$$E = 2(a+2b-c)^2 - 2(2b-c)^2 + 20b^2 + 5c^2 - 4bc = 2(a+2b-c)^2 + 12b^2 + 4bc + 3c^2.$$

On recommence avec $b$ :

$$12b^2 + 4bc = 12\left(b + \frac{c}{6}\right)^2 - \frac{c^2}{3},$$

d'où

$$E = 2(a+2b-c)^2 + 12\left(b+\frac{c}{6}\right)^2 + \frac{8}{3}c^2.$$

C'est déjà une somme de trois carrés (à coefficients positifs), donc l'inégalité est démontrée, et l'égalité impose $c = 0$, puis $b = 0$, puis $a = 0$ : la même conclusion. La décomposition encadrée plus haut est simplement une version plus jolie, sans fractions.
