---
id: "11610"
title: "(a + 1)(b − 1) = a²b²"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [equation-diophantienne, nombres-premiers, divisibilite, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2013-2014-envoi-6.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2013-2014-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-6.pdf"
---

## Statement

Déterminer tous les entiers relatifs $a$ et $b$ tels que

$$(a + 1)(b - 1) = a^2 b^2.$$

## Hints

1. Commence par les cas où l'un des deux membres est nul : que se passe-t-il si $a = 0$, si $b = 0$, si $a = -1$ ou si $b = 1$ ?
2. Les nombres $a$ et $a + 1$ n'ont aucun facteur premier commun. Qu'en déduis-tu pour $a^2$ et $b - 1$ ? De même pour $b^2$ et $a + 1$.
3. On peut alors écrire $b - 1 = k a^2$ et $a + 1 = \ell b^2$ avec des entiers $k$ et $\ell$. Que vaut le produit $k\ell$ ?

## Solution

**Les cas où un membre est nul.**

- Si $a = 0$, l'équation devient $b - 1 = 0$, donc $b = 1$. Le couple $(0, 1)$ convient.
- Si $b = 0$, l'équation devient $-(a + 1) = 0$, donc $a = -1$. Le couple $(-1, 0)$ convient.
- Si $a = -1$ et $b \neq 0$, le membre de gauche est nul et celui de droite vaut $b^2 \neq 0$ : impossible. De même, si $b = 1$ et $a \neq 0$, la gauche vaut $0$ et la droite $a^2 \neq 0$ : impossible.

Supposons désormais $a \neq 0$, $b \neq 0$, $a \neq -1$ et $b \neq 1$.

**Étape 1 : $a^2$ divise $b - 1$.** Soit $p$ un nombre premier qui divise $a$. Il ne divise pas $a + 1$, sinon il diviserait la différence $(a + 1) - a = 1$. Notons $e$ l'exposant de $p$ dans la décomposition de $a$ en facteurs premiers. Le nombre $p$ apparaît alors avec un exposant au moins $2e$ dans $a^2 b^2 = (a + 1)(b - 1)$. Comme $a + 1$ n'en apporte aucun, $p^{2e}$ divise $b - 1$. C'est vrai pour chaque facteur premier de $a$, donc $a^2$ divise $b - 1$.

De la même façon, $b$ et $b - 1$ n'ont aucun facteur premier commun, donc $b^2$ divise $a + 1$.

On peut donc écrire $b - 1 = k a^2$ et $a + 1 = \ell b^2$, où $k$ et $\ell$ sont des entiers, non nuls puisque $b \neq 1$ et $a \neq -1$.

**Étape 2 : $k\ell = 1$.** En remplaçant dans l'équation :

$$a^2 b^2 = (a + 1)(b - 1) = k\ell\, a^2 b^2.$$

Comme $a^2 b^2 \neq 0$, on obtient $k\ell = 1$, donc $k = \ell = 1$ ou $k = \ell = -1$.

**Étape 3 : le cas $k = \ell = 1$.** Alors $b = a^2 + 1$ et $a + 1 = b^2 = (a^2 + 1)^2 = a^4 + 2a^2 + 1$. Donc $a = a^4 + 2a^2$, et comme $a \neq 0$, on peut diviser par $a$ :

$$a(a^2 + 2) = 1.$$

L'entier $a$ divise $1$, donc $a = 1$ ou $a = -1$. Mais alors $a(a^2 + 2)$ vaut $3$ ou $-3$, pas $1$. Ce cas est impossible.

**Étape 4 : le cas $k = \ell = -1$.** Alors $b - 1 = -a^2$ et $a + 1 = -b^2$. Posons $a' = -b$ et $b' = -a$. On obtient

$$b' - 1 = -a - 1 = b^2 = a'^2 \qquad \text{et} \qquad a' + 1 = 1 - b = a^2 = b'^2,$$

avec $a' = -b \neq 0$. Le couple $(a', b')$ vérifie donc $b' = a'^2 + 1$ et $a' + 1 = b'^2$ avec $a' \neq 0$ : c'est exactement la situation de l'étape 3, qui est impossible.

**Conclusion : les solutions sont $(a, b) = (0, 1)$ et $(a, b) = (-1, 0)$.**
