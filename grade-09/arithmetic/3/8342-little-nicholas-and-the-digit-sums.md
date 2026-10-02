---
id: "8342"
title: "Le Petit Nicolas et les sommes de chiffres"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [invariant, congruences, somme-des-chiffres, modulo-neuf]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe B"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe B, « Pavages, coloriages et invariants » (Aline), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

On écrit au tableau les entiers de $1$ à $100$.

À chaque étape, le Petit Nicolas efface deux nombres, les additionne, et écrit à leur place la
**somme des chiffres** du résultat. Par exemple, s'il efface $47$ et $56$, il calcule
$47 + 56 = 103$, puis écrit $1 + 0 + 3 = 4$.

Il recommence jusqu'à ce qu'il ne reste qu'un seul nombre au tableau.

1. À la fin, le nombre écrit est $24$. Le Petit Nicolas doit-il réviser son calcul mental ?
2. Ayant refait ses calculs sans erreur, il obtient un nombre compris entre $15$ et $25$. Quel est ce nombre ?

## Hints

1. Dès qu'un problème parle de somme des chiffres, il faut penser à un certain nombre. Lequel ?
2. Un entier et la somme de ses chiffres ont le même reste dans la division euclidienne par $9$. C'est le principe de la « preuve par neuf ».
3. Regarde la somme de **tous** les nombres écrits au tableau. Comment change-t-elle à chaque étape, modulo $9$ ?
4. Calcule la somme $1 + 2 + \cdots + 100$, puis son reste modulo $9$.
5. Pour la seconde question, cherche parmi $15, 16, \ldots, 25$ celui qui a le bon reste.

## Solution

**L'invariant : la somme de tout le tableau, modulo 9.**

Un entier est toujours congru à la somme de ses chiffres modulo $9$. En effet, si
$N = a_d \cdot 10^d + \cdots + a_1 \cdot 10 + a_0$, alors comme $10 \equiv 1 \pmod 9$ on a
$10^k \equiv 1 \pmod 9$ pour tout $k$, donc

$$N \equiv a_d + \cdots + a_1 + a_0 \pmod 9 .$$

Regardons maintenant $S$, la somme de tous les nombres écrits au tableau, et voyons ce qu'une
étape lui fait. Nicolas efface $a$ et $b$, et écrit $s(a+b)$, la somme des chiffres de $a+b$.
La nouvelle somme totale est

$$S' = S - a - b + s(a+b) .$$

Or $s(a+b) \equiv a + b \pmod 9$, donc

$$S' \equiv S - a - b + (a+b) \equiv S \pmod 9 .$$

**La somme de tout le tableau garde donc le même reste modulo $9$, du début à la fin.**

**La valeur de départ.**

$$1 + 2 + \cdots + 100 = \frac{100 \times 101}{2} = 5050 .$$

Son reste modulo $9$ : la somme des chiffres de $5050$ vaut $5 + 0 + 5 + 0 = 10$, dont la somme
des chiffres vaut $1$. Donc

$$5050 \equiv 1 \pmod 9 .$$

À la fin, il ne reste qu'un nombre au tableau, et ce nombre doit donc être congru à $1$ modulo
$9$.

**1) Le nombre 24 est-il possible ?**

$$24 = 2 \times 9 + 6 , \qquad \text{donc} \qquad 24 \equiv 6 \pmod 9 .$$

Comme $6 \neq 1$, le nombre $24$ est impossible : **le Petit Nicolas s'est bien trompé quelque
part.**

**2) Le nombre entre 15 et 25.**

Cherchons les entiers de $15$ à $25$ congrus à $1$ modulo $9$. Les entiers congrus à $1$ modulo
$9$ sont $\ldots, 10, 19, 28, \ldots$ Le seul qui soit entre $15$ et $25$ est

$$\boxed{19} .$$

## Going further

Attention à ce que dit et ne dit pas un invariant. Il donne une condition **nécessaire** : si le
résultat final n'a pas le bon reste, il est impossible. Mais il ne dit pas, en général, que
toutes les valeurs ayant le bon reste sont atteignables.

Ici la seconde question s'en tire parce que l'énoncé garantit qu'un résultat existe et qu'il est
entre $15$ et $25$ : l'invariant n'a plus qu'à trancher entre onze candidats.

Le fait qu'un entier soit congru à la somme de ses chiffres modulo $9$ est l'origine de la
« preuve par neuf », que l'on enseignait autrefois pour vérifier les multiplications à la main.
Elle détecte beaucoup d'erreurs, mais pas toutes : une erreur qui change le résultat d'un
multiple de $9$ passe inaperçue.
