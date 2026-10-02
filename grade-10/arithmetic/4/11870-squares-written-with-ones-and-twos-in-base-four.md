---
id: "11870"
title: "Des carrés qui ne s'écrivent qu'avec des 1 et des 2 en base 4"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [bases de numeration, carres parfaits, construction, infinite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Seniors, exercice 17 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Montrer qu'il existe une infinité d'entiers $n$ tels que l'écriture de $n^2$ en base $4$ ne contienne que des chiffres $1$ et $2$.

## Hints

1. Chercher les premiers exemples : $5^2 = 25$ s'écrit $121$ en base $4$.
2. Si $N$ s'écrit avec $k$ chiffres en base $4$, que donne l'écriture de $4^j \times N$ ? Et celle d'une somme comme $N + 4^k N$ ?
3. À partir d'un bon $n$, chercher un nouvel entier $m = A n + n$ dont le carré soit une somme de trois copies de $n^2$ décalées. Il faut que $A^2$ et $2A$ soient des puissances de $4$.
4. Deux copies peuvent se chevaucher sur un chiffre, à condition que la somme de ces deux chiffres reste un $1$ ou un $2$.

## Solution

**Rappel.** Écrire un entier $N$ en base $4$, c'est l'écrire $N = c_0 + c_1 \times 4 + c_2 \times 4^2 + \cdots + c_{k-1} \times 4^{k-1}$ avec des chiffres $c_i \in \{0, 1, 2, 3\}$ et $c_{k-1} \neq 0$ ; cette écriture est unique. Multiplier par $4^j$ décale tous les chiffres de $j$ rangs vers la gauche. Quand on additionne des nombres écrits en base $4$ et que, à chaque rang, la somme des chiffres reste inférieure ou égale à $3$, il n'y a pas de retenue : le chiffre de la somme à ce rang est la somme des chiffres.

**L'idée.** On va montrer quelque chose d'un peu plus fort, qui se transmet d'un entier au suivant. Disons qu'un entier $n$ est *bon* si l'écriture de $n^2$ en base $4$ ne contient que des $1$ et des $2$, a au moins deux chiffres, et commence et finit par le chiffre $1$.

L'entier $5$ est bon : $5^2 = 25 = 1 \times 16 + 2 \times 4 + 1$ s'écrit $121$ en base $4$.

**Fabriquer un bon entier plus grand.** Soit $n$ un bon entier, et soit $k \geqslant 2$ le nombre de chiffres de $n^2$ en base $4$. Posons
$$m = 2^{2k-1} \times n + n.$$
Alors
$$m^2 = \left(2^{2k-1}\right)^2 n^2 + 2 \times 2^{2k-1} \times n^2 + n^2 = 4^{2k-1}\, n^2 + 4^{k}\, n^2 + n^2,$$
car $\left(2^{2k-1}\right)^2 = 2^{4k-2} = 4^{2k-1}$ et $2 \times 2^{2k-1} = 2^{2k} = 4^k$.

En base $4$, les trois termes sont trois copies de l'écriture de $n^2$ :

- $n^2$ occupe les rangs $0$ à $k-1$ ;
- $4^k n^2$ occupe les rangs $k$ à $2k-1$ ;
- $4^{2k-1} n^2$ occupe les rangs $2k-1$ à $3k-2$.

Les deux premières copies sont côte à côte sans se toucher. Les deux dernières se chevauchent sur un seul rang, le rang $2k-1$. À ce rang, la deuxième copie apporte son premier chiffre (celui de gauche) et la troisième copie son dernier chiffre (celui de droite). Ces deux chiffres valent $1$ puisque $n$ est bon, et leur somme vaut $2$.

À chaque rang, la somme des chiffres vaut donc $1$ ou $2$ : il n'y a aucune retenue, et l'écriture de $m^2$ en base $4$ ne contient que des $1$ et des $2$. Son premier chiffre (au rang $3k - 2$, qui est strictement plus grand que $2k - 1$ car $k \geqslant 2$) est le premier chiffre de $n^2$, c'est-à-dire $1$, et son dernier chiffre (au rang $0$) est le dernier chiffre de $n^2$, c'est-à-dire $1$. Enfin $m^2$ a $3k - 1 \geqslant 2$ chiffres. Donc **$m$ est bon**, et $m > n$.

Par exemple, à partir de $n = 5$ (avec $k = 3$), on obtient $m = 2^5 \times 5 + 5 = 165$, et $165^2 = 27225$ s'écrit $12221121$ en base $4$.

**Conclusion.** En partant de $5$ et en répétant cette construction, on obtient une suite infinie d'entiers bons, de plus en plus grands. **Il existe donc une infinité d'entiers $n$ dont le carré ne s'écrit qu'avec des $1$ et des $2$ en base $4$.**

## Going further

La condition « au moins deux chiffres » n'est pas là par hasard. L'entier $1$ a un carré qui s'écrit $1$, mais la construction donne alors $m = 3$ et $m^2 = 9$, qui s'écrit $21$ en base $4$ : le chevauchement tombe sur le premier chiffre, qui devient un $2$, et l'on ne peut plus continuer.
