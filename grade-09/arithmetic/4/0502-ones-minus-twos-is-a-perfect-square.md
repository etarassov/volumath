---
id: "0502"
title: "Des 1 et des 2 qui font un carré"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [carre-parfait, chiffres, puissances-de-dix, demonstration, calcul-litteral]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 1 «Буквы помогают», задача 2"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

Antoine a remarqué deux choses :

$$11 - 2 = 9 = 3^2 \qquad \text{et} \qquad 1111 - 22 = 1089 = 33^2$$

Dans les deux cas, il a soustrait un nombre écrit avec des $2$ d'un nombre écrit avec deux fois plus de $1$, et il est tombé sur un carré parfait.

Soit $n$ un entier avec $n \geq 1$. Notons :

- $A$ le nombre écrit avec $2n$ chiffres $1$ ;
- $B$ le nombre écrit avec $n$ chiffres $2$.

Par exemple, pour $n = 3$ : $A = 111111$ et $B = 222$.

Montrer qu'Antoine a raison : le nombre $A - B$ est un carré parfait pour tout entier $n \geq 1$.

## Hints

1. Fais d'abord le calcul pour $n = 3$ : combien vaut $111111 - 222$ ? Reconnais-tu le carré de quel nombre ?
2. Note $u$ le nombre écrit avec $n$ chiffres $1$ (donc $u = 1$, puis $11$, puis $111$, …). Exprime $B$ à l'aide de $u$ : c'est facile.
3. Pour $A$, découpe les $2n$ chiffres $1$ en deux paquets de $n$ chiffres $1$. Le paquet de gauche est décalé de $n$ rangs vers la gauche. Écris $A$ à l'aide de $u$ et de $10^n$.
4. Tu dois arriver à $A - B = u \times (10^n - 1)$. Écris $10^n - 1$ en chiffres : que vois-tu ? Quel est son lien avec $u$ ?

## Solution

**L'idée : traiter les paquets de chiffres comme des lettres.** On ne pose aucune opération ; on donne un nom au bloc de chiffres qui revient tout le temps.

Notons $u$ le nombre écrit avec $n$ chiffres $1$ :

$$u = \underbrace{11\ldots1}_{n \text{ chiffres}} \quad \text{c'est-à-dire } u = 1,\ 11,\ 111,\ 1111,\ \ldots$$

**Étape 1. Écrire $B$ avec $u$.**

Le nombre $B$ s'écrit avec $n$ chiffres $2$. Chaque chiffre $2$ est le double du chiffre $1$ placé au même rang, donc

$$B = 2u$$

Par exemple $222 = 2 \times 111$.

**Étape 2. Écrire $A$ avec $u$.**

Le nombre $A$ s'écrit avec $2n$ chiffres $1$. Coupons-le en deux paquets de $n$ chiffres $1$ : le paquet de gauche et le paquet de droite. Le paquet de droite vaut $u$. Le paquet de gauche vaut aussi $u$, mais il est décalé de $n$ rangs vers la gauche, donc il vaut $u \times 10^n$. D'où

$$A = u \times 10^n + u = u\,(10^n + 1)$$

Par exemple, pour $n = 3$ : $111111 = 111 \times 1000 + 111 = 111 \times 1001$.

**Étape 3. Soustraire.**

$$A - B = u\,(10^n + 1) - 2u = u\,(10^n + 1 - 2) = u\,(10^n - 1)$$

**Étape 4. Reconnaître $10^n - 1$.**

Le nombre $10^n$ s'écrit $1$ suivi de $n$ zéros, donc $10^n - 1$ s'écrit avec $n$ chiffres $9$. Et ce nombre est exactement $9u$ :

$$9u = 10u - u = \underbrace{11\ldots1}_{n}0 \;-\; \underbrace{11\ldots1}_{n} = \underbrace{99\ldots9}_{n}$$

(par exemple $9 \times 111 = 1110 - 111 = 999$). Donc $10^n - 1 = 9u$.

**Étape 5. Conclure.**

$$A - B = u \times 9u = 9u^2 = (3u)^2$$

Le nombre $A - B$ est donc bien un carré parfait : c'est le carré de $3u$, c'est-à-dire le carré du nombre écrit avec $n$ chiffres $3$.

**Vérification.**

- $n = 1$ : $u = 1$, $3u = 3$, et $11 - 2 = 9 = 3^2$. ✓
- $n = 2$ : $u = 11$, $3u = 33$, et $1111 - 22 = 1089 = 33^2$. ✓
- $n = 3$ : $u = 111$, $3u = 333$, et $111111 - 222 = 110889 = 333^2$. ✓

**Conclusion.** Pour tout entier $n \geq 1$, le nombre écrit avec $2n$ chiffres $1$ diminué du nombre écrit avec $n$ chiffres $2$ est le carré du nombre écrit avec $n$ chiffres $3$. Antoine avait raison.

## Going further

1. Montrer que le nombre écrit avec $3n$ chiffres $1$ est divisible par le nombre écrit avec $n$ chiffres $1$.
2. Le nombre écrit avec $n$ chiffres $1$ peut-il être un carré parfait, pour un $n \geq 2$ ? (Regarde ses deux derniers chiffres, et compare avec les deux derniers chiffres possibles d'un carré.)
