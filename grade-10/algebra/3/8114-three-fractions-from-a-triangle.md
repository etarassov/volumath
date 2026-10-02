---
id: "8114"
title: "Trois fractions faites avec les côtés d'un triangle"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, inegalite-triangulaire, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Algèbre – Calculs algébriques », exercice 10"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soient $a$, $b$ et $c$ les longueurs des trois côtés d'un triangle. Montrer que

$$\frac{a}{b+c} + \frac{b}{c+a} + \frac{c}{a+b} < 2.$$

## Hints

1. La seule chose que tu sais sur $a$, $b$, $c$, c'est l'inégalité triangulaire. Écris-la sous ses trois formes.
2. Essaie de majorer chaque fraction séparément par quelque chose qui a le même dénominateur pour les trois. Le candidat naturel est $a+b+c$.
3. Pars de $b + c > a$ et ajoute $b+c$ des deux côtés. Que devient l'inégalité ?
4. Une fraction devient plus grande quand on diminue son dénominateur (à numérateur positif fixé).

## Solution

**L'inégalité triangulaire.**

Dans un triangle, chaque côté est strictement plus court que la somme des deux autres :

$$b + c > a, \qquad c + a > b, \qquad a + b > c.$$

De plus $a$, $b$ et $c$ sont strictement positifs.

**Majorer une fraction.**

Partons de $b + c > a$ et ajoutons $b+c$ des deux côtés :

$$2(b+c) > a + b + c.$$

Les deux membres sont strictement positifs, donc en passant aux inverses l'inégalité change de sens :

$$\frac{1}{2(b+c)} < \frac{1}{a+b+c}.$$

Multiplions par $2a > 0$ :

$$\frac{a}{b+c} < \frac{2a}{a+b+c}.$$

**Les deux autres, puis la somme.**

Le même raisonnement, en partant de $c+a > b$ puis de $a+b > c$, donne

$$\frac{b}{c+a} < \frac{2b}{a+b+c} \qquad \text{et} \qquad \frac{c}{a+b} < \frac{2c}{a+b+c}.$$

Additionnons les trois inégalités. À droite, les trois fractions ont le même dénominateur :

$$\frac{a}{b+c} + \frac{b}{c+a} + \frac{c}{a+b} < \frac{2a + 2b + 2c}{a+b+c} = \frac{2(a+b+c)}{a+b+c} = 2.$$

**C'est l'inégalité demandée.**

Remarque : la valeur $2$ ne peut pas être atteinte, mais on peut s'en approcher autant qu'on veut, en prenant par exemple un triangle très aplati de côtés $1$, $1$ et $2 - \varepsilon$ avec $\varepsilon$ petit.
