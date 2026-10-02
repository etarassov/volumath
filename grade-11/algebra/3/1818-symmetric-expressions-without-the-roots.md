---
id: "1818"
title: "Somme et produit suffisent"
grade: 11
theme: algebra
difficulty: 3
duration_min: 35
tags: [second-degre, somme-et-produit, expressions-symetriques, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic Inequalities"
  reference: "Handout-1632-1520.pdf, devoirs, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1632-1520.pdf"
---

## Statement

On note $x_1$ et $x_2$ les deux racines de l'équation

$$3x^2 + 8x - 1 = 0.$$

**Sans calculer ces racines**, déterminer la valeur exacte de :

1. $x_1^2 + x_2^2$
2. $\dfrac{x_1}{x_2} + \dfrac{x_2}{x_1}$
3. $x_1 x_2^{\,4} + x_2 x_1^{\,4}$
4. $x_1^{\,4} + x_2^{\,4}$

## Hints

1. Commence par vérifier que l'équation a bien deux racines réelles, puis écris leur somme $s = x_1 + x_2$ et leur produit $p = x_1 x_2$.
2. Toutes les expressions demandées sont **symétriques** : elles ne changent pas si l'on échange $x_1$ et $x_2$. Une telle expression s'exprime toujours à l'aide de $s$ et $p$ seuls.
3. Pour la première : développe $(x_1+x_2)^2$ et regarde ce qui apparaît en trop.
4. Pour la deuxième : mets tout sur le même dénominateur. Le numérateur est une expression que tu viens de calculer.
5. Pour la troisième : mets $x_1 x_2$ en facteur. Il reste à calculer $x_1^3 + x_2^3$. Développe $(x_1+x_2)^3$ pour l'obtenir.
6. Pour la quatrième : élève au carré le résultat de la première question, et vois ce qui apparaît en trop.

## Solution

**Somme et produit.**

Le discriminant vaut $\Delta = 8^2 - 4 \times 3 \times (-1) = 64 + 12 = 76 > 0$, donc l'équation a bien deux racines réelles distinctes. De plus

$$s = x_1 + x_2 = -\frac{8}{3}, \qquad p = x_1 x_2 = \frac{-1}{3} = -\frac{1}{3}.$$

Remarquons au passage que $p \neq 0$, donc aucune racine n'est nulle : les quotients de la question 2 ont bien un sens.

### 1. $x_1^2 + x_2^2$

$$(x_1+x_2)^2 = x_1^2 + 2x_1x_2 + x_2^2, \qquad \text{donc} \qquad x_1^2 + x_2^2 = s^2 - 2p.$$

$$x_1^2 + x_2^2 = \left(-\frac{8}{3}\right)^2 - 2 \times \left(-\frac{1}{3}\right) = \frac{64}{9} + \frac{2}{3} = \frac{64}{9} + \frac{6}{9} = \frac{70}{9}.$$

### 2. $\dfrac{x_1}{x_2} + \dfrac{x_2}{x_1}$

Sur le même dénominateur :

$$\frac{x_1}{x_2} + \frac{x_2}{x_1} = \frac{x_1^2 + x_2^2}{x_1 x_2} = \frac{s^2 - 2p}{p}.$$

$$\frac{x_1}{x_2} + \frac{x_2}{x_1} = \frac{\frac{70}{9}}{-\frac{1}{3}} = \frac{70}{9} \times (-3) = -\frac{70}{3}.$$

### 3. $x_1 x_2^{\,4} + x_2 x_1^{\,4}$

On met $x_1 x_2$ en facteur :

$$x_1 x_2^{\,4} + x_2 x_1^{\,4} = x_1 x_2 \left(x_2^{\,3} + x_1^{\,3}\right) = p\left(x_1^3 + x_2^3\right).$$

Il faut donc $x_1^3 + x_2^3$. Développons le cube de la somme :

$$(x_1+x_2)^3 = x_1^3 + 3x_1^2x_2 + 3x_1x_2^2 + x_2^3 = x_1^3 + x_2^3 + 3x_1x_2(x_1+x_2),$$

d'où

$$x_1^3 + x_2^3 = s^3 - 3ps.$$

Numériquement :

$$s^3 = \left(-\frac{8}{3}\right)^3 = -\frac{512}{27}, \qquad 3ps = 3 \times \left(-\frac{1}{3}\right) \times \left(-\frac{8}{3}\right) = \frac{8}{3} = \frac{72}{27},$$

$$x_1^3 + x_2^3 = -\frac{512}{27} - \frac{72}{27} = -\frac{584}{27}.$$

Finalement

$$x_1 x_2^{\,4} + x_2 x_1^{\,4} = p \times \left(-\frac{584}{27}\right) = -\frac{1}{3} \times \left(-\frac{584}{27}\right) = \frac{584}{81}.$$

### 4. $x_1^{\,4} + x_2^{\,4}$

On repart du résultat de la question 1 et on élève au carré :

$$\left(x_1^2 + x_2^2\right)^2 = x_1^4 + 2x_1^2x_2^2 + x_2^4, \qquad \text{donc} \qquad x_1^4 + x_2^4 = \left(x_1^2+x_2^2\right)^2 - 2p^2.$$

$$x_1^4 + x_2^4 = \left(\frac{70}{9}\right)^2 - 2 \times \left(-\frac{1}{3}\right)^2 = \frac{4900}{81} - \frac{2}{9} = \frac{4900}{81} - \frac{18}{81} = \frac{4882}{81}.$$

**Récapitulatif.**

| expression | valeur exacte | valeur approchée |
|---|---|---|
| $x_1^2+x_2^2$ | $\dfrac{70}{9}$ | $\text{7,78}$ |
| $\dfrac{x_1}{x_2}+\dfrac{x_2}{x_1}$ | $-\dfrac{70}{3}$ | $-\text{23,33}$ |
| $x_1x_2^4 + x_2x_1^4$ | $\dfrac{584}{81}$ | $\text{7,21}$ |
| $x_1^4+x_2^4$ | $\dfrac{4882}{81}$ | $\text{60,27}$ |

**Contrôle.** Les racines valent $\dfrac{-8 \pm \sqrt{76}}{6}$, soit environ $\text{0,12}$ et $-\text{2,79}$. On vérifie par exemple $\text{0,12}^2 + \text{2,79}^2 \approx \text{7,8}$, en accord avec $\dfrac{70}{9}$.

## Going further

1. Calcule $\dfrac{1}{x_1} + \dfrac{1}{x_2}$ et $\dfrac{1}{x_1^2} + \dfrac{1}{x_2^2}$ pour la même équation.
2. Trouve l'équation du second degré dont les racines sont $\dfrac{1}{x_1}$ et $\dfrac{1}{x_2}$.
3. Montre que $x_1^n + x_2^n$ vérifie la relation $u_{n+1} = -\dfrac{8}{3}u_n + \dfrac{1}{3}u_{n-1}$, et recalcule ainsi $x_1^4+x_2^4$.
