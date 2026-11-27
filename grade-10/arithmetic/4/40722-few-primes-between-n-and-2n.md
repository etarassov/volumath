---
id: "40722"
title: "Peu de nombres premiers entre n et 2n"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [nombres-premiers, factorielle, coefficients-binomiaux, triangle-de-pascal, recurrence, decomposition-en-facteurs-premiers, divisibilite, majoration]
adapted_from: null
see_also: ["40721", "40723", "40724", "40725"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2020, mathématiques, série S"
  reference: "cg-2020-s-sujet.pdf, problème 1 « Nombres pointus », partie II « Peu de grands nombres premiers », questions 7 et 8"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2020-s-sujet.pdf"
---

## Statement

On pose $0! = 1$ et, pour tout entier $\ell \geq 1$, $\ell! = 1 \times 2 \times \cdots \times \ell$,
de sorte que $\ell! = \ell \times (\ell - 1)!$. Pour deux entiers naturels $k$ et $n$ tels que
$k \leq n$, on note

$$F_{n,k} = \frac{n!}{k!\,(n-k)!}.$$

1. a) Calculer $F_{3,1}$ et $F_{9,4}$.

   b) Démontrer que, si $k = 0$ ou $k = n$, alors $F_{n,k} = 1$.

   c) Démontrer que, si $1 \leq k \leq n - 1$, alors $F_{n,k} = F_{n-1,k} + F_{n-1,k-1}$.

   d) En déduire que, pour tout entier naturel $n$ et tout entier $k$ tel que $0 \leq k \leq n$,
   $F_{n,k}$ est un entier supérieur ou égal à $1$ et inférieur ou égal à $2^n$.

Pour tout entier $n \geq 1$, on note $\mathbb{P}_n$ l'ensemble des nombres premiers $p$ tels que
$n + 1 \leq p \leq 2n$, et $\pi_n$ le nombre d'éléments de $\mathbb{P}_n$. On admet que tout
entier supérieur ou égal à $2$ s'écrit comme produit de nombres premiers d'une seule façon, à
l'ordre des facteurs près.

2. a) Démontrer que tout nombre premier $p$ de $\mathbb{P}_n$ divise l'entier $F_{2n,n}$.

   b) Soit $a$, $b$, $c$ des entiers supérieurs ou égaux à $1$. On suppose que $b$ et $c$ divisent
   $a$, et que $b$ et $c$ n'ont aucun facteur premier commun. Démontrer que $b \times c$ divise $a$.

   c) Soit $d$ le produit de tous les éléments de $\mathbb{P}_n$ (avec $d = 1$ si $\mathbb{P}_n$ est
   vide). Démontrer que $d$ divise $F_{2n,n}$.

   d) En déduire que $n^{\pi_n} \leq 2^{2n}$.

## Hints

1. **Question 1 c).** Réduire $F_{n-1,k} + F_{n-1,k-1}$ au même dénominateur $k!\,(n-k)!$, en
   utilisant $k! = k \times (k-1)!$ et $(n-k)! = (n-k) \times (n-k-1)!$.
2. **Question 1 d).** Raisonner ligne par ligne : si la propriété est vraie pour tous les $F_{n-1,k}$,
   est-elle vraie pour tous les $F_{n,k}$ ?
3. **Question 2 a).** Écrire $(2n)! = F_{2n,n} \times n! \times n!$. Le nombre premier $p$
   apparaît-il dans la décomposition de $(2n)!$ ? Dans celle de $n!$ ?
4. **Question 2 b).** Comparer, pour chaque nombre premier, son exposant dans $b$, dans $c$ et dans
   $a$.
5. **Question 2 d).** Encadrer $d$ : chacun de ses facteurs est plus grand que $n$, et $d$ est un
   diviseur de $F_{2n,n}$.

## Solution

**1. a)**

$$F_{3,1} = \frac{3!}{1! \times 2!} = \frac{6}{2} = 3, \qquad F_{9,4} = \frac{9!}{4! \times 5!} = \frac{9 \times 8 \times 7 \times 6}{4 \times 3 \times 2 \times 1} = \frac{3024}{24} = 126.$$

**1. b)** Si $k = 0$, alors $F_{n,0} = n! / (0! \times n!) = 1$ car $0! = 1$. Si $k = n$, alors
$F_{n,n} = n! / (n! \times 0!) = 1$.

**1. c)** Soit $1 \leq k \leq n - 1$. On a

$$F_{n-1,k} = \frac{(n-1)!}{k!\,(n-1-k)!} \qquad \text{et} \qquad F_{n-1,k-1} = \frac{(n-1)!}{(k-1)!\,(n-k)!}.$$

On multiplie le numérateur et le dénominateur de la première fraction par $n - k$, et ceux de la
seconde par $k$. Comme $(n-k) \times (n-1-k)! = (n-k)!$ et $k \times (k-1)! = k!$, les deux
fractions ont le même dénominateur $k!\,(n-k)!$ :

$$F_{n-1,k} + F_{n-1,k-1} = \frac{(n-1)!\,(n-k) + (n-1)!\,k}{k!\,(n-k)!} = \frac{(n-1)! \times n}{k!\,(n-k)!} = \frac{n!}{k!\,(n-k)!} = F_{n,k}.$$

**1. d)** On démontre ligne par ligne, c'est-à-dire par récurrence sur $n$, la propriété :
« pour tout $k$ entre $0$ et $n$, $F_{n,k}$ est un entier et $1 \leq F_{n,k} \leq 2^n$ ».

