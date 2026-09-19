---
id: "1616"
title: "Un produit plus grand que la somme"
grade: 11
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, somme-et-produit, identites-remarquables]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1A, Mean Inequalities"
  reference: "Handout-2330-2069.pdf, problème 4"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2330-2069.pdf"
---

## Statement

Soient $x$ et $y$ deux nombres réels positifs ou nuls dont le produit est strictement plus
grand que la somme :
$$xy > x + y .$$

Montrer qu'alors
$$x + y > 4 .$$

## Hints

1. Essaie des exemples. Avec $x = y = 2$, le produit et la somme valent tous les deux $4$ : on est juste à la limite. Avec $x = y = 3$ ? Avec $x = 1$ et $y$ très grand ?
2. Note $s = x+y$ et $p = xy$. L'hypothèse s'écrit $p > s$, et la conclusion $s > 4$. Il te manque une relation générale entre $s$ et $p$.
3. Cette relation vient de $(x - y)^2 \ge 0$. Développe et fais apparaître $s$ et $p$.
4. Tu obtiens $p \le \dfrac{s^2}{4}$. Combine avec $p > s$ et n'oublie pas de justifier que $s > 0$ avant de diviser par $s$.

## Solution

**L'idée : pour une somme $s$ fixée, le produit de deux nombres positifs ne peut pas dépasser
$\frac{s^2}{4}$. Si le produit doit battre la somme, la somme est forcée d'être grande.**

Posons $s = x + y$ et $p = xy$. L'hypothèse est $p > s$ et il s'agit de montrer $s > 4$.

**Étape 1. Le produit est majoré par $\dfrac{s^2}{4}$.**

Pour tous réels $x$ et $y$,
$$(x-y)^2 \ge 0 \quad\Longleftrightarrow\quad x^2 - 2xy + y^2 \ge 0 .$$

Ajoutons $4xy$ aux deux membres :
$$x^2 + 2xy + y^2 \ge 4xy, \qquad\text{c'est-à-dire}\qquad (x+y)^2 \ge 4xy ,$$
soit
$$s^2 \ge 4p, \qquad\text{donc}\qquad p \le \frac{s^2}{4} . \qquad (\star)$$

**Étape 2. La somme est strictement positive.**

Comme $x \ge 0$ et $y \ge 0$, on a $s \ge 0$ et $p \ge 0$. Si $s$ était nul, alors $x = y = 0$,
donc $p = 0$, et l'hypothèse $p > s$ donnerait $0 > 0$ : impossible.

Donc $s > 0$.

**Étape 3. Conclure.**

En combinant l'hypothèse $p > s$ avec $(\star)$ :
$$s < p \le \frac{s^2}{4}, \qquad\text{donc}\qquad s < \frac{s^2}{4} .$$

Comme $s > 0$, on peut diviser les deux membres par $s$ sans changer le sens de l'inégalité :
$$1 < \frac{s}{4}, \qquad\text{c'est-à-dire}\qquad s > 4 .$$

**Conclusion : $x + y > 4$.**

**La borne $4$ ne peut pas être améliorée.** Avec $x = y = 2$, le produit et la somme valent
tous deux $4$ : l'hypothèse n'est pas vérifiée (il faudrait une inégalité stricte), mais on
peut s'en approcher autant qu'on veut. Par exemple $x = y = \text{2,01}$ donne $p = \text{4,0401}$ et
$s = \text{4,02}$ : le produit dépasse bien la somme, et la somme dépasse bien $4$, de très peu.

## Going further

L'inégalité $(\star)$ est l'inégalité entre moyenne géométrique et moyenne arithmétique
$$\sqrt{xy} \le \frac{x+y}{2}$$
écrite sans racine carrée. Elle dit qu'à somme fixée, le produit est maximal lorsque les deux
nombres sont égaux : c'est aussi pourquoi, à périmètre fixé, le rectangle d'aire maximale est
le carré.
