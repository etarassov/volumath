---
id: "7637"
title: "Les nombres dont le carré se termine par eux-mêmes"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [divisibilite, nombres-premiers-entre-eux, puissances-de-dix, chiffres, recherche-exhaustive]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 24 (une étoile, sans solution imprimée ; l'énoncé d'origine demande tous les entiers d'un coup, il est ici découpé en trois questions)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On dit qu'un entier naturel $n$ est **automorphe** lorsque l'écriture décimale de $n^2$ se termine par celle de $n$.

Par exemple $5$ est automorphe, car $5^2 = 2\underline{5}$ ; et $76$ l'est aussi, car $76^2 = 57\underline{76}$.

1. Trouver tous les entiers automorphes qui s'écrivent avec un seul chiffre.
2. Trouver tous les entiers automorphes qui s'écrivent avec exactement deux chiffres.
3. Trouver tous les entiers automorphes qui s'écrivent avec exactement trois chiffres.

## Hints

1. Traduisez « $n^2$ se termine par $n$ » en une divisibilité. Si $n$ a $k$ chiffres, par quel nombre $n^2 - n$ doit-il être divisible ?
2. Factorisez $n^2 - n$. Les deux facteurs ont-ils un diviseur commun ?
3. Décomposez $10^k$ en facteurs premiers. Puisque les deux facteurs de $n(n-1)$ sont premiers entre eux, comment les puissances de $2$ et de $5$ se répartissent-elles entre eux ?
4. Pour chaque question, cela laisse quatre cas seulement. Deux se règlent tout de suite par la taille de $n$ ; les deux autres demandent une petite recherche.

## Solution

**Mise en équation.**

Soit $n$ un entier automorphe s'écrivant avec $k$ chiffres. Dire que $n^2$ se termine par les mêmes $k$ chiffres que $n$, c'est dire que $n^2$ et $n$ ont le même reste dans la division par $10^k$ :

$$10^k \ \text{divise} \ n^2 - n = n\,(n-1) .$$

Deux entiers consécutifs n'ont aucun diviseur commun autre que $1$ : si $d$ divise $n$ et $n-1$, il divise leur différence, donc $d = 1$. Les nombres $n$ et $n-1$ sont donc **premiers entre eux**.

Comme $10^k = 2^k \times 5^k$, chacune des deux puissances $2^k$ et $5^k$ doit diviser entièrement $n$ ou entièrement $n-1$ — elle ne peut pas se répartir sur les deux. Cela laisse quatre cas :

$$\text{(i) } 10^k \mid n \qquad \text{(ii) } 10^k \mid n-1 \qquad \text{(iii) } 2^k \mid n \ \text{et} \ 5^k \mid n-1 \qquad \text{(iv) } 5^k \mid n \ \text{et} \ 2^k \mid n-1$$

**Question 1 : un chiffre ($k = 1$).**

Il faut que $10$ divise $n(n-1)$, avec $0 \leqslant n \leqslant 9$. Testons :

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|---|
| $n(n-1)$ | $0$ | $0$ | $2$ | $6$ | $12$ | $20$ | $30$ | $42$ | $56$ | $72$ |

Les multiples de $10$ sont obtenus pour $n = 0$, $1$, $5$ et $6$.

Vérification : $0^2 = 0$, $1^2 = 1$, $5^2 = 25$, $6^2 = 36$. Tous se terminent bien par le nombre de départ.

> **Réponse : $0$, $1$, $5$ et $6$.**

**Question 2 : deux chiffres ($k = 2$).**

Il faut que $100 = 4 \times 25$ divise $n(n-1)$, avec $10 \leqslant n \leqslant 99$.

- *(i) $100 \mid n$ :* impossible, car $n \leqslant 99$ et $n \geqslant 10$.
- *(ii) $100 \mid n - 1$ :* alors $n - 1 = 0$, donc $n = 1$, qui n'a pas deux chiffres. Impossible.
- *(iii) $4 \mid n$ et $25 \mid n-1$ :* les valeurs de $n-1$ multiples de $25$ et inférieures à $99$ sont $0$, $25$, $50$, $75$, soit $n = 1$, $26$, $51$, $76$. Parmi elles, seule $76$ est un multiple de $4$ ($76 = 4 \times 19$).
- *(iv) $25 \mid n$ et $4 \mid n-1$ :* les $n$ multiples de $25$ à deux chiffres sont $25$, $50$, $75$, donc $n - 1 = 24$, $49$, $74$. Seul $24$ est un multiple de $4$, d'où $n = 25$.

Vérification : $25^2 = 6\underline{25}$ et $76^2 = 57\underline{76}$.

> **Réponse : $25$ et $76$.**

**Question 3 : trois chiffres ($k = 3$).**

Il faut que $1000 = 8 \times 125$ divise $n(n-1)$, avec $100 \leqslant n \leqslant 999$.

Les cas (i) et (ii) sont impossibles pour la même raison que précédemment.

- *(iii) $8 \mid n$ et $125 \mid n-1$ :* les valeurs possibles de $n$ sont $1$, $126$, $251$, $376$, $501$, $626$, $751$, $876$. Laquelle est un multiple de $8$ ? Seule $376 = 8 \times 47$.
- *(iv) $125 \mid n$ et $8 \mid n-1$ :* les $n$ multiples de $125$ à trois chiffres sont $125$, $250$, $375$, $500$, $625$, $750$, $875$, donc $n-1$ vaut $124$, $249$, $374$, $499$, $624$, $749$, $874$. Seul $624 = 8 \times 78$ est un multiple de $8$, d'où $n = 625$.

Vérification : $376^2 = 141\,\underline{376}$ et $625^2 = 390\,\underline{625}$.

> **Réponse : $376$ et $625$.**

## Going further

On remarque une régularité frappante : $6$, $76$, $376$, … et $5$, $25$, $625$, … Chaque nombre automorphe s'obtient en ajoutant un chiffre devant le précédent. Ce n'est pas un hasard : si $n$ est automorphe à $k$ chiffres, la condition « $10^k$ divise $n(n-1)$ » est encore vraie pour tous les $k'$ plus petits, donc les derniers chiffres de $n$ forment eux aussi un nombre automorphe.

La suite se poursuit indéfiniment. À quatre chiffres on trouve $9376$ (et non $0625$, qui n'a pas quatre chiffres) ; à cinq chiffres $90\,625$ et $09\,376$, ce dernier étant à nouveau écarté.

Les deux familles ainsi construites mènent à deux écritures infinies, célèbres sous le nom de **nombres $10$-adiques idempotents** :

$$\ldots 8212890625 \qquad \text{et} \qquad \ldots 1787109376 .$$

Leur somme se termine par $\ldots 0000000001$, et leur produit par des zéros : elles sont l'une à l'autre ce que $x$ et $1-x$ sont pour les nombres ordinaires.
