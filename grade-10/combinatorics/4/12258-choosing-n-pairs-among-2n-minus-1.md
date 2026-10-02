---
id: "12258"
title: "Choisir n paires parmi 2n − 1"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [double comptage, paires, ensembles, procede repete, partie entiere]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de novembre 2016"
  reference: "2017-10_ofm-2016-2017-test-novembre.pdf et son corrigé, test de novembre 2016, exercice 1. Le corrigé oublie le cas où les paires restantes utilisent déjà moins de nombres que prévu, et sa dernière inégalité est écrite dans le mauvais sens (n − ⌊(n − 1)/3⌋ est au moins, et non au plus, n − (n − 1)/3) ; la solution ci-dessous corrige ces deux points"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-novembre.pdf"
---

## Statement

Soit $n \geqslant 5$ un entier. On appelle *paire* un ensemble de deux nombres différents pris parmi $1, 2, \ldots, n$, par exemple $\{2, 5\}$.

On se donne $2n - 1$ paires, toutes différentes. Montrer que l'on peut en choisir $n$ de sorte qu'il n'y ait pas plus de $\frac{2n}{3} + 1$ nombres qui apparaissent dans ces $n$ paires.

Par exemple, pour $n = 6$, on se donne $11$ paires différentes, et il faut en choisir $6$ qui, à elles toutes, n'utilisent pas plus de $5$ nombres.

## Hints

1. Si un nombre n'apparaît que dans très peu des paires, que gagne-t-on à retirer toutes les paires qui le contiennent ?
2. On a $m$ paires, et $u$ nombres apparaissent dans ces paires. Compte de deux façons le nombre de fois qu'un nombre apparaît dans une paire. Montre que, si $m < 2u$, l'un des $u$ nombres apparaît dans au plus $3$ paires.
3. Retire les paires trois par trois, en faisant disparaître au moins un nombre à chaque fois. Combien de fois peux-tu recommencer tout en gardant au moins $n$ paires ?

## Solution

Pour un ensemble de paires, on appelle *nombres utilisés* les nombres qui apparaissent dans au moins une de ces paires.

**Étape 1. Un nombre qui apparaît peu.**

*Si l'on a $m$ paires qui utilisent $u$ nombres, avec $m < 2u$, alors l'un de ces $u$ nombres apparaît dans au plus $3$ des paires.*

En effet, comptons de deux façons le nombre total d'apparitions des nombres dans les paires. Chaque paire contient $2$ nombres, donc ce total vaut $2m$. Si chacun des $u$ nombres utilisés apparaissait dans au moins $4$ paires, ce total serait au moins $4u$, ce qui contredirait $2m < 4u$.

**Étape 2. Une opération : retirer trois paires et faire disparaître un nombre.**

On note $k$ le plus grand entier tel que $3k \leqslant n - 1$. On va retirer les paires trois par trois, $k$ fois de suite, de sorte que, pour chaque $r$ entre $0$ et $k$ :

*après $r$ opérations, il reste $2n - 1 - 3r$ paires, et elles utilisent au plus $n - r$ nombres.*

C'est vrai au départ, pour $r = 0$ : on a $2n - 1$ paires, qui utilisent au plus les $n$ nombres $1, \ldots, n$.

Supposons que ce soit vrai après $r$ opérations, avec $r < k$. On a donc $m = 2n - 1 - 3r$ paires, qui utilisent au plus $n - r$ nombres. Remarquons qu'il reste assez de paires pour en retirer trois : comme $r \leqslant k - 1$, on a $3r \leqslant 3k - 3 \leqslant n - 4$, donc $m \geqslant 2n - 1 - (n - 4) = n + 3$. Il y a deux cas.

- *Si ces paires utilisent au plus $n - r - 1$ nombres*, on retire trois paires quelconques. Les paires restantes n'utilisent pas plus de nombres qu'avant.
- *Si elles utilisent exactement $u = n - r$ nombres*, on vérifie que $m < 2u$ :
$$2u - m = 2n - 2r - 2n + 1 + 3r = r + 1 > 0.$$
D'après l'étape 1, l'un des nombres utilisés, disons $x$, apparaît dans au plus $3$ paires. On retire toutes les paires qui contiennent $x$, et, s'il y en a moins de $3$, d'autres paires quelconques pour en retirer exactement $3$. Le nombre $x$ n'apparaît plus, donc les paires restantes utilisent au plus $n - r - 1$ nombres.

Dans les deux cas, après $r + 1$ opérations, il reste $2n - 1 - 3(r + 1)$ paires, qui utilisent au plus $n - (r + 1)$ nombres. On peut donc faire les $k$ opérations.

**Étape 3. On conclut.**

Après les $k$ opérations, il reste $2n - 1 - 3k$ paires. Comme $3k \leqslant n - 1$, cela fait au moins $2n - 1 - (n - 1) = n$ paires. On en choisit $n$ : elles utilisent au plus $n - k$ nombres.

Il reste à majorer $n - k$. Par définition de $k$, l'entier $k + 1$ ne convient pas, donc $3(k + 1) > n - 1$, c'est-à-dire $3k > n - 4$. Comme ce sont des entiers, $3k \geqslant n - 3$, donc $k \geqslant \frac{n - 3}{3}$ et
$$n - k \leqslant n - \frac{n - 3}{3} = \frac{2n + 3}{3} = \frac{2n}{3} + 1.$$

On a bien choisi $n$ paires parmi les $2n - 1$, qui utilisent au plus $\frac{2n}{3} + 1$ nombres.

**Remarque.** L'hypothèse $n \geqslant 5$ sert seulement à ce que l'énoncé ait un sens : avec les nombres $1, \ldots, n$, on peut former $\frac{n(n - 1)}{2}$ paires différentes, et ce nombre n'atteint $2n - 1$ qu'à partir de $n = 5$.

## Going further

1. Pour $n = 6$, on se donne les $11$ paires $\{1, 2\}$, $\{1, 3\}$, $\{1, 4\}$, $\{1, 5\}$, $\{1, 6\}$, $\{2, 3\}$, $\{2, 4\}$, $\{2, 5\}$, $\{3, 4\}$, $\{3, 5\}$, $\{4, 6\}$. Suis la méthode pour en choisir $6$ qui utilisent au plus $5$ nombres.
2. Toujours pour $n = 6$, peut-on toujours choisir $6$ paires qui utilisent au plus $4$ nombres ?
