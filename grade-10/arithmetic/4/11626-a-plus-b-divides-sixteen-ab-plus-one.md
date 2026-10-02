---
id: "11626"
title: "a + b divise 16ab + 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [divisibilite, pgcd, nombres-premiers, factorisation, equation-en-entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2014-2015-envoi-6.pdf, Jour 2, exercices du groupe B, exercice 8 ; corrigé 2017-10_ofm-2014-2015-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-6.pdf"
---

## Statement

Déterminer tous les couples d'entiers strictement positifs $(a, b)$ tels que :

- $4a + 1$ et $4b - 1$ sont premiers entre eux ;
- $a + b$ divise $16ab + 1$.

## Hints

1. Cherche quelques solutions à la main, avec $a$ et $b$ entre $1$ et $5$.
2. Écris $16ab + 1$ à l'aide de $a + b$ : on a $16ab = 16a(a + b) - 16a^2$. Quel nombre, sans $b$, le nombre $a + b$ doit-il alors diviser ?
3. Montre qu'aucun nombre premier ne divise à la fois $a + b$ et $4a + 1$. Pour cela, regarde $4(a + b) - (4a + 1)$.
4. Tu dois arriver à : $a + b$ divise $4a - 1$. Or $a + b$ est plus grand que $a$. Combien de fois $a + b$ peut-il « tenir » dans $4a - 1$ ?

## Solution

**Étape 1 : $a + b$ et $4a + 1$ n'ont aucun facteur premier commun.** Soit $(a, b)$ un couple qui convient. Si un nombre premier $p$ divisait à la fois $a + b$ et $4a + 1$, il diviserait aussi

$$4(a + b) - (4a + 1) = 4b - 1.$$

Il diviserait alors $4a + 1$ et $4b - 1$, qui sont premiers entre eux : c'est impossible.

**Étape 2 : $a + b$ divise $4a - 1$.** On fait apparaître $a + b$ dans $16ab + 1$ :

$$16ab + 1 = 16a(a + b) - 16a^2 + 1 = 16a(a + b) - (4a - 1)(4a + 1).$$

Comme $a + b$ divise $16ab + 1$ et $16a(a + b)$, il divise leur différence $(4a - 1)(4a + 1)$.

Prenons un nombre premier $p$ qui apparaît $k$ fois dans la décomposition de $a + b$ en facteurs premiers. Le nombre $p^k$ divise le produit $(4a - 1)(4a + 1)$. D'après l'étape 1, $p$ n'apparaît pas du tout dans la décomposition de $4a + 1$. Les $k$ facteurs $p$ viennent donc tous de $4a - 1$, et $p^k$ divise $4a - 1$. Ceci vaut pour chaque facteur premier de $a + b$, donc $a + b$ divise $4a - 1$.

**Étape 3 : seulement deux possibilités.** Comme $4a - 1 \geqslant 3$ est positif, on peut écrire $4a - 1 = q(a + b)$ avec $q$ entier, $q \geqslant 1$. Or $b \geqslant 1$, donc $a + b > a$ et

$$4a - 1 = q(a + b) > qa.$$

Si on avait $q \geqslant 4$, on aurait $qa \geqslant 4a > 4a - 1$, ce qui est faux. Donc $q$ vaut $1$, $2$ ou $3$.

- $q = 2$ est impossible : $4a - 1$ est impair, il n'est pas égal au nombre pair $2(a + b)$.
- $q = 1$ : $a + b = 4a - 1$, c'est-à-dire $b = 3a - 1$.
- $q = 3$ : $3a + 3b = 4a - 1$, c'est-à-dire $a = 3b + 1$.

**Étape 4 : la vérification.** Il faut s'assurer que ces couples conviennent vraiment.

- **Si $b = 3a - 1$**, avec $a \geqslant 1$. Alors $a + b = 4a - 1$ et
  $$16ab + 1 = 16a(3a - 1) + 1 = 48a^2 - 16a + 1 = (4a - 1)(12a - 1),$$
  donc $a + b$ divise bien $16ab + 1$. Ensuite $4b - 1 = 12a - 5$. Un nombre premier qui divise $4a + 1$ et $12a - 5$ divise $3(4a + 1) - (12a - 5) = 8$, donc c'est $2$. Mais $4a + 1$ est impair. Ainsi $4a + 1$ et $4b - 1$ sont premiers entre eux.
- **Si $a = 3b + 1$**, avec $b \geqslant 1$. Alors $a + b = 4b + 1$ et
  $$16ab + 1 = 16b(3b + 1) + 1 = 48b^2 + 16b + 1 = (4b + 1)(12b + 1),$$
  donc $a + b$ divise $16ab + 1$. Ensuite $4a + 1 = 12b + 5$. Un nombre premier qui divise $12b + 5$ et $4b - 1$ divise $(12b + 5) - 3(4b - 1) = 8$, donc c'est $2$, alors que $4b - 1$ est impair. Les deux nombres sont premiers entre eux.

**Conclusion : les solutions sont les couples $(a, 3a - 1)$ avec $a \geqslant 1$, et les couples $(3b + 1, b)$ avec $b \geqslant 1$.** Par exemple $(1, 2)$, $(2, 5)$, $(4, 1)$, $(7, 2)$.

## Going further

Pour $(1, 2)$ : $4a + 1 = 5$ et $4b - 1 = 7$ sont premiers entre eux, et $a + b = 3$ divise $16 \times 2 + 1 = 33$. Pour $(4, 1)$ : $17$ et $3$ sont premiers entre eux, et $5$ divise $65$.

Sans la condition « premiers entre eux », il y a d'autres solutions. Par exemple $(a, b) = (1, 4)$ : $a + b = 5$ divise $16 \times 4 + 1 = 65$, mais $4a + 1 = 5$ et $4b - 1 = 15$ ont $5$ en commun.
