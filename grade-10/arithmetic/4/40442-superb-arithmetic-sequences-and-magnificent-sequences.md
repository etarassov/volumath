---
id: "40442"
title: "Suites superbes arithmétiques, suites magnifiques"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [divisibilite, diviseurs, suite-arithmetique, encadrement, puissances-de-deux, somme-des-entiers, suites]
adapted_from: null
see_also: ["40441", "40443"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2013, mathématiques, série S"
  reference: "cg-2013-s-sujet.pdf, problème I « De superbes suites », questions 4 et 5. La question 1 demande aussi, en plus du sujet, de trouver les suites concernées."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2013-s-sujet.pdf"
---

## Statement

Dans cet exercice, une *suite finie* est une liste $(a_1, a_2, \ldots, a_n)$ d'entiers strictement
positifs, avec $n \geq 2$. Le nombre $n$ de termes s'appelle la *longueur* de la suite.

On dit qu'une suite finie est **superbe** si chacun de ses termes divise la somme de tous ses
termes. Par exemple, $(3, 3, 6, 12)$ est superbe : la somme vaut $24$, qui est un multiple de
$3$, de $6$ et de $12$.

1. Soit $a \geq 1$ et $r \geq 1$ deux entiers, et $n \geq 2$. On considère la suite arithmétique
   finie de premier terme $a$ et de raison $r$ :
   $$(a,\ a + r,\ a + 2r,\ \ldots,\ a + (n-1)r).$$
   Montrer que si cette suite est superbe, alors $n = 3$, et qu'il s'agit de la suite
   $(r, 2r, 3r)$.
2. On dit qu'une suite infinie $(a_1, a_2, a_3, \ldots)$ d'entiers strictement positifs est
   **magnifique** si, pour tout entier $n \geq 2$, la suite finie $(a_1, a_2, \ldots, a_n)$ formée
   de ses $n$ premiers termes est superbe.

   Déterminer toutes les suites magnifiques qui vérifient $a_k < a_{k+1}$ pour tout entier
   $k \geq 2$.

## Hints

1. **Question 1.** Commencer par $n = 2$ : la suite $(a, a + r)$ peut-elle être superbe ?
2. **Question 1.** Regarder les deux plus grands termes, $L = a + (n-1)r$ et $M = L - r$. Ils
   divisent la somme $S$ : on écrit $S = kL$ et $S = k'M$ avec $k$ et $k'$ entiers. Pourquoi
   a-t-on $k \leq n - 1$ et $k' \geq k + 1$ ?
3. **Question 1.** De $k'M = kL = k(M + r)$, tirer $(k' - k)\,M = k\,r$. Montrer que $k' - k$ ne
   peut pas valoir $2$ ou plus, en comparant $2M$ et $(n-1)\,r$.
4. **Question 1.** On obtient $M = kr$. En déduire que $a$ est un multiple de $r$, puis que
   $a = r$. Il reste à calculer la somme $r + 2r + \cdots + nr$ de deux façons.
5. **Question 2.** Que dit la longueur $2$ sur $a_1$ et $a_2$ ?
6. **Question 2.** Notons $S_n = a_1 + \cdots + a_n$. Le terme $a_{n+1}$ divise
   $S_{n+1} = S_n + a_{n+1}$, donc il divise $S_n$.
7. **Question 2.** Un diviseur de $S_n$ strictement plus grand que la moitié de $S_n$ ne peut être
   que $S_n$ lui-même. Montrer de proche en proche que $a_n$ est toujours la moitié de $S_n$.

## Solution

**1.** Notons $S$ la somme des termes.

*Le cas $n = 2$ est impossible.* Si $(a, a + r)$ était superbe, $a + r$ diviserait
$S = 2a + r$, donc aussi $S - (a + r) = a$. C'est impossible puisque $0 < a < a + r$. Donc
$n \geq 3$.

*Les deux plus grands termes.* Notons $L = a + (n-1)r$ le plus grand terme et
$M = a + (n-2)r = L - r$ le suivant. Ils divisent $S$ : il existe des entiers $k$ et $k'$ tels
que
$$S = kL \qquad \text{et} \qquad S = k'M.$$

- Les $n$ termes sont au plus égaux à $L$, et tous sauf un sont strictement plus petits, donc
  $S < nL$. Ainsi $k < n$, c'est-à-dire $k \leq n - 1$.
- Comme $M < L$ et $k'M = kL$, on a $k' > k$, c'est-à-dire $k' \geq k + 1$.

