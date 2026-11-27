---
id: "40962"
title: "Tout réel de [0 ; 1[ est un produit continué : l'algorithme glouton"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [suites, produit, partie-entiere, algorithme-glouton, encadrement, limite, disjonction-de-cas]
adapted_from: null
see_also: ["40961", "40963"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2026, mathématiques"
  reference: "cg-2026-s-sujet.pdf, exercice 1 « Produits continués », partie 2 « Existence par algorithme glouton », questions 6 à 8"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2026-s-sujet.pdf"
---

## Statement

Soit $(a_k)_{k \in \mathbb{N}}$ une suite d'entiers tous supérieurs ou égaux à $2$. On appelle
*suite des produits continués* associée à $(a_k)$ la suite $(u_n)$ définie par $u_0 = 1$ et
$u_{n+1} = u_n \left(1 - \frac{1}{a_n}\right)$, de sorte que, pour $n \geqslant 1,$

$$u_n = \left(1 - \frac{1}{a_0}\right)\left(1 - \frac{1}{a_1}\right) \cdots \left(1 - \frac{1}{a_{n-1}}\right).$$

On admet que cette suite converge, et on note $P_\infty((a_k))$ sa limite.

Pour tout réel $t$, on note $\lfloor t \rfloor$ la *partie entière* de $t$, c'est-à-dire l'unique
entier relatif $m$ tel que $m \leqslant t < m + 1$.

On fixe un réel $\ell \in [0\,;\,1[$, et on cherche une suite $(a_k)$ d'entiers supérieurs ou
égaux à $2$ telle que $\ell = P_\infty((a_k))$. L'idée est d'écrire
$\ell = \left(1 - \frac{1}{a}\right)\tilde{\ell}$, où $a$ est le plus petit entier supérieur ou
égal à $2$ tel que $\tilde{\ell}$ soit encore dans $[0\,;\,1[$, puis de recommencer avec
$\tilde{\ell}$.

1. Soit $x \in [0\,;\,1[$. Démontrer que l'entier $a = \left\lfloor \frac{1}{1-x} \right\rfloor + 1$
   vérifie
$$a \geqslant 2 \qquad \text{et} \qquad 1 - \frac{1}{a-1} \leqslant x < 1 - \frac{1}{a}.$$

On définit maintenant deux suites $(x_k)$ et $(a_k)$ par $x_0 = \ell$ et, pour tout entier
$k \geqslant 0$,

$$a_k = \left\lfloor \frac{1}{1 - x_k} \right\rfloor + 1 \qquad \text{et} \qquad x_{k+1} = \frac{x_k}{1 - \frac{1}{a_k}}.$$

On admet que ces deux suites sont bien définies, et que pour tout $k \geqslant 0$, l'entier $a_k$
est supérieur ou égal à $2$ et $x_k$ appartient à $[0\,;\,1[$ (cela découle de la question 1 par
récurrence).

2. Soit $k \geqslant 0$ un entier. Démontrer que $a_{k+1} - 1 \geqslant (a_k - 1)^2$.
3. Conclure que $\ell = P_\infty((a_k))$.

## Hints

1. **Question 1.** Poser $m = a - 1 = \left\lfloor \frac{1}{1-x} \right\rfloor$ et écrire ce que dit
   la définition de la partie entière. Puis passer aux inverses.
2. **Question 2.** Poser $m = a_k - 1$. La question 1 donne une minoration de $x_k$ ; en
   déduire une minoration de $x_{k+1}$.
3. **Question 2.** On trouve $x_{k+1} \geqslant 1 - \frac{1}{m^2}$. Que dit cette inégalité sur
   $\frac{1}{1 - x_{k+1}}$, puis sur sa partie entière ?
4. **Question 3.** Montrer par récurrence que $\ell = u_n\,x_n$ pour tout $n$, où $(u_n)$ est la
   suite des produits continués associée à $(a_k)$.
5. **Question 3.** On a alors $0 \leqslant u_n - \ell = u_n(1 - x_n)$. Pour montrer que cela tend
   vers $0$, séparer deux cas : tous les $a_k$ valent $2$, ou bien l'un d'eux vaut au moins $3$.

## Solution

**1.** Comme $0 \leqslant x < 1$, on a $0 < 1 - x \leqslant 1$, donc $\frac{1}{1-x} \geqslant 1$ et
$m = \left\lfloor \frac{1}{1-x} \right\rfloor \geqslant 1$. Ainsi $a = m + 1 \geqslant 2$.

Par définition de la partie entière, $m \leqslant \frac{1}{1-x} < m + 1 = a$. Les trois nombres
sont strictement positifs, donc en passant aux inverses :

$$\frac{1}{a} < 1 - x \leqslant \frac{1}{m} = \frac{1}{a-1}.$$

**Conclusion :** $1 - \frac{1}{a-1} \leqslant x < 1 - \frac{1}{a}$.

**2.** Posons $m = a_k - 1 \geqslant 1$. La question 1 appliquée à $x_k$ donne
$x_k \geqslant 1 - \frac{1}{m} = \frac{m-1}{m}$. D'autre part
$1 - \frac{1}{a_k} = \frac{m}{m+1}$, donc

$$x_{k+1} = x_k \times \frac{m+1}{m} \geqslant \frac{m-1}{m} \times \frac{m+1}{m} = \frac{m^2 - 1}{m^2} = 1 - \frac{1}{m^2}.$$

Ainsi $0 < 1 - x_{k+1} \leqslant \frac{1}{m^2}$, donc $\frac{1}{1 - x_{k+1}} \geqslant m^2$. Comme
$m^2$ est un entier, la partie entière de $\frac{1}{1 - x_{k+1}}$ est au moins $m^2$, c'est-à-dire
$a_{k+1} - 1 \geqslant m^2$.

**Conclusion :** $a_{k+1} - 1 \geqslant (a_k - 1)^2$.

**3.** Notons $(u_n)$ la suite des produits continués associée à $(a_k)$.

*Une égalité exacte.* Montrons par récurrence que $\ell = u_n\,x_n$ pour tout $n \geqslant 0$.
Pour $n = 0$, $u_0 x_0 = 1 \times \ell$. Si $\ell = u_n x_n$, alors, par définition de $x_{n+1}$,
$x_n = \left(1 - \frac{1}{a_n}\right) x_{n+1}$, donc
$\ell = u_n \left(1 - \frac{1}{a_n}\right) x_{n+1} = u_{n+1}\,x_{n+1}$.

*L'écart.* On en déduit $u_n - \ell = u_n (1 - x_n)$. Comme $0 < u_n \leqslant 1$ et
$0 < 1 - x_n \leqslant \frac{1}{a_n - 1}$ (question 1), on obtient

$$0 \leqslant u_n - \ell \leqslant u_n \qquad \text{et} \qquad 0 \leqslant u_n - \ell \leqslant \frac{1}{a_n - 1}.$$

*Premier cas : $a_k = 2$ pour tout $k$.* Alors $u_n = \left(\frac{1}{2}\right)^n$, et
$0 \leqslant \ell \leqslant u_n$ pour tout $n$ (première inégalité). En faisant tendre $n$ vers
$+\infty$, on obtient $\ell = 0$, qui est bien la limite de $u_n$.

*Second cas : il existe $k_0$ tel que $a_{k_0} \geqslant 3$.* Posons $b_k = a_k - 1$, de sorte
que $b_{k+1} \geqslant b_k^2$ (question 2) et $b_{k_0} \geqslant 2$. Par récurrence,
$b_{k_0 + j} \geqslant 2^{(2^j)} \geqslant 2^j$ pour tout $j \geqslant 0$ : l'hérédité vient de
$b_{k_0 + j + 1} \geqslant b_{k_0 + j}^2 \geqslant \left(2^{(2^j)}\right)^2 = 2^{(2^{j+1})}$. Donc
$a_n - 1$ tend vers $+\infty$, et la seconde inégalité donne, par le théorème des gendarmes,
$u_n - \ell \to 0$.

**Conclusion :** dans les deux cas, $u_n$ tend vers $\ell$, c'est-à-dire
$\ell = P_\infty((a_k))$.

**Bilan.** Pour tout réel $\ell$ de $[0\,;\,1[$, l'algorithme glouton fournit une suite
d'entiers $a_k \geqslant 2$ dont le produit continué a pour limite $\ell$, et cette suite vérifie
de plus $a_{k+1} - 1 \geqslant (a_k - 1)^2$ pour tout $k$.

## Going further

- Faire tourner l'algorithme sur $\ell = \frac{1}{2}$ : on trouve $3, 5, 17, 257, \ldots$ Quelle
  est la suite ? Comparer avec $a_k = 2^{(2^k)} + 1$.
- Dans la suite du sujet, on montrait que c'est la **seule** suite qui vérifie à la fois
  $\ell = P_\infty((a_k))$ et $a_{k+1} - 1 \geqslant (a_k - 1)^2$, et que $\ell$ est
  rationnel exactement quand l'égalité $a_{k+1} - 1 = (a_k - 1)^2$ a lieu à partir d'un certain
  rang : voir l'exercice 40963.
