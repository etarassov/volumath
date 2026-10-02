---
id: "12468"
title: "Tout entier apparaît dans une suite de coefficients binomiaux"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 60
tags: [coefficients-binomiaux, suites, recurrence, symetrie]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2020"
  reference: "2020-11_Enonce-Test-Fevrier-2020.pdf, exercice 5 (groupe Senior) ; corrigé 2020-03_Correction-Web.pdf (le corrigé conclut avec ℓ₂ₘ ⩾ m, ce qui ne suffit pas : il faut ℓ > m, obtenu en prenant n = 2m + 1)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Fevrier-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Fevrier-2020.pdf"
---

## Statement

Soit $a_0, a_1, a_2, \ldots$ une suite d'entiers naturels telle que, pour tout entier $k \geqslant 0$,
on ait à la fois $0 \leqslant a_k \leqslant k$ et
$$\binom{k}{a_0} + \binom{k}{a_1} + \cdots + \binom{k}{a_k} = 2^k.$$

Démontrer que tout entier naturel est égal à au moins un des termes $a_0, a_1, a_2, \ldots$

## Hints

1. Calcule les premiers termes possibles : que vaut forcément $a_0$ ? Quelles sont les valeurs
   possibles pour $a_1$ ? Vérifie que la suite $0, 0, 1, 1, 2, 2, 3, 3, \ldots$ convient.
2. Rappelle-toi que $\binom{n}{0} + \binom{n}{1} + \cdots + \binom{n}{n} = 2^n$ et que
   $\binom{n}{j} = \binom{n}{n-j}$. L'égalité de l'énoncé dit que les nombres $\binom{n}{a_0}$, ...,
   $\binom{n}{a_n}$ doivent « remplir » exactement la ligne $n$ du triangle de Pascal.
3. Regarde combien de fois chaque valeur apparaît parmi $a_0, \ldots, a_{n-1}$. Montre par
   récurrence que les petites valeurs apparaissent deux fois, les suivantes une fois, et les
   grandes jamais.
4. Pour savoir quelles valeurs $a_n$ peut prendre, montre que si $\binom{n}{x} = \binom{n}{y}$, alors
   $y = x$ ou $y = n - x$. Compare $\binom{n}{m+1}$ et $\binom{n}{m}$ en faisant leur quotient.

## Solution

On utilise deux propriétés des coefficients binomiaux, valables pour tout entier $n \geqslant 0$ :
la symétrie $\binom{n}{j} = \binom{n}{n-j}$ pour $0 \leqslant j \leqslant n$, et la somme
$\binom{n}{0} + \binom{n}{1} + \cdots + \binom{n}{n} = 2^n$.

### Étape 1 : un lemme sur une ligne du triangle de Pascal

**Lemme.** Soit $n \geqslant 0$, et $x$, $y$ deux entiers entre $0$ et $n$ tels que
$\binom{n}{x} = \binom{n}{y}$. Alors $y = x$ ou $y = n - x$.

*Preuve.* Pour $0 \leqslant m < n$, on a
$$\binom{n}{m+1} = \frac{n!}{(m+1)!\,(n-m-1)!} = \frac{n - m}{m + 1} \times \frac{n!}{m!\,(n-m)!} = \frac{n-m}{m+1}\binom{n}{m}.$$
Si de plus $2(m+1) \leqslant n$, alors $n - m > m + 1$, donc $\binom{n}{m+1} > \binom{n}{m}$. Ainsi
les nombres $\binom{n}{m}$, pour les entiers $m$ tels que $2m \leqslant n$, sont rangés dans
l'ordre strictement croissant : deux d'entre eux ne sont jamais égaux.

