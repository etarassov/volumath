---
id: "10412"
title: "a³ + 2 contre a² + 2√a"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, factorisation, racine-carree, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 3 (algèbre)"
  reference: "2017-10_ofm-2013-2014-envoi-3.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2013-2014-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-3.pdf"
---

## Statement

Montrer que, pour tout réel $a \geqslant 0$,

$$a^3 + 2 \geqslant a^2 + 2\sqrt{a} .$$

## Hints

1. Essaie quelques valeurs : $a = 0$, $a = 1$, $a = 4$, $a = \frac{1}{4}$. Pour quelle valeur y a-t-il égalité ?
2. Passe tout du même côté et regroupe les termes deux par deux : $a^3 - a^2$ d'un côté, $2 - 2\sqrt{a}$ de l'autre.
3. On a $a^3 - a^2 = a^2 (a - 1)$ et $a - 1 = (\sqrt{a} - 1)(\sqrt{a} + 1)$. Quel facteur commun apparaît alors avec $2 - 2\sqrt{a}$ ?
4. Une fois l'expression écrite comme un produit de deux facteurs, sépare les cas $a \geqslant 1$ et $a \leqslant 1$.

## Solution

Il faut montrer que la différence

$$D = a^3 + 2 - a^2 - 2\sqrt{a}$$

est positive ou nulle pour tout $a \geqslant 0$.

**Étape 1 : factoriser.** Regroupons les termes deux par deux :

$$D = (a^3 - a^2) - (2\sqrt{a} - 2) = a^2 (a - 1) - 2(\sqrt{a} - 1) .$$

Comme $a \geqslant 0$, on peut écrire $a = (\sqrt{a})^2$, et l'identité $X^2 - 1 = (X - 1)(X + 1)$ donne

$$a - 1 = (\sqrt{a} - 1)(\sqrt{a} + 1) .$$

On en déduit que $\sqrt{a} - 1$ est un facteur commun :

$$D = a^2 (\sqrt{a} - 1)(\sqrt{a} + 1) - 2(\sqrt{a} - 1) = (\sqrt{a} - 1)\left[a^2 (\sqrt{a} + 1) - 2\right] .$$

**Étape 2 : étudier le signe des deux facteurs.** Notons $F = a^2(\sqrt{a} + 1) - 2$.

- Si $a \geqslant 1$, alors $\sqrt{a} \geqslant 1$, donc $\sqrt{a} - 1 \geqslant 0$. De plus $a^2 \geqslant 1$ et $\sqrt{a} + 1 \geqslant 2$, donc $a^2(\sqrt{a} + 1) \geqslant 2$, c'est-à-dire $F \geqslant 0$. Les deux facteurs sont positifs ou nuls, donc $D \geqslant 0$.
- Si $0 \leqslant a \leqslant 1$, alors $\sqrt{a} \leqslant 1$, donc $\sqrt{a} - 1 \leqslant 0$. De plus $0 \leqslant a^2 \leqslant 1$ et $0 < \sqrt{a} + 1 \leqslant 2$, donc $a^2(\sqrt{a} + 1) \leqslant 2$, c'est-à-dire $F \leqslant 0$. Les deux facteurs sont négatifs ou nuls, et leur produit $D$ est positif ou nul.

**Conclusion.** Dans tous les cas $D \geqslant 0$, donc $a^3 + 2 \geqslant a^2 + 2\sqrt{a}$ pour tout réel $a \geqslant 0$. Il y a égalité seulement pour $a = 1$, car c'est la seule valeur qui annule l'un des deux facteurs (si $a \neq 1$, on a même $a^2(\sqrt{a}+1) > 2$ ou $a^2(\sqrt{a}+1) < 2$ selon le cas).

## Going further

1. En posant $a = t^2$ avec $t \geqslant 0$, l'inégalité devient $t^6 - t^4 - 2t + 2 \geqslant 0$. Retrouver la factorisation de l'étape 1 sous cette forme.
2. Pour quelles valeurs du réel $k > 0$ a-t-on $a^3 + k \geqslant a^2 + k\sqrt{a}$ pour tout $a \geqslant 0$ ? (Piste : la même factorisation donne $(\sqrt{a} - 1)\left[a^2(\sqrt{a} + 1) - k\right]$. Regarder ce qui se passe pour $a$ proche de $1$.)
