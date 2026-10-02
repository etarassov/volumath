---
id: "2203"
title: "Dix puissances de dix gigantesques"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, periodicite, puissances, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Number Theory (Part 1)"
  reference: "Handout-823-872.pdf, exercice 11 (f)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-823-872.pdf"
---

## Statement

On additionne dix nombres. Le premier est $10^{10}$, le deuxième $10^{100}$, le troisième $10^{1000}$, et ainsi de suite : à chaque fois on ajoute un zéro de plus à l'exposant. Le dixième et dernier est $10^{10\,000\,000\,000}$.

Autrement dit, on considère

$$N = 10^{10} + 10^{100} + 10^{1000} + \cdots + 10^{10\,000\,000\,000} .$$

Quel est le reste de la division euclidienne de $N$ par $7$ ?

## Hints

1. Aucun de ces nombres ne peut être écrit : le dernier a dix milliards de chiffres. Il faut donc travailler modulo $7$.
2. Calcule d'abord $10^1, 10^2, 10^3, \ldots$ modulo $7$. Que remarques-tu au bout de six étapes ?
3. Une fois la période trouvée, le reste de $10^k$ modulo $7$ ne dépend plus que d'une seule chose : le reste de $k$ dans la division par $6$.
4. Les exposants sont $10$, $100$, $1000$, … Que vaut chacun d'eux modulo $6$ ? Essaie sur $10$, sur $100$, sur $1000$ : la réponse est toujours la même.
5. Il ne reste plus qu'à compter combien il y a de termes dans la somme.

## Solution

**Étape 1 : les puissances de 10 modulo 7 sont périodiques.**

On calcule de proche en proche, en remplaçant à chaque fois par le reste :

$$10^1 \equiv 3, \quad 10^2 \equiv 3 \times 3 = 9 \equiv 2, \quad 10^3 \equiv 2 \times 3 = 6,$$

$$10^4 \equiv 6 \times 3 = 18 \equiv 4, \quad 10^5 \equiv 4 \times 3 = 12 \equiv 5, \quad 10^6 \equiv 5 \times 3 = 15 \equiv 1 \pmod 7 .$$

Comme $10^6 \equiv 1 \pmod 7$, la suite des restes recommence : pour tout entier naturel $m$ et tout entier naturel $r$,

$$10^{6m + r} = (10^6)^m \times 10^{r} \equiv 1^m \times 10^{r} = 10^{r} \pmod 7 .$$

**Le reste de $10^k$ modulo $7$ ne dépend donc que du reste de $k$ dans la division par $6$.**

**Étape 2 : les exposants, modulo 6.**

Les exposants de la somme sont $10$, $100$, $1000$, …, $10\,000\,000\,000$, c'est-à-dire les nombres $10^{j}$ pour $j$ allant de $1$ à $10$. Regardons-les modulo $6$.

Comme $10 \equiv 4 \pmod 6$, on a $10^{j} \equiv 4^{j} \pmod 6$. Or

$$4^1 = 4, \qquad 4^2 = 16 \equiv 4, \qquad 4^3 = 64 \equiv 4 \pmod 6,$$

et plus généralement $4^{j} \equiv 4 \pmod 6$ pour tout $j \geqslant 1$ : multiplier par $4$ un nombre congru à $4$ redonne $16$, donc encore $4$.

On peut aussi le voir sans congruences : pour $j \geqslant 2$, le nombre $10^{j} - 4$ s'écrit $99\ldots 96$, avec $j - 1$ chiffres $9$ suivis d'un $6$. Il est pair, et la somme de ses chiffres vaut $9(j-1) + 6$, qui est un multiple de $3$ : il est donc divisible par $3$. Divisible par $2$ et par $3$, il est divisible par $6$. (Pour $j = 1$, $10 - 4 = 6$ convient aussi.)

**Chaque exposant est donc de la forme $6m + 4$.**

**Étape 3 : chaque terme modulo 7.**

D'après les deux étapes précédentes, pour tout $j$ allant de $1$ à $10$ :

$$10^{\,10^{j}} \equiv 10^{4} \equiv 4 \pmod 7 .$$

Les dix termes de la somme laissent donc tous le même reste $4$.

**Étape 4 : la somme.**

$$N \equiv \underbrace{4 + 4 + \cdots + 4}_{10 \text{ termes}} = 40 \pmod 7 .$$

Et $40 = 5 \times 7 + 5$, donc $40 \equiv 5 \pmod 7$.

**Conclusion.** Le reste de la division euclidienne de $N$ par $7$ vaut $5$.

**Ce qu'il faut retenir.** Deux réductions emboîtées. La première, modulo $7$, ramène chaque puissance de $10$ à son exposant. La seconde, modulo $6$, ramène chaque exposant gigantesque à un seul chiffre. Une fois les deux faites, il ne reste qu'une addition de dix nombres à un chiffre.

## Going further

1. Quel est le reste de $N$ dans la division par $9$ ? par $11$ ? (Pour $11$, commencer par calculer les puissances de $10$ modulo $11$ : la période est bien plus courte.)
2. On remplace la somme par $10^{10} + 10^{100} + \cdots + 10^{10^{100}}$, qui compte cette fois cent termes. Quel est le reste modulo $7$ ? Qu'est-ce qui change dans le raisonnement, et qu'est-ce qui ne change pas ?
3. Montrer que $10^{j} \equiv 4 \pmod 6$ pour tout $j \geqslant 1$ en n'utilisant que les critères de divisibilité par $2$ et par $3$.
