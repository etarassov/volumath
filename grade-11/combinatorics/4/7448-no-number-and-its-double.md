---
id: "7448"
title: "Jamais un nombre et son double"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [tiroirs, puissances-de-deux, denombrement, maximum]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au trésor », exercices des avancés, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On cherche une partie $A$ de $\{1, 2, 3, \ldots, 3000\}$ qui ne contient jamais à la fois un
nombre et son double : pour tout $x$ de $A$, le nombre $2x$ n'est pas dans $A$.

Quel est le plus grand nombre d'éléments qu'une telle partie $A$ peut avoir ?

## Hints

1. Un problème de maximum se traite en deux temps : construire un exemple avec beaucoup
   d'éléments, et montrer qu'on ne peut pas faire mieux.
2. Pour la construction : regarde combien de fois $2$ divise un nombre. Que devient cet exposant
   quand on double le nombre ?
3. Pour la majoration : range les entiers par paires $\{a, 2a\}$, de sorte que chaque entier soit
   dans **une seule** paire. Combien y a-t-il de telles paires qui rencontrent
   $\{1, \ldots, 3000\}$ ?
4. Pour compter ces paires, sépare selon l'exposant de $2$ : les nombres de la forme
   $b$, $4b$, $16b$, $64b$, ... avec $b$ impair.

## Solution

Pour un entier $n \geqslant 1$, notons $v(n)$ **l'exposant de $2$** dans sa décomposition en
facteurs premiers : c'est le nombre de fois qu'on peut diviser $n$ par $2$. Par exemple
$v(40) = 3$ car $40 = 2^3 \times 5$, et $v(7) = 0$.

La remarque de départ, toute simple :
$$v(2n) = v(n) + 1.$$
Doubler un nombre fait donc **changer la parité** de cet exposant.

### La construction : $1999$ éléments

Prenons
$$A = \{\, n \in \{1, \ldots, 3000\} \ : \ v(n) \text{ est pair} \,\}.$$

Cette partie convient : si $x \in A$, alors $v(x)$ est pair, donc $v(2x)$ est impair, donc
$2x \notin A$. La condition est vérifiée.

**Combien d'éléments ?** Les entiers dont l'exposant de $2$ est pair sont exactement les nombres
de la forme
$$4^k \times b, \qquad k \geqslant 0, \ b \text{ impair}.$$
Comptons-les par valeur de $k$, en gardant ceux qui ne dépassent pas $3000$. La condition est
$b \leqslant \dfrac{3000}{4^k}$, et il suffit alors de compter les entiers impairs jusque-là :

| $k$ | $4^k$ | $b$ impair, $b \leqslant 3000/4^k$ | combien |
|---|---|---|---|
| $0$ | $1$ | $b \leqslant 3000$ | $1500$ |
| $1$ | $4$ | $b \leqslant 750$ | $375$ |
| $2$ | $16$ | $b \leqslant 187{,}5$, donc $b \leqslant 187$ | $94$ |
| $3$ | $64$ | $b \leqslant 46{,}8\ldots$, donc $b \leqslant 46$ | $23$ |
| $4$ | $256$ | $b \leqslant 11{,}7\ldots$, donc $b \leqslant 11$ | $6$ |
| $5$ | $1024$ | $b \leqslant 2{,}9\ldots$, donc $b = 1$ | $1$ |

Pour $k \geqslant 6$ on a $4^k = 4096 > 3000$, il n'y a plus rien. Au total
$$1500 + 375 + 94 + 23 + 6 + 1 = 1999.$$

On sait donc faire une partie de $1999$ éléments.

### La majoration : pas plus de $1999$

Groupons **tous** les entiers strictement positifs par paires
$$\{a \, ; \, 2a\}, \qquad \text{où } v(a) \text{ est pair}.$$

Chaque entier $n$ appartient à exactement une de ces paires :

- si $v(n)$ est pair, $n$ joue le rôle de $a$, dans la paire $\{n \, ; \, 2n\}$ ;
- si $v(n)$ est impair, alors $v(n/2)$ est pair et $n$ joue le rôle de $2a$, dans la paire
  $\{n/2 \, ; \, n\}$.

Ces paires ne se chevauchent donc jamais, et elles recouvrent tout.

**Combien de ces paires rencontrent $\{1, \ldots, 3000\}$ ?** Une paire $\{a \, ; \, 2a\}$
rencontre $\{1, \ldots, 3000\}$ si et seulement si $a \leqslant 3000$ (car $a < 2a$). Le nombre de
paires concernées est donc le nombre de $a \leqslant 3000$ avec $v(a)$ pair, c'est-à-dire
exactement le $1999$ compté plus haut.

Supposons maintenant qu'une partie $A$ de $\{1, \ldots, 3000\}$ ait $2000$ éléments ou plus. Ces
$2000$ éléments se répartissent dans $1999$ paires : par le **principe des tiroirs**, deux d'entre
eux tombent dans la même paire. Or une paire ne contient que deux nombres, $a$ et $2a$ : cela veut
dire que $A$ contient à la fois $a$ et $2a$. Ces deux nombres sont bien dans
$\{1, \ldots, 3000\}$, puisqu'ils sont éléments de $A$. La condition de l'énoncé est donc violée.

Aucune partie convenable n'a donc plus de $1999$ éléments.

### Conclusion

$$\boxed{1999}$$

Une partie qui atteint ce maximum : tous les entiers de $1$ à $3000$ dont l'exposant de $2$ est
pair, autrement dit les nombres impairs, puis les impairs multipliés par $4$, puis les impairs
multipliés par $16$, puis par $64$, et ainsi de suite.

## Going further

1. Refaire le calcul avec $\{1, \ldots, 1000\}$ à la place de $\{1, \ldots, 3000\}$.
2. Et si on interdit qu'un nombre et son **triple** soient tous les deux dans $A$ ? Quel est alors
   le maximum dans $\{1, \ldots, 3000\}$ ?