*Pour $n = 0$*, le seul nombre est $F_{0,0} = 1$, et $1 \leq 1 \leq 2^0$.

*Passage de $n-1$ à $n$*, pour $n \geq 1$. On suppose la propriété vraie pour la ligne $n - 1$.
Pour $k = 0$ ou $k = n$, $F_{n,k} = 1$ d'après b), et $1 \leq 2^n$. Pour $1 \leq k \leq n-1$,
d'après c), $F_{n,k} = F_{n-1,k} + F_{n-1,k-1}$ est la somme de deux entiers de la ligne $n - 1$ :
c'est un entier, il vaut au moins $1 + 1 \geq 1$, et au plus $2^{n-1} + 2^{n-1} = 2^n$.

La propriété, vraie pour $n = 0$, se transmet de chaque ligne à la suivante : elle est donc vraie
pour tout $n$.

**2. a)** Soit $p$ un nombre premier tel que $n + 1 \leq p \leq 2n$. Par définition,
$(2n)! = F_{2n,n} \times n! \times n!$, et $F_{2n,n}$ est un entier d'après 1. d).

- Comme $p \leq 2n$, $p$ est l'un des facteurs de $(2n)! = 1 \times 2 \times \cdots \times 2n$, donc
  $p$ apparaît dans la décomposition en facteurs premiers de $(2n)!$.
- Les facteurs de $n! = 1 \times 2 \times \cdots \times n$ sont tous plus petits que $p$. On obtient
  la décomposition de $n!$ en mettant bout à bout celles de $2, 3, \ldots, n$, et aucun de ces
  nombres n'a $p$ comme facteur premier (un diviseur premier d'un nombre est au plus égal à ce
  nombre). Donc $p$ n'apparaît pas dans la décomposition de $n! \times n!$.

La décomposition de $(2n)!$ s'obtient en mettant bout à bout celles de $F_{2n,n}$ et de
$n! \times n!$. Puisque $p$ y figure, et pas dans celle de $n! \times n!$, il figure dans celle de
$F_{2n,n}$ : **$p$ divise $F_{2n,n}$**.

**2. b)** Pour un nombre premier $r$, notons $e_r(x)$ son exposant dans la décomposition de $x$
($0$ si $r$ ne divise pas $x$). Dire que $x$ divise $a$, c'est dire que $e_r(x) \leq e_r(a)$ pour
tout nombre premier $r$.

Comme $b$ et $c$ n'ont aucun facteur premier commun, pour chaque nombre premier $r$, l'un au moins
des deux exposants $e_r(b)$, $e_r(c)$ est nul. Donc $e_r(bc) = e_r(b) + e_r(c)$ est égal à $e_r(b)$
ou à $e_r(c)$, et dans les deux cas il est au plus $e_r(a)$, puisque $b$ et $c$ divisent $a$.
Ainsi **$bc$ divise $a$**.

**2. c)** Notons $p_1, p_2, \ldots, p_m$ les éléments de $\mathbb{P}_n$. Chacun divise $F_{2n,n}$
d'après a). Le produit $p_1 p_2$ divise $F_{2n,n}$ d'après b), car $p_1$ et $p_2$ sont deux nombres
premiers différents. Puis $p_1 p_2$ et $p_3$ n'ont pas de facteur premier commun, donc $p_1 p_2 p_3$
divise $F_{2n,n}$, et ainsi de suite jusqu'à $d = p_1 p_2 \cdots p_m$. Si $\mathbb{P}_n$ est vide,
$d = 1$ divise tout entier.

**2. d)** Chacun des $\pi_n$ facteurs de $d$ est supérieur à $n$, donc $d \geq n^{\pi_n}$. D'autre
part $d$ divise $F_{2n,n}$, qui est un entier au moins égal à $1$, donc $d \leq F_{2n,n}$. Enfin
$F_{2n,n} \leq 2^{2n}$ d'après 1. d). Ainsi

$$n^{\pi_n} \leq d \leq F_{2n,n} \leq 2^{2n}.$$

**Bilan.** Le produit des nombres premiers compris entre $n + 1$ et $2n$ divise
$F_{2n,n} = \frac{(2n)!}{n!\,n!}$, qui est au plus $4^n$. On en tire $n^{\pi_n} \leq 4^n$ : il y a
peu de nombres premiers entre $n + 1$ et $2n$. Par exemple, pour $n = 2^k$ avec $k \geq 1$, cela
donne $\pi_{2^k} \leq \frac{2^{k+1}}{k}$.

## Going further

- Le nombre $F_{n,k}$ s'écrit $\binom{n}{k}$ en Terminale : c'est le nombre de façons de choisir
  $k$ objets parmi $n$. La relation de la question 1 c) est la construction du triangle de Pascal.
- Avec $n = 2^k$, la question 2 d) donne $(2^k)^{\pi} = 2^{k\pi} \leq 2^{2^{k+1}}$, donc
  $\pi_{2^k} \leq 2^{k+1}/k$. Dans la suite du sujet (exercice 40724), c'est sous cette forme que le
  résultat sert à montrer que les nombres non pointus sont rares.
- On sait en fait beaucoup plus : il y a toujours au moins un nombre premier entre $n + 1$ et $2n$
  (c'est le postulat de Bertrand, démontré par Tchebychev), et le nombre de ces nombres premiers est
  proche de $n / \ln n$ quand $n$ est grand.
