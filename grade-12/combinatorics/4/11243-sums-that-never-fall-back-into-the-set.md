---
id: "11243"
title: "Des sommes qui ne retombent jamais dans l'ensemble"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 50
tags: [algorithme glouton, recurrence, denombrement, sommes, injection]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 4 (combinatoire)"
  reference: "2017-10_ofm-2016-2017-envoi-4.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2016-2017-envoi-4-solutions.pdf (le corrigé affirme que l'ensemble des a de A_m tels que a + b_{m+1} soit dans A est contenu dans l'ensemble des a de A plus grands que b_{m+1}, ce qui est faux puisque b_{m+1} est le plus grand élément de A_m ; c'est l'application a ↦ a + b_{m+1} qui envoie ce premier ensemble, sans répétition, dans le second, et cela suffit pour la majoration)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier, et soit $A$ un ensemble de $2^n$ nombres réels strictement
positifs.

Montrer que l'on peut choisir une partie $B$ de $A$ ayant $n + 1$ éléments, telle que la somme de
deux éléments différents de $B$ ne soit jamais un élément de $A$.

## Hints

1. Essaie avec $A = \{1, 2, 3, 4\}$ et $n = 2$. Quel élément de $A$ est le plus facile à mettre dans
   $B$ ?
2. Le plus grand élément de $A$ ne pose aucun problème : ajouté à un nombre positif, il donne un
   nombre plus grand que tout élément de $A$. Prends-le, puis recommence avec les éléments qui
   restent « compatibles » avec lui.
3. À chaque étape, on prend le plus grand des candidats restants, et on élimine les candidats $a$
   tels que $a + b$ soit dans $A$, où $b$ est le nombre que l'on vient de prendre. Combien en
   élimine-t-on au plus ?
4. Les candidats éliminés donnent des sommes $a + b$ toutes différentes, qui sont dans $A$ et plus
   grandes que $b$. Or les éléments de $A$ plus grands que $b$ ne sont plus candidats.

## Solution

L'idée est de construire $B$ élément par élément, en prenant à chaque fois **le plus grand nombre
encore possible**. C'est ce qu'on appelle un algorithme glouton.

### La construction

On va construire des nombres $b_1 > b_2 > \cdots$ de $A$, et des ensembles de **candidats**
$C_0, C_1, C_2, \ldots$, qui sont des parties de $A$.

- Au départ, $C_0 = A$.
- Si $C_m$ n'est pas vide, on prend pour $b_{m+1}$ le plus grand élément de $C_m$, puis on pose
  $$C_{m+1} = \{\, a \in C_m \ :\ a \neq b_{m+1} \text{ et } a + b_{m+1} \notin A \,\} .$$

Autrement dit, on retire des candidats le nombre $b_{m+1}$ que l'on vient de choisir, et tous les
nombres $a$ dont la somme avec $b_{m+1}$ retombe dans $A$.

**Ce que garantit la construction.** Chaque $C_{m+1}$ est contenu dans $C_m$. Si $i < j$, alors
$b_j$ appartient à $C_{j-1}$, donc à $C_i$, et par définition de $C_i$, on a $b_j \neq b_i$ et
$b_i + b_j \notin A$. De plus, $b_j$ est un élément de $C_{i-1}$ différent de son plus grand
élément $b_i$, donc $b_j < b_i$.

Ainsi, si l'on arrive à construire $b_1, \ldots, b_{n+1}$, l'ensemble
$B = \{b_1, \ldots, b_{n+1}\}$ a bien $n + 1$ éléments différents, et la somme de deux d'entre eux
n'est jamais dans $A$. Il reste à montrer que les candidats ne s'épuisent pas trop vite : il faut
que $C_n$ ne soit pas vide.

### Combien de candidats élimine-t-on ?

Notons $|E|$ le nombre d'éléments d'un ensemble $E$. Fixons $m$, avec $C_m$ non vide, et notons
$b = b_{m+1}$, le plus grand élément de $C_m$. Les candidats éliminés au passage de $C_m$ à
$C_{m+1}$ sont :

- le nombre $b$ lui-même ;
- les nombres $a$ de $C_m$, différents de $b$, tels que $a + b$ appartienne à $A$. Appelons $E$
  l'ensemble de ces nombres.

Associons à chaque $a$ de $E$ le nombre $a + b$. Deux nombres $a$ différents donnent deux sommes
$a + b$ différentes. Chacune de ces sommes est dans $A$, et elle est **strictement plus grande
que $b$**, car $a > 0$. Or $b$ est le plus grand élément de $C_m$ : les éléments de $A$ plus grands
que $b$ ne sont pas dans $C_m$. Les sommes $a + b$ sont donc des éléments différents de $A$ qui ne
sont pas dans $C_m$. Il y a $2^n - |C_m|$ éléments de $A$ hors de $C_m$, donc
$$|E| \leqslant 2^n - |C_m| .$$

On en déduit
$$|C_{m+1}| \geqslant |C_m| - 1 - (2^n - |C_m|) = 2\,|C_m| - 2^n - 1 .$$

Attention : les nombres $a$ de $E$ ne sont pas eux-mêmes plus grands que $b$, ils sont plus petits.
Ce sont leurs **sommes** avec $b$ qui sont plus grandes que $b$, et c'est ce qui permet de les
compter.

### La récurrence

Montrons que, pour $m = 0, 1, \ldots, n$,
$$|C_m| \geqslant 2^n - 2^m + 1 .$$

- Pour $m = 0$ : $|C_0| = 2^n = 2^n - 2^0 + 1$.
- Si c'est vrai pour un $m < n$, alors $|C_m| \geqslant 2^n - 2^m + 1 \geqslant 1$, donc $C_m$
  n'est pas vide et $b_{m+1}$ existe. L'inégalité précédente donne
  $$|C_{m+1}| \geqslant 2\,(2^n - 2^m + 1) - 2^n - 1 = 2^n - 2^{m+1} + 1 .$$

En particulier, $|C_n| \geqslant 2^n - 2^n + 1 = 1$ : l'ensemble $C_n$ n'est pas vide, et on peut
choisir $b_{n+1}$. On a donc construit $b_1, \ldots, b_{n+1}$.

**Conclusion : l'ensemble $B = \{b_1, b_2, \ldots, b_{n+1}\}$ obtenu en choisissant à chaque fois
le plus grand candidat restant a $n + 1$ éléments, et la somme de deux éléments différents de $B$
n'est jamais dans $A$.**

### Un exemple

Avec $n = 2$ et $A = \{1, 2, 3, 4\}$ : on prend $b_1 = 4$, et aucun candidat n'est éliminé à part
$4$, donc $C_1 = \{1, 2, 3\}$. On prend $b_2 = 3$, et on élimine $3$ et $1$ (car $1 + 3 = 4$), donc
$C_2 = \{2\}$. On prend $b_3 = 2$. L'ensemble $B = \{2, 3, 4\}$ convient : ses sommes $5$, $6$ et
$7$ ne sont pas dans $A$.

## Going further

Dans l'exemple $A = \{1, 2, 3, 4\}$, on ne peut pas faire mieux que $3$ éléments : $B = A$ ne
convient pas, car $1 + 2 = 3$. Que se passe-t-il avec $A = \{1, 2, \ldots, 2^n\}$ ? Montrer que
l'ensemble des entiers de $2^{n-1}$ à $2^n$ convient. Il a $2^{n-1} + 1$ éléments, bien plus que
$n + 1$ dès que $n$ est grand.
