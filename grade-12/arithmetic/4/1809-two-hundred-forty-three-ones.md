---
id: "1809"
title: "Deux cent quarante-trois chiffres 1"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [recurrence, divisibilite, ecriture-decimale, puissances-de-trois]
adapted_from: null
see_also: ["1217"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction I"
  reference: "Handout-1474-1433.pdf, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1474-1433.pdf"
---

## Statement

Pour un entier $k \ge 1$, notons $R_k$ le nombre dont l'écriture décimale est faite de $k$ chiffres $1$ :

$$R_1 = 1, \quad R_2 = 11, \quad R_3 = 111, \quad R_4 = 1111, \quad \ldots$$

1. Vérifier que $R_3$ est divisible par $3$ et que $R_9$ est divisible par $9$.
2. Démontrer que, pour tout entier naturel $n$, le nombre $R_{3^n}$ est divisible par $3^n$.
3. En déduire que le nombre formé de $243$ chiffres $1$ est divisible par $243$.

## Hints

1. Pour la question 1, la règle de divisibilité par $3$ et par $9$ suffit : regarde la somme des chiffres.
2. Pour la question 2, on ne peut évidemment pas vérifier un par un. Cherche comment passer de $R_{3^n}$ à $R_{3^{n+1}}$.
3. Regarde $R_9$ et $R_3$ : essaie de deviner par quoi il faut multiplier $111$ pour obtenir $111\,111\,111$. Pose la division si nécessaire.
4. Plus généralement, le nombre formé de $3m$ chiffres $1$ est fait de trois blocs identiques de $m$ chiffres $1$. Écris-le comme $R_m$ multiplié par quelque chose.
5. Tu devrais trouver $R_{3m} = R_m \times \left(1 + 10^m + 10^{2m}\right)$.
6. Reste à voir pourquoi $1 + 10^m + 10^{2m}$ est toujours divisible par $3$. Combien de chiffres $1$ ce nombre comporte-t-il ?

## Solution

### 1. Les deux premiers cas

$R_3 = 111$ : la somme de ses chiffres vaut $3$, donc $111$ est divisible par $3$. En effet $111 = 3 \times 37$.

$R_9 = 111\,111\,111$ : la somme de ses chiffres vaut $9$, donc ce nombre est divisible par $9$. En effet $111\,111\,111 = 9 \times 12\,345\,679$.

### 2. L'étape clé : découper en trois blocs

Soit $m \ge 1$. Le nombre $R_{3m}$ s'écrit avec $3m$ chiffres $1$, que l'on peut lire comme **trois blocs** de $m$ chiffres $1$ :

$$\underbrace{11\ldots1}_{3m} = \underbrace{11\ldots1}_{m}\underbrace{11\ldots1}_{m}\underbrace{11\ldots1}_{m}.$$

Le bloc de gauche est décalé de $2m$ rangs, celui du milieu de $m$ rangs, celui de droite pas du tout. Donc

$$R_{3m} = R_m \times 10^{2m} + R_m \times 10^{m} + R_m = R_m \times \left(1 + 10^m + 10^{2m}\right).$$

*Exemple avec $m = 3$ :* $111\,111\,111 = 111 \times 1\,001\,001$, et l'on a bien $1\,001\,001 = 1 + 10^3 + 10^6$.

**Le second facteur est divisible par $3$.** Le nombre $1 + 10^m + 10^{2m}$ s'écrit $1\underbrace{0\ldots0}_{m-1}1\underbrace{0\ldots0}_{m-1}1$ : trois chiffres $1$ et des zéros. La somme de ses chiffres vaut $3$, donc il est divisible par $3$. (Autre façon de le dire : $10 \equiv 1 \pmod 3$, donc $10^m \equiv 1$ et $10^{2m} \equiv 1$, d'où $1 + 10^m + 10^{2m} \equiv 3 \equiv 0 \pmod 3$.)

### La récurrence

Notons $D(n)$ la propriété « $R_{3^n}$ est divisible par $3^n$ ».

*Initialisation :* pour $n = 0$, $R_{3^0} = R_1 = 1$ et $3^0 = 1$. Comme $1$ divise $1$, $D(0)$ est vraie.

*Hérédité :* soit $n \ge 0$ tel que $R_{3^n}$ soit divisible par $3^n$. Appliquons la formule ci-dessus avec $m = 3^n$, en remarquant que $3m = 3^{n+1}$ :

$$R_{3^{n+1}} = R_{3^n} \times \left(1 + 10^{3^n} + 10^{2 \times 3^n}\right).$$

Le premier facteur est divisible par $3^n$ (hypothèse de récurrence) et le second est divisible par $3$ (point précédent). Le produit est donc divisible par $3^n \times 3 = 3^{n+1}$. Donc $D(n+1)$ est vraie.

**Conclusion.** Par récurrence, $R_{3^n}$ est divisible par $3^n$ pour tout entier naturel $n$.

### 3. Le cas de 243 chiffres

On a $243 = 3^5$. En appliquant le résultat avec $n = 5$ :

$$R_{243} = \underbrace{11\ldots1}_{243} \ \text{est divisible par} \ 3^5 = 243.$$

**Remarque.** Le résultat est exactement optimal : on peut montrer que $R_{3^n}$ n'est **pas** divisible par $3^{n+1}$. La puissance de $3$ obtenue est donc la plus grande possible.

## Going further

1. Vérifie que $R_{27}$ est divisible par $27$ mais pas par $81$.
2. Pour quels entiers $k$ le nombre $R_k$ est-il divisible par $7$ ? Par $11$ ? (Calcule $R_k$ modulo $7$ et modulo $11$ pour les premières valeurs de $k$ et cherche la période.)
