---
id: "11631"
title: "Une somme de trois fractions de nombres premiers"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombres premiers, divisibilite, fractions, parite, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2015-2016-envoi-5.pdf, exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2015-2016-envoi-5-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-5.pdf"
---

## Statement

Déterminer tous les entiers naturels $a$ pour lesquels il existe des nombres premiers $p$, $q$, $r$, pas forcément distincts, tels que

$$a = \frac{p+q}{r} + \frac{q+r}{p} + \frac{r+p}{q}.$$

## Hints

1. Essaie d'abord avec $p = q = r$. Puis essaie quelques triplets de petits nombres premiers différents : obtiens-tu un entier ?
2. Sépare trois cas : les trois nombres sont égaux, exactement deux sont égaux, les trois sont différents.
3. Quand les trois sont différents, multiplie l'égalité par $pqr$ et regarde ce que doit diviser le plus grand des trois nombres premiers.
4. Si un nombre premier divise un produit de nombres premiers, il est égal à l'un d'eux. Pense aussi à la parité : un nombre premier pair vaut $2$.

## Solution

On utilisera plusieurs fois le fait suivant, qui vient de la décomposition en facteurs premiers : **si un nombre premier $p$ divise un produit, il apparaît dans la décomposition de l'un des facteurs**. En particulier, si $p$ divise $r^2$ ou $qr$, où $q$ et $r$ sont premiers, alors $p$ est égal à $q$ ou à $r$.

**Cas 1 : $p = q = r$.** Chaque fraction vaut $(p + p)/p = 2$, donc $a = 6$. Ainsi $a = 6$ convient, par exemple avec $p = q = r = 2$.

**Cas 2 : exactement deux des nombres sont égaux.** Les trois fractions jouent des rôles symétriques, on peut donc supposer $p = q$ et $r \neq p$. Alors

$$a = \frac{2p}{r} + \frac{p+r}{p} + \frac{r+p}{p} = \frac{2p}{r} + 2 + \frac{2r}{p} = 2 + \frac{2(p^2 + r^2)}{pr}.$$

Comme $a$ est un entier, $a - 2$ aussi, donc $pr$ divise $2(p^2 + r^2) = 2p^2 + 2r^2$. En particulier $p$ divise $2p^2 + 2r^2$, et comme il divise $2p^2$, il divise la différence $2r^2 = 2 \times r \times r$. Le nombre premier $p$ est donc égal à $2$ ou à $r$. Or $p \neq r$, donc $p = 2$.

Le même raisonnement, en échangeant les rôles de $p$ et $r$, montre que $r$ divise $2p^2$, donc que $r = 2$. On obtient $p = r = 2$, ce qui contredit $r \neq p$. **Ce cas ne donne aucune solution.**

**Cas 3 : les trois nombres sont différents.** Quitte à les renommer, on peut supposer $p > q > r$. On multiplie l'égalité par $pqr$ :

$$a\,pqr = pq(p + q) + qr(q + r) + rp(r + p).$$

Le nombre $p$ divise $a\,pqr$, $pq(p+q)$ et $rp(r+p)$. Il divise donc la différence, c'est-à-dire $qr(q + r)$. Comme $p$ est différent de $q$ et de $r$, il ne divise pas $qr$, donc il divise $q + r$.

Mais $q$ et $r$ sont plus petits que $p$, donc $0 < q + r < 2p$. Le seul multiple de $p$ strictement compris entre $0$ et $2p$ est $p$ lui-même : $p = q + r$.

Si $q$ et $r$ étaient tous les deux impairs, $p = q + r$ serait pair et plus grand que $2$, donc pas premier. Comme $r$ est le plus petit, c'est que $r = 2$. Alors $p = q + 2$, et $q$ est un nombre premier impair, donc $q \geqslant 3$. On calcule :

$$a = \frac{(q+2) + q}{2} + \frac{q + 2}{q + 2} + \frac{2 + (q+2)}{q} = (q + 1) + 1 + \frac{q + 4}{q} = q + 3 + \frac{4}{q}.$$

Pour que $a$ soit un entier, il faudrait que $q$ divise $4$, donc que $q$ soit égal à $1$, $2$ ou $4$. C'est impossible pour un nombre premier impair. **Ce cas ne donne aucune solution non plus.**

**Conclusion : le seul entier qui convient est $a = 6$, obtenu quand $p = q = r$.**
