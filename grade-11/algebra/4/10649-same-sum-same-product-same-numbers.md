---
id: "10649"
title: "Même somme, même produit, mêmes nombres"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [polynome, racines, signe-d-un-produit, developpement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Seniors, exercice 14 ; corrigé 2023-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Soient $a$, $b$, $c$, $x$, $y$, $z$ des réels strictement positifs tels que

$$a + b + c = x + y + z \qquad \text{et} \qquad abc = xyz$$

On suppose de plus que $a < b < c$ et que $a \leqslant x < y < z \leqslant c$. Montrer que $a = x$, $b = y$ et $c = z$.

## Hints

1. Une somme et un produit de trois nombres : à quoi cela te fait-il penser ? Développe $(t - a)(t - b)(t - c)$ pour un réel $t$.
2. Pose $P(t) = (t - a)(t - b)(t - c)$ et $Q(t) = (t - x)(t - y)(t - z)$. Que reste-t-il dans $P(t) - Q(t)$ quand on utilise les hypothèses ?
3. Calcule $P(t) - Q(t)$ pour $t = a$, puis pour $t = c$. Quel est le signe de $Q(a)$ ? de $Q(c)$ ?

## Solution

**Étape 1. Deux fonctions polynômes.**

Pour tout réel $t$, posons $P(t) = (t - a)(t - b)(t - c)$ et $Q(t) = (t - x)(t - y)(t - z)$. En développant,

$$P(t) = t^3 - (a + b + c)\,t^2 + (ab + bc + ca)\,t - abc$$

$$Q(t) = t^3 - (x + y + z)\,t^2 + (xy + yz + zx)\,t - xyz$$

Par hypothèse, les termes en $t^2$ et les termes constants sont les mêmes. Il reste, en posant $\alpha = (ab + bc + ca) - (xy + yz + zx)$,

$$P(t) - Q(t) = \alpha\,t \qquad \text{pour tout réel } t$$

Il s'agit de montrer que $\alpha = 0$.

**Étape 2. En $t = a$ : $\alpha \geqslant 0$.**

Comme $P(a) = 0$, on a $\alpha a = -Q(a) = -(a - x)(a - y)(a - z)$. Or $a \leqslant x$, $a < y$ et $a < z$ : les trois facteurs sont négatifs ou nuls, donc leur produit est négatif ou nul. Ainsi $\alpha a \geqslant 0$, et comme $a > 0$, on obtient $\alpha \geqslant 0$.

**Étape 3. En $t = c$ : $\alpha \leqslant 0$.**

Comme $P(c) = 0$, on a $\alpha c = -Q(c) = -(c - x)(c - y)(c - z)$. Or $c > x$, $c > y$ et $c \geqslant z$ : les trois facteurs sont positifs ou nuls, donc $Q(c) \geqslant 0$. Ainsi $\alpha c \leqslant 0$, et comme $c > 0$, on obtient $\alpha \leqslant 0$.

**Étape 4. Conclusion.**

On a donc $\alpha = 0$, c'est-à-dire $P(t) = Q(t)$ pour tout réel $t$. En particulier $Q(a) = P(a) = 0$, donc $a$ est l'un des nombres $x$, $y$, $z$. De même pour $b$ et pour $c$. Comme $a$, $b$, $c$ sont trois nombres distincts, ce sont exactement les trois nombres $x$, $y$, $z$, dans un certain ordre. Les deux listes sont rangées dans l'ordre croissant, donc elles coïncident terme à terme.

**Conclusion : $a = x$, $b = y$ et $c = z$.**
