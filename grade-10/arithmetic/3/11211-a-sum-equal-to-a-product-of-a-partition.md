---
id: "11211"
title: "Une somme égale à un produit"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [construction, factorisation, partition, somme, produit, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 2 (combinatoire)"
  reference: "2017-10_ofm-2013-2014-envoi-2.pdf, Exercices Communs, exercice 6 ; corrigé 2017-10_ofm-2013-2014-envoi-2-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-2.pdf"
---

## Statement

Soit $n \geqslant 5$ un entier. Montrer qu'on peut répartir les nombres $1, 2, \ldots, n$ en deux
groupes $A$ et $B$, chaque nombre allant dans un seul des deux groupes, de façon que **la somme des
nombres de $A$ soit égale au produit des nombres de $B$**.

Par exemple, pour $n = 5$, on peut prendre $A = \{3, 5\}$ et $B = \{1, 2, 4\}$ :
$3 + 5 = 8 = 1 \times 2 \times 4$.

## Hints

1. Essaie $n = 6$ et $n = 7$. Le groupe $B$ est-il plutôt grand ou plutôt petit ?
2. Mettre $1$ dans $B$ ne change pas le produit, mais diminue la somme de $A$. Cherche $B$ de la
   forme $\{1, a, b\}$.
3. Écris l'égalité voulue, puis ajoute $1$ des deux côtés : l'expression $ab + a + b + 1$ se
   factorise.
4. Il reste à écrire $1 + 2 + \cdots + n$ comme un produit de deux nombres. Sépare le cas où $n$
   est pair et le cas où $n$ est impair.

## Solution

**Un rappel : la somme $1 + 2 + \cdots + n$.**

Notons $S = 1 + 2 + \cdots + n$. En écrivant la somme une fois dans l'ordre et une fois à
l'envers, puis en ajoutant les nombres l'un sous l'autre, on obtient $n$ fois le nombre $n + 1$.
Donc $2S = n(n+1)$, c'est-à-dire
$$S = \frac{n(n+1)}{2} .$$

**Étape 1. Chercher un petit groupe $B$.**

Un produit grandit beaucoup plus vite qu'une somme, donc $B$ doit contenir peu de nombres. Le
nombre $1$ est intéressant dans $B$ : il ne change pas le produit, et il n'est plus compté dans la
somme de $A$. Cherchons donc $B = \{1, a, b\}$ avec $1 < a < b \leqslant n$.

Le groupe $A$ contient alors tous les autres nombres, et sa somme vaut $S - 1 - a - b$. Le produit
des nombres de $B$ vaut $ab$. On veut donc
$$S - 1 - a - b = ab , \qquad \text{c'est-à-dire} \qquad S = ab + a + b + 1 = (a + 1)(b + 1) .$$

Il suffit donc d'écrire $S$ comme le produit de deux nombres $a + 1$ et $b + 1$, avec
$1 < a < b \leqslant n$.

**Étape 2. Si $n$ est pair.**

On a $S = \frac{n}{2} \times (n + 1)$. On prend $a + 1 = \frac{n}{2}$ et $b + 1 = n + 1$,
c'est-à-dire
$$a = \frac{n}{2} - 1 \qquad \text{et} \qquad b = n .$$
Comme $n \geqslant 6$, on a $a \geqslant 2$, et bien sûr $a < b$.

**Étape 3. Si $n$ est impair.**

Cette fois $n + 1$ est pair, et $S = n \times \frac{n + 1}{2}$. On prend $a + 1 = \frac{n+1}{2}$ et
$b + 1 = n$, c'est-à-dire
$$a = \frac{n - 1}{2} \qquad \text{et} \qquad b = n - 1 .$$
Comme $n \geqslant 5$, on a $a \geqslant 2$. De plus $a < b$, car $\frac{n-1}{2} < n - 1$.

**Vérification sur des exemples.**

- $n = 6$ : $B = \{1, 2, 6\}$ de produit $12$, et $A = \{3, 4, 5\}$ de somme $12$.
- $n = 7$ : $B = \{1, 3, 6\}$ de produit $18$, et $A = \{2, 4, 5, 7\}$ de somme $18$.

**Conclusion : pour tout $n \geqslant 5$, on peut prendre $B = \{1, \frac{n}{2} - 1, n\}$ si $n$
est pair, et $B = \{1, \frac{n-1}{2}, n - 1\}$ si $n$ est impair. La somme des autres nombres est
alors égale au produit des nombres de $B$.**

## Going further

Que se passe-t-il pour les petites valeurs de $n$ ?

- Pour $n = 3$, cela marche : $A = \{1, 2\}$ et $B = \{3\}$.
- Pour $n = 2$ et $n = 4$, c'est impossible. On peut le vérifier en essayant tous les groupes
  $B$ possibles : la somme et le produit ne sont jamais égaux.

La méthode de la solution ne marche pas pour $n = 4$ : elle donnerait $a = 1$, le même nombre que
le $1$ déjà placé dans $B$.
