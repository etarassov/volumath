---
id: "10643"
title: "Une inégalité sous la condition xy + yz + zx = 1"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, cas-d-egalite, t-plus-un-sur-t, somme-de-carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 7 ; corrigé 2023-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Soient $x$, $y$, $z$ des réels strictement positifs tels que $xy + yz + zx = 1$. Montrer que

$$2(x^2 + y^2 + z^2) + \frac{4}{3}\left(\frac{1}{x^2 + 1} + \frac{1}{y^2 + 1} + \frac{1}{z^2 + 1}\right) \geqslant 5$$

## Hints

1. Devine d'abord le cas d'égalité : il est raisonnable de chercher avec $x = y = z$. Que valent alors $x^2 + 1$ et $\frac{1}{x^2 + 1}$ ?
2. Pour un réel $t > 0$, on a $t + \frac{1}{t} \geqslant 2$. Choisis un nombre $k$ pour que $t = k(x^2 + 1)$ donne une égalité dans le cas trouvé, et que $\frac{1}{t}$ fasse apparaître $\frac{4}{3} \times \frac{1}{x^2 + 1}$.
3. Il restera un morceau de $x^2 + y^2 + z^2$ à minorer. Montre que $x^2 + y^2 + z^2 \geqslant xy + yz + zx$.

## Solution

**Étape 0. D'où vient l'idée.**

Si $x = y = z$, la condition donne $3x^2 = 1$, donc $x^2 = \frac{1}{3}$ et $x^2 + 1 = \frac{4}{3}$. Le membre de gauche vaut alors $2 \times 1 + \frac{4}{3} \times 3 \times \frac{3}{4} = 5$ : c'est le cas d'égalité. On va donc utiliser des inégalités qui deviennent des égalités quand $x^2 + 1 = \frac{4}{3}$.

**Étape 1. Un outil : $t + \frac{1}{t} \geqslant 2$ pour $t > 0$.**

En effet $t + \frac{1}{t} - 2 = \frac{t^2 - 2t + 1}{t} = \frac{(t - 1)^2}{t} \geqslant 0$, avec égalité si $t = 1$.

**Étape 2. On l'applique avec $t = \frac{3}{4}(x^2 + 1)$.**

Ce nombre vaut $1$ dans le cas d'égalité, et $\frac{1}{t} = \frac{4}{3} \times \frac{1}{x^2 + 1}$. Donc

$$\frac{3}{4}(x^2 + 1) + \frac{4}{3} \times \frac{1}{x^2 + 1} \geqslant 2$$

et de même pour $y$ et $z$. En ajoutant les trois inégalités :

$$\frac{3}{4}(x^2 + y^2 + z^2) + \frac{9}{4} + \frac{4}{3}\left(\frac{1}{x^2 + 1} + \frac{1}{y^2 + 1} + \frac{1}{z^2 + 1}\right) \geqslant 6$$

soit, en retranchant $\frac{9}{4}$ :

$$\frac{3}{4}(x^2 + y^2 + z^2) + \frac{4}{3}\left(\frac{1}{x^2 + 1} + \frac{1}{y^2 + 1} + \frac{1}{z^2 + 1}\right) \geqslant \frac{15}{4}$$

**Étape 3. Le morceau qui reste.**

Le membre de gauche de l'énoncé contient $2(x^2 + y^2 + z^2)$, et on n'en a utilisé que $\frac{3}{4}$. Il reste $\frac{5}{4}(x^2 + y^2 + z^2)$. Or

$$2(x^2 + y^2 + z^2) - 2(xy + yz + zx) = (x - y)^2 + (y - z)^2 + (z - x)^2 \geqslant 0$$

donc $x^2 + y^2 + z^2 \geqslant xy + yz + zx = 1$, et

$$\frac{5}{4}(x^2 + y^2 + z^2) \geqslant \frac{5}{4}$$

**Étape 4. Conclusion.**

En ajoutant les inégalités des étapes 2 et 3, le membre de gauche de l'énoncé vaut au moins $\frac{15}{4} + \frac{5}{4} = 5$.

**Conclusion : l'inégalité est vraie, avec égalité pour $x = y = z = \frac{1}{\sqrt{3}}$.**
