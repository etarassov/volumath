---
id: "40721"
title: "Les nombres pointus : premiers exemples"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [nombres-premiers, decomposition-en-facteurs-premiers, entiers-consecutifs, recherche-exhaustive, minimum]
adapted_from: null
see_also: ["40722", "40723", "40724", "40725"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2020, mathématiques, série S"
  reference: "cg-2020-s-sujet.pdf, problème 1 « Nombres pointus », partie I « Quelques exemples », questions 1 à 6"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2020-s-sujet.pdf"
---

## Statement

Soit $n$ un entier supérieur ou égal à $1$. On dit que $n$ est **pointu** :

- si $n$ a au plus un facteur premier (c'est-à-dire si $n = 1$ ou si $n$ est une puissance d'un
  nombre premier),
- ou bien si, en notant $p$ et $q$ les deux plus grands nombres premiers qui divisent $n$, avec
  $p > q$, on a $p \geq 2q$.

Par exemple, $1$ est pointu, car il n'a aucun facteur premier. De même, $25 = 5^2$ est pointu, car
il n'a qu'un seul facteur premier. Le nombre $147 = 3 \times 7^2$ est pointu, car $7 \geq 2 \times 3$.
Au contraire, $105 = 3 \times 5 \times 7$ n'est pas pointu, car ses deux plus grands facteurs
premiers sont $7$ et $5$, et $7 < 2 \times 5$.

1. Le nombre $2020$ est-il pointu ?
2. Quel est le plus petit entier $n \geq 1$ qui n'est pas pointu ?
3. Quel est le plus petit nombre pointu qui a au moins quatre facteurs premiers différents ?
4. Démontrer qu'il existe une infinité de nombres pointus.
5. Démontrer qu'il existe une infinité d'entiers $n \geq 1$ qui ne sont pas pointus.
6. Dresser la liste des nombres pointus entre $1$ et $20$. Combien de nombres pointus consécutifs
   peut-on trouver, au plus, entre $1$ et $20$ ?

## Hints

1. **Question 1.** Décomposer $2020$ en produit de facteurs premiers.
2. **Question 2.** Un nombre qui n'est pas pointu a au moins deux facteurs premiers différents.
   Quels sont les plus petits candidats ?
3. **Question 3.** Appeler $r < s < q < p$ quatre des facteurs premiers, avec $p$ et $q$ les deux
   plus grands. Que vaut au moins le produit $r \times s$ ? Et $q$ ?
4. **Question 3.** Séparer deux cas : $q = 5$, puis $q \geq 7$. Dans chaque cas, quel est le plus
   petit nombre premier $p$ possible ?
5. **Questions 4 et 5.** Il suffit de trouver une famille infinie bien choisie, par exemple des
   puissances d'un même nombre, ou des multiples d'un exemple déjà trouvé.

## Solution

**1.** $2020 = 2^2 \times 5 \times 101$. Ses deux plus grands facteurs premiers sont $101$ et $5$,
et $101 \geq 2 \times 5 = 10$. Donc **$2020$ est pointu**.

**2.** Les nombres $1$, $2$, $3$, $4 = 2^2$ et $5$ ont au plus un facteur premier : ils sont
pointus. Le nombre $6 = 2 \times 3$ a pour plus grands facteurs premiers $3$ et $2$, et
$3 < 2 \times 2$. Donc **le plus petit entier qui n'est pas pointu est $6$**.

**3.** Soit $n$ un nombre pointu ayant au moins quatre facteurs premiers différents. On note $p$ et
$q$ ses deux plus grands facteurs premiers, avec $p > q$, et $r < s$ deux autres de ses facteurs
premiers, plus petits que $q$. Alors $n$ est un multiple de $r \times s \times q \times p$, donc
$n \geq r \times s \times q \times p$.

- $r$ et $s$ sont deux nombres premiers différents, donc $r \times s \geq 2 \times 3 = 6$.
- $q$ est plus grand que deux nombres premiers différents, donc $q \geq 5$.
- Comme $n$ est pointu, $p \geq 2q$.

*Si $q = 5$*, alors $p \geq 10$, et le plus petit nombre premier supérieur ou égal à $10$ est $11$.
Donc $n \geq 6 \times 5 \times 11 = 330$.

*Si $q \geq 7$*, alors $p \geq 14$, donc $p \geq 17$ (les nombres $14$, $15$, $16$ ne sont pas
premiers). Donc $n \geq 6 \times 7 \times 17 = 714$.

Dans tous les cas $n \geq 330$. Or $330 = 2 \times 3 \times 5 \times 11$ a quatre facteurs
premiers différents, et il est pointu car $11 \geq 2 \times 5$.

**Conclusion :** le plus petit nombre pointu ayant au moins quatre facteurs premiers différents est
**$330$**.

**4.** Les puissances de $2$, c'est-à-dire $2, 4, 8, 16, \ldots$, n'ont qu'un seul facteur premier,
donc elles sont toutes pointues. Il y en a une infinité.

**5.** Les nombres $2^k \times 3$, pour $k \geq 1$, c'est-à-dire $6, 12, 24, 48, \ldots$, ont
exactement deux facteurs premiers, $3$ et $2$, et $3 < 2 \times 2$. Aucun n'est pointu, et il y en a
une infinité.

**6.** Parmi les nombres de $1$ à $20$ :

- ceux qui ont au plus un facteur premier sont $1, 2, 3, 4, 5, 7, 8, 9, 11, 13, 16, 17, 19$ ; ils
  sont pointus ;
- les autres ont exactement deux facteurs premiers :
  $6 = 2 \times 3$, $10 = 2 \times 5$, $12 = 2^2 \times 3$, $14 = 2 \times 7$, $15 = 3 \times 5$,
  $18 = 2 \times 3^2$, $20 = 2^2 \times 5$. Parmi eux, $10$, $14$ et $20$ sont pointus
  ($5 \geq 4$, $7 \geq 4$, $5 \geq 4$), tandis que $6$, $12$, $15$ et $18$ ne le sont pas
  ($3 < 4$, $3 < 4$, $5 < 6$, $3 < 4$).

Les nombres pointus entre $1$ et $20$ sont donc

$$1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 13, 14, 16, 17, 19, 20.$$

Les nombres non pointus $6$, $12$, $15$, $18$ coupent la liste en morceaux de nombres consécutifs :
$1$ à $5$, $7$ à $11$, $13$ et $14$, $16$ et $17$, $19$ et $20$. Le plus long morceau compte
**$5$ nombres** (de $1$ à $5$, ou de $7$ à $11$).

**Bilan.** Un nombre pointu est un nombre qui a au plus un facteur premier, ou dont le plus grand
facteur premier est au moins le double du suivant. Il existe une infinité de nombres pointus et une infinité de nombres qui ne le sont pas.
Entre $1$ et $20$, on trouve au plus $5$ nombres pointus consécutifs.

## Going further

- Le sujet cherchait à démontrer que l'on peut trouver autant de nombres pointus consécutifs que
  l'on veut : $100$ nombres consécutifs tous pointus, ou un million. Pourtant, entre $1$ et $20$, on
  n'en trouve que $5$ à la suite. Cherchez, à la main ou avec un programme, la plus longue suite de
  nombres pointus consécutifs entre $1$ et $100$.
- La suite du problème est dans les exercices 40722 (il y a peu de nombres premiers entre $n$ et
  $2n$), 40723, 40724 et 40725 (la preuve complète).
