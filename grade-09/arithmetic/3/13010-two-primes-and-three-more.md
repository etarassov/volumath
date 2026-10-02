---
id: "13010"
title: "Deux nombres premiers et trois autres"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres-premiers, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 3 octobre 2012"
  reference: "2017-09_coupe_automne_2012.pdf, exercices pour les élèves de première et terminale, exercice 9 ; corrigé 2017-09_coupe_automne_2012_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2012.pdf"
---

## Statement

Trouver tous les couples $(p, q)$ de nombres premiers pour lesquels les trois nombres
$$2p + q, \qquad p + 2q \qquad \text{et} \qquad p + q - 18$$
sont, eux aussi, des nombres premiers.

On rappelle qu'un nombre premier est un entier supérieur ou égal à $2$ qui n'a pas d'autre diviseur positif que $1$ et lui-même.

## Hints

1. Un seul nombre premier est pair. Lequel ?
2. Le nombre $2p + q$ est au moins égal à $6$. Peut-il être pair ? Qu'en déduis-tu sur $q$ ? Et sur $p$, en regardant $p + 2q$ ?
3. Si $p$ et $q$ sont tous les deux impairs, quelle est la parité de $p + q - 18$ ? Que vaut-il alors ?

## Solution

**Les nombres $p$ et $q$ sont impairs.** Comme $p \geqslant 2$ et $q \geqslant 2$, on a $2p + q \geqslant 6$. Le seul nombre premier pair est $2$, donc le nombre premier $2p + q$, qui dépasse $2$, est impair. Or $2p$ est pair, donc $q = (2p + q) - 2p$ est impair.

De la même façon, $p + 2q \geqslant 6$ est un nombre premier impair, et $2q$ est pair, donc $p$ est impair.

**Le troisième nombre vaut $2$.** La somme de deux nombres impairs est paire, donc $p + q$ est pair, et $p + q - 18$ aussi. C'est un nombre premier pair : il vaut forcément $2$. Ainsi
$$p + q = 20 .$$

**Les candidats.** Les nombres premiers inférieurs à $20$ sont $2, 3, 5, 7, 11, 13, 17, 19$. On cherche ceux dont le complément à $20$ est aussi premier :

| $p$ | $2$ | $3$ | $5$ | $7$ | $11$ | $13$ | $17$ | $19$ |
|---|---|---|---|---|---|---|---|---|
| $20 - p$ | $18$ | $17$ | $15$ | $13$ | $9$ | $7$ | $3$ | $1$ |
| premier ? | non | oui | non | oui | non | oui | oui | non |

Il reste les couples $(3, 17)$, $(7, 13)$, $(13, 7)$ et $(17, 3)$.

**On vérifie chaque candidat.**

- Pour $(p, q) = (3, 17)$ : $2p + q = 23$ et $p + 2q = 37$ sont premiers, et $p + q - 18 = 2$ aussi. Ce couple convient.
- Pour $(p, q) = (17, 3)$ : $2p + q = 37$ et $p + 2q = 23$, c'est le même calcul. Ce couple convient.
- Pour $(p, q) = (7, 13)$ : $2p + q = 27 = 3 \times 9$ n'est pas premier. Ce couple ne convient pas.
- Pour $(p, q) = (13, 7)$ : $2p + q = 33 = 3 \times 11$ n'est pas premier. Ce couple ne convient pas.

**Conclusion.** Il y a exactement deux couples qui conviennent : $(p, q) = (3, 17)$ et $(p, q) = (17, 3)$.

## Going further

1. Pour $(7, 13)$ et $(13, 7)$, les nombres $27$ et $33$ sont tous deux multiples de $3$. Ce n'est pas un hasard : montrer que si $p + q$ est un multiple de $3$ plus $2$, et si ni $p$ ni $q$ n'est égal à $3$, alors $2p + q$ et $p + 2q$ sont tous les deux des multiples de $3$.
