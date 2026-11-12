---
id: "22040"
title: "1/x − 1/y = 1/p"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, fractions-egyptiennes, factorisation, diviseurs, equation-diophantienne]
adapted_from: null
see_also: ["7856"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Nombres premiers » (Xavier), exercice 7 (la solution est imprimée sous le titre « Solution de l'exercice 4 »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les entiers $x \geq 1$ et $y \geq 1$ et tous les nombres premiers $p$ tels que

$$\frac{1}{x} - \frac{1}{y} = \frac{1}{p}.$$

## Hints

1. Comparez $\frac{1}{x}$ et $\frac{1}{p}$. Qu'en déduisez-vous pour $x$ et $p$ ?
2. Multipliez les deux membres par $pxy$ pour faire disparaître les fractions.
3. Développez $(p - x)(p + y)$ et comparez avec ce que vous avez obtenu.
4. Quels sont les diviseurs positifs de $p^2$ quand $p$ est premier ?

## Solution

**Étape 1 : $x$ est plus petit que $p$.** On a $\frac{1}{x} = \frac{1}{p} + \frac{1}{y}$ et $\frac{1}{y} > 0$, donc $\frac{1}{x} > \frac{1}{p}$, c'est-à-dire $x < p$.

**Étape 2 : sans fractions.** En multipliant l'équation par $pxy$, qui n'est pas nul, on obtient

$$py - px = xy.$$

**Étape 3 : une factorisation.** Développons :

$$(p - x)(p + y) = p^2 + py - px - xy.$$

D'après l'étape 2, $py - px - xy = 0$. Donc

$$(p - x)(p + y) = p^2.$$

**Étape 4 : les diviseurs de $p^2$.** Comme $p$ est premier, la décomposition de $p^2$ en facteurs premiers est $p \times p$. Ses diviseurs positifs sont donc $1$, $p$ et $p^2$.

D'après l'étape 1, $p - x \geq 1$, et bien sûr $p + y \geq 1$. Ce sont deux diviseurs positifs de $p^2$ dont le produit vaut $p^2$. Or $p + y \geq p + 1 > p$, donc $p + y$ ne peut valoir ni $1$ ni $p$ : on a $p + y = p^2$. Alors $p - x = \frac{p^2}{p^2} = 1$.

Ainsi $x = p - 1$ et $y = p^2 - p = p(p - 1)$.

**Étape 5 : on vérifie.** Pour tout nombre premier $p$, on a $x = p - 1 \geq 1$, et

$$\frac{1}{p - 1} - \frac{1}{p(p - 1)} = \frac{p}{p(p - 1)} - \frac{1}{p(p - 1)} = \frac{p - 1}{p(p - 1)} = \frac{1}{p}.$$

Par exemple, pour $p = 5$ : $\frac{1}{4} - \frac{1}{20} = \frac{5}{20} - \frac{1}{20} = \frac{4}{20} = \frac{1}{5}$.

**Conclusion.** Pour chaque nombre premier $p$, il y a exactement une solution : $x = p - 1$ et $y = p(p - 1)$.

## Going further

1. On remplace $p$ par $6$, qui n'est pas premier. Trouver toutes les solutions de $\frac{1}{x} - \frac{1}{y} = \frac{1}{6}$ en entiers $x \geq 1$, $y \geq 1$.
2. Pour un entier $n \geq 2$ quelconque, montrer que le nombre de solutions de $\frac{1}{x} - \frac{1}{y} = \frac{1}{n}$ est égal au nombre de diviseurs de $n^2$ strictement plus petits que $n$.
