---
id: "0479"
title: "Quand aⁿ − a est-il divisible par n ?"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, factorisation, contre-exemple, reste, disjonction-de-cas]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2017.pdf, листок 12, задача 5, с. 50"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Parmi les quatre affirmations suivantes, lesquelles sont vraies pour **tout** entier relatif
$a$ ?

a) $a^2 - a$ est divisible par $2$ ;
b) $a^3 - a$ est divisible par $3$ ;
c) $a^4 - a$ est divisible par $4$ ;
d) $a^5 - a$ est divisible par $5$.

Pour chaque affirmation, donner une démonstration si elle est vraie, et un contre-exemple si
elle est fausse.

## Hints

1. Commence par factoriser chaque expression. Que reconnais-tu dans $a^2 - a$ ? Et dans
   $a^3 - a$ ?
2. Une affirmation de ce genre n'est pas forcément vraie. Avant de chercher une démonstration,
   teste les petites valeurs : $a = 2$, puis $a = 3$.
3. Pour d), factorise $a^5 - a = (a-1)\,a\,(a+1)\,(a^2+1)$.
4. Toujours pour d) : écris $a = 5k + r$, où $r$ est le reste de $a$ dans la division par $5$,
   et examine les cinq cas $r = 0, 1, 2, 3, 4$ l'un après l'autre.

## Solution

**L'idée : on factorise, puis on sépare les cas selon le reste.**

### a) Vrai

$$a^2 - a = a(a-1)$$

Les entiers $a-1$ et $a$ se suivent, donc l'un des deux est pair. Le produit contient un
facteur pair, il est donc divisible par $2$.

### b) Vrai

$$a^3 - a = a(a^2-1) = a(a-1)(a+1) = (a-1)\,a\,(a+1)$$

(on a utilisé $a^2 - 1 = a^2 - 1^2 = (a-1)(a+1)$).

C'est le produit de trois entiers qui se suivent. Montrons que l'un d'eux est un multiple de
$3$, en regardant le reste de $a$ dans la division par $3$ :

- si $a = 3k$, le facteur $a$ est un multiple de $3$ ;
- si $a = 3k+1$, alors $a - 1 = 3k$ est un multiple de $3$ ;
- si $a = 3k+2$, alors $a + 1 = 3k+3 = 3(k+1)$ est un multiple de $3$.

Dans tous les cas, l'un des facteurs est un multiple de $3$, donc le produit aussi.

### c) Faux

Il suffit d'un contre-exemple. Prenons $a = 2$ :

$$2^4 - 2 = 16 - 2 = 14$$

et $14 = 4\times 3 + 2$ n'est pas divisible par $4$. L'affirmation c) est donc fausse.

*Remarque.* Une seule valeur de $a$ qui ne marche pas suffit à faire tomber l'affirmation. Il
est inutile d'en chercher d'autres — et inutile aussi de s'acharner à démontrer quelque chose
de faux.

### d) Vrai

Factorisons :

$$a^5 - a = a(a^4-1) = a(a^2-1)(a^2+1) = (a-1)\,a\,(a+1)\,(a^2+1)$$

(on a utilisé deux fois la différence de deux carrés : $a^4 - 1 = (a^2-1)(a^2+1)$, puis
$a^2 - 1 = (a-1)(a+1)$).

Séparons maintenant les cas selon le reste $r$ de $a$ dans la division par $5$.

- **$a = 5k$** : le facteur $a$ est un multiple de $5$.
- **$a = 5k+1$** : alors $a - 1 = 5k$ est un multiple de $5$.
- **$a = 5k+4$** : alors $a + 1 = 5k + 5 = 5(k+1)$ est un multiple de $5$.
- **$a = 5k+2$** : le dernier facteur convient. En effet
  $$a^2 + 1 = (5k+2)^2 + 1 = 25k^2 + 20k + 4 + 1 = 5\,(5k^2 + 4k + 1)$$
- **$a = 5k+3$** : de même
  $$a^2 + 1 = (5k+3)^2 + 1 = 25k^2 + 30k + 9 + 1 = 5\,(5k^2 + 6k + 2)$$

Dans chacun des cinq cas, l'un des quatre facteurs est un multiple de $5$, donc le produit
$a^5 - a$ l'est aussi.

**Conclusion.**

Les affirmations a), b) et d) sont vraies pour tout entier relatif $a$. L'affirmation c) est
fausse : $a = 2$ donne $a^4 - a = 14$, qui n'est pas divisible par $4$.

## Going further

1. Montrer que $a^3 - a$ est en réalité divisible par $6$, et pas seulement par $3$.
2. L'affirmation « $a^6 - a$ est divisible par $6$ pour tout entier $a$ » est-elle vraie ?
3. On peut montrer que « $a^7 - a$ est divisible par $7$ » est vraie. Regarde alors les
   nombres $2$, $3$, $4$, $5$, $6$, $7$ de ces énoncés : pour lesquels l'affirmation
   est-elle vraie ? Ce que tu observes porte un nom : le **petit théorème de Fermat**, qui
   affirme que $a^p - a$ est divisible par $p$ pour tout entier $a$, dès que $p$ est un
   nombre premier.
