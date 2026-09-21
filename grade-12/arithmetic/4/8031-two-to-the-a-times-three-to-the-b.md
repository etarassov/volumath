---
id: "8031"
title: "2^a × 3^b comme produit de deux entiers consécutifs"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [congruences, nombres premiers entre eux, puissances, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, test de mi-parcours du dimanche 20 août, groupe C, exercice 1 (repris comme exercice 4 du test du groupe B)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Pour quels entiers naturels $k$ existe-t-il des entiers naturels $a$ et $b$ tels que

$$2^a \times 3^b = k\,(k+1) \ ?$$

## Hints

1. Les entiers $k$ et $k+1$ sont premiers entre eux. Quels facteurs premiers peut porter
   chacun ?
2. Tu tombes sur deux équations : $3^b - 2^a = 1$ et $2^a - 3^b = 1$. Traite-les séparément, et
   commence par les petites valeurs.
3. Pour $3^b = 2^a + 1$ avec $a \geqslant 2$ : regarde l'égalité modulo $4$. Que peut-on dire
   de $b$ ?
4. Pour $2^a = 3^b + 1$ avec $a \geqslant 3$ : regarde l'égalité modulo $8$. Quelles valeurs
   $3^b$ peut-il prendre modulo $8$ ?

## Solution

**Réponse : $k \in \{1,\ 2,\ 3,\ 8\}$.**

**Le partage des facteurs premiers.** Les entiers $k$ et $k+1$ sont consécutifs, donc premiers
entre eux : un diviseur commun diviserait leur différence $1$. Comme leur produit ne fait
intervenir que les nombres premiers $2$ et $3$, chacun des deux est de la forme
$2^{\alpha} 3^{\beta}$, et ils ne peuvent partager ni le facteur $2$ ni le facteur $3$. Donc
**l'un des deux est une puissance de $2$ et l'autre une puissance de $3$.**

*(Le cas $k = 0$ est exclu : le produit vaudrait $0$, alors que $2^a 3^b \geqslant 1$.)*

Il y a donc deux situations.

### Situation 1 : $k = 2^a$ et $k + 1 = 3^b$

L'équation s'écrit $3^b = 2^a + 1$.

- $a = 0$ : $3^b = 2$, impossible.
- $a = 1$ : $3^b = 3$, donc $b = 1$ et $k = 2$. **Solution.**
- $a \geqslant 2$ : alors $2^a$ est un multiple de $4$, donc $3^b \equiv 1 \pmod 4$. Or
  $3 \equiv -1 \pmod 4$, donc $3^b \equiv (-1)^b \pmod 4$ : il faut que $b$ soit **pair**.

  Écrivons $b = 2c$. Alors

  $$2^a = 3^{2c} - 1 = (3^c - 1)(3^c + 1).$$

  Les deux facteurs sont des diviseurs positifs de $2^a$, donc ce sont des puissances de $2$,
  et leur différence vaut $2$. Les seules puissances de $2$ qui diffèrent de $2$ sont $2$ et
  $4$, donc $3^c - 1 = 2$ et $3^c + 1 = 4$, c'est-à-dire $c = 1$.

  On obtient $b = 2$, puis $2^a = 8$, donc $a = 3$ et $k = 8$. **Solution.**

### Situation 2 : $k = 3^b$ et $k + 1 = 2^a$

L'équation s'écrit $2^a = 3^b + 1$.

- $a = 0$ : $3^b = 0$, impossible.
- $a = 1$ : $3^b = 1$, donc $b = 0$ et $k = 1$. **Solution.**
- $a = 2$ : $3^b = 3$, donc $b = 1$ et $k = 3$. **Solution.**
- $a \geqslant 3$ : alors $2^a$ est un multiple de $8$, donc $3^b \equiv -1 \equiv 7 \pmod 8$.
  Or $3^2 = 9 \equiv 1 \pmod 8$, donc

  $$3^b \equiv 1 \pmod 8 \text{ si } b \text{ est pair}, \qquad 3^b \equiv 3 \pmod 8 \text{ si } b \text{ est impair}.$$

  La valeur $7$ n'est jamais atteinte : **aucune solution** dans ce cas.

### Vérification des quatre valeurs trouvées

$$1 \times 2 = 2 = 2^1 3^0, \quad 2 \times 3 = 6 = 2^1 3^1, \quad 3 \times 4 = 12 = 2^2 3^1, \quad 8 \times 9 = 72 = 2^3 3^2 .$$

**Les entiers $k$ qui conviennent sont $1$, $2$, $3$ et $8$.**

## Going further

Les deux équations rencontrées, $3^b - 2^a = 1$ et $2^a - 3^b = 1$, sont des cas particuliers
d'un problème célèbre : trouver deux puissances parfaites consécutives. Catalan a conjecturé
en 1844 que la seule paire est $8$ et $9$, c'est-à-dire $2^3$ et $3^2$ ; la conjecture n'a été
démontrée qu'en 2002, par Preda Mihăilescu. Le cas particulier traité ici, avec les seules
bases $2$ et $3$, se règle en revanche par un peu d'arithmétique modulaire, comme on vient de
le voir.
