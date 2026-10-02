---
id: "8464"
title: "La somme de deux nombres premiers voisins"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, nombre-compose, encadrement, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, la Muraille"
  reference: "Poly-2021-Valbonne.pdf, Muraille, exercice 30 (résolu par Gabriel Pesquet)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On range les nombres premiers dans l'ordre croissant :

$$2, \quad 3, \quad 5, \quad 7, \quad 11, \quad 13, \quad 17, \quad 19, \quad 23, \quad \ldots$$

Soient $p$ et $q$ deux nombres premiers **impairs** qui se suivent dans cette liste, par exemple $p = 13$ et $q = 17$.

Démontrer que $p + q$ est le produit d'au moins trois nombres premiers, ceux-ci n'étant pas nécessairement distincts.

## Hints

1. Essaie sur des exemples : $3 + 5$, $5 + 7$, $7 + 11$, $13 + 17$. Décompose chaque résultat en facteurs premiers et compte-les.
2. Quelle est la parité de $p + q$ ? Écris $p + q = 2k$. Il reste à montrer que $k$ est le produit d'au moins **deux** nombres premiers, autrement dit que $k$ n'est ni $1$, ni un nombre premier.
3. Encadre $k$ entre $p$ et $q$. Pour cela, compare $p + q$ à $2p$ et à $2q$.
4. Tu as $p < k < q$. Pourquoi cela empêche-t-il $k$ d'être premier ?

## Solution

### Étape 1. Quelques exemples

| $p$ | $q$ | $p + q$ | décomposition | nombre de facteurs |
|---|---|---|---|---|
| $3$ | $5$ | $8$ | $2 \times 2 \times 2$ | $3$ |
| $5$ | $7$ | $12$ | $2 \times 2 \times 3$ | $3$ |
| $7$ | $11$ | $18$ | $2 \times 3 \times 3$ | $3$ |
| $13$ | $17$ | $30$ | $2 \times 3 \times 5$ | $3$ |
| $23$ | $29$ | $52$ | $2 \times 2 \times 13$ | $3$ |

L'affirmation a l'air juste, et on voit même que le facteur $2$ est toujours là.

### Étape 2. La somme est paire

Les nombres $p$ et $q$ sont impairs, donc leur somme est paire. Écrivons

$$p + q = 2k, \qquad \text{avec } k \text{ entier}.$$

Un facteur premier, le $2$, est déjà acquis. Il suffit maintenant de montrer que $k$ est lui-même le produit d'**au moins deux** nombres premiers, c'est-à-dire que $k$ est un nombre **composé**.

### Étape 3. Encadrer $k$

Comme $p < q$, on a d'une part

$$p + q > p + p = 2p, \qquad \text{donc} \qquad 2k > 2p, \qquad \text{donc} \qquad k > p,$$

et d'autre part

$$p + q < q + q = 2q, \qquad \text{donc} \qquad 2k < 2q, \qquad \text{donc} \qquad k < q.$$

Nous avons donc l'encadrement

$$p < k < q.$$

### Étape 4. $k$ est composé

Par hypothèse, $p$ et $q$ se suivent dans la liste des nombres premiers : il n'existe **aucun** nombre premier strictement compris entre $p$ et $q$. Or $k$ est strictement compris entre $p$ et $q$, donc $k$ n'est pas premier.

Par ailleurs $k > p \geqslant 3$, donc $k \geqslant 4$ : en particulier $k \neq 1$.

Un entier supérieur ou égal à $2$ qui n'est pas premier est composé, donc s'écrit comme un produit d'au moins deux nombres premiers.

### Conclusion

On a $p + q = 2k$ où $k$ est un produit d'au moins deux nombres premiers. Donc $p + q$ est le produit d'au moins **trois** nombres premiers.

$$\boxed{\text{C'est démontré.}}$$

## Going further

L'hypothèse « $p$ et $q$ se suivent » est essentielle. Sans elle, le résultat tombe : $3$ et $7$ sont premiers impairs mais ne se suivent pas, et $3 + 7 = 10 = 2 \times 5$ n'est le produit que de deux nombres premiers.

L'hypothèse « impairs » sert aussi : le premier nombre premier, $2$, est pair, et $2 + 3 = 5$ est premier tout court, donc produit d'un seul facteur.

Le cœur de l'argument tient en une phrase : **la moyenne de deux nombres premiers consécutifs tombe strictement entre eux, donc ne peut pas être première.** C'est le genre d'observation qui ne coûte rien et qui tranche tout. On peut la réutiliser pour montrer, par exemple, qu'entre deux nombres premiers consécutifs impairs il y a toujours au moins un nombre composé, ce qui revient à dire que deux nombres premiers impairs consécutifs diffèrent d'au moins $2$.
