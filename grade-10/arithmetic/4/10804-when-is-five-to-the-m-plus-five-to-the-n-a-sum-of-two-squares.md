---
id: "10804"
title: "Quand 5ᵐ + 5ⁿ est-il une somme de deux carrés ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [somme-de-carres, congruences, puissances, parite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2012-2013-envoi3.pdf, Exercices Communs, exercice 5 ; corrigé 2017-10_ofm-2012-2013-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi3.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers strictement positifs.

Montrer que le nombre $5^m + 5^n$ s'écrit comme la somme de deux carrés d'entiers **si et seulement si** $m$ et $n$ ont la même parité.

*Par exemple, $5^1 + 5^1 = 10 = 3^2 + 1^2$.*

## Hints

1. Il y a deux choses à montrer. Commence par le cas facile : $m$ et $n$ tous les deux pairs. Écris $m = 2a$ et $n = 2b$.
2. Si $m$ et $n$ sont tous les deux impairs, mets $5$ en facteur. Il te faut alors écrire $5 \times (A^2 + B^2)$ comme une somme de deux carrés. Essaie $(2A + B)^2 + (A - 2B)^2$.
3. Pour l'autre sens, regarde les restes dans la division par $8$. Quels restes peut laisser un carré ? Et une somme de deux carrés ?
4. Quel est le reste de $5^k$ dans la division par $8$, selon la parité de $k$ ? Rappelle-toi que $25 = 3 \times 8 + 1$.

## Solution

Il faut démontrer deux choses :

- si $m$ et $n$ ont la même parité, alors $5^m + 5^n$ est une somme de deux carrés ;
- si $m$ et $n$ n'ont pas la même parité, alors $5^m + 5^n$ n'est pas une somme de deux carrés.

### Premier sens : même parité

**Si $m$ et $n$ sont pairs**, on écrit $m = 2a$ et $n = 2b$. Alors
$$5^m + 5^n = \left(5^a\right)^2 + \left(5^b\right)^2,$$
et c'est fini.

**Si $m$ et $n$ sont impairs**, on écrit $m = 2a + 1$ et $n = 2b + 1$. On met $5$ en facteur :
$$5^m + 5^n = 5 \times \left(5^{2a} + 5^{2b}\right) = 5\,(A^2 + B^2) \qquad \text{avec } A = 5^a,\ B = 5^b .$$
Il reste à écrire $5\,(A^2 + B^2)$ comme une somme de deux carrés. Comme $5 = 2^2 + 1^2$, on essaie de combiner les deux. En développant :
$$(2A + B)^2 + (A - 2B)^2 = 4A^2 + 4AB + B^2 + A^2 - 4AB + 4B^2 = 5A^2 + 5B^2 .$$
Donc
$$5^m + 5^n = (2A + B)^2 + (A - 2B)^2,$$
qui est bien une somme de deux carrés d'entiers.

*Exemple :* $5^1 + 5^3 = 130$. Ici $A = 1$ et $B = 5$, et on trouve $7^2 + (-9)^2 = 49 + 81 = 130$.

### Second sens : parités différentes

On va regarder les nombres **modulo $8$**, c'est-à-dire ne garder que leur reste dans la division par $8$.

**Les carrés modulo 8.**

- Si $x$ est impair, $x = 2t + 1$, alors $x^2 = 4t^2 + 4t + 1 = 4\,t(t+1) + 1$. Le produit $t(t+1)$ de deux entiers consécutifs est pair, donc $4\,t(t+1)$ est un multiple de $8$, et **$x^2$ laisse le reste $1$**.
- Si $x$ est pair, $x = 2t$, alors $x^2 = 4t^2$. Si $t$ est pair, c'est un multiple de $16$, donc de $8$ : **reste $0$**. Si $t$ est impair, $t^2$ est impair et $4t^2 = 8 \times (\text{quelque chose}) + 4$ : **reste $4$**.

Un carré laisse donc toujours le reste $0$, $1$ ou $4$ modulo $8$.

**Les sommes de deux carrés modulo 8.** En additionnant deux de ces restes, on obtient
$$0 + 0 = 0, \quad 0 + 1 = 1, \quad 0 + 4 = 4, \quad 1 + 1 = 2, \quad 1 + 4 = 5, \quad 4 + 4 = 8 .$$
Une somme de deux carrés laisse donc le reste $0$, $1$, $2$, $4$ ou $5$ modulo $8$, **jamais le reste $6$**.

**Les puissances de 5 modulo 8.** On a $25 = 3 \times 8 + 1$. Or le produit de deux nombres de reste $1$ a encore le reste $1$, car
$$(8u + 1)(8v + 1) = 8\,(8uv + u + v) + 1 .$$
Donc $5^{2j} = 25^j$ laisse le reste $1$, et $5^{2j+1} = 5 \times 25^j = 5 \times (8w + 1) = 8 \times 5w + 5$ laisse le reste $5$.

**Conclusion de ce sens.** Si $m$ et $n$ n'ont pas la même parité, l'une des deux puissances laisse le reste $1$ et l'autre le reste $5$. La somme $5^m + 5^n$ laisse donc le reste $1 + 5 = 6$ modulo $8$. Ce n'est pas un reste possible pour une somme de deux carrés.

### Conclusion

Le nombre $5^m + 5^n$ est une somme de deux carrés d'entiers **exactement quand $m$ et $n$ ont la même parité**.

## Going further

1. Vérifie l'identité $(a^2 + b^2)(c^2 + d^2) = (ac + bd)^2 + (ad - bc)^2$. Elle montre que le produit de deux sommes de deux carrés est encore une somme de deux carrés. Retrouve à partir d'elle la formule utilisée pour $5\,(A^2 + B^2)$.
2. Avec $2$ à la place de $5$, la règle change. Trouve des entiers $m$ et $n$ de parités différentes tels que $2^m + 2^n$ soit quand même une somme de deux carrés. *Indication : essaie $2^1 + 2^4$.*
