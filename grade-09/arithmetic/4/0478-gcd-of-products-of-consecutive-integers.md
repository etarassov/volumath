---
id: "0478"
title: "Le PGCD des produits d'entiers consécutifs"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [pgcd, divisibilite, entiers-consecutifs, demonstration]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2017.pdf, листок 12, задача 1 (а и б), с. 50"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Chacune des listes ci-dessous contient une infinité de produits. On cherche, pour chaque
liste, le PGCD de **tous** ses produits.

**Exemple.** $1\times 2$, $\;2\times 3$, $\;3\times 4$, $\;4\times 5$, $\;\ldots$ : les
produits de deux entiers naturels qui se suivent. Leur PGCD vaut $2$.

a) $1\times2\times3$, $\;2\times3\times4$, $\;3\times4\times5$, $\;\ldots$ : les produits de
   **trois** entiers naturels qui se suivent.
b) $1\times2\times3\times4$, $\;2\times3\times4\times5$, $\;3\times4\times5\times6$,
   $\;\ldots$ : les produits de **quatre** entiers naturels qui se suivent.

Dans chaque cas, trouver le PGCD et démontrer la réponse.

## Hints

1. Calcule le premier produit de la liste. Le PGCD divise chacun des produits, donc en
   particulier celui-là : cela donne déjà une réponse possible.
2. Il reste le vrai travail : montrer que ce nombre divise **tous** les autres produits. Parmi
   trois entiers qui se suivent, combien y en a-t-il de pairs ? Combien de multiples de $3$ ?
3. Attention au dernier pas. Savoir qu'un nombre $N$ est divisible par $2$ et par $3$ ne
   permet pas de conclure aussitôt qu'il l'est par $6$. Mais écris $N = 3N - 2N$ et regarde
   chacun des deux morceaux.
4. Pour b), les deux entiers pairs de la liste sont distants de $2$. Que peut-on dire de deux
   nombres pairs qui se suivent, comme $2m$ et $2m+2$ ?

## Solution

### a) Le PGCD vaut 6

**Un candidat.** Le premier produit de la liste est $1\times2\times3 = 6$. Le PGCD divise tous
les produits, donc il divise $6$ : il ne peut valoir que $1$, $2$, $3$ ou $6$.

**Tous les produits sont divisibles par 6.** Soit $n$ un entier naturel et
$N = n(n+1)(n+2)$.

*$N$ est divisible par $3$.* Regardons le reste de $n$ dans la division par $3$ : il vaut
$0$, $1$ ou $2$.

- si $n = 3k$, alors $n$ est un multiple de $3$ ;
- si $n = 3k+1$, alors $n+2 = 3k+3 = 3(k+1)$ est un multiple de $3$ ;
- si $n = 3k+2$, alors $n+1 = 3k+3 = 3(k+1)$ est un multiple de $3$.

Dans les trois cas, l'un des facteurs est un multiple de $3$, donc $N$ aussi.

*$N$ est divisible par $2$.* Les nombres $n$ et $n+1$ se suivent, donc l'un des deux est pair.
Ce facteur est pair, donc $N$ aussi.

*Passer de « $2$ et $3$ » à « $6$ ».* C'est le point délicat. On écrit simplement

$$N = 3N - 2N$$

Comme $N$ est pair, $N = 2k$ et $3N = 6k$ : $3N$ est un multiple de $6$. Comme $N$ est
divisible par $3$, $N = 3m$ et $2N = 6m$ : $2N$ est aussi un multiple de $6$. La différence de
deux multiples de $6$ est un multiple de $6$, donc $N$ est divisible par $6$.

**Conclusion.** $6$ divise tous les produits de la liste, et $6$ est l'un d'eux. Le PGCD vaut
donc exactement $\mathrm{PGCD} = 6$.

### b) Le PGCD vaut 24

**Un candidat.** Le premier produit est $1\times2\times3\times4 = 24$. Le PGCD divise $24$.

**Une erreur à éviter.** On entend souvent : « parmi quatre entiers qui se suivent il y a un
multiple de $4$, un multiple de $3$ et un multiple de $2$, donc le produit est divisible par
$4\times3\times2 = 24$ ». Ce raisonnement ne tient pas. D'abord, un nombre divisible par $2$,
par $3$ et par $4$ n'est pas forcément divisible par $24$ : $12$ en est un contre-exemple.
Ensuite, le multiple de $2$ annoncé pourrait être le même nombre que le multiple de $4$. Il
faut être plus soigneux.

**Tous les produits sont divisibles par 24.** Soit $P = n(n+1)(n+2)(n+3)$.

*$P$ est divisible par $8$.* Parmi quatre entiers qui se suivent il y a exactement deux
nombres pairs, et ils sont distants de $2$ : écrivons-les $2m$ et $2m+2$. Les entiers $m$ et
$m+1$ se suivent, donc l'un des deux est pair :

- si $m$ est pair, $2m$ est un multiple de $4$ ;
- si $m+1$ est pair, $2m+2 = 2(m+1)$ est un multiple de $4$.

L'un des deux facteurs pairs est donc un multiple de $4$, et l'autre est un multiple de $2$.
Leur produit est un multiple de $4\times2 = 8$, donc $P$ est divisible par $8$.

*$P$ est divisible par $3$.* Les trois premiers facteurs $n$, $n+1$, $n+2$ sont trois entiers
qui se suivent : d'après la partie a), l'un d'eux est un multiple de $3$.

*Passer de « $8$ et $3$ » à « $24$ ».* Même astuce que pour a) :

$$P = 9P - 8P$$

Comme $P$ est divisible par $8$, on a $P = 8k$, donc $9P = 72k = 24\times 3k$ : c'est un
multiple de $24$. Comme $P$ est divisible par $3$, on a $P = 3m$, donc $8P = 24m$ : c'est
encore un multiple de $24$. La différence de deux multiples de $24$ est un multiple de $24$,
donc $P$ est divisible par $24$.

**Conclusion.** $24$ divise tous les produits de la liste, et $24$ est l'un d'eux. Le PGCD vaut
donc $\mathrm{PGCD} = 24$.

## Going further

1. Soient $a$, $b$ et $c$ trois entiers relatifs tels que $a+b+c$ soit divisible par $6$.
   Montrer que $a^3+b^3+c^3$ est alors divisible par $6$.
   *(Indication : commencer par montrer que $n^3 - n = (n-1)\,n\,(n+1)$ pour tout entier $n$.)*
2. Deviner le PGCD des produits de **cinq** entiers qui se suivent, puis de $k$ entiers qui se
   suivent. Que reconnais-tu ?
