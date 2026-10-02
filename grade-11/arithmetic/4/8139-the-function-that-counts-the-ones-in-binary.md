---
id: "8139"
title: "Une fonction définie par récurrence sur les entiers"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [base-deux, recurrence, maximum, chiffres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe B"
  reference: "stage_ete_2018.pdf, Groupe B, « Combinatoire – Récurrence », exercice 6"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $f$ une fonction qui, à chaque entier $n \geq 1$, associe un entier $f(n) \geq 0$, et qui vérifie les trois règles suivantes :

1. $f(1) = 1$ ;
2. $f(2n) = f(n)$ pour tout $n \geq 1$ ;
3. $f(2n+1) = f(n) + 1$ pour tout $n \geq 1$.

Quelle est la plus grande valeur de $f(n)$ quand $n$ parcourt les entiers de $1$ à $2018$ ?

## Hints

1. Calcule $f(n)$ pour $n$ de $1$ à $16$ et range les résultats dans un tableau.
2. Écris à côté l'écriture de $n$ en base $2$. Que remarques-tu ?
3. Les deux règles $f(2n) = f(n)$ et $f(2n+1) = f(n)+1$ correspondent exactement à l'ajout d'un chiffre à droite de l'écriture binaire. Lequel ?
4. Une fois la formule trouvée, cherche parmi les entiers $\leq 2018$ celui qui a le plus de $1$ dans son écriture binaire. Combien de chiffres binaires un tel entier peut-il avoir au maximum ?

## Solution

### Ce que calcule $f$

**Observation.** Écrivons quelques valeurs, avec l'écriture de $n$ en base $2$ :

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|
| $n$ en base $2$ | 1 | 10 | 11 | 100 | 101 | 110 | 111 | 1000 |
| $f(n)$ | 1 | 1 | 2 | 1 | 2 | 2 | 3 | 1 |

On devine :

> $f(n)$ est le nombre de chiffres $1$ dans l'écriture de $n$ en base $2$.

**Démonstration.** Notons $c(n)$ ce nombre de chiffres $1$. Montrons $f(n) = c(n)$ par récurrence forte sur $n$.

*Initialisation.* $f(1) = 1$ et $1$ s'écrit « $1$ » en base $2$, donc $c(1) = 1$.

*Hérédité.* Soit $n \geq 2$ et supposons la formule vraie pour tous les entiers strictement plus petits que $n$. Deux cas.

- Si $n$ est pair, écrivons $n = 2m$ avec $1 \leq m < n$. En base $2$, écrire $2m$ revient à écrire $m$ puis à ajouter un $0$ à droite : le nombre de $1$ ne change pas, donc $c(n) = c(m)$. Et la règle 2 donne $f(n) = f(m)$. Par hypothèse de récurrence $f(m) = c(m)$, d'où $f(n) = c(n)$.
- Si $n$ est impair, écrivons $n = 2m+1$ avec $1 \leq m < n$. En base $2$, écrire $2m+1$ revient à écrire $m$ puis à ajouter un $1$ à droite : le nombre de $1$ augmente de un, donc $c(n) = c(m) + 1$. Et la règle 3 donne $f(n) = f(m) + 1 = c(m) + 1 = c(n)$.

*Conclusion.* $f(n) = c(n)$ pour tout $n \geq 1$.

### Le maximum pour $n \leq 2018$

**Une majoration.**

On a $2018 < 2048 = 2^{11}$, donc tout entier $n \leq 2018$ s'écrit avec au plus $11$ chiffres en base $2$, et $f(n) \leq 11$.

La valeur $11$ est-elle possible ? Il faudrait que les $11$ chiffres soient tous des $1$, c'est-à-dire

$$n = \underbrace{11\cdots1}_{11 \text{ chiffres}}{}_{(2)} = 2^{11} - 1 = 2047.$$

Or $2047 > 2018$ : c'est impossible. Donc $f(n) \leq 10$.

**La valeur $10$ est atteinte.**

Prenons $n = 1023 = 2^{10} - 1$, dont l'écriture binaire est faite de dix $1$. On a bien $1023 \leq 2018$ et $f(1023) = 10$.

**La plus grande valeur de $f(n)$ pour $1 \leq n \leq 2018$ est $10$.**

Remarque : $1023$ n'est pas le seul à l'atteindre. Par exemple $2015 = 11111011111_{(2)}$ a lui aussi dix chiffres $1$, et $2015 \leq 2018$.
