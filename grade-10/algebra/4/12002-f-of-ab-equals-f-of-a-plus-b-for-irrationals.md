---
id: "12002"
title: "f(ab) = f(a + b) pour a et b irrationnels"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [equation-fonctionnelle, irrationnel, racine-carree, substitution]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier, année 2011-2012"
  reference: "2017-10_ofm-2011-2012-test-janvier.pdf (en-tête « Janvier 2011 »), exercice 2 ; corrigé 2017-10_ofm-2011-2012-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2011-2012-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2011-2012-test-janvier.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que

$$f(ab) = f(a + b)$$

pour **tous nombres irrationnels** $a$ et $b$.

## Hints

1. Les fonctions constantes conviennent. Il s'agit de montrer qu'il n'y en a pas d'autres, par exemple que $f(x) = f(0)$ pour tout réel $x$.
2. Rappelez-vous : si $u$ est irrationnel, alors $\sqrt{u}$ aussi (quand $u > 0$). La somme d'un rationnel et d'un irrationnel est irrationnelle, et le produit d'un rationnel non nul par un irrationnel aussi.
3. Pour obtenir $a + b = 0$, prenez $b = -a$. Avec $a = \sqrt{u}$, que donne l'équation ?
4. Pour un rationnel $r$ non nul, écrivez $r = \sqrt{2} + (r - \sqrt{2})$, somme de deux irrationnels. Que vaut alors le produit ?

## Solution

Les fonctions constantes conviennent évidemment : si $f(x) = c$ pour tout $x$, les deux membres valent $c$. Montrons que ce sont les seules, en prouvant que $f(x) = f(0)$ pour tout réel $x$.

**Trois propriétés des irrationnels.** On les utilise sans cesse.

- Si $u > 0$ est irrationnel, alors $\sqrt{u}$ est irrationnel. En effet, si $\sqrt{u}$ était un rationnel $q$, alors $u = q^2$ serait rationnel.
- Si $q$ est rationnel et $v$ irrationnel, alors $q + v$ est irrationnel. Sinon $v = (q + v) - q$ serait une différence de deux rationnels, donc rationnel.
- Si $q$ est un rationnel **non nul** et $v$ irrationnel, alors $qv$ est irrationnel. Sinon $v = \dfrac{qv}{q}$ serait rationnel.

**Étape 1 : $f$ vaut $f(0)$ en tout irrationnel.**

Soit $u > 0$ un irrationnel. Alors $\sqrt{u}$ et $-\sqrt{u}$ sont irrationnels.

- Avec $a = \sqrt{u}$ et $b = -\sqrt{u}$, on a $ab = -u$ et $a + b = 0$. L'équation donne $f(-u) = f(0)$.
- Avec $a = b = -\sqrt{u}$, on a $ab = u$ et $a + b = -2\sqrt{u}$. L'équation donne $f(u) = f(-2\sqrt{u})$.

Or $2\sqrt{u}$ est un irrationnel positif (produit du rationnel $2$ par un irrationnel). D'après le premier point appliqué à lui, $f(-2\sqrt{u}) = f(0)$. Donc $f(u) = f(0)$.

Ainsi $f(u) = f(0)$ et $f(-u) = f(0)$ pour tout irrationnel $u > 0$ : la fonction $f$ vaut $f(0)$ en **tout** irrationnel, positif ou négatif.

**Étape 2 : $f$ vaut $f(0)$ en tout rationnel non nul.**

Soit $r$ un rationnel non nul. Posons $a = \sqrt{2}$ et $b = r - \sqrt{2}$. Le nombre $a$ est irrationnel, et $b$ aussi (somme du rationnel $r$ et de l'irrationnel $-\sqrt{2}$). On a

$$a + b = r \qquad \text{et} \qquad ab = \sqrt{2}\,(r - \sqrt{2}) = r\sqrt{2} - 2 .$$

Comme $r \ne 0$, le nombre $r\sqrt{2}$ est irrationnel, donc $r\sqrt{2} - 2$ aussi. L'équation donne $f(r) = f(r\sqrt{2} - 2)$, et d'après l'étape 1 ce nombre vaut $f(0)$.

**Conclusion.** On a $f(x) = f(0)$ pour tout irrationnel $x$, pour tout rationnel non nul $x$, et bien sûr pour $x = 0$. La fonction $f$ est donc constante.

Les solutions sont exactement les fonctions constantes.
