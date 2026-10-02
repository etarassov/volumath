---
id: "10603"
title: "Quand ab + bc + ca = abc"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, changement-de-variable, moyenne-arithmetique-geometrique, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, Exercices Juniors, exercice 7 ; corrigé 2020-01_corrige-commente-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois réels strictement positifs tels que $ab + bc + ca = abc$. Montrer que

$$\frac{1}{a^2 + b^2} + \frac{1}{b^2 + c^2} + \frac{1}{c^2 + a^2} \leqslant \frac{1}{6}$$

et trouver tous les cas d'égalité.

## Hints

1. Divise la condition par $abc$. Elle devient bien plus simple si on pose $u = \frac{1}{a}$, $v = \frac{1}{b}$ et $w = \frac{1}{c}$.
2. Écris chaque fraction de l'énoncé avec $u$, $v$ et $w$.
3. Pour majorer une fraction, on peut minorer son dénominateur. Que sais-tu de $u^2 + v^2$ comparé à $2uv$ ?
4. Il reste à montrer que $uv + vw + wu \leqslant \frac{1}{3}$ quand $u + v + w = 1$. Développe $(u + v + w)^2$.

## Solution

**Étape 1. Changer de variables.**

Divisons la condition $ab + bc + ca = abc$ par $abc$, qui n'est pas nul : on obtient $\frac{1}{c} + \frac{1}{a} + \frac{1}{b} = 1$. Posons

$$u = \frac{1}{a}, \qquad v = \frac{1}{b}, \qquad w = \frac{1}{c}$$

Ce sont trois réels strictement positifs, et la condition devient $u + v + w = 1$.

La première fraction de l'énoncé devient

$$\frac{1}{a^2 + b^2} = \frac{1}{\frac{1}{u^2} + \frac{1}{v^2}} = \frac{1}{\frac{u^2 + v^2}{u^2 v^2}} = \frac{u^2 v^2}{u^2 + v^2}$$

et de même pour les deux autres.

**Étape 2. Majorer chaque fraction.**

Pour tous réels $u$ et $v$, $(u - v)^2 \geqslant 0$, ce qui donne $u^2 + v^2 \geqslant 2uv$. Quand on remplace le dénominateur d'une fraction positive par un nombre plus petit (mais encore positif), la fraction grandit. Donc

$$\frac{u^2 v^2}{u^2 + v^2} \leqslant \frac{u^2 v^2}{2uv} = \frac{uv}{2}$$

avec égalité seulement si $u = v$. En faisant de même pour les deux autres fractions et en additionnant :

$$\frac{1}{a^2 + b^2} + \frac{1}{b^2 + c^2} + \frac{1}{c^2 + a^2} \leqslant \frac{uv + vw + wu}{2}$$

**Étape 3. Majorer $uv + vw + wu$.**

En développant,

$$1 = (u + v + w)^2 = u^2 + v^2 + w^2 + 2(uv + vw + wu)$$

On additionne les trois inégalités $u^2 + v^2 \geqslant 2uv$, $v^2 + w^2 \geqslant 2vw$ et $w^2 + u^2 \geqslant 2wu$, puis on divise par $2$ : $u^2 + v^2 + w^2 \geqslant uv + vw + wu$. Donc

$$1 \geqslant (uv + vw + wu) + 2(uv + vw + wu) = 3(uv + vw + wu)$$

c'est-à-dire $uv + vw + wu \leqslant \frac{1}{3}$.

**Étape 4. Conclure.**

En mettant ensemble les étapes 2 et 3 :

$$\frac{1}{a^2 + b^2} + \frac{1}{b^2 + c^2} + \frac{1}{c^2 + a^2} \leqslant \frac{1}{2} \times \frac{1}{3} = \frac{1}{6}$$

**Étape 5. Les cas d'égalité.**

Pour avoir égalité, il faut égalité à l'étape 2, donc $u = v$, $v = w$ et $w = u$. Avec $u + v + w = 1$, cela donne $u = v = w = \frac{1}{3}$, donc $a = b = c = 3$.

Réciproquement, si $a = b = c = 3$, on a $ab + bc + ca = 27 = abc$, et la somme vaut $3 \times \frac{1}{18} = \frac{1}{6}$. Il y a bien égalité.

**Conclusion : l'inégalité est vraie, et il y a égalité si et seulement si $a = b = c = 3$.**
