---
id: "13279"
title: "Le carré de la partie fractionnaire"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [partie-entiere, partie-fractionnaire, denombrement, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices lycéens, exercice 13 ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

Pour tout réel $x$, on note $\lfloor x \rfloor$ le plus grand entier inférieur ou égal à $x$ (sa partie entière), et $\langle x \rangle = x - \lfloor x \rfloor$ sa partie fractionnaire. Par exemple, $\lfloor 7/2 \rfloor = 3$ et $\langle 7/2 \rangle = 1/2$.

Combien y a-t-il de réels $x$ tels que

$$1 \leqslant x \leqslant 10 \qquad \text{et} \qquad \langle x \rangle^2 = \langle x^2 \rangle \ ?$$

## Hints

1. Les entiers sont-ils solutions ? Cherche ensuite une solution qui n'est pas entière entre $1$ et $2$.
2. Écris $x = k + f$, avec $k = \lfloor x \rfloor$ entier et $f = \langle x \rangle$ compris entre $0$ (inclus) et $1$ (exclu). Développe $x^2$.
3. Si $x$ est solution, alors $x^2 - f^2$ est un entier. Qu'en déduis-tu pour le nombre $2kf$ ?

## Solution

Notons $k = \lfloor x \rfloor$ et $f = \langle x \rangle$. Alors $x = k + f$, où $k$ est un entier et $0 \leqslant f < 1$. Comme $1 \leqslant x \leqslant 10$, on a $1 \leqslant k \leqslant 10$. Développons :

$$x^2 = k^2 + 2kf + f^2.$$

**Si $x$ est solution.** Par définition, $x^2 - \langle x^2 \rangle = \lfloor x^2 \rfloor$ est un entier. Comme $\langle x^2 \rangle = f^2$, le nombre $x^2 - f^2 = k^2 + 2kf$ est un entier, donc $r = 2kf$ est un entier. Comme $0 \leqslant f < 1$, on a $0 \leqslant r < 2k$. Ainsi

$$x = k + \frac{r}{2k} \qquad \text{avec } r \text{ entier},\ 0 \leqslant r \leqslant 2k - 1.$$

**Réciproquement.** Soit $x = k + \dfrac{r}{2k}$ avec $k \geqslant 1$ et $r$ entiers, $0 \leqslant r \leqslant 2k - 1$. Alors $f = \dfrac{r}{2k}$ est entre $0$ et $1$ (exclu), donc $\lfloor x \rfloor = k$ et $\langle x \rangle = f$. De plus

$$x^2 = (k^2 + r) + f^2,$$

où $k^2 + r$ est un entier et $0 \leqslant f^2 < 1$. Donc $\lfloor x^2 \rfloor = k^2 + r$ et $\langle x^2 \rangle = f^2 = \langle x \rangle^2$ : $x$ est solution.

Les solutions sont donc exactement les nombres $k + \dfrac{r}{2k}$ ainsi décrits. Deux couples $(k, r)$ différents donnent deux nombres différents, car $x$ détermine $k = \lfloor x \rfloor$ puis $r = 2k \langle x \rangle$. Par exemple, pour $k = 1$, on trouve $x = 1$ et $x = 3/2$ : en effet $(3/2)^2 = 9/4 = 2 + 1/4$ et $(1/2)^2 = 1/4$.

**Le comptage.** Pour $k$ entre $1$ et $9$, les $2k$ solutions $k + \dfrac{r}{2k}$ sont entre $k$ et $k + 1$, donc entre $1$ et $10$. Pour $k = 10$, seule $r = 0$ donne un nombre au plus égal à $10$ : c'est $x = 10$. Le nombre de solutions est donc

$$2 \times (1 + 2 + \cdots + 9) + 1 = 2 \times 45 + 1 = 91.$$

**Conclusion.** Il y a $91$ réels $x$ qui conviennent.

Une erreur fréquente : croire que $\lfloor x^2 \rfloor = \lfloor x \rfloor^2$. C'est faux, par exemple pour $x = 3/2$, où $\lfloor x^2 \rfloor = 2$ mais $\lfloor x \rfloor^2 = 1$.
