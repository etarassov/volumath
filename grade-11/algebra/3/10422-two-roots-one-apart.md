---
id: "10422"
title: "Deux racines d'écart 1"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [polynome, second-degre, discriminant, factorisation, parametre]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 4 (algèbre)"
  reference: "2017-10_ofm-2014-2015-envoi-4.pdf, Exercices du groupe B, exercice 4 ; corrigé 2017-10_ofm-2014-2015-envoi-4-solutions.pdf (le corrigé ne vérifie la réciproque que pour t = 0 et t = 10/9 ; elle est faite ici aussi pour t = 6/5, et le dernier cas passe par l'écart des racines √Δ)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-4.pdf"
---

## Statement

Déterminer tous les réels $t$ pour lesquels le polynôme

$$P(x) = x^3 + 3t\,x^2 + (4t - 1)\,x + t$$

possède deux racines réelles dont la différence est égale à $1$.

## Hints

1. Cherche une racine de $P$ qui ne dépend pas de $t$. Essaie de petites valeurs entières.
2. Tu dois trouver $P(-1) = 0$. Factorise $P(x)$ par $x + 1$.
3. Les deux racines cherchées sont soit $-1$ et une racine du facteur de degré $2$, soit deux racines de ce facteur. Dans le second cas, exprime l'écart entre les deux racines d'un trinôme $x^2 + px + q$ à l'aide de son discriminant.

## Solution

**Étape 1 : une racine fixe.** Pour tout réel $t$,

$$P(-1) = -1 + 3t - (4t - 1) + t = 0 .$$

Donc $-1$ est toujours une racine de $P$, et $P(x)$ se factorise par $x + 1$. On vérifie en développant que

$$P(x) = (x + 1)\,Q(x), \qquad \text{où} \qquad Q(x) = x^2 + (3t - 1)\,x + t .$$

Les racines de $P$ sont donc $-1$ et les racines de $Q$.

**Étape 2 : les cas possibles.** Soit $t$ un réel pour lequel $P$ a deux racines réelles $r < s$ avec $s - r = 1$. Il y a trois cas.

- *Si $r = -1$.* Alors $s = 0$ est racine de $P$, donc $P(0) = t = 0$.
- *Si $s = -1$.* Alors $r = -2$ est racine de $P$. Or $P(-2) = -8 + 12t - 8t + 2 + t = 5t - 6$, donc $t = \frac{6}{5}$.
- *Si ni $r$ ni $s$ ne vaut $-1$.* Alors $r$ et $s$ sont les deux racines distinctes de $Q$. Le discriminant de $Q$ est
  $$\Delta = (3t - 1)^2 - 4t = 9t^2 - 10t + 1 ,$$
  et ses racines sont $\frac{-(3t - 1) - \sqrt{\Delta}}{2}$ et $\frac{-(3t - 1) + \sqrt{\Delta}}{2}$, dont la différence est $\sqrt{\Delta}$. La condition $s - r = 1$ s'écrit donc $\sqrt{\Delta} = 1$, soit $\Delta = 1$, c'est-à-dire $9t^2 - 10t = 0$, ou encore $t(9t - 10) = 0$. Donc $t = 0$ ou $t = \frac{10}{9}$.

Dans tous les cas, $t$ est l'un des trois nombres $0$, $\frac{6}{5}$, $\frac{10}{9}$.

**Étape 3 : réciproque.** Vérifions que ces trois valeurs conviennent.

- Pour $t = 0$ : $Q(x) = x^2 - x = x(x - 1)$, donc les racines de $P$ sont $-1$, $0$ et $1$. Par exemple $0 - (-1) = 1$.
- Pour $t = \frac{6}{5}$ : $Q(x) = x^2 + \frac{13}{5}x + \frac{6}{5} = (x + 2)\left(x + \frac{3}{5}\right)$, donc les racines de $P$ sont $-2$, $-1$ et $-\frac{3}{5}$. Et $-1 - (-2) = 1$.
- Pour $t = \frac{10}{9}$ : $Q(x) = x^2 + \frac{7}{3}x + \frac{10}{9} = \left(x + \frac{5}{3}\right)\left(x + \frac{2}{3}\right)$, donc les racines de $P$ sont $-\frac{5}{3}$, $-1$ et $-\frac{2}{3}$. Et $-\frac{2}{3} - \left(-\frac{5}{3}\right) = 1$.

**Conclusion.** Les réels cherchés sont $t = 0$, $t = \frac{6}{5}$ et $t = \frac{10}{9}$.

## Going further

1. Pour quelles valeurs de $t$ le polynôme $P$ a-t-il une racine double ? une racine triple ?
2. Reprendre l'exercice avec deux racines dont la différence est égale à $2$. On doit trouver quatre valeurs de $t$, dont deux irrationnelles.
