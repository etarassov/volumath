---
id: "7038"
title: "La racine carrée d'un entier"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [irrationnel, fraction-irreductible, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, arithmétique matin (Vincent Jugé), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Soit $n$ un entier naturel. Montrer que $\sqrt{n}$ est, soit un entier naturel, soit un nombre
irrationnel.

Autrement dit : $\sqrt{n}$ n'est jamais une fraction qui ne tombe pas juste.

*(Un nombre est dit **irrationnel** lorsqu'il ne peut s'écrire comme quotient de deux
entiers.)*

## Hints

1. Raisonne par l'absurde : suppose que $\sqrt n$ soit un rationnel qui n'est pas un entier.
2. Écris-le sous forme de fraction **irréductible** $\dfrac pq$ avec $q \geq 2$. Élève au
   carré.
3. Tu obtiens $q^2 n = p^2$. Que peux-tu dire d'un facteur premier de $q$ ?
4. Ce facteur premier divise $p^2$, donc il divise $p$. Mais la fraction était irréductible…

## Solution

**Mise en place.**

Raisonnons par l'absurde. Supposons que $\sqrt n$ ne soit ni un entier naturel, ni un
irrationnel : c'est donc un rationnel non entier. Comme $\sqrt n \geq 0$, on peut l'écrire
$$\sqrt n = \frac pq$$
avec $p$ et $q$ entiers naturels, $q \geq 1$, et la fraction **irréductible**, c'est-à-dire
$\mathrm{PGCD}(p, q) = 1$.

Le fait que $\sqrt n$ ne soit pas un entier impose $q \geq 2$ : sinon $q = 1$ et $\sqrt n = p$
serait entier.

**Élever au carré.**

$$n = \frac{p^2}{q^2}, \qquad \text{donc} \qquad q^2\, n = p^2 .$$

En particulier, $q^2$ divise $p^2$.

**La contradiction.**

Comme $q \geq 2$, il admet un diviseur premier $r$. Alors $r$ divise $q$, donc $r$ divise
$q^2$, donc $r$ divise $p^2 = q^2 n$.

Or $r$ est **premier** : s'il divise le produit $p \times p$, il divise l'un des deux
facteurs, donc il divise $p$.

Ainsi $r$ divise à la fois $p$ et $q$ : il divise leur PGCD, qui vaut $1$. Un nombre premier
ne peut pas diviser $1$ : contradiction.

**Conclusion.** L'hypothèse était fausse : $\sqrt n$ est soit un entier naturel, soit un
irrationnel. $\blacksquare$

## Going further

En particulier $\sqrt2$, $\sqrt3$, $\sqrt5$, $\sqrt6$, $\sqrt7$, $\sqrt8$, … sont tous
irrationnels : il suffit de constater qu'ils ne sont pas entiers, ce qui se voit en les
encadrant entre deux carrés consécutifs.

Le résultat se généralise : pour tout entier $k \geq 2$, la racine $k$-ième d'un entier est,
soit un entier, soit un irrationnel. La démonstration est la même, avec $q^k n = p^k$.

On peut donc affirmer d'un trait que $\sqrt[3]{100}$ est irrationnel, puisque
$4^3 = 64 < 100 < 125 = 5^3$.
