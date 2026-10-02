---
id: "10423"
title: "Une équation fonctionnelle sur les entiers relatifs"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, entiers, injectivite, surjectivite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 4 (algèbre)"
  reference: "2017-10_ofm-2014-2015-envoi-4.pdf, Exercices communs, exercice 5 (Vietnam 2014) ; corrigé 2017-10_ofm-2014-2015-envoi-4-solutions.pdf (le corrigé contient des coquilles : il faut lire f(2b − 1 − f(y)) au lieu de f(2b + 1 − f(y)), et E(0, b) au lieu de E(ab, 0) ; dans le cas a = 0, la contradiction donnée ici est plus directe)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-4.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ de $\mathbb{Z}$ dans $\mathbb{Z}$ telles que

$$f(2m + f(m) + f(m)f(n)) = n\,f(m) + m$$

pour tous les entiers relatifs $m$ et $n$.

## Hints

1. Note $E(m, n)$ l'égalité de l'énoncé et $a = f(0)$. Que dit $E(m, 0)$ ? Montre que tout entier est une valeur de $f$.
2. Il existe donc un entier $b$ tel que $f(b) = -1$. Écris $E(b, n)$ et déduis-en que deux entiers différents ont toujours des images différentes.
3. Calcule $f(2b)$ avec $E(b, b)$, et $f(a + a^2)$ avec $E(0, 0)$. Écris ensuite $E(m, b)$ : tu dois trouver $f(2m) = b\,f(m) + m$. Que donne-t-elle pour $m = 0$ ?
4. Tu dois arriver à $a = 1$ ou $a = -2$, avec $b = 1$. Dans chaque cas, compare $E(0, n)$ avec $E(m, 0)$ pour un $m$ bien choisi, et utilise l'indication 2.

## Solution

Notons $E(m, n)$ l'égalité de l'énoncé, et soit $f$ une fonction qui la vérifie pour tous $m, n$. Posons $a = f(0)$.

**Étape 1 : tout entier est une valeur de $f$.** L'égalité $E(m, 0)$ s'écrit

$$f(2m + (1 + a)\,f(m)) = m \qquad \text{pour tout entier } m . \qquad (1)$$

Ainsi, tout entier $m$ est l'image par $f$ d'un entier (on dit que $f$ est *surjective*).

**Étape 2 : deux entiers différents ont des images différentes.** D'après l'étape 1, il existe un entier $b$ tel que $f(b) = -1$. L'égalité $E(b, n)$ s'écrit

$$f(2b - 1 - f(n)) = b - n \qquad \text{pour tout entier } n .$$

Si $f(n) = f(n')$, les deux membres de gauche de $E(b, n)$ et $E(b, n')$ sont égaux, donc $b - n = b - n'$, et $n = n'$. Ainsi, $f(u) = f(v)$ entraîne $u = v$ (on dit que $f$ est *injective*). C'est l'outil qui sert dans toute la suite.

**Étape 3 : deux relations entre $a$ et $b$.**

- $E(b, b)$ donne $f(2b - 1 + 1) = b - b$, soit $f(2b) = 0$. Et $E(0, 0)$ donne $f(a + a^2) = 0$. D'après l'étape 2, $2b = a + a^2$.
- $E(m, b)$ s'écrit $f(2m + f(m) - f(m)) = b\,f(m) + m$, c'est-à-dire
  $$f(2m) = b\,f(m) + m \qquad \text{pour tout entier } m . \qquad (2)$$
  Pour $m = 0$, cela donne $a = ab$, soit $a(b - 1) = 0$.

Si $a = 0$, alors $2b = 0$, donc $b = 0$, et $f(0) = f(b) = -1$, ce qui contredit $f(0) = a = 0$. Donc $a \neq 0$, puis $b = 1$, et $a^2 + a = 2$, soit $(a - 1)(a + 2) = 0$. Il reste deux cas : $a = 1$ ou $a = -2$, avec $b = 1$ dans les deux cas.

**Étape 4 : le cas $a = 1$ est impossible.** L'égalité $E(0, n)$ s'écrit $f(a + a\,f(n)) = an$, soit ici $f(1 + f(n)) = n$. Et $(1)$ appliquée à $m = n$ donne $f(2n + 2f(n)) = n$. D'après l'étape 2, $1 + f(n) = 2n + 2f(n)$, donc $f(n) = 1 - 2n$ pour tout $n$. Mais alors $f$ ne prend que des valeurs impaires, et $0$ n'est jamais atteint, ce qui contredit l'étape 1.

**Étape 5 : le cas $a = -2$.** Ici $f(0) = -2$ et $b = 1$.

- L'égalité $E(0, n)$ s'écrit $f(-2 - 2f(n)) = -2n$.
- L'égalité $(1)$ appliquée à $m = -2n$ s'écrit $f(-4n - f(-2n)) = -2n$.

D'après l'étape 2, $-2 - 2f(n) = -4n - f(-2n)$, donc

$$f(-2n) = 2f(n) + 2 - 4n . \qquad (3)$$

D'autre part, $(2)$ avec $b = 1$ et $m = -n$ donne $f(-2n) = f(-n) - n$. En comparant avec $(3)$ :

$$f(-n) = 2f(n) + 2 - 3n \qquad \text{pour tout entier } n . \qquad (4)$$

Appliquons $(4)$ à $-n$ au lieu de $n$ : $f(n) = 2f(-n) + 2 + 3n$. En remplaçant $f(-n)$ par l'expression $(4)$,

$$f(n) = 2(2f(n) + 2 - 3n) + 2 + 3n = 4f(n) + 6 - 3n ,$$

donc $3f(n) = 3n - 6$, c'est-à-dire $f(n) = n - 2$ pour tout entier $n$.

**Étape 6 : réciproque.** Soit $f(n) = n - 2$. Pour tous entiers $m$ et $n$,

$$2m + f(m) + f(m)f(n) = 2m + (m - 2) + (m - 2)(n - 2) = mn + m - 2n + 2 ,$$

donc le membre de gauche vaut $f(mn + m - 2n + 2) = mn + m - 2n$. Le membre de droite vaut $n(m - 2) + m = mn - 2n + m$. Les deux sont égaux.

**Conclusion.** La seule fonction qui convient est $f(n) = n - 2$.

## Going further

1. Vérifier directement qu'aucune fonction de la forme $f(n) = n + c$, avec $c \neq -2$, ne convient.
2. Où la démonstration utilise-t-elle que $f$ est définie sur tous les entiers relatifs, et pas seulement sur les entiers naturels ?
