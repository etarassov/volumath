---
id: "7332"
title: "19 × 8ⁿ + 17 n'est jamais premier"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [congruences, nombre-compose, disjonction-de-cas, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la première mi-temps », arithmétique, exercice 42"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Montrer que, pour tout entier $n > 0$, le nombre
$$19 \times 8^n + 17$$
est **composé**, c'est-à-dire qu'il n'est pas premier.

## Hints

1. Calcule les premières valeurs : $n = 1, 2, 3, 4, 5$. Factorise-les. Un petit diviseur apparaît à chaque fois : lequel ?
2. Range tes résultats selon le reste de $n$ dans la division par $4$. Vois-tu une régularité ?
3. Il n'y a pas un seul diviseur qui marche pour tous les $n$ : il faut en trouver plusieurs et séparer les cas.
4. Modulo $3$, que vaut $8$ ? Cela règle d'un coup tous les $n$ pairs.
5. Modulo $13$, calcule $8^1, 8^2, 8^3, 8^4$ : la suite est périodique. Fais de même modulo $5$ avec $8 \equiv 3$.

## Solution

Notons $N_n = 19 \times 8^n + 17$.

### On cherche d'abord ce qui se passe

$$N_1 = 169 = 13^2, \qquad N_2 = 1\,233 = 3 \times 411, \qquad N_3 = 9\,745 = 5 \times 1\,949,$$
$$N_4 = 77\,841 = 3 \times 25\,947, \qquad N_5 = 622\,609 = 13 \times 47\,893 .$$

La régularité saute aux yeux si l'on classe selon $n$ modulo $4$ :

| $n$ modulo $4$ | $0$ | $1$ | $2$ | $3$ |
|---|---|---|---|---|
| un diviseur | $3$ | $13$ | $3$ | $5$ |

Autrement dit : $3$ quand $n$ est pair, $13$ quand $n \equiv 1 \pmod 4$, $5$ quand $n \equiv 3 \pmod 4$. Démontrons ces trois faits.

### Cas 1 : $n$ pair, le diviseur est 3

Modulo $3$ on a $8 \equiv -1$, $19 \equiv 1$ et $17 \equiv 2$. Donc
$$N_n \equiv 1 \times (-1)^n + 2 \pmod 3 .$$
Si $n$ est pair, $(-1)^n = 1$ et
$$N_n \equiv 1 + 2 = 3 \equiv 0 \pmod 3 .$$

Donc $3$ divise $N_n$.

### Cas 2 : $n \equiv 1 \pmod 4$, le diviseur est 13

Regardons les puissances de $8$ modulo $13$ :
$$8^1 \equiv 8, \qquad 8^2 = 64 \equiv -1, \qquad 8^3 \equiv -8, \qquad 8^4 \equiv 1 \pmod{13} .$$

La suite est donc périodique de période $4$. Si $n = 4k + 1$, alors $8^n = (8^4)^k \times 8 \equiv 8 \pmod{13}$.

Comme $19 \equiv 6$ et $17 \equiv 4$ modulo $13$ :
$$N_n \equiv 6 \times 8 + 4 = 52 = 4 \times 13 \equiv 0 \pmod{13} .$$

Donc $13$ divise $N_n$.

### Cas 3 : $n \equiv 3 \pmod 4$, le diviseur est 5

Modulo $5$ on a $8 \equiv 3$, et
$$3^1 \equiv 3, \qquad 3^2 \equiv 4, \qquad 3^3 \equiv 2, \qquad 3^4 \equiv 1 \pmod 5 .$$

Là encore la période est $4$. Si $n = 4k + 3$, alors $8^n \equiv 3^3 \equiv 2 \pmod 5$.

Comme $19 \equiv 4$ et $17 \equiv 2$ modulo $5$ :
$$N_n \equiv 4 \times 2 + 2 = 10 \equiv 0 \pmod 5 .$$

Donc $5$ divise $N_n$.

### On rassemble

Tout entier $n > 0$ est pair, ou congru à $1$ modulo $4$, ou congru à $3$ modulo $4$ : les trois cas couvrent bien toutes les possibilités. Dans chacun, $N_n$ admet un diviseur $d \in \{3, 5, 13\}$.

Enfin $N_n = 19 \times 8^n + 17 \geqslant 169$, donc $N_n$ est strictement plus grand que $d$, et $d$ est un diviseur strict.

$$\boxed{\text{Pour tout } n > 0, \; 19 \times 8^n + 17 \text{ est composé.}}$$

## Going further

1. Pourquoi faut-il trois diviseurs et non un seul ? Montre qu'aucun entier $d > 1$ ne divise $19 \times 8^n + 17$ pour **tous** les $n$. *(Regarde $N_1 = 169$ et $N_2 = 1\,233$.)*
2. La famille $\{3, 5, 13\}$ s'appelle un **système couvrant** : les conditions « $n$ pair », « $n \equiv 1 \pmod 4$ », « $n \equiv 3 \pmod 4$ » recouvrent tous les entiers. Trouve un autre recouvrement de $\mathbb{Z}$ par trois classes de congruence.
3. On a vu que $N_1 = 169 = 13^2$. Vérifie que $N_4$ est lui aussi un carré parfait, puis cherche s'il y en a d'autres pour $n \leqslant 20$.