*Une relation entre $M$ et $r$.* De $k'M = kL = k(M + r) = kM + kr$, on tire
$$(k' - k)\,M = k\,r.$$

Supposons $k' - k \geq 2$. Alors $2M \leq kr \leq (n-1)\,r$. Mais $M = a + (n-2)r > (n-2)r$,
donc $2M > (2n - 4)\,r$, et $2n - 4 \geq n - 1$ puisque $n \geq 3$. On obtiendrait
$2M > (n-1)\,r \geq 2M$ : c'est impossible. Donc $k' - k = 1$, et la relation devient
$$M = k\,r.$$

*Le premier terme.* On en déduit
$a = M - (n-2)\,r = (k - n + 2)\,r$. Comme $a > 0$, on a $k - n + 2 \geq 1$, soit
$k \geq n - 1$. Avec $k \leq n - 1$, on obtient $k = n - 1$ et $a = r$.

La suite est donc $(r, 2r, 3r, \ldots, nr)$, et son plus grand terme est $L = nr$.

*La valeur de $n$.* D'une part $S = kL = (n-1)\,n\,r$. D'autre part
$$S = r\,(1 + 2 + \cdots + n) = r\,\frac{n(n+1)}{2}$$
(en écrivant la somme $1 + 2 + \cdots + n$ deux fois, une fois à l'endroit et une fois à
l'envers, on obtient $n$ paires de somme $n + 1$). Donc $n(n-1) = \frac{n(n+1)}{2}$, soit
$2(n - 1) = n + 1$, c'est-à-dire $n = 3$.

Réciproquement, $(r, 2r, 3r)$ a pour somme $6r$, qui est divisible par $r$, $2r$ et $3r$.

**Conclusion :** une suite arithmétique de raison strictement positive n'est superbe que si
$n = 3$, et c'est alors la suite $(r, 2r, 3r)$.

**2.** Soit $(a_k)$ une suite magnifique avec $a_k < a_{k+1}$ pour $k \geq 2$. Notons
$S_n = a_1 + a_2 + \cdots + a_n$.

*Les deux premiers termes.* La suite $(a_1, a_2)$ est superbe. Alors $a_1$ divise $a_1 + a_2$,
donc divise $a_2$, et de même $a_2$ divise $a_1$ : ainsi $a_1 = a_2$. Notons $a$ cette valeur.
On a $S_2 = 2a$, et $a_2 = \frac{S_2}{2}$.

*Le terme suivant.* Pour $n \geq 2$, la suite $(a_1, \ldots, a_{n+1})$ est superbe, donc
$a_{n+1}$ divise $S_{n+1} = S_n + a_{n+1}$. Comme $a_{n+1}$ divise aussi $a_{n+1}$, il divise la
différence $S_n$.

*De proche en proche.* Supposons que $a_n = \frac{S_n}{2}$ pour un certain $n \geq 2$ (c'est vrai
pour $n = 2$). On a $a_{n+1} > a_n = \frac{S_n}{2}$, et $a_{n+1}$ divise $S_n$ : écrivons
$S_n = q\,a_{n+1}$ avec $q$ entier. Alors $q \geq 1$ et $q = \frac{S_n}{a_{n+1}} < 2$, donc
$q = 1$ et $a_{n+1} = S_n$. Il vient $S_{n+1} = 2S_n$, et
$a_{n+1} = S_n = \frac{S_{n+1}}{2}$ : la propriété passe au rang suivant.

Ainsi, pour tout $n \geq 2$, on a $a_{n+1} = S_n$ et $S_{n+1} = 2S_n$. Comme $S_2 = 2a$, on obtient
$S_n = 2^{n-1}\,a$ et $a_n = \frac{S_n}{2} = 2^{n-2}\,a$ pour tout $n \geq 2$. La suite est
$$(a,\ a,\ 2a,\ 4a,\ 8a,\ \ldots).$$

*Réciproquement*, pour cette suite, $S_n = 2^{n-1}a$, et chacun des $n$ premiers termes est de la
forme $2^j a$ avec $j \leq n - 2$, donc divise $S_n$. Elle est magnifique, et elle vérifie
$a_k < a_{k+1}$ pour $k \geq 2$.

**Conclusion :** les suites cherchées sont les suites $(a, a, 2a, 4a, 8a, \ldots)$, où chaque
terme à partir du troisième est le double du précédent, avec $a \geq 1$ quelconque.

**Bilan.** Deux familles naturelles de suites sont presque toujours incompatibles avec la
propriété « chaque terme divise la somme » : parmi les suites arithmétiques, seule
$(r, 2r, 3r)$ est superbe ; parmi les suites qui croissent à partir du deuxième terme, une seule
famille reste superbe à chaque longueur, celle où chaque nouveau terme vaut la somme de tous les
précédents.

## Going further

- Pourquoi l'hypothèse $a_k < a_{k+1}$ compte-t-elle à la question 2 ? Trouver une suite
  magnifique qui n'est pas de la forme $(a, a, 2a, 4a, \ldots)$. *Par exemple, une suite
  constante.*
- Le début de ce problème décrit toutes les suites superbes de longueur $2$ et $3$ (exercice
  40441). La fin montre que l'on peut prolonger n'importe quelle suite en une suite superbe
  (exercice 40443).
