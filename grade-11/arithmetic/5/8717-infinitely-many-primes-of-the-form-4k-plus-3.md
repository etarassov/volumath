---
id: "8717"
title: "Une infinité de nombres premiers de la forme 4k + 3"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [nombres-premiers, raisonnement-par-absurde, division-euclidienne, euclide]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Nombres premiers » (Paul A), exercice 17"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Le reste de la division d'un nombre premier impair par $4$ vaut $1$ ou $3$. Par exemple $5$, $13$ et $17$ laissent le reste $1$, tandis que $3$, $7$, $11$, $19$ et $23$ laissent le reste $3$.

Montrer qu'il existe une **infinité** de nombres premiers dont le reste dans la division par $4$ vaut $3$.

## Hints

1. Cherche du côté de la démonstration d'Euclide : suppose qu'il n'y en a qu'un nombre fini, note-les tous, et fabrique à partir d'eux un nombre qui donne une contradiction.
2. Euclide considère $p_1 p_2 \cdots p_r + 1$. Ici il faut un nombre qui soit lui-même de la forme $4k+3$. Essaie $N = 4 p_1 p_2 \cdots p_r - 1$.
3. Le cœur de la démonstration est le fait suivant, à démontrer d'abord : un produit de nombres de la forme $4k+1$ est encore de la forme $4k+1$.
4. Une fois ce fait acquis : si tous les facteurs premiers de $N$ étaient de la forme $4k+1$, que pourrait-on dire de $N$ ?

## Solution

Disons qu'un entier est **de type 1** s'il s'écrit $4k+1$, et **de type 3** s'il s'écrit $4k+3$, avec $k$ entier. Tout entier impair est d'un de ces deux types, et d'un seul.

### Le lemme : un produit de nombres de type 1 est de type 1

Prenons deux nombres de type 1, $a = 4u+1$ et $b = 4v+1$. Alors

$$ab = (4u+1)(4v+1) = 16uv + 4u + 4v + 1 = 4\,(4uv + u + v) + 1 ,$$

qui est bien de type 1.

En répétant l'opération, un produit de trois, quatre, ou de n'importe quel nombre de facteurs de type 1 reste de type 1.

### La démonstration principale

Raisonnons par l'absurde : supposons qu'il n'existe qu'un nombre **fini** de nombres premiers de type 3, et notons-les tous

$$p_1 = 3, \quad p_2 = 7, \quad \ldots, \quad p_r .$$

Considérons l'entier

$$N = 4\,p_1 p_2 \cdots p_r - 1 .$$

**Premier point : $N$ est de type 3.** En effet,

$$N = 4\,p_1 p_2 \cdots p_r - 4 + 3 = 4\,(p_1 p_2 \cdots p_r - 1) + 3 .$$

Par ailleurs $N \geqslant 4 \times 3 - 1 = 11$, donc $N > 1$ et $N$ admet au moins un facteur premier.

**Deuxième point : $N$ a un facteur premier de type 3.** Le nombre $N$ est impair, donc $2$ ne divise pas $N$ : tous les facteurs premiers de $N$ sont impairs, donc de type 1 ou de type 3.

Si tous étaient de type 1, alors $N$, qui est le produit de ses facteurs premiers, serait de type 1 d'après le lemme. Or $N$ est de type 3. Contradiction.

Donc $N$ possède au moins un facteur premier $q$ de type 3.

**Troisième point : $q$ n'est dans la liste.** Supposons que $q$ soit l'un des $p_i$. Alors :

- $q$ divise $4 p_1 p_2 \cdots p_r$, puisque $q$ est l'un des facteurs ;
- $q$ divise $N = 4 p_1 p_2 \cdots p_r - 1$.

Donc $q$ divise la différence de ces deux nombres, c'est-à-dire $1$. C'est impossible, car $q \geqslant 3$.

**Conclusion.** Le nombre $q$ est un nombre premier de type 3 qui ne figure pas dans la liste $p_1, \ldots, p_r$, alors que cette liste était censée les contenir tous. C'est la contradiction cherchée.

Il existe donc bien

$$\boxed{\text{une infinité de nombres premiers de la forme } 4k+3 .}$$

## Going further

1. **Pourquoi $-1$ et pas $+1$ ?** Refais la démonstration avec $N = 4p_1 \cdots p_r + 1$. Où cela coince-t-il ?

2. Adapte la démonstration pour montrer qu'il existe une infinité de nombres premiers de la forme $6k+5$. *Indication : un produit de nombres de la forme $6k+1$ est de la forme $6k+1$, et un nombre premier autre que $2$ et $3$ est de la forme $6k+1$ ou $6k+5$.*

3. **Et les nombres premiers de la forme $4k+1$ ?** Il y en a aussi une infinité, mais cette démonstration-ci ne marche pas : un produit de nombres de type 3 n'est pas forcément de type 3 (essaie $3 \times 7$). Il faut une idée supplémentaire, qui repose sur le fait suivant : tout facteur premier impair de $m^2+1$ est de type 1.

4. Le théorème général, dû à Dirichlet, dit que pour tous entiers $a$ et $b$ premiers entre eux, il existe une infinité de nombres premiers de la forme $ak+b$. Sa démonstration est très au-delà du programme, mais les cas $4k+3$ et $6k+5$ se traitent, comme on vient de le voir, à la main.
