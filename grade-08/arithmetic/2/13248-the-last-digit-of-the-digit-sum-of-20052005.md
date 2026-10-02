---
id: "13248"
title: "Le dernier chiffre de la somme des chiffres de 20052005…2005"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [somme-des-chiffres, dernier-chiffre, periodicite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017"
  reference: "2017-10_coupe_automne_2017.pdf, énoncés collège, exercice 2 ; corrigé 2017-10_coupe_automne_2017_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017.pdf"
---

## Statement

Pour tout entier $n \geqslant 1$, on écrit $n$ fois « $2005$ » à la suite, ce qui donne le nombre $20052005\ldots2005$. On note $a_n$ le dernier chiffre de la somme des chiffres de ce nombre.

Par exemple, $a_1 = 7$ (la somme des chiffres de $2005$ est $7$) et $a_2 = 4$ (la somme des chiffres de $20052005$ est $14$).

a) Pour quels entiers $n \geqslant 1$ a-t-on $a_n = 0$ ?

b) Calculer $a_1 + a_2 + \cdots + a_{2005}$.

## Hints

1. Quelle est la somme des chiffres du nombre obtenu en écrivant $n$ fois « $2005$ » ?
2. $a_n$ est donc le dernier chiffre de $7n$. Calcule $a_1$, $a_2$, …, $a_{12}$. Que remarques-tu ?
3. Pourquoi $a_{n+10} = a_n$ ?

## Solution

**La somme des chiffres.** Chaque bloc « $2005$ » apporte $2 + 0 + 0 + 5 = 7$. Avec $n$ blocs, la somme des chiffres vaut $7n$, et $a_n$ est le dernier chiffre de $7n$.

**Les dix premiers termes.**

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|
| $7n$ | $7$ | $14$ | $21$ | $28$ | $35$ | $42$ | $49$ | $56$ | $63$ | $70$ |
| $a_n$ | $7$ | $4$ | $1$ | $8$ | $5$ | $2$ | $9$ | $6$ | $3$ | $0$ |

**La suite se répète tous les $10$ termes.** On a $7(n + 10) = 7n + 70$. Ajouter $70$ ne change pas le chiffre des unités, donc $a_{n+10} = a_n$. Ainsi $a_n$ ne dépend que du dernier chiffre de $n$ : si $n$ se termine par $r$ (avec $r$ entre $1$ et $9$), alors $a_n = a_r$, et si $n$ se termine par $0$, alors $a_n = a_{10} = 0$.

**a)** Dans le tableau, seul $a_{10}$ vaut $0$. Donc $a_n = 0$ exactement quand $n$ se termine par $0$ : les entiers cherchés sont les multiples de $10$.

**b)** Dix termes consécutifs, de $a_{10k+1}$ à $a_{10k+10}$, ont pour somme

$$7 + 4 + 1 + 8 + 5 + 2 + 9 + 6 + 3 + 0 = 45.$$

De $a_1$ à $a_{2000}$, il y a $200$ tels paquets, soit $200 \times 45 = 9000$. Il reste $a_{2001} + \cdots + a_{2005} = 7 + 4 + 1 + 8 + 5 = 25$.

**Conclusion.** a) $a_n = 0$ exactement quand $n$ est un multiple de $10$. b) $a_1 + a_2 + \cdots + a_{2005} = 9025$.
