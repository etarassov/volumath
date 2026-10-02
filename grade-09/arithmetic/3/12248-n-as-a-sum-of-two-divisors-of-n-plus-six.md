---
id: "12248"
title: "n est la somme de deux diviseurs de n + 6"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [diviseurs, disjonction de cas, majoration, entiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de mars 2016"
  reference: "2017-10_ofm-2015-2016-test-mars.pdf, test du 23 mars 2016, exercice 1 (groupe B) ; pas de corrigé publié, solution rédigée et vérifiée pour cette base (recherche exhaustive par ordinateur jusqu'à n = 200 000). L'énoncé original ne dit pas si les deux diviseurs peuvent être égaux : on l'a précisé, et la variante avec deux diviseurs distincts est traitée dans « Pour aller plus loin »"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-mars.pdf"
---

## Statement

Déterminer tous les entiers $n \geqslant 1$ qui sont la somme de deux diviseurs positifs de $n + 6$.

Les deux diviseurs ne sont pas forcément différents : par exemple, $4 = 2 + 2$ et $2$ divise $4 + 6 = 10$, donc $n = 4$ convient.

## Hints

1. Pose $N = n + 6$, et écris $n = a + b$, où $a$ et $b$ sont des diviseurs de $N$ avec $a \leqslant b$. Pourquoi a-t-on $b < N$ ?
2. Un diviseur de $N$ plus petit que $N$ s'écrit $\frac{N}{k}$ avec $k \geqslant 2$ entier. Sépare les cas $k = 2$, $k = 3$ et $k \geqslant 4$.
3. Si $k \geqslant 4$, montre que $n \leqslant 6$, puis essaie les petites valeurs une par une.
4. Si $b = \frac{N}{2}$, écris $a$ en fonction de $b$, puis montre que $a$ divise $12$.

## Solution

On pose $N = n + 6$. On cherche les $n$ qui s'écrivent $n = a + b$, où $a$ et $b$ sont des diviseurs positifs de $N$. Quitte à les échanger, on peut supposer $a \leqslant b$.

**Étape 1. La taille de $b$.**

On a $b < a + b = n < n + 6 = N$. Comme $b$ divise $N$, on peut écrire $N = k\,b$ avec $k$ entier, et $k \geqslant 2$ puisque $b < N$. Donc $b = \frac{N}{k}$. On distingue trois cas : $k = 2$, $k = 3$ et $k \geqslant 4$.

**Étape 2. Le cas $k = 2$, c'est-à-dire $b = \frac{N}{2}$.**

Alors $a = n - b = (N - 6) - \frac{N}{2} = \frac{N}{2} - 6 = b - 6$, donc $N = 2b = 2a + 12$.

Comme $a$ divise $N$ et divise $2a$, il divise la différence $N - 2a = 12$. Donc $a$ vaut $1$, $2$, $3$, $4$, $6$ ou $12$.

Réciproquement, pour chacune de ces valeurs, on pose $b = a + 6$ et $N = 2a + 12 = 2b$. Alors $b$ divise $N$, et $a$ aussi, puisque $a$ divise $2a$ et $12$. Cela donne $n = N - 6 = 2a + 6$ :

| $a$ | $b$ | $N$ | $n = a + b$ |
|---|---|---|---|
| $1$ | $7$ | $14$ | $8$ |
| $2$ | $8$ | $16$ | $10$ |
| $3$ | $9$ | $18$ | $12$ |
| $4$ | $10$ | $20$ | $14$ |
| $6$ | $12$ | $24$ | $18$ |
| $12$ | $18$ | $36$ | $30$ |

**Étape 3. Le cas $k = 3$, c'est-à-dire $b = \frac{N}{3}$.**

Alors $a = (N - 6) - \frac{N}{3} = \frac{2N}{3} - 6 = 2b - 6$.

D'une part $a \leqslant b$, donc $2b - 6 \leqslant b$, soit $b \leqslant 6$. D'autre part $a \geqslant 1$, donc $2b \geqslant 7$, soit $b \geqslant 4$. Il reste trois possibilités :

- $b = 4$ : $N = 12$ et $a = 2$, qui divise $12$. Cela donne $n = 6 = 2 + 4$.
- $b = 5$ : $N = 15$ et $a = 4$, qui ne divise pas $15$. Pas de solution.
- $b = 6$ : $N = 18$ et $a = 6$, qui divise $18$. Cela donne $n = 12 = 6 + 6$, déjà trouvé.

**Étape 4. Le cas $k \geqslant 4$.**

Alors $a \leqslant b = \frac{N}{k} \leqslant \frac{N}{4}$, donc $n = a + b \leqslant \frac{N}{2}$. Autrement dit $N - 6 \leqslant \frac{N}{2}$, d'où $N \leqslant 12$ et $n \leqslant 6$. On essaie ces petites valeurs une par une :

- $n = 1$ : impossible, une somme de deux entiers au moins égaux à $1$ vaut au moins $2$.
- $n = 2 = 1 + 1$, et $1$ divise $8$ : convient.
- $n = 3$ : la seule écriture est $1 + 2$, et $2$ ne divise pas $9$. Ne convient pas.
- $n = 4 = 2 + 2$, et $2$ divise $10$ : convient.
- $n = 5$ : les diviseurs de $11$ sont $1$ et $11$, et aucune somme de deux d'entre eux ne vaut $5$. Ne convient pas.
- $n = 6 = 2 + 4$, et $2$ et $4$ divisent $12$ : convient, déjà trouvé.

**Conclusion.**

Les entiers cherchés sont
$$n \in \{2, 4, 6, 8, 10, 12, 14, 18, 30\}.$$

## Going further

1. Si l'on impose que les deux diviseurs soient différents, quelles valeurs de $n$ faut-il retirer de la liste ?
2. Reprends le problème avec $n + 10$ à la place de $n + 6$. Quelle étape de la méthode faut-il adapter ?
