---
id: "12039"
title: "x³(y³ + z³) = p(xyz + 1)"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [maths-expertes, petit theoreme de fermat, congruences, equation diophantienne, nombres premiers, factorisation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2013"
  reference: "2017-10_ofm-2012-2013-test-mai.pdf, exercice 2 ; pas de corrigé publié, solution rédigée ici et vérifiée par ordinateur pour tous les nombres premiers p < 120"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-mai.pdf"
---

## Statement

Soit $p$ un nombre premier tel que $p - 1$ n'est pas divisible par $3$. Déterminer tous les triplets $(x, y, z)$ d'entiers strictement positifs tels que

$$x^3 \left(y^3 + z^3\right) = p\,(xyz + 1) .$$

## Hints

1. Un nombre premier qui divise $x$ peut-il diviser $xyz + 1$ ? Déduisez-en la valeur de $x$.
2. Factorisez $y^3 + z^3$ par $y + z$.
3. Montrez que $p$ divise $y + z$. Pour $p = 3$, utilisez $t^3 \equiv t \pmod 3$. Sinon, écrivez $p = 3k + 2$ et montrez à l'aide du petit théorème de Fermat que $t^{6k+3} \equiv t \pmod p$ pour tout entier $t$.
4. Écrivez $y + z = mp$. Remarquez que $y^2 - yz + z^2 = (y - z)^2 + yz$, et montrez que $m = 1$.

## Solution

**Réponse.** Pour $p = 2$, il n'y a aucune solution. Pour $p$ impair, il y a exactement deux solutions :

$$\left(1, \; \frac{p + 1}{2}, \; \frac{p - 1}{2}\right) , \qquad \left(1, \; \frac{p - 1}{2}, \; \frac{p + 1}{2}\right) .$$

On utilise le **petit théorème de Fermat** (programme de maths expertes) : si $p$ est premier et si $p$ ne divise pas l'entier $t$, alors $t^{p-1} \equiv 1 \pmod p$.

Soit $(x, y, z)$ une solution.

**Étape 1 : $x = 1$.** Supposons que $x$ ait un facteur premier $q$. Alors $q$ divise $xyz$, donc $q$ ne divise pas $xyz + 1$ : sinon il diviserait la différence $(xyz + 1) - xyz = 1$. Décomposons les deux membres de l'équation en produits de facteurs premiers. Dans le membre de gauche, $q$ apparaît au moins trois fois, car $q^3$ divise $x^3$. Dans le membre de droite, $q$ n'apparaît pas dans $xyz + 1$, donc il apparaît au plus une fois, dans $p$. C'est impossible. Donc $x$ n'a aucun facteur premier, c'est-à-dire $x = 1$.

L'équation devient

$$y^3 + z^3 = p\,(yz + 1) . \qquad (1)$$

En particulier, $p$ divise $y^3 + z^3$.

**Étape 2 : $p$ divise $y + z$.** Comme $p - 1$ n'est pas divisible par $3$, on a $p = 3$, ou bien $p$ n'est pas multiple de $3$ et $p - 1$ non plus, ce qui laisse $p \equiv 2 \pmod 3$.

- *Si $p = 3$.* Pour tout entier $t$, on a $t^3 \equiv t \pmod 3$ : c'est le petit théorème de Fermat multiplié par $t$ si $3$ ne divise pas $t$, et c'est évident si $3$ divise $t$. Donc $y + z \equiv y^3 + z^3 \equiv 0 \pmod 3$.
- *Si $p \equiv 2 \pmod 3$.* Écrivons $p = 3k + 2$ avec $k \geqslant 0$ entier. Alors $2(p - 1) + 1 = 6k + 3 = 3(2k + 1)$. Pour tout entier $t$, on a
$$t^{6k+3} = t \times \left(t^{p-1}\right)^2 \equiv t \pmod p ,$$
d'après le petit théorème de Fermat si $p$ ne divise pas $t$, et parce que les deux membres sont divisibles par $p$ sinon. Autrement dit, $t \equiv \left(t^3\right)^{2k+1} \pmod p$. Comme $y^3 \equiv -z^3 \pmod p$ et que $2k + 1$ est impair,
$$y \equiv \left(y^3\right)^{2k+1} \equiv \left(-z^3\right)^{2k+1} = -\left(z^3\right)^{2k+1} \equiv -z \pmod p .$$

Dans les deux cas, $p$ divise $y + z$.

**Étape 3 : $y$ et $z$ sont consécutifs, et $y + z = p$.** Écrivons $y + z = mp$, avec $m \geqslant 1$ entier. En développant, on vérifie que

$$y^3 + z^3 = (y + z)\left(y^2 - yz + z^2\right) .$$

L'équation $(1)$ devient $mp\left(y^2 - yz + z^2\right) = p\,(yz + 1)$, c'est-à-dire, en divisant par $p$ et en écrivant $y^2 - yz + z^2 = (y - z)^2 + yz$ :

$$m\left((y - z)^2 + yz\right) = yz + 1 . \qquad (2)$$

Supposons $m \geqslant 2$. Alors $2(y - z)^2 + 2yz \leqslant yz + 1$, donc $2(y - z)^2 + yz \leqslant 1$. Cela impose $yz \leqslant 1$, donc $y = z = 1$. L'égalité $(2)$ donne alors $m = 2$, puis $y + z = 2 = 2p$, donc $p = 1$, qui n'est pas premier. C'est impossible.

Donc $m = 1$, et $(2)$ devient $(y - z)^2 = 1$. Ainsi $y + z = p$, et $y$ et $z$ sont deux entiers consécutifs.

**Étape 4 : les solutions.** Deux entiers consécutifs ont une somme impaire. Si $p = 2$, il n'y a donc aucune solution. Si $p$ est impair, les deux entiers consécutifs de somme $p$ sont $(p - 1)/2$ et $(p + 1)/2$, et $(p - 1)/2 \geqslant 1$ car $p \geqslant 3$.

Réciproquement, soit $p$ impair, $y$ et $z$ les deux nombres $(p - 1)/2$ et $(p + 1)/2$, dans un ordre ou dans l'autre. Alors $y + z = p$ et $(y - z)^2 = 1$, donc $y^2 - yz + z^2 = 1 + yz$ et

$$y^3 + z^3 = (y + z)\left(y^2 - yz + z^2\right) = p\,(yz + 1) .$$

Avec $x = 1$, on obtient bien $x^3\left(y^3 + z^3\right) = p\,(xyz + 1)$. Par exemple, pour $p = 5$ : $1^3 \times (3^3 + 2^3) = 35 = 5 \times (6 + 1)$.

**Conclusion.** Si $p = 2$, l'équation n'a pas de solution. Si $p$ est impair, ses solutions sont exactement $(1, (p + 1)/2, (p - 1)/2)$ et $(1, (p - 1)/2, (p + 1)/2)$.

## Going further

L'hypothèse sur $p$ ne sert qu'à l'étape 2, et elle est nécessaire. Pour $p = 7$, on a $7 - 1 = 6$, divisible par $3$. Vérifier que $(1, 1, 3)$ est une solution, alors que $7$ ne divise pas $1 + 3$. Quel argument de l'étape 2 ne marche plus ? (Pour $p = 7$, on trouve en fait quatre solutions : $(1, 1, 3)$, $(1, 3, 1)$, $(1, 3, 4)$ et $(1, 4, 3)$.)
