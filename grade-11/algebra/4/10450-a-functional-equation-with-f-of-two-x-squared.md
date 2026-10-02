---
id: "10450"
title: "f(x + y)² − f(2x²) = f(y + x) f(y − x) + 2x f(y)"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [equation-fonctionnelle, substitution, parite, fonctions-lineaires]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 3 (algèbre)"
  reference: "2017-12_pofm-2017-2018-envoi3.pdf, Exercices communs, exercice 5 ; corrigé 2018-01_pofm-2017-2018-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-12_pofm-2017-2018-envoi3.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(x + y)^2 - f(2x^2) = f(y + x)\,f(y - x) + 2x\,f(y) .$$

## Hints

1. Commence par $x = y = 0$, puis par $y = 0$.
2. Dans l'égalité obtenue avec $y = 0$, remplace $x$ par $-x$. Que peux-tu dire de $f(x)^2$ et $f(-x)^2$ ?
3. Remplace $x$ par $-x$ dans l'équation de départ, et soustrais. Le terme $f(2x^2)$ et le produit $f(y + x)\,f(y - x)$ disparaissent.
4. Dans l'égalité obtenue, échange les rôles de $x$ et $y$, puis compare. Tu dois trouver $x\,f(y) = y\,f(x)$ pour tous $x, y$.

## Solution

Notons $(E)$ l'équation de l'énoncé. Soit $f$ une solution.

**Étape 1 : $f(0) = 0$.** Avec $x = y = 0$, l'équation devient $f(0)^2 - f(0) = f(0)^2$, donc $f(0) = 0$.

**Étape 2 : $f(x)^2 = f(-x)^2$.** Avec $y = 0$, et comme $f(0) = 0$, l'équation devient

$$f(x)^2 - f(2x^2) = f(x)\,f(-x) \qquad \text{pour tout réel } x .$$

Écrivons la même égalité avec $-x$ à la place de $x$. Comme $2(-x)^2 = 2x^2$, on obtient $f(-x)^2 - f(2x^2) = f(-x)\,f(x)$. Les deux membres de droite sont égaux, donc les deux membres de gauche aussi :

$$f(x)^2 = f(-x)^2 \qquad \text{pour tout réel } x . \qquad (1)$$

**Étape 3 : une équation plus simple.** Écrivons $(E)$ avec $-x$ à la place de $x$ :

$$f(y - x)^2 - f(2x^2) = f(y - x)\,f(y + x) - 2x\,f(y) .$$

Soustrayons cette égalité de $(E)$, membre à membre. Le terme $f(2x^2)$ et le produit $f(y + x)\,f(y - x)$ disparaissent, et il reste

$$f(x + y)^2 - f(y - x)^2 = 4x\,f(y) \qquad \text{pour tous réels } x, y . \qquad (2)$$

**Étape 4 : $f$ est linéaire.** Écrivons $(2)$ en échangeant les rôles de $x$ et $y$ :

$$f(x + y)^2 - f(x - y)^2 = 4y\,f(x) .$$

D'après $(1)$, appliquée au nombre $x - y$, on a $f(x - y)^2 = f(y - x)^2$. Les membres de gauche de ces deux égalités sont donc les mêmes, et

$$x\,f(y) = y\,f(x) \qquad \text{pour tous réels } x, y .$$

Avec $x = 1$, on obtient $f(y) = a\,y$ pour tout réel $y$, où $a = f(1)$.

**Étape 5 : la valeur de $a$.** Prenons $x = 1$ et $y = 0$ dans $(E)$, avec $f(t) = a\,t$ :

$$f(1)^2 - f(2) = f(1)\,f(-1) + 2f(0), \qquad \text{c'est-à-dire} \qquad a^2 - 2a = -a^2 .$$

Donc $2a^2 = 2a$, soit $a(a - 1) = 0$, et $a = 0$ ou $a = 1$. La fonction $f$ est donc la fonction nulle ou l'identité.

**Réciproque.** La fonction nulle convient, puisque les deux membres de $(E)$ sont nuls. Pour l'identité $f(t) = t$, le membre de gauche vaut

$$(x + y)^2 - 2x^2 = y^2 + 2xy - x^2 ,$$

et le membre de droite vaut $(y + x)(y - x) + 2xy = y^2 - x^2 + 2xy$. Ils sont égaux.

**Conclusion.** Les solutions sont la fonction nulle et l'identité, $f(x) = x$.

## Going further

1. La fonction $f(x) = -x$ vérifie l'égalité $(1)$ et l'égalité $x\,f(y) = y\,f(x)$. Vérifier qu'elle n'est pourtant pas solution, en prenant $x = 1$ et $y = 0$.
2. Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,
   $$f(x + y)^2 - f(2x^2) = f(y + x)\,f(y - x) .$$
   (On pourra montrer que $f(u)^2 = f(v)^2$ pour tous réels $u$ et $v$.)
