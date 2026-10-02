---
id: "12801"
title: "Le premier chiffre des puissances de 2"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [chiffres, puissances-de-deux, denombrement, majoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 23 novembre 2022"
  reference: "2023-01_Enonce-Web-Test-1.pdf, exercice 1 ; corrigé 2023-01_Corrige-Web-Test-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Énoncé-Web-Test-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-01_Enonce-Web-Test-1.pdf"
---

## Statement

Pour tout entier $k \geq 0$, on note $a_k$ le premier chiffre (celui de gauche) de l'écriture décimale de $2^k$. Par exemple $a_5 = 3$, car $2^5 = 32$.

Soit $n \geq 1$ un entier. Démontrer que, parmi les chiffres $1, 2, \ldots, 9$, il y en a au moins un qui apparaît **au plus** $n/17$ fois dans la liste

$$a_0,\ a_1,\ a_2,\ \ldots,\ a_{n-1}.$$

## Hints

1. Écrivez les premiers termes : $1, 2, 4, 8, 1, 3, 6, 1, 2, 5, \ldots$ Comparez le premier chiffre de $2^k$ et celui de $2^{k+1} = 2 \times 2^k$. Si $2^k$ commence par $3$, par quoi peut commencer $2^{k+1}$ ? Et si $2^k$ commence par $7$ ?
2. Regardez maintenant en arrière : si $2^i$ commence par $4$ ou par $5$, par quoi commence forcément $2^{i-1}$ ? Montrez que si $a_i \geq 2$, alors $a_{i-1}$ est la partie entière de $a_i / 2$.
3. Notez $c(d)$ le nombre de fois où le chiffre $d$ apparaît dans la liste. Déduisez de l'indication 2 que $c(1) \geq c(2) + c(3)$, puis trois autres inégalités du même genre.
4. Notez $m$ le plus petit des neuf nombres $c(1), \ldots, c(9)$. Partez de $n = c(1) + c(2) + \cdots + c(9)$ et remplacez les petits chiffres par les grands à l'aide de ces inégalités, jusqu'à ne plus avoir que $c(5), \ldots, c(9)$. Comptez les coefficients.

## Solution

On note $c(d)$ le nombre de fois où le chiffre $d$ apparaît parmi $a_0, a_1, \ldots, a_{n-1}$, de sorte que

$$c(1) + c(2) + \cdots + c(9) = n,$$

et on note $m$ le plus petit des nombres $c(1), c(2), \ldots, c(9)$. Il s'agit de montrer que $m \leq n/17$, c'est-à-dire $17m \leq n$.

### Étape 1 : ce qui précède un chiffre au moins égal à 2

Écrivons $2^i = x \times 10^e$, avec $e$ entier et $1 \leq x < 10$. Le premier chiffre $a_i$ est alors la partie entière de $x$. Par exemple $2^5 = 32 = \text{3,2} \times 10^1$.

Supposons $a_i = d$ avec $d \geq 2$, donc $d \leq x < d+1$. Comme $a_0 = 1$, on a forcément $i \geq 1$, et

$$2^{i-1} = \frac{x}{2} \times 10^e, \qquad \text{avec} \qquad 1 \leq \frac{d}{2} \leq \frac{x}{2} < \frac{d+1}{2} \leq 5.$$

Le premier chiffre de $2^{i-1}$ est donc la partie entière de $x/2$.

- Si $d = 2k$ est pair, alors $k \leq x/2 < k + \frac{1}{2}$, donc ce premier chiffre est $k$.
- Si $d = 2k+1$ est impair, alors $k + \frac{1}{2} \leq x/2 < k+1$, donc ce premier chiffre est encore $k$.

Conclusion : **devant un $2$ ou un $3$ il y a toujours un $1$, devant un $4$ ou un $5$ toujours un $2$, devant un $6$ ou un $7$ toujours un $3$, devant un $8$ ou un $9$ toujours un $4$.**

### Étape 2 : quatre inégalités

Chaque fois qu'un $2$ ou un $3$ apparaît dans la liste, à une position $i$, le terme de position $i-1$ est un $1$, et cette position $i - 1$ est encore dans la liste. Deux positions $i$ différentes donnent deux positions $i - 1$ différentes. Il y a donc au moins autant de $1$ que de $2$ et de $3$ réunis. De même pour les autres chiffres :

$$c(1) \geq c(2) + c(3), \qquad c(2) \geq c(4) + c(5), \qquad c(3) \geq c(6) + c(7), \qquad c(4) \geq c(8) + c(9).$$

### Étape 3 : le calcul

On part de la somme totale et on remplace, ligne après ligne, le plus petit chiffre restant grâce à ces inégalités :

$$\begin{aligned}
n &= c(1) + c(2) + c(3) + c(4) + c(5) + c(6) + c(7) + c(8) + c(9) \\
&\geq 2c(2) + 2c(3) + c(4) + c(5) + c(6) + c(7) + c(8) + c(9) \\
&\geq 3c(4) + 3c(5) + 3c(6) + 3c(7) + c(8) + c(9) \\
&\geq 3c(5) + 3c(6) + 3c(7) + 4c(8) + 4c(9).
\end{aligned}$$

À la deuxième ligne on a remplacé $c(1)$ par $c(2) + c(3)$. À la troisième, $2c(2)$ par $2c(4) + 2c(5)$ et $2c(3)$ par $2c(6) + 2c(7)$. À la quatrième, $3c(4)$ par $3c(8) + 3c(9)$.

Chacun des nombres $c(5), \ldots, c(9)$ vaut au moins $m$, donc

$$n \geq (3 + 3 + 3 + 4 + 4)\,m = 17m.$$

**Conclusion.** Le chiffre $d$ pour lequel $c(d) = m$ apparaît au plus $n/17$ fois parmi $a_0, \ldots, a_{n-1}$.

*Une autre façon de voir le nombre 17.* En remontant la liste à partir d'un chiffre entre $5$ et $9$, on retombe sur un $1$ en suivant une des cinq chaînes $1, 2, 4, 8$ ; $1, 2, 4, 9$ ; $1, 2, 5$ ; $1, 3, 6$ ; $1, 3, 7$, de longueurs $4 + 4 + 3 + 3 + 3 = 17$. Chaque chiffre de $5$ à $9$ « réserve » sa chaîne entière dans la liste.

## Going further

1. Les premiers termes $1, 2, 4, 8, 1, 3, 6, 1, 2, 5, 1, 2, 4, 8, \ldots$ semblent se répéter, et ni $7$ ni $9$ n'y figurent. Vérifiez à la machine que $2^{46}$ commence par $7$ et $2^{53}$ par $9$ : il ne faut pas se fier aux premières valeurs.
2. Pourquoi chaque chiffre de $1$ à $9$ finit-il par apparaître ? (On peut montrer que la proportion de $9$ tend vers $\log_{10}(10/9)$, environ $\text{0,046}$, ce qui est un peu moins que $1/17 \approx \text{0,059}$.)
