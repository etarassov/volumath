---
id: "10656"
title: "Une somme cyclique de fractions toujours négative"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, changement-de-variable, produit-egal-a-un, somme-cyclique]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Juniors, exercice 4 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf. La fin du corrigé utilise l'inégalité de réordonnement ; elle est remplacée ici par un lemme démontré dans la solution."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Montrer que pour tous réels $x$, $y$, $z$,

$$\frac{x^2 - y^2}{2x^2 + 1} + \frac{y^2 - z^2}{2y^2 + 1} + \frac{z^2 - x^2}{2z^2 + 1} \leqslant 0$$

## Hints

1. Pose $u = 2x^2 + 1$, $v = 2y^2 + 1$ et $w = 2z^2 + 1$. Écris $x^2 - y^2$ à l'aide de $u$ et $v$.
2. Chaque fraction s'écrit $\frac{1}{2}\left(1 - \frac{v}{u}\right)$, et de même pour les autres. Il reste à montrer que $\frac{v}{u} + \frac{w}{v} + \frac{u}{w} \geqslant 3$.
3. Le produit de ces trois quotients vaut $1$. Montre que trois réels strictement positifs de produit $1$ ont une somme au moins égale à $3$. Commence par le plus grand et le plus petit des trois.

## Solution

**Étape 1. Changer de variables.**

Posons $u = 2x^2 + 1$, $v = 2y^2 + 1$ et $w = 2z^2 + 1$. Ces trois nombres sont au moins égaux à $1$, donc strictement positifs. On a $x^2 - y^2 = \frac{u - v}{2}$, donc

$$\frac{x^2 - y^2}{2x^2 + 1} = \frac{u - v}{2u} = \frac{1}{2}\left(1 - \frac{v}{u}\right)$$

De même pour les deux autres fractions. La somme $S$ de l'énoncé vaut donc

$$S = \frac{1}{2}\left(3 - \left(\frac{v}{u} + \frac{w}{v} + \frac{u}{w}\right)\right)$$

et il suffit de montrer que $\frac{v}{u} + \frac{w}{v} + \frac{u}{w} \geqslant 3$.

**Étape 2. Un lemme.**

*Lemme.* Si $p$, $q$, $r$ sont trois réels strictement positifs tels que $pqr = 1$, alors $p + q + r \geqslant 3$.

*Preuve.* Quitte à renommer les nombres, on peut supposer que $p$ est le plus grand des trois et $q$ le plus petit. Alors $p \geqslant 1$ : sinon les trois nombres seraient strictement plus petits que $1$, et leur produit aussi. De même $q \leqslant 1$. Donc $(p - 1)(1 - q) \geqslant 0$, ce qui s'écrit $p - pq - 1 + q \geqslant 0$, soit

$$p + q \geqslant 1 + pq$$

Posons $t = pq > 0$. Comme $pqr = 1$, on a $r = \frac{1}{t}$, donc

$$p + q + r \geqslant 1 + t + \frac{1}{t}$$

Or $t + \frac{1}{t} - 2 = \frac{t^2 - 2t + 1}{t} = \frac{(t - 1)^2}{t} \geqslant 0$, donc $t + \frac{1}{t} \geqslant 2$, et $p + q + r \geqslant 3$.

**Étape 3. Conclure.**

Les nombres $p = \frac{v}{u}$, $q = \frac{w}{v}$ et $r = \frac{u}{w}$ sont strictement positifs, et leur produit vaut $\frac{v}{u} \times \frac{w}{v} \times \frac{u}{w} = 1$. Par le lemme, leur somme est au moins $3$. Donc $S \leqslant \frac{1}{2}(3 - 3) = 0$.

**Conclusion : pour tous réels $x$, $y$, $z$, la somme est négative ou nulle. Elle vaut $0$ par exemple quand $x^2 = y^2 = z^2$.**
