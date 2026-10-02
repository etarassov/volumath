---
id: "12858"
title: "Des produits en progression arithmétique"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [suite-arithmetique, produit, factorielle, minimum, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 27 mars 2024"
  reference: "2025-01_Enonce-Test-4.pdf, test senior, exercice 5 ; corrigé 2025-01_Corrige-Test-4.pdf (dans la construction, le corrigé écrit p_k = k × n! : c'est la valeur de p_(k−1), en fait p_k = (k + 1) × n!)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-4.pdf"
---

## Statement

Soit $n \geq 1$ un entier. On se donne des entiers strictement positifs $a_1, a_2, \ldots, a_n$, $b_1, b_2, \ldots, b_n$ et $r$. On forme les $n + 1$ produits suivants, en remplaçant les $a_k$ par les $b_k$ un par un, de gauche à droite :

$$p_0 = a_1 \times a_2 \times a_3 \times \cdots \times a_n,$$

$$p_1 = b_1 \times a_2 \times a_3 \times \cdots \times a_n,$$

$$p_2 = b_1 \times b_2 \times a_3 \times \cdots \times a_n,$$

et ainsi de suite jusqu'à

$$p_n = b_1 \times b_2 \times b_3 \times \cdots \times b_n.$$

On suppose que

$$p_1 - p_0 = p_2 - p_1 = \cdots = p_n - p_{n-1} = r.$$

Autrement dit, $p_0, p_1, \ldots, p_n$ sont les premiers termes d'une suite arithmétique de raison $r \geq 1$.

Trouver, en fonction de $n$, la plus petite valeur possible de $r$.

## Hints

1. Traitez les cas $n = 1$, $n = 2$ et $n = 3$. Essayez $a_k = k$ et $b_k = k + 1$.
2. Les produits $p_k$ et $p_{k-1}$ n'ont qu'un facteur différent. Écrivez $p_k - p_{k-1}$ à l'aide de $p_k$, de $a_k$ et de $b_k$.
3. Montrez que $b_k \times r \geq p_k$, puis utilisez $p_k = p_0 + k\,r$ pour obtenir $b_k \geq k + 1$.
4. Pour conclure, comparez $r$ et $b_1 \times b_2 \times \cdots \times b_{n-1}$.

## Solution

On note $n! = 1 \times 2 \times 3 \times \cdots \times n$ (on lit « factorielle $n$ »). La réponse est $r = n!$.

### Une formule pour r

Fixons $k$ entre $1$ et $n$. Les produits $p_{k-1}$ et $p_k$ ont les mêmes facteurs, sauf le $k$-ième, qui vaut $a_k$ dans $p_{k-1}$ et $b_k$ dans $p_k$. Notons $Q$ le produit des autres facteurs :

$$Q = b_1 \times \cdots \times b_{k-1} \times a_{k+1} \times \cdots \times a_n.$$

Alors $p_{k-1} = Q\,a_k$ et $p_k = Q\,b_k$, donc $r = p_k - p_{k-1} = Q\,(b_k - a_k)$. En multipliant par $b_k$ :

$$b_k \times r = Q\,b_k \times (b_k - a_k) = p_k \times (b_k - a_k).$$

### Étape 1 : chaque facteur b vaut au moins son rang plus un

Comme $r > 0$ et $Q > 0$, on a $b_k - a_k > 0$. C'est un entier, donc $b_k - a_k \geq 1$, et la formule donne

$$b_k \times r \geq p_k.$$

D'autre part, $p_k = p_0 + k\,r$, car on passe de $p_0$ à $p_k$ en ajoutant $k$ fois $r$. Comme $p_0 \geq 1$, on obtient

$$b_k \times r \geq p_0 + k\,r > k\,r.$$

En divisant par $r > 0$, on trouve $b_k > k$. Comme $b_k$ est un entier, **$b_k \geq k + 1$**, pour tout $k$ entre $1$ et $n$.

### Étape 2 : r vaut au moins n!

Appliquons l'inégalité $b_k \times r \geq p_k$ avec $k = n$ :

$$b_n \times r \geq p_n = b_1 \times b_2 \times \cdots \times b_{n-1} \times b_n.$$

En divisant par $b_n > 0$, puis en utilisant l'étape 1 :

$$r \geq b_1 \times b_2 \times \cdots \times b_{n-1} \geq 2 \times 3 \times \cdots \times n = n!.$$

(Pour $n = 1$, le produit de gauche est vide et vaut $1$, et on obtient bien $r \geq 1 = 1!$.)

### Étape 3 : r = n! est possible

Prenons $a_k = k$ et $b_k = k + 1$ pour tout $k$. Alors, pour $k$ entre $0$ et $n$,

$$p_k = \underbrace{2 \times 3 \times \cdots \times (k + 1)}_{b_1 \times \cdots \times b_k} \times \underbrace{(k + 1) \times (k + 2) \times \cdots \times n}_{a_{k+1} \times \cdots \times a_n}.$$

Le premier produit contient les entiers de $2$ à $k + 1$, et le second les entiers de $k + 1$ à $n$. Ensemble, ils contiennent chaque entier de $2$ à $n$ une fois, plus le nombre $k + 1$ une seconde fois. (Pour $k = 0$, le premier produit est vide et vaut $1$, et le second est $1 \times 2 \times \cdots \times n$ ; pour $k = n$, c'est le second qui est vide.) Donc

$$p_k = (k + 1) \times n!.$$

Ainsi $p_0 = n!$, $p_1 = 2 \times n!$, $p_2 = 3 \times n!$, ..., $p_n = (n + 1) \times n!$ : c'est une suite arithmétique de raison $r = n!$.

### Conclusion

**La plus petite valeur possible de $r$ est $n!$.**

## Going further

1. Pour $n = 3$, trouvez toutes les façons d'obtenir $r = 3! = 6$.
2. Montrez que $a_k \geq k$ pour tout $k$, et déduisez-en que $p_0 \geq n!$ lui aussi. (Écrivez que les deux expressions de $r$ obtenues avec $k - 1$ et avec $k$ sont égales.)
