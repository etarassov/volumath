---
id: "8104"
title: "Deux entiers fabriqués avec a et son inverse"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [fractions, diviseurs, parite, equation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, Coupe Animath de printemps 2018"
  reference: "stage_ete_2018.pdf, chapitre II « Coupe Animath de printemps 2018 », énoncés destinés à tous les élèves, exercice 4"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Trouver tous les nombres réels $a$ tels que les deux nombres

$$a + \frac{2}{3} \qquad \text{et} \qquad \frac{1}{a} - \frac{3}{4}$$

soient des entiers.

## Hints

1. Donne un nom à ces deux entiers, par exemple $m$ et $n$, et exprime $a$ puis $\dfrac{1}{a}$ en fonction de $m$ et $n$.
2. Débarrasse-toi des dénominateurs : écris $3a$ d'un côté et $\dfrac{4}{a}$ de l'autre.
3. Que se passe-t-il si tu multiplies ces deux quantités ? Le $a$ disparaît.
4. Tu obtiens $12 = (3m-2)(4n+3)$. Remarque que $4n+3$ est impair : quels diviseurs impairs a le nombre $12$ ?

## Solution

D'abord, $a \neq 0$, sinon $\dfrac{1}{a}$ n'aurait pas de sens.

**Mise en équation.**

Appelons $m$ et $n$ les deux entiers de l'énoncé :

$$a + \frac{2}{3} = m \qquad \text{et} \qquad \frac{1}{a} - \frac{3}{4} = n.$$

De la première égalité on tire $a = m - \dfrac{2}{3}$, donc

$$3a = 3m - 2.$$

De la seconde on tire $\dfrac{1}{a} = n + \dfrac{3}{4}$, donc

$$\frac{4}{a} = 4n + 3.$$

**L'astuce : multiplier.**

Multiplions membre à membre ces deux égalités. À gauche, le $a$ se simplifie :

$$3a \times \frac{4}{a} = 12.$$

À droite on obtient $(3m-2)(4n+3)$. Donc

$$12 = (3m - 2)(4n + 3).$$

Voilà une équation entre entiers : $4n+3$ est un diviseur de $12$.

**Les diviseurs possibles.**

Le nombre $4n+3$ est impair, car $4n$ est pair. Les diviseurs impairs de $12$ (positifs ou négatifs) sont

$$-3, \quad -1, \quad 1, \quad 3.$$

Examinons les quatre cas.

- $4n + 3 = -3$ donne $4n = -6$, impossible pour un entier $n$.
- $4n + 3 = -1$ donne $n = -1$, et alors $3m - 2 = \dfrac{12}{-1} = -12$, donc $3m = -10$, impossible.
- $4n + 3 = 1$ donne $4n = -2$, impossible.
- $4n + 3 = 3$ donne $n = 0$, et alors $3m - 2 = \dfrac{12}{3} = 4$, donc $3m = 6$ et $m = 2$.

Seul le dernier cas survit, et il donne

$$a = m - \frac{2}{3} = 2 - \frac{2}{3} = \frac{4}{3}.$$

**Vérification.**

Avec $a = \dfrac{4}{3}$ :

$$a + \frac{2}{3} = \frac{4}{3} + \frac{2}{3} = 2, \qquad \frac{1}{a} - \frac{3}{4} = \frac{3}{4} - \frac{3}{4} = 0.$$

Ce sont bien deux entiers.

**Le seul nombre réel qui convient est $a = \dfrac{4}{3}$.**
