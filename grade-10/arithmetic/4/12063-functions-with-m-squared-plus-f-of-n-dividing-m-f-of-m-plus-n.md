---
id: "12063"
title: "Les fonctions telles que m² + f(n) divise m f(m) + n"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [equation-fonctionnelle, divisibilite, entiers, encadrement, valeurs-particulieres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de sélection pour la JBMO et deuxième jour du test pour l'OIM 2014 (14 mai 2014)"
  reference: "2017-10_ofm-2013-2014-test-mai-2.pdf, exercice 4, commun aux deux tests (c'est le problème N1 de la liste courte de l'OIM 2013) ; corrigé 2017-10_ofm-2013-2014-test-mai-corrige.pdf, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-mai-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-mai-2.pdf"
---

## Statement

On note $\mathbb{N}^*$ l'ensemble des entiers strictement positifs $1, 2, 3, \ldots$

Trouver toutes les fonctions $f$, définies sur $\mathbb{N}^*$ et à valeurs dans $\mathbb{N}^*$, telles que, pour tous les entiers strictement positifs $m$ et $n$, le nombre $m^2 + f(n)$ soit un diviseur du nombre $m\,f(m) + n$.

## Hints

1. Vérifiez que la fonction définie par $f(n) = n$ convient.
2. Si un entier $d > 0$ divise un entier $a > 0$, comparez $d$ et $a$. Et si de plus $a < 2d$ ?
3. Choisissez $m = n = 2$ pour trouver $f(2)$.
4. Choisissez ensuite $m = 2$, puis $m = n$. Vous obtiendrez deux inégalités opposées entre $f(n)$ et $n$.

## Solution

**Un outil.** Si deux entiers $d > 0$ et $a > 0$ sont tels que $d$ divise $a$, alors $a = kd$ avec $k$ entier, et $k \geqslant 1$ puisque $a > 0$. Donc $a \geqslant d$. Si de plus $a < 2d$, alors $k < 2$, donc $k = 1$ et $a = d$.

Soit $f$ une fonction qui convient. Notons $(\ast)$ la propriété « $m^2 + f(n)$ divise $m\,f(m) + n$ ». Tous les nombres qui y apparaissent sont des entiers strictement positifs.

**Étape 1 : la valeur $f(2)$.** Pour $m = n = 2$, la propriété $(\ast)$ dit que $d = 4 + f(2)$ divise $a = 2f(2) + 2$. Or

$$a = 2f(2) + 2 < 2f(2) + 8 = 2d .$$

D'après l'outil, $a = d$, c'est-à-dire $2f(2) + 2 = f(2) + 4$, donc $f(2) = 2$.

**Étape 2 : $f(n) \leqslant n$.** Soit $n \geqslant 1$. Pour $m = 2$, la propriété $(\ast)$ dit que $4 + f(n)$ divise $2f(2) + n = 4 + n$. D'après l'outil, $4 + f(n) \leqslant 4 + n$, donc

$$f(n) \leqslant n .$$

**Étape 3 : $f(n) \geqslant n$.** Soit $n \geqslant 1$. Pour $m = n$, la propriété $(\ast)$ dit que $n^2 + f(n)$ divise $n\,f(n) + n$. D'après l'outil,

$$n^2 + f(n) \leqslant n\,f(n) + n ,$$

c'est-à-dire $n^2 - n \leqslant n\,f(n) - f(n)$, ou encore

$$(n - 1)\,n \leqslant (n - 1)\,f(n) .$$

Si $n \geqslant 2$, on peut diviser par $n - 1 > 0$, et on obtient $f(n) \geqslant n$. Si $n = 1$, on a aussi $f(1) \geqslant 1$, puisque $f(1)$ est un entier strictement positif.

**Étape 4 : conclusion et vérification.** D'après les étapes 2 et 3, $f(n) = n$ pour tout $n \geqslant 1$. Il n'y a donc pas d'autre solution que cette fonction.

Réciproquement, si $f(n) = n$ pour tout $n$, alors $m^2 + f(n) = m^2 + n$ et $m\,f(m) + n = m^2 + n$ : un nombre se divise lui-même, donc la propriété est vraie pour tous $m$ et $n$.

**Conclusion.** La seule fonction qui convient est la fonction définie par $f(n) = n$ pour tout entier $n \geqslant 1$.

## Going further

1. Où la solution utilise-t-elle que les valeurs de $f$ sont strictement positives ?
2. Trouver deux entiers $m$ et $n$ qui montrent que la fonction définie par $f(n) = n + 1$ ne convient pas.
