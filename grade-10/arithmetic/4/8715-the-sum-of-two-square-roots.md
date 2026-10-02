---
id: "8715"
title: "La somme de racine de 2 et de racine de 3"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [irrationnel, raisonnement-par-absurde, identites-remarquables, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Découverte » (Melvil), exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Un nombre est dit **rationnel** s'il peut s'écrire comme un quotient de deux entiers, et **irrationnel** sinon.

Montrer que $\sqrt{2} + \sqrt{3}$ est irrationnel.

## Hints

1. Raisonne par l'absurde : suppose que $x = \sqrt{2} + \sqrt{3}$ est rationnel, et cherche une contradiction.
2. Une somme, un produit ou un quotient (par un nombre non nul) de rationnels est encore rationnel. Donc si $x$ est rationnel, $x^2$ l'est aussi. Calcule $x^2$.
3. Tu devrais tomber sur $x^2 = 5 + 2\sqrt{6}$. Isole $\sqrt{6}$.
4. Il ne reste plus qu'à montrer que $\sqrt{6}$ est irrationnel. C'est la démonstration classique de l'irrationalité de $\sqrt{2}$, recopiée avec $3$ à la place de $2$.

## Solution

### Étape 1 : se ramener à $\sqrt{6}$

Posons $x = \sqrt{2} + \sqrt{3}$ et supposons par l'absurde que $x$ est rationnel.

Élevons au carré, en utilisant l'identité $(a+b)^2 = a^2 + 2ab + b^2$ :

$$x^2 = \left(\sqrt{2}\right)^2 + 2\sqrt{2}\sqrt{3} + \left(\sqrt{3}\right)^2 = 2 + 2\sqrt{6} + 3 = 5 + 2\sqrt{6} .$$

Si $x$ est rationnel, alors $x^2$ l'est aussi (le produit de deux rationnels est rationnel). Donc

$$\sqrt{6} = \frac{x^2 - 5}{2}$$

serait également rationnel, comme différence et quotient de rationnels.

Tout revient donc à démontrer ceci :

> $\sqrt{6}$ est irrationnel.

### Étape 2 : $\sqrt{6}$ est irrationnel

Supposons par l'absurde que $\sqrt{6} = \dfrac{p}{q}$, où $p$ et $q$ sont des entiers strictement positifs et où la fraction est **irréductible** : $p$ et $q$ n'ont aucun facteur commun.

En élevant au carré et en multipliant par $q^2$ :

$$p^2 = 6q^2 .$$

**Le nombre $3$ divise $p$.** En effet, $p^2 = 3 \times (2q^2)$, donc $3$ divise $p^2 = p \times p$. Comme $3$ est premier, il divise l'un des deux facteurs, c'est-à-dire qu'il divise $p$.

Écrivons donc $p = 3k$ avec $k$ entier. L'égalité devient

$$9k^2 = 6q^2, \qquad \text{c'est-à-dire} \qquad 3k^2 = 2q^2 .$$

**Le nombre $3$ divise aussi $q$.** En effet, $3$ divise $3k^2$, donc $3$ divise $2q^2$. Comme $3$ est premier et ne divise pas $2$, il divise $q^2 = q \times q$, donc il divise $q$.

Ainsi $3$ divise à la fois $p$ et $q$, ce qui contredit le fait que la fraction $\dfrac{p}{q}$ est irréductible.

Donc $\sqrt{6}$ est irrationnel.

### Conclusion

L'hypothèse « $x = \sqrt{2}+\sqrt{3}$ est rationnel » conduit à « $\sqrt{6}$ est rationnel », ce qui est faux. Donc

$$\boxed{\ \sqrt{2}+\sqrt{3} \text{ est irrationnel.}\ }$$

*Ce qu'il faut retenir.* On n'a pas attaqué $\sqrt{2}+\sqrt{3}$ de front : on l'a **transformé** jusqu'à retomber sur un nombre dont on savait déjà traiter le cas. C'est une stratégie très fréquente.

## Going further

1. Montre de la même manière que $\sqrt{2} + \sqrt{5}$ est irrationnel, puis que $\sqrt{2}+\sqrt{3}+\sqrt{5}$ l'est aussi. Pour ce dernier, isole $\sqrt{5}$ avant d'élever au carré.

2. Que vaut $\left(\sqrt{3}-\sqrt{2}\right) \times \left(\sqrt{3}+\sqrt{2}\right)$ ? Déduis-en une autre démonstration : si $\sqrt{3}+\sqrt{2}$ était rationnel, que dire de $\sqrt{3}-\sqrt{2}$, puis de $\sqrt{2}$ tout seul ?

3. Attention, la somme de deux irrationnels n'est pas toujours irrationnelle : $\sqrt{2}$ et $-\sqrt{2}$ sont irrationnels et leur somme vaut $0$. C'est bien pour cela qu'il faut une démonstration à chaque fois.
