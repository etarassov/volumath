---
id: "0308"
title: "Sommes et différences au tableau"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [pgcd, invariant, algorithme-d-euclide, parite]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов"
  reference: "AU.pdf, листок 10 «Алгоритм Евклида», задача 6 (с. 61)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Deux entiers naturels $a$ et $b$ sont écrits au tableau. À chaque étape, Jean efface l'un des deux nombres et le remplace par la somme des deux nombres écrits, ou par leur différence (le plus grand moins le plus petit).

Quel est le plus petit entier naturel non nul que Jean peut faire apparaître au tableau après un certain nombre d'étapes, si :

1. $a = 1001$ et $b = 759$ ;
2. $a = 7n + 3$ et $b = 11n + 5$, où $n$ est un entier naturel ?

## Hints

1. Jouer d'abord avec des petits nombres, par exemple $a = 12$ et $b = 18$. Quels nombres arrive-t-on à obtenir ? Et avec $a = 12$ et $b = 7$ ?
2. Chercher une quantité qui ne change **jamais** au cours du jeu. Si $d$ divise les deux nombres écrits, que peut-on dire de leur somme et de leur différence ?
3. Le PGCD des deux nombres écrits au tableau ne change jamais. Tous les nombres qui apparaissent sont donc des multiples de $\mathrm{PGCD}(a, b)$. Le plus petit entier naturel non nul multiple de $\mathrm{PGCD}(a, b)$, c'est...
4. Il reste à montrer que ce nombre est vraiment atteint. Que se passe-t-il si l'on remplace toujours le plus grand des deux nombres par la différence ?
5. Pour la question 2, appliquer l'algorithme d'Euclide aux expressions en $n$ : $\mathrm{PGCD}(7n+3,\ 11n+5) = \mathrm{PGCD}(7n+3,\ 4n+2) = \dots$

## Solution

**La réponse.** Dans tous les cas, le plus petit entier naturel non nul que Jean peut obtenir est $\mathrm{PGCD}(a, b)$. Démontrons-le, puis calculons.

**Étape 1 : on ne peut pas descendre en dessous du PGCD.**

Posons $d = \mathrm{PGCD}(a, b)$.

Au départ, $d$ divise les deux nombres écrits. Supposons qu'à un moment donné $d$ divise les deux nombres $u$ et $v$ du tableau. Alors $d$ divise aussi $u + v$ et $u - v$. Le nombre nouvellement écrit est donc encore un multiple de $d$, et l'autre nombre n'a pas bougé.

De proche en proche, **tous les nombres qui apparaissent au tableau sont des multiples de $d$**. C'est l'invariant du problème.

Or le plus petit multiple strictement positif de $d$ est $d$ lui-même. Jean ne peut donc jamais obtenir un entier naturel non nul plus petit que $d$.

**Étape 2 : le PGCD est bel et bien atteint.**

Jean adopte la règle suivante : tant que les deux nombres sont différents, il remplace le plus grand par la différence des deux.

C'est exactement l'algorithme d'Euclide par soustractions. À chaque étape, la somme des deux nombres diminue strictement et reste un entier strictement positif : le procédé s'arrête donc. Il ne s'arrête que lorsque les deux nombres sont égaux, disons à $c$.

Reste à identifier $c$. Pour cela, remarquons que le **PGCD du couple écrit au tableau** ne change pas non plus. En effet, pour $u > v$ :

- tout diviseur commun de $u$ et $v$ divise $u - v$, donc divise $u - v$ et $v$ ;
- tout diviseur commun de $u - v$ et $v$ divise $(u-v) + v = u$, donc divise $u$ et $v$.

Les couples $(u \, ; v)$ et $(u - v \, ; v)$ ont donc les mêmes diviseurs communs, donc le même PGCD.

À la fin, les deux nombres valent $c$, et $\mathrm{PGCD}(c, c) = c$. Comme ce PGCD valait $d$ au départ et n'a jamais changé, on obtient $c = d$.

Jean fait donc apparaître $d$ au tableau.

**Conclusion générale : la réponse est $\mathrm{PGCD}(a, b)$.**

**Question 1 : $a = 1001$, $b = 759$.**

Algorithme d'Euclide :
$$1001 = 1 \times 759 + 242$$
$$759 = 3 \times 242 + 33$$
$$242 = 7 \times 33 + 11$$
$$33 = 3 \times 11 + 0$$

Donc $\mathrm{PGCD}(1001, 759) = 11$.

(On peut le retrouver par les facteurs premiers : $1001 = 7 \times 11 \times 13$ et $759 = 3 \times 11 \times 23$.)

**Le plus petit nombre obtenu est $11$.**

**Question 2 : $a = 7n + 3$, $b = 11n + 5$.**

On applique l'algorithme d'Euclide, en soustrayant à chaque fois :

$$\mathrm{PGCD}(7n+3,\ 11n+5) = \mathrm{PGCD}(7n+3,\ 4n+2) \quad \text{car } (11n+5)-(7n+3) = 4n+2$$
$$= \mathrm{PGCD}(3n+1,\ 4n+2) \quad \text{car } (7n+3)-(4n+2) = 3n+1$$
$$= \mathrm{PGCD}(3n+1,\ n+1) \quad \text{car } (4n+2)-(3n+1) = n+1$$
$$= \mathrm{PGCD}(2,\ n+1) \quad \text{car } (3n+1) - 3(n+1) = -2$$

Il reste à discuter selon la parité de $n$ :

- si $n$ est **impair**, alors $n + 1$ est pair, donc $\mathrm{PGCD}(2, n+1) = 2$ ;
- si $n$ est **pair**, alors $n + 1$ est impair, donc $\mathrm{PGCD}(2, n+1) = 1$.

**Le plus petit nombre obtenu vaut $2$ si $n$ est impair, et $1$ si $n$ est pair.**

**Vérification.** Pour $n = 1$ : $a = 10$ et $b = 16$, et $\mathrm{PGCD}(10, 16) = 2$. Pour $n = 2$ : $a = 17$ et $b = 27$, et $\mathrm{PGCD}(17, 27) = 1$. Cela colle.

## Going further

1. Jean peut-il obtenir **tous** les multiples de $\mathrm{PGCD}(a, b)$, ou seulement certains ?
2. Reprendre le problème quand Jean a le droit d'écrire un troisième nombre au tableau, somme ou différence de deux nombres déjà écrits, sans jamais rien effacer.
3. Calculer $\mathrm{PGCD}(5a + 3b,\ 13a + 8b)$ en fonction de $\mathrm{PGCD}(a, b)$.
