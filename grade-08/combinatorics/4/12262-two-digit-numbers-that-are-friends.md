---
id: "12262"
title: "Des nombres amis à deux chiffres"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, maximum, paires, parite, chiffres]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de janvier 2017"
  reference: "2017-10_ofm-2016-2017-test-janvier.pdf et son corrigé, test du 4 janvier 2017, exercice 2 (groupe B). Dans le corrigé, la première famille de paires doit se limiter aux unités impaires, sinon les paires se chevauchent et il n'y en a pas 36 disjointes ; c'est corrigé ci-dessous, et la réponse 45 a été vérifiée par ordinateur"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-janvier.pdf"
---

## Statement

On considère l'ensemble $S$ des nombres à deux chiffres qui ne contiennent pas le chiffre $0$. Ce sont les nombres de $11$ à $99$, sauf $20, 30, \ldots, 90$.

Deux nombres de $S$ sont dits **amis** si leurs plus grands chiffres sont égaux et si leurs plus petits chiffres diffèrent de $1$. Pour un nombre comme $88$, dont les deux chiffres sont égaux, ce chiffre est à la fois le plus grand et le plus petit.

Par exemple, $68$ et $85$ sont amis : leur plus grand chiffre est $8$, et leurs plus petits chiffres $6$ et $5$ diffèrent de $1$. De même, $78$ et $88$ sont amis. En revanche, $58$ et $75$ ne sont pas amis.

Quel est le plus grand nombre d'éléments de $S$ que l'on peut choisir sans que deux des nombres choisis soient amis ?

## Hints

1. Regarde le plus petit chiffre de chaque nombre. Que peux-tu dire des plus petits chiffres de deux nombres amis ?
2. L'un est pair et l'autre impair. Essaie de choisir tous les nombres dont le plus petit chiffre est impair. Combien y en a-t-il ?
3. Pour montrer que l'on ne peut pas faire mieux, range les nombres de $21$ à $99$ en paires de nombres amis, sans utiliser deux fois le même nombre. Dans chaque paire, on peut choisir au plus un des deux nombres.
4. Pour un nombre dont le chiffre des unités est impair et plus petit que le chiffre des dizaines, regarde le nombre suivant. Pour un nombre dont le chiffre des dizaines est pair et plus petit que le chiffre des unités, ajoute $10$.

## Solution

On écrit un nombre de $S$ sous la forme $\overline{ab}$, où $a$ est le chiffre des dizaines et $b$ celui des unités, tous deux entre $1$ et $9$. L'ensemble $S$ compte $9 \times 9 = 81$ nombres.

La réponse est $45$.

**Étape 1. On peut choisir $45$ nombres.**

On choisit tous les nombres dont le plus petit chiffre est impair. Deux d'entre eux ne sont jamais amis : leurs plus petits chiffres sont tous deux impairs, donc leur différence est paire, et elle ne peut pas valoir $1$.

Comptons-les. Soit $m$ un chiffre entre $1$ et $9$. Les nombres dont les deux chiffres sont au moins égaux à $m$ sont au nombre de $(10 - m)^2$, car chaque chiffre a $10 - m$ valeurs possibles. Parmi eux, ceux dont les deux chiffres sont au moins égaux à $m + 1$ sont au nombre de $(9 - m)^2$. Il y a donc
$$(10 - m)^2 - (9 - m)^2 = 19 - 2m$$
nombres dont le plus petit chiffre vaut exactement $m$. Pour $m = 1, 3, 5, 7, 9$, on trouve $17$, $13$, $9$, $5$ et $1$ nombres, soit au total
$$17 + 13 + 9 + 5 + 1 = 45.$$

**Étape 2. On range les nombres de $21$ à $99$ en $36$ paires d'amis.**

Les nombres de $S$ compris entre $21$ et $99$ sont ceux dont le chiffre des dizaines $a$ va de $2$ à $9$. Il y en a $8 \times 9 = 72$. On forme deux familles de paires.

- **Première famille.** Pour $b$ impair avec $b < a$, on associe $\overline{ab}$ et le nombre suivant, $\overline{a(b+1)}$. Comme $b + 1 \leqslant a$, le plus grand chiffre des deux nombres est $a$, et leurs plus petits chiffres sont $b$ et $b + 1$ : ils sont amis. Par exemple, $41$ et $42$, $43$ et $44$.
- **Deuxième famille.** Pour $a$ pair avec $a < b$, on associe $\overline{ab}$ et $\overline{ab} + 10$, c'est-à-dire $\overline{(a+1)b}$. Comme $a + 1 \leqslant b$, le plus grand chiffre des deux nombres est $b$, et leurs plus petits chiffres sont $a$ et $a + 1$ : ils sont amis. Par exemple, $46$ et $56$, $45$ et $55$.

Vérifions que chacun des $72$ nombres est dans exactement une paire. Soit $\overline{ab}$ avec $2 \leqslant a \leqslant 9$.

- Si $b < a$ et $b$ impair, c'est le premier nombre d'une paire de la première famille.
- Si $b \leqslant a$ et $b$ pair, c'est le second nombre de la paire de la première famille qui commence par $\overline{a(b-1)}$.
- Si $b > a$ et $a$ pair, c'est le premier nombre d'une paire de la deuxième famille.
- Si $b \geqslant a$ et $a$ impair, c'est le second nombre de la paire de la deuxième famille qui commence par $\overline{(a-1)b}$. En effet $a - 1$ est pair, au moins égal à $2$, et plus petit que $b$.

Chaque nombre $\overline{ab}$ tombe dans un seul de ces quatre cas. En effet, si $b < a$, c'est l'un des deux premiers selon la parité de $b$. Si $b > a$, c'est l'un des deux derniers selon la parité de $a$. Si $b = a$, c'est le deuxième quand $a$ est pair et le quatrième quand $a$ est impair. Les paires ne se chevauchent donc pas, et elles couvrent les $72$ nombres : il y en a $72 \div 2 = 36$. On peut aussi les compter directement : $20$ dans la première famille et $16$ dans la deuxième.

**Étape 3. On ne peut pas choisir plus de $45$ nombres.**

Dans chacune des $36$ paires, les deux nombres sont amis, donc on en choisit au plus un. Parmi les nombres de $21$ à $99$, on en choisit donc au plus $36$. Il reste les $9$ nombres de $11$ à $19$, dont on choisit au plus $9$. Au total, on choisit au plus $36 + 9 = 45$ nombres.

**Conclusion.** Le plus grand nombre d'éléments que l'on peut choisir sans que deux d'entre eux soient amis est $45$.

## Going further

1. On ajoute à $S$ les nombres $10, 20, \ldots, 90$, avec la même définition des amis (le plus petit chiffre de $30$ est $0$). Montre que la réponse est encore $45$.
2. Montre que l'on ne peut pas former plus de $36$ paires de nombres amis sans utiliser deux fois le même nombre. On pourra regarder les nombres qui ne sont pas choisis à l'étape 1.
