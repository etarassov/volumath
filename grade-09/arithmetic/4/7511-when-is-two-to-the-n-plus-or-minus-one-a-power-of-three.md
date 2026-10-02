---
id: "7511"
title: "Quand 2ⁿ − 1 et 2ⁿ + 1 sont-ils des puissances de 3 ?"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [puissances, divisibilite, factorisation, disjonction-de-cas, congruences]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 41 (une étoile). ATTENTION : la solution imprimée p. 245 répond à une autre question (elle étudie la divisibilité de 2ⁿ ± 1 par 3, pas le fait d'être une puissance de 3) ; l'erratum publié (stage_ete_2012_errata.pdf) signale l'erreur et propose un remplacement, mais son argument est lui aussi fautif (il affirme « 2ⁿ − 1 est entier ssi n est pair »). Seules les réponses finales de l'erratum, n = 1 ou 2 et n = 1 ou 3, sont correctes. La démonstration ci-dessous a été refaite pour ce recueil."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On rappelle que les puissances de $3$ sont les nombres $3^0 = 1$, $3^1 = 3$, $3^2 = 9$, $3^3 = 27$, et ainsi de suite.

Soit $n$ un entier naturel.

**(a)** Pour quelles valeurs de $n$ le nombre $2^n - 1$ est-il une puissance de $3$ ?

**(b)** Pour quelles valeurs de $n$ le nombre $2^n + 1$ est-il une puissance de $3$ ?

## Hints

1. Commence par dresser un tableau des premières valeurs de $2^n - 1$ et de $2^n + 1$, pour $n$ allant de $0$ à $8$. Repère à l'œil les puissances de $3$.
2. Pour (a), sépare selon que $n$ est pair ou impair. Si $n$ est impair, quel est le reste de $2^n$ dans la division par $3$ ?
3. Si $n$ est pair, $n = 2s$, alors $2^n - 1 = (2^s - 1)(2^s + 1)$. Si ce produit est une puissance de $3$, que peut-on dire de chacun des deux facteurs ?
4. Deux puissances de $3$ qui diffèrent de $2$ : il n'y en a qu'une seule paire. Laquelle ?
5. Pour (b), la même idée marche, mais en découpant selon la parité de **l'exposant de 3**, pas de $n$. Écris $2^n = 3^m - 1$ et regarde le reste de $3^m$ dans la division par $4$.

## Solution

**Étape 0. On regarde les premières valeurs.**

| $n$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---|---|---|---|---|---|---|
| $2^n - 1$ | 0 | **1** | **3** | 7 | 15 | 31 | 63 |
| $2^n + 1$ | 2 | **3** | 5 | **9** | 17 | 33 | 65 |

On voit $1 = 3^0$ et $3 = 3^1$ pour la première ligne, puis $3 = 3^1$ et $9 = 3^2$ pour la seconde. Reste à prouver qu'il n'y a rien d'autre.

Deux remarques serviront tout du long :

- **Deux puissances de 3 qui diffèrent de 2 sont $1$ et $3$.** En effet, si $3^v - 3^u = 2$ avec $u \leqslant v$, alors $3^u\,(3^{\,v-u} - 1) = 2$. Le facteur $3^u$ divise $2$ et c'est une puissance de $3$, donc $3^u = 1$ et $u=0$ ; puis $3^v = 3$, donc $v = 1$.
- **Deux puissances de 2 qui diffèrent de 2 sont $2$ et $4$.** Même raisonnement : si $2^v - 2^u = 2$, alors $2^u\,(2^{\,v-u} - 1) = 2$ ; le facteur $2^{\,v-u}-1$ est impair et divise $2$, donc il vaut $1$, d'où $2^u = 2$ et $2^v = 4$.

**Partie (a) : $2^n - 1 = 3^k$.**

Le cas $n = 0$ donne $0$, qui n'est pas une puissance de $3$. Supposons donc $n \geqslant 1$.

*Cas 1 : $n$ est impair.* Comme $2 = 3 - 1$, le reste de $2$ dans la division par $3$ est $2$, autrement dit $2 \equiv -1 \pmod 3$. Donc

$$2^n \equiv (-1)^n = -1 \pmod 3 \qquad \text{(car $n$ est impair)},$$

et par conséquent

$$2^n - 1 \equiv -1 - 1 = -2 \equiv 1 \pmod 3.$$

Le nombre $2^n - 1$ n'est donc **pas** divisible par $3$. Mais la seule puissance de $3$ qui n'est pas divisible par $3$ est $3^0 = 1$. Donc $2^n - 1 = 1$, c'est-à-dire $n = 1$.

*Cas 2 : $n$ est pair*, disons $n = 2s$ avec $s \geqslant 1$. Alors

$$2^n - 1 = (2^s)^2 - 1 = (2^s - 1)(2^s + 1) = 3^k.$$

Les deux facteurs sont des entiers positifs dont le produit est $3^k$ : chacun divise $3^k$, donc chacun est une puissance de $3$. Et ils diffèrent de $2$. D'après la première remarque, ce sont $1$ et $3$ :

$$2^s - 1 = 1 \quad \text{et} \quad 2^s + 1 = 3, \qquad \text{donc } 2^s = 2, \text{ soit } s = 1.$$

Donc $n = 2$, et en effet $2^2 - 1 = 3$.

**Réponse (a) : $2^n - 1$ est une puissance de $3$ exactement pour $n = 1$ et $n = 2$.**

**Partie (b) : $2^n + 1 = 3^m$.**

Réécrivons l'égalité sous la forme

$$2^n = 3^m - 1.$$

Le cas $m = 0$ donne $2^n = 0$, impossible. Supposons donc $m \geqslant 1$.

*Cas 1 : $m$ est impair.* Comme $3 \equiv -1 \pmod 4$, on a

$$3^m \equiv (-1)^m = -1 \equiv 3 \pmod 4,$$

donc $3^m - 1 \equiv 2 \pmod 4$. Ainsi $2^n$ laisse le reste $2$ dans la division par $4$. Or $2^0 = 1$ laisse le reste $1$, et $2^n$ est divisible par $4$ dès que $n \geqslant 2$. Il ne reste que $n = 1$, et alors $3^m = 3$, donc $m = 1$. En effet $2^1 + 1 = 3$.

*Cas 2 : $m$ est pair*, disons $m = 2s$ avec $s \geqslant 1$. Alors

$$2^n = (3^s)^2 - 1 = (3^s - 1)(3^s + 1).$$

Les deux facteurs sont des entiers positifs dont le produit est $2^n$ : chacun est donc une puissance de $2$. Et ils diffèrent de $2$. D'après la seconde remarque, ce sont $2$ et $4$ :

$$3^s - 1 = 2 \quad \text{et} \quad 3^s + 1 = 4, \qquad \text{donc } 3^s = 3, \text{ soit } s = 1.$$

Alors $m = 2$ et $2^n = 3^2 - 1 = 8$, donc $n = 3$. En effet $2^3 + 1 = 9$.

**Réponse (b) : $2^n + 1$ est une puissance de $3$ exactement pour $n = 1$ et $n = 3$.**

## Going further

Les deux parties sont construites sur le même moteur : une différence de carrés transforme « $X$ est une puissance de $p$ » en « deux puissances de $p$ diffèrent de $2$ », et cette dernière question n'a presque pas de solution.

C'est un cas particulier d'un énoncé célèbre, la **conjecture de Catalan**, démontrée en 2002 par Preda Mihăilescu : les seules puissances parfaites consécutives sont $8$ et $9$. Autrement dit, la seule solution de $x^a - y^b = 1$ avec $x, y, a, b \geqslant 2$ est $3^2 - 2^3 = 1$. Notre partie (b) en est le cas le plus simple, et il se traite, comme on vient de le voir, en quelques lignes.

Attention enfin à un piège de lecture qui a piégé le recueil d'origine : « $2^n - 1$ est divisible par $3$ » et « $2^n - 1$ est une puissance de $3$ » sont deux questions très différentes. La première a une infinité de réponses (tous les $n$ pairs), la seconde n'en a que deux.
