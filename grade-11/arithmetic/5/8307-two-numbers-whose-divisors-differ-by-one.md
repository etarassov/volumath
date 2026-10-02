---
id: "8307"
title: "Deux nombres dont les diviseurs diffèrent de 1"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [diviseurs, parite, nombres-premiers, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 8 (collège) et exercice 14 (lycée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

On cherche les entiers $m \geqslant 2$, $n \geqslant 2$ et $k \geqslant 3$ tels que :

- $m$ et $n$ ont chacun exactement $k$ diviseurs positifs ;
- si l'on note $d_1 < d_2 < \cdots < d_k$ les diviseurs positifs de $m$ (donc $d_1 = 1$ et $d_k = m$) et $d'_1 < d'_2 < \cdots < d'_k$ ceux de $n$ (donc $d'_1 = 1$ et $d'_k = n$), alors

$$d'_i = d_i + 1 \qquad \text{pour tout } i \text{ tel que } 2 \leqslant i \leqslant k-1 .$$

Autrement dit, en oubliant le premier et le dernier diviseur de chaque liste, la liste de $n$ est
celle de $m$ décalée de $1$.

Déterminer tous les triplets $(m, n, k)$ qui conviennent.

## Hints

1. Un diviseur $d$ d'un entier $N$ avec $1 < d < N$ s'appelle un **diviseur strict**. L'énoncé dit donc que les diviseurs stricts de $n$ sont exactement ceux de $m$ augmentés de $1$.
2. Commence par le plus petit : $d_2$ et $d'_2 = d_2 + 1$. Que peut-on dire du plus petit diviseur strict d'un entier ?
3. Le plus petit diviseur d'un entier $N$ strictement plus grand que $1$ est toujours un nombre **premier**. Ici $d_2$ et $d_2 + 1$ sont donc deux premiers consécutifs. Quels sont-ils ?
4. On obtient $d_2 = 2$ et $d'_2 = 3$ : $m$ est pair et $n$ est impair. Traite ensuite le cas $k = 3$, puis $k = 4$, puis $k \geqslant 5$.
5. Pour $k \geqslant 5$ : montre que $3$ et $5$ divisent $n$, donc que $15$ divise $n$. Puis redescends vers $m$. Quel diviseur de $m$ cela fabrique-t-il, et quel diviseur de $n$ ensuite ?

## Solution

Appelons **diviseur strict** de $N$ tout diviseur $d$ de $N$ tel que $1 < d < N$. La condition de
l'énoncé dit donc : les diviseurs stricts de $n$ sont exactement les diviseurs stricts de $m$,
chacun augmenté de $1$, et il y en a $k - 2$ de chaque côté.

**Étape 1 : $d_2 = 2$ et $d'_2 = 3$.**

Le plus petit diviseur d'un entier $N \geqslant 2$ qui soit strictement plus grand que $1$ est
toujours un nombre premier : s'il avait un diviseur $e$ avec $1 < e < d$, alors $e$ diviserait
aussi $N$ et serait plus petit que $d$, ce qui contredirait la minimalité.

Donc $d_2$ est premier, et $d'_2 = d_2 + 1$ est premier également. Ce sont deux entiers consécutifs,
donc l'un des deux est pair, donc l'un des deux vaut $2$ car $2$ est le seul premier pair.
Si $d_2 + 1 = 2$ alors $d_2 = 1$, ce qui est exclu. Donc

$$d_2 = 2 \qquad \text{et} \qquad d'_2 = 3 .$$

En particulier $m$ est pair et $n$ est impair, car le plus petit diviseur de $n$ après $1$ vaut $3$.

**Étape 2 : $m$ est une puissance de $2$.**

Supposons que $m$ admette un diviseur impair $\ell > 1$. Comme $m$ est pair, $\ell \neq m$, donc
$\ell$ est un diviseur strict de $m$. L'énoncé donne alors que $\ell + 1$ est un diviseur de $n$.
Mais $\ell$ est impair, donc $\ell + 1$ est pair, donc $n$ serait pair : contradiction.

Donc $m$ n'a aucun diviseur impair autre que $1$ : $m$ est une puissance de $2$.

**Étape 3 : $m < 16$.**

Supposons $m \geqslant 16$. Comme $m$ est une puissance de $2$ au moins égale à $16$, les entiers
$4$ et $8$ sont des diviseurs stricts de $m$. Donc $5$ et $9$ divisent $n$ ; en particulier $3$
et $5$ divisent $n$, donc $15$ divise $n$.

Comme $9$ divise aussi $n$, on a $n \geqslant 45 > 15$, donc $15$ est un diviseur **strict** de $n$.
L'énoncé, lu à l'envers, donne alors que $15 - 1 = 14$ est un diviseur strict de $m$. Mais $14$
n'est pas une puissance de $2$ : contradiction avec l'étape 2.

Donc $m < 16$, et comme $m$ est une puissance de $2$ ayant au moins un diviseur strict, il reste
deux possibilités : $m = 4$ ou $m = 8$.

**Étape 4 : les deux cas.**

*Cas $m = 4$.* Son unique diviseur strict est $2$, donc $k - 2 = 1$, soit $k = 3$. L'unique diviseur
strict de $n$ est alors $3$, et $n$ a exactement $3$ diviseurs : $1$, $3$ et $n$. Donc $n = 9$.

Vérification : les diviseurs de $4$ sont $1 < 2 < 4$, ceux de $9$ sont $1 < 3 < 9$, et
$3 = 2 + 1$. Le triplet $(4, 9, 3)$ convient.

*Cas $m = 8$.* Ses diviseurs stricts sont $2$ et $4$, donc $k - 2 = 2$, soit $k = 4$. Les diviseurs
stricts de $n$ sont alors $3$ et $5$, et $n$ a exactement $4$ diviseurs : $1$, $3$, $5$ et $n$.
Comme $3$ et $5$ divisent $n$, on a $15 \mid n$, et comme $n$ n'a que quatre diviseurs, $n = 15$.

Vérification : les diviseurs de $8$ sont $1 < 2 < 4 < 8$, ceux de $15$ sont $1 < 3 < 5 < 15$, et
$3 = 2+1$, $5 = 4+1$. Le triplet $(8, 15, 4)$ convient.

**Conclusion.** Les seuls triplets solutions sont

$$\boxed{(m, n, k) = (4, 9, 3) \quad \text{et} \quad (m, n, k) = (8, 15, 4)} .$$

## Going further

Remarquons que l'énoncé n'est **pas** symétrique en $m$ et $n$ : il dit que les diviseurs stricts
de $n$ sont ceux de $m$ plus $1$, pas l'inverse. Traiter uniquement le cas « $m$ pair » en disant
« sans perte de généralité » serait donc une erreur. Ici c'est l'étape 1 qui force $m$ à être le
pair des deux.

Attention aussi à un raccourci tentant mais faux : de « $p$ premier divise $m$ » on ne peut pas
déduire « $p + 1$ est un nombre premier qui divise $n$ ». L'énoncé ne dit rien sur la primalité
des diviseurs décalés ; par exemple pour $m = 8$, le diviseur $4$ donne $5$, mais le diviseur $2$
donne $3$ et il se trouve que $2+1$ est premier par hasard.