Posons $x' = x$ si $2x \leqslant n$, et $x' = n - x$ sinon. Dans les deux cas $2x' \leqslant n$ et,
par symétrie, $\binom{n}{x'} = \binom{n}{x}$. On définit $y'$ de la même façon. Alors
$\binom{n}{x'} = \binom{n}{y'}$ avec $2x' \leqslant n$ et $2y' \leqslant n$, donc $x' = y'$. Comme
$x$ vaut $x'$ ou $n - x'$, et $y$ vaut $x'$ ou $n - x'$, on a bien $y = x$ ou $y = n - x$.

### Étape 2 : ce que l'on démontre par récurrence

Pour tout entier $n \geqslant 0$, appelons $\mathcal{P}(n)$ la propriété suivante : il existe deux
entiers $k_n$ et $\ell_n$ tels que $0 \leqslant k_n \leqslant \ell_n$ et $k_n + \ell_n = n$, et
tels que, parmi les $n$ termes $a_0, a_1, \ldots, a_{n-1}$ :

- chacune des valeurs $0, 1, \ldots, k_n - 1$ apparaît exactement deux fois ;
- chacune des valeurs $k_n, k_n + 1, \ldots, \ell_n - 1$ apparaît exactement une fois ;
- aucune valeur supérieure ou égale à $\ell_n$ n'apparaît.

Il y a bien $2k_n + (\ell_n - k_n) = k_n + \ell_n = n$ termes en tout.

**Initialisation.** Pour $n = 0$, il n'y a aucun terme, et $k_0 = \ell_0 = 0$ convient.

### Étape 3 : la valeur de $\binom{n}{a_n}$

Supposons $\mathcal{P}(n)$ vraie, et notons $k = k_n$, $\ell = \ell_n$. Comme $k \geqslant 0$, on a
$\ell = n - k \leqslant n$. D'après $\mathcal{P}(n)$,
$$\binom{n}{a_0} + \cdots + \binom{n}{a_{n-1}} = 2\sum_{j=0}^{k-1}\binom{n}{j} + \sum_{j=k}^{\ell-1}\binom{n}{j}.$$
Par symétrie, en posant $i = n - j$, et comme $n - k = \ell$ :
$$\sum_{j=0}^{k-1}\binom{n}{j} = \sum_{i=\ell+1}^{n}\binom{n}{i}.$$
Une des deux copies de la première somme remplit donc les termes d'indice $\ell + 1$ à $n$ de la
ligne, et
$$\binom{n}{a_0} + \cdots + \binom{n}{a_{n-1}} = \sum_{j=0}^{k-1}\binom{n}{j} + \sum_{j=k}^{\ell-1}\binom{n}{j} + \sum_{j=\ell+1}^{n}\binom{n}{j} = 2^n - \binom{n}{\ell}.$$
L'égalité de l'énoncé, écrite au rang $n$ (c'est-à-dire avec $n$ à la place de la lettre $k$ de l'énoncé), donne alors
$$\binom{n}{a_n} = \binom{n}{\ell}.$$
Comme $0 \leqslant a_n \leqslant n$ et $0 \leqslant \ell \leqslant n$, le lemme de l'étape 1 donne
$a_n = \ell$ ou $a_n = n - \ell = k$.

### Étape 4 : on passe de $n$ à $n + 1$

- **Si $a_n = \ell$.** La valeur $\ell$, qui n'apparaissait pas, apparaît maintenant une fois. Avec
  $k_{n+1} = k$ et $\ell_{n+1} = \ell + 1$, la propriété $\mathcal{P}(n+1)$ est vraie : on a bien
  $k \leqslant \ell + 1$ et $k + \ell + 1 = n + 1$.
- **Si $a_n = k$ et $k < \ell$.** La valeur $k$, qui apparaissait une fois, apparaît maintenant deux
  fois. Avec $k_{n+1} = k + 1$ et $\ell_{n+1} = \ell$, la propriété $\mathcal{P}(n+1)$ est vraie :
  on a bien $k + 1 \leqslant \ell$ et $k + 1 + \ell = n + 1$.

Si $a_n = k$ et $k = \ell$, on est en fait dans le premier cas. Par récurrence, $\mathcal{P}(n)$
est vraie pour tout $n \geqslant 0$.

### Étape 5 : conclusion

Comme $k_n \leqslant \ell_n$ et $k_n + \ell_n = n$, on a $2\ell_n \geqslant n$.

Soit $m$ un entier naturel. Prenons $n = 2m + 1$. Alors $2\ell_n \geqslant 2m + 1 > 2m$, donc
$\ell_n > m$. La valeur $m$ est donc parmi $0, 1, \ldots, \ell_n - 1$ et, d'après
$\mathcal{P}(2m + 1)$, elle apparaît une ou deux fois parmi $a_0, a_1, \ldots, a_{2m}$.

**Tout entier naturel $m$ est égal à l'un des termes de la suite, et même à l'un des termes
$a_0, \ldots, a_{2m}$.**

On ne peut pas faire mieux : la suite $0, 0, 1, 1, 2, 2, \ldots$, où l'on choisit $a_n = k_n$ à
chaque fois que c'est possible, convient, et $m$ y apparaît pour la première fois au rang $2m$.

## Going further

L'étape 4 montre qu'à chaque rang il y a une ou deux valeurs possibles pour $a_n$. Combien
existe-t-il de façons de choisir les dix premiers termes $a_0, a_1, \ldots, a_9$ ? (Calculer le
nombre de débuts possibles de longueur $1, 2, 3, 4, 5, 6$, et reconnaître ces nombres dans le
triangle de Pascal.)
