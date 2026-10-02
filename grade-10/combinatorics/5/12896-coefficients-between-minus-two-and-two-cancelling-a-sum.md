---
id: "12896"
title: "Coefficients entre −2 et 2 qui annulent une somme"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [principe-des-tiroirs, maximum, analyse-synthese, somme-geometrique, construction, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 14 mai 2025"
  reference: "2025-10_Sujet-Test-5-2024-2025.pdf, test junior, exercice 4 ; corrigé 2025-10_Corrige-Test-5-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-5-2024-2025.pdf"
---

## Statement

Soit $n \geq 2$ un entier. Déterminer, en fonction de $n$, le plus grand entier $M \geq 1$ qui a la propriété suivante.

Pour tous entiers $a_1, a_2, \ldots, a_n$ positifs ou nuls tels que $a_1 + a_2 + \cdots + a_n = M$, il existe des entiers $b_1, b_2, \ldots, b_n$, tous dans l'ensemble $\{-2, -1, 0, 1, 2\}$ et pas tous nuls, tels que

$$a_1 b_1 + a_2 b_2 + \cdots + a_n b_n = 0.$$

## Hints

1. Faites le cas $n = 2$ à la main : quels sont les entiers $M$ qui ont la propriété ?
2. Regardez les sommes $a_1 c_1 + \cdots + a_n c_n$ où chaque $c_i$ vaut $-1$, $0$ ou $1$. Combien de choix de $(c_1, \ldots, c_n)$ y a-t-il ? Entre quelles valeurs ces sommes sont-elles comprises ? Que donne la différence de deux sommes égales ?
3. Pour un exemple où il n'existe pas de bons $b_i$, pensez aux puissances de $3$ : $a_1 = 1$, $a_2 = 3$, $a_3 = 9$, et ainsi de suite.
4. Avec ces $a_i$, regardez le plus grand indice $j$ tel que $b_j \neq 0$. Le terme $3^{j-1} b_j$ peut-il être compensé par les termes précédents ?

## Solution

La réponse : **le plus grand entier qui convient est $M = (3^n - 3)/2$.**

C'est bien un entier, car $3^n$ est impair, donc $3^n - 3$ est pair. Pour $n = 2$, on trouve $M = 3$ ; pour $n = 3$, on trouve $M = 12$.

Il faut montrer deux choses : que $M_0 = (3^n - 3)/2$ a la propriété, et qu'aucun entier plus grand ne l'a.

### Un calcul utile

Pour tout entier $k \geq 1$, notons $S_k = 1 + 3 + 3^2 + \cdots + 3^{k-1}$. Alors $3S_k = 3 + 3^2 + \cdots + 3^k$, et en faisant la différence, $3S_k - S_k = 3^k - 1$. Donc

$$2 S_k = 3^k - 1.$$

### Première partie : M0 a la propriété

Soient $a_1, \ldots, a_n$ des entiers positifs ou nuls de somme $M_0$.

On choisit pour chaque indice $i$ un nombre $c_i$ égal à $-1$, $0$ ou $1$, et on calcule la somme $a_1 c_1 + \cdots + a_n c_n$. Il y a $3$ choix pour chaque $c_i$, donc $3^n$ choix de la liste $(c_1, \ldots, c_n)$ en tout.

Comme les $a_i$ sont positifs ou nuls, et chaque $c_i$ est entre $-1$ et $1$, on a $-a_i \leq a_i c_i \leq a_i$, donc

$$-M_0 \leq a_1 c_1 + \cdots + a_n c_n \leq M_0.$$

Chaque somme est donc un des entiers $-M_0, -M_0 + 1, \ldots, M_0$. Il y en a $2M_0 + 1 = 3^n - 2$.

On a $3^n$ listes et seulement $3^n - 2$ valeurs possibles. D'après le principe des tiroirs, deux listes différentes $(c_1, \ldots, c_n)$ et $(c'_1, \ldots, c'_n)$ donnent la même somme. On pose $b_i = c_i - c'_i$ pour chaque $i$. Alors :

- chaque $b_i$ est entre $-1 - 1 = -2$ et $1 - (-1) = 2$, donc dans $\{-2, -1, 0, 1, 2\}$ ;
- les $b_i$ ne sont pas tous nuls, car les deux listes sont différentes ;
- $a_1 b_1 + \cdots + a_n b_n = (a_1 c_1 + \cdots + a_n c_n) - (a_1 c'_1 + \cdots + a_n c'_n) = 0$.

**Donc $M_0$ a la propriété.**

### Deuxième partie : un entier plus grand n'a pas la propriété

Soit $M > M_0$, c'est-à-dire $M \geq M_0 + 1 = (3^n - 1)/2$. On pose $d = M - (3^n - 1)/2$, qui est un entier positif ou nul, et on choisit

$$a_1 = 1, \quad a_2 = 3, \quad a_3 = 3^2, \quad \ldots, \quad a_{n-1} = 3^{n-2}, \quad a_n = 3^{n-1} + d.$$

Ce sont des entiers positifs, et leur somme vaut $S_n + d = (3^n - 1)/2 + d = M$.

Supposons qu'il existe $b_1, \ldots, b_n$ dans $\{-2, -1, 0, 1, 2\}$, pas tous nuls, tels que $a_1 b_1 + \cdots + a_n b_n = 0$. Soit $j$ le plus grand indice tel que $b_j \neq 0$. Quitte à changer tous les $b_i$ en leurs opposés, ce qui garde la somme nulle, on peut supposer $b_j > 0$, donc $b_j \geq 1$. Les termes d'indice plus grand que $j$ sont nuls.

- Le dernier terme non nul vérifie $a_j b_j \geq 3^{j-1} b_j \geq 3^{j-1}$. (Si $j = n$, c'est vrai car $a_n = 3^{n-1} + d \geq 3^{n-1}$ et $b_n > 0$.)
- Pour $i < j$, on a $a_i = 3^{i-1}$ et $b_i \geq -2$, donc $a_i b_i \geq -2 \times 3^{i-1}$.

En additionnant, et avec le calcul utile pour $k = j - 1$ (la somme est vide si $j = 1$),

$$0 = a_1 b_1 + \cdots + a_j b_j \geq 3^{j-1} - 2\left(1 + 3 + \cdots + 3^{j-2}\right) = 3^{j-1} - (3^{j-1} - 1) = 1.$$

C'est absurde. **Aucun entier $M > M_0$ n'a la propriété.**

### Conclusion

**Le plus grand entier $M$ qui a la propriété est $M = (3^n - 3)/2$.**

## Going further

1. Le raisonnement de la première partie montre que tout entier $M$ entre $1$ et $(3^n - 3)/2$ a la propriété. Expliquez pourquoi.
2. Même question si les $b_i$ doivent être dans $\{-1, 0, 1\}$. (Utilisez cette fois les sommes $a_1 c_1 + \cdots + a_n c_n$ avec $c_i \in \{0, 1\}$, et les puissances de $2$.)
3. Expliquez le lien avec l'écriture des entiers en base $3$ : pourquoi un entier ne peut-il pas s'écrire de deux façons différentes comme $c_1 + 3c_2 + \cdots + 3^{n-1}c_n$ avec chaque $c_i$ égal à $-1$, $0$ ou $1$ ?
