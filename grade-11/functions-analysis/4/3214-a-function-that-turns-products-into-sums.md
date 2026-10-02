---
id: "3214"
title: "Une fonction qui transforme les produits en sommes"
grade: 11
theme: functions-analysis
difficulty: 4
duration_min: 35
tags: [equation-fonctionnelle, nombres-premiers, decomposition-en-facteurs-premiers, rationnels]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Functions review"
  reference: "Handout-4800-4981.pdf, section 2.2, exercice 15, d'après AMC 12A 2021, problème 18 (réponse dans Handout-4805-4981.pdf, et repris dans Handout-4813-5008.pdf, exercice 11)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4800-4981.pdf"
---

## Statement

Une fonction $f$ est définie sur l'ensemble des nombres rationnels strictement positifs. Elle vérifie les deux propriétés suivantes :

- pour tous rationnels strictement positifs $a$ et $b$, $\quad f(a \times b) = f(a) + f(b)$ ;
- pour tout nombre premier $p$, $\quad f(p) = p$.

1. Montrer que $f(1) = 0$, puis que $f\!\left( \dfrac{1}{n} \right) = -f(n)$ pour tout rationnel $n > 0$.
2. Calculer $f\!\left( \dfrac{17}{32} \right)$, $f\!\left( \dfrac{11}{16} \right)$, $f\!\left( \dfrac{7}{9} \right)$, $f\!\left( \dfrac{7}{6} \right)$ et $f\!\left( \dfrac{25}{11} \right)$.
3. Lequel de ces cinq nombres est strictement négatif ?

## Hints

1. Pour la première question, applique la propriété $f(ab) = f(a)+f(b)$ avec $b = 1$.
2. Puis applique-la à $a = n$ et $b = \frac1n$.
3. La propriété $f(ab) = f(a) + f(b)$ se prolonge à un produit de plusieurs facteurs : $f(abc) = f(a)+f(b)+f(c)$, et ainsi de suite.
4. Décompose chaque entier en facteurs premiers. Par exemple $32 = 2 \times 2 \times 2 \times 2 \times 2$ : que vaut $f(32)$ ?
5. Pour une fraction, sers-toi de $f\!\left( \frac{u}{v} \right) = f(u) - f(v)$.

## Solution

### 1. Deux conséquences immédiates

**Valeur en $1$.** Prenons $a$ quelconque et $b = 1$ :

$$f(a \times 1) = f(a) + f(1), \qquad \text{c'est-à-dire} \qquad f(a) = f(a) + f(1).$$

En retranchant $f(a)$ des deux côtés, $f(1) = 0$.

**Inverse.** Prenons $a = n$ et $b = \dfrac1n$ :

$$f\!\left( n \times \frac1n \right) = f(n) + f\!\left( \frac1n \right), \qquad \text{donc} \qquad 0 = f(1) = f(n) + f\!\left( \frac1n \right),$$

d'où

$$f\!\left( \frac1n \right) = -f(n) .$$

On en déduit, pour tous entiers $u, v \ge 1$,

$$f\!\left( \frac{u}{v} \right) = f(u) + f\!\left( \frac1v \right) = f(u) - f(v) .$$

### 2. La règle générale

La propriété $f(ab) = f(a)+f(b)$ s'étend par récurrence à un produit de plusieurs facteurs. Si

$$n = p_1 \times p_2 \times \cdots \times p_k$$

est la décomposition de $n$ en facteurs premiers, **chaque facteur étant répété autant de fois qu'il apparaît**, alors

$$f(n) = p_1 + p_2 + \cdots + p_k .$$

Autrement dit : **$f(n)$ est la somme des facteurs premiers de $n$, comptés avec leur multiplicité.**

Par exemple $f(12) = f(2 \times 2 \times 3) = 2 + 2 + 3 = 7$.

### 3. Les cinq calculs

- $\dfrac{17}{32}$ : $17$ est premier et $32 = 2^5$, donc
  $$f\!\left( \frac{17}{32} \right) = 17 - 5 \times 2 = 17 - 10 = 7 .$$

- $\dfrac{11}{16}$ : $11$ est premier et $16 = 2^4$, donc
  $$f\!\left( \frac{11}{16} \right) = 11 - 4 \times 2 = 11 - 8 = 3 .$$

- $\dfrac{7}{9}$ : $9 = 3 \times 3$, donc
  $$f\!\left( \frac{7}{9} \right) = 7 - (3+3) = 7 - 6 = 1 .$$

- $\dfrac{7}{6}$ : $6 = 2 \times 3$, donc
  $$f\!\left( \frac{7}{6} \right) = 7 - (2+3) = 7 - 5 = 2 .$$

- $\dfrac{25}{11}$ : $25 = 5 \times 5$ et $11$ est premier, donc
  $$f\!\left( \frac{25}{11} \right) = (5+5) - 11 = 10 - 11 = -1 .$$

**Conclusion.** Le seul de ces cinq nombres dont l'image est strictement négative est

$$\frac{25}{11}, \qquad \text{avec } f\!\left( \frac{25}{11} \right) = -1 .$$

## Going further

1. Combien vaut $f(2026)$ ? (On commencera par décomposer $2026$.)
2. Montrer que si $n$ est un entier $\ge 2$, alors $f(n) \ge 2$. En déduire que $f(n) = 0$ pour un entier $n \ge 1$ n'arrive que pour $n = 1$.
3. Trouver une fraction $\dfrac{u}{v}$ irréductible avec $u > v$ et pourtant $f\!\left( \dfrac{u}{v} \right) < 0$ aussi petite que l'on veut. Est-ce possible ?
4. Cette fonction ressemble beaucoup au logarithme, qui vérifie lui aussi $\ln(ab) = \ln a + \ln b$. Pourtant $f$ n'est pas croissante : le montrer sur deux exemples.
