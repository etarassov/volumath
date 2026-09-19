---
id: "0377"
title: "Combien de triangles pythagoriciens ?"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [pythagore, identites-remarquables, equation-entiere, parite, divisibilite]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (А. А. Аксёнов, А. А. Севастьянов)"
  reference: "AU2.pdf, листок 6 «Пифагоровы треугольники», задача 8"
  url: "https://mmmf.msu.ru/for_schools/AU2.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

On appelle **triangle pythagoricien** un triangle rectangle dont les trois côtés ont des longueurs entières.

Combien existe-t-il de triangles pythagoriciens dont l'un des côtés de l'angle droit mesure :

1. $7$ ;
2. $15$ ;
3. $1$ ;
4. $4$ ;
5. $6$ ?

## Hints

1. Note $a$ la longueur donnée, $x$ celle de l'autre côté de l'angle droit et $y$ celle de l'hypoténuse. Écris le théorème de Pythagore, puis isole $y^2 - x^2$.
2. $y^2 - x^2$ est une identité remarquable : factorise-la. Tu obtiens un produit de deux entiers dont la valeur est connue, donc un nombre fini de possibilités à essayer.
3. Une fois $y - x$ et $y + x$ choisis, comment retrouves-tu $x$ et $y$ ? Il faut que ces deux nombres soient bien des entiers.
4. La somme $(y-x) + (y+x)$ vaut $2y$ : elle est paire. Que peut-on en déduire sur la parité des deux facteurs ?

## Solution

**L'idée : transformer le problème en une équation entre entiers.**

Notons $a$ la longueur imposée à l'un des côtés de l'angle droit, $x$ la longueur de l'autre côté de l'angle droit et $y$ celle de l'hypoténuse. Ce sont des entiers avec $x \ge 1$ et $y > x$.

Le théorème de Pythagore donne $x^2 + a^2 = y^2$, c'est-à-dire

$$y^2 - x^2 = a^2 .$$

On reconnaît l'identité remarquable $y^2 - x^2 = (y-x)(y+x)$, d'où

$$(y - x)(y + x) = a^2 .$$

Posons $d = y - x$ et $s = y + x$. Alors $d \times s = a^2$, et comme $x \ge 1$ on a $d < s$. Inversement, à partir de $d$ et de $s$ on retrouve

$$y = \frac{d+s}{2}, \qquad x = \frac{s-d}{2}.$$

Pour que $x$ et $y$ soient entiers, il faut que $d$ et $s$ **aient la même parité** : tous les deux pairs, ou tous les deux impairs.

**La méthode est donc toujours la même :** écrire toutes les façons de décomposer $a^2$ en un produit $d \times s$ avec $d < s$, garder celles où $d$ et $s$ ont la même parité, et calculer $x$ et $y$.

**1. $a = 7$, donc $a^2 = 49$.**

Les décompositions avec $d < s$ sont : $49 = 1 \times 49$. (La décomposition $49 = 7 \times 7$ donne $d = s$, donc $x = 0$ : ce n'est pas un triangle.)

- $d = 1$, $s = 49$ : les deux sont impairs, donc $y = 25$ et $x = 24$.

On trouve **un seul triangle** : $7$, $24$, $25$.

**2. $a = 15$, donc $a^2 = 225$.**

Les décompositions avec $d < s$ sont $1 \times 225$, $3 \times 75$, $5 \times 45$, $9 \times 25$. Comme $225$ est impair, tous ses diviseurs sont impairs : la condition de parité est toujours remplie.

- $d = 1$, $s = 225$ : $y = 113$, $x = 112$ ;
- $d = 3$, $s = 75$ : $y = 39$, $x = 36$ ;
- $d = 5$, $s = 45$ : $y = 25$, $x = 20$ ;
- $d = 9$, $s = 25$ : $y = 17$, $x = 8$.

On trouve **quatre triangles** : $(15, 112, 113)$, $(15, 36, 39)$, $(15, 20, 25)$ et $(8, 15, 17)$.

**3. $a = 1$, donc $a^2 = 1$.**

La seule décomposition est $1 \times 1$, et elle donne $d = s$, donc $x = 0$. **Aucun triangle.**

**4. $a = 4$, donc $a^2 = 16$.**

Décompositions avec $d < s$ : $1 \times 16$ et $2 \times 8$.

- $d = 1$, $s = 16$ : l'un est impair, l'autre pair, donc $x$ et $y$ ne seraient pas entiers. À rejeter.
- $d = 2$, $s = 8$ : les deux sont pairs, donc $y = 5$ et $x = 3$.

On trouve **un seul triangle** : $3$, $4$, $5$.

**5. $a = 6$, donc $a^2 = 36$.**

Décompositions avec $d < s$ : $1 \times 36$, $2 \times 18$, $3 \times 12$, $4 \times 9$.

- $1 \times 36$, $3 \times 12$ et $4 \times 9$ mélangent un nombre pair et un nombre impair : à rejeter.
- $d = 2$, $s = 18$ : les deux sont pairs, donc $y = 10$ et $x = 8$.

On trouve **un seul triangle** : $6$, $8$, $10$.

**Conclusion.** Il y a $1$ triangle pour la longueur $7$, $4$ triangles pour $15$, aucun pour $1$, $1$ pour $4$ et $1$ pour $6$.

## Going further

1. Montrer que pour tout nombre impair $n \ge 3$ il existe un triangle pythagoricien dont l'un des côtés de l'angle droit mesure $n$. (On pourra prendre $d = 1$ et $s = n^2$.)
2. Montrer de même que cela reste vrai pour tout nombre pair $n \ge 4$.
3. Quelles sont finalement les seules longueurs qu'un côté de l'angle droit d'un triangle pythagoricien ne peut jamais prendre ?
