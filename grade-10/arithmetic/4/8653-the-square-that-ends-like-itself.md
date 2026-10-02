---
id: "8653"
title: "Le carré qui se termine comme lui-même"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [chiffre-des-unites, congruences, deux-derniers-chiffres, nombres-premiers-entre-eux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Modulos » (Elsa), exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

1. Déterminer tous les entiers naturels $n$ tels que $n$ et $n^2$ aient le **même chiffre des unités**.
2. Déterminer tous les entiers naturels $n$ tels que $n$ et $n^2$ aient les **mêmes deux derniers chiffres**, c'est-à-dire le même chiffre des unités *et* le même chiffre des dizaines.

## Hints

1. Le chiffre des unités de $n^2$ ne dépend que du chiffre des unités de $n$. Il n'y a donc que dix cas à tester dans la question 1.
2. Pour la question 2 : les deux derniers chiffres d'un nombre, c'est son reste dans la division par $100$. La condition s'écrit donc « $100$ divise $n^2 - n$ ».
3. Factorise : $n^2 - n = n(n-1)$. Tu cherches donc quand $100$ divise le produit de deux entiers consécutifs.
4. Décompose $100 = 4 \times 25$. Que peuvent avoir en commun $n$ et $n-1$ ?
5. Comme $n$ et $n-1$ n'ont aucun diviseur commun autre que $1$, le facteur $4$ est tout entier dans l'un des deux, et le facteur $25$ aussi. Cela fait quatre combinaisons à examiner.

## Solution

### 1. Le chiffre des unités

Le chiffre des unités est le reste modulo $10$, et le reste de $n^2$ modulo $10$ ne dépend que du reste de $n$. Il suffit donc de tester les dix restes.

| $n \bmod 10$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|---|
| $n^2 \bmod 10$ | $0$ | $1$ | $4$ | $9$ | $6$ | $5$ | $6$ | $9$ | $4$ | $1$ |

Les deux lignes coïncident dans quatre colonnes : $0$, $1$, $5$ et $6$.

**Réponse : $n$ et $n^2$ ont le même chiffre des unités exactement quand $n$ se termine par $0$, $1$, $5$ ou $6$.**

### 2. Les deux derniers chiffres

Deux nombres ont les mêmes deux derniers chiffres exactement quand leur différence est un multiple de $100$. La condition s'écrit donc

$$100  \mid n^2 - n, \qquad \text{c'est-à-dire} \qquad 100  \mid n(n-1).$$

**L'observation clé.** Les entiers $n$ et $n-1$ sont consécutifs : leur seul diviseur commun est $1$. En particulier, ils ne peuvent pas être pairs tous les deux, ni multiples de $5$ tous les deux.

Écrivons $100 = 4 \times 25$.

- Le facteur $4 = 2 \times 2$ doit se trouver dans le produit. Comme un seul des deux nombres est pair, **les deux facteurs $2$ sont dans le même nombre** : $4$ divise $n$, ou bien $4$ divise $n-1$.
- De même, $25 = 5 \times 5$ : un seul des deux nombres peut être multiple de $5$, donc **$25$ divise $n$, ou bien $25$ divise $n-1$**.

Cela laisse quatre combinaisons.

**Cas A : $4 \mid n$ et $25 \mid n$.** Alors $100 \mid n$, donc $n$ se termine par $\mathbf{00}$.

**Cas B : $4 \mid n-1$ et $25 \mid n-1$.** Alors $100 \mid n-1$, donc $n$ se termine par $\mathbf{01}$.

**Cas C : $4 \mid n$ et $25 \mid n-1$.** On cherche les deux derniers chiffres possibles. Les multiples de $25$ entre $0$ et $99$ sont $0$, $25$, $50$, $75$ ; il faut donc que $n-1$ se termine par l'un d'eux, c'est-à-dire que $n$ se termine par $01$, $26$, $51$ ou $76$. Parmi ces quatre, lequel est un multiple de $4$ ? Un nombre est multiple de $4$ quand ses deux derniers chiffres le sont : $01$ non, $26$ non, $51$ non, $76 = 4 \times 19$ oui. Donc $n$ se termine par $\mathbf{76}$.

**Cas D : $4 \mid n-1$ et $25 \mid n$.** De même, $n$ se termine par $00$, $25$, $50$ ou $75$, et il faut que $n-1$ soit multiple de $4$, c'est-à-dire que $n$ se termine par $99$, $24$, $49$ ou $74$ — donc par un chiffre des deux listes à la fois. La seule valeur commune aux deux conditions s'obtient en testant les quatre candidats : $00-1 = 99$ non, $25 - 1 = 24 = 4 \times 6$ oui, $50 - 1 = 49$ non, $75 - 1 = 74$ non. Donc $n$ se termine par $\mathbf{25}$.

**Vérification.** $100^2 = 10000$ finit par $00$ ; $101^2 = 10201$ finit par $01$ ; $25^2 = 625$ finit par $25$ ; $76^2 = 5776$ finit par $76$. Tout est cohérent, et les quatre terminaisons trouvées sont bien parmi les quatre de la question 1, comme il se doit.

**Conclusion.**

$$\boxed{n^2 \text{ se termine par les deux mêmes chiffres que } n \text{ exactement quand } n \text{ se termine par } 00,\ 01,\ 25 \text{ ou } 76 .}$$

## Going further

La méthode se reprend telle quelle pour trois chiffres : il faut alors que $1000 = 8 \times 125$ divise $n(n-1)$, et on trouve les terminaisons $000$, $001$, $625$ et $376$.

Les nombres qui marchent à tous les rangs à la fois s'appellent les **nombres automorphes**. Tu remarqueras que $25 \to 625 \to 0625$ et $76 \to 376 \to 9376$ : chaque terminaison se prolonge d'un chiffre, toujours de la même façon, et il n'y a jamais de choix.
