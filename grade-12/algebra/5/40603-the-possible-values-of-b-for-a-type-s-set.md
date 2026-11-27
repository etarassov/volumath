---
id: "40603"
title: "Les valeurs possibles de b pour une partie de type S"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [nombres-complexes, maths-expertes, racines-de-lunite, module, argument, majoration, exemple, disjonction-de-cas]
adapted_from: null
see_also: ["40601", "40602"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2017, mathématiques, série S"
  reference: "cg-2017-s-sujet.pdf, problème I « Parties de C de type S », partie C, questions 3 à 6"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2017-s-sujet.pdf"
---

## Statement

Une partie $\mathcal{A}$ non vide de $\mathbb{C}$ est dite *de type S* si, pour tous nombres
complexes $z_1$ et $z_2$ de $\mathcal{A}$ (égaux ou non), le produit $z_1 z_2$ et la somme
$z_1^2 + z_2^2$ sont encore dans $\mathcal{A}$.

Pour une partie $\mathcal{A}$ de type S, on note $b(\mathcal{A})$ le nombre d'éléments $z$ de
$\mathcal{A}$ dont le module $|z|$ est inférieur ou égal à $1$. On écrit
$b(\mathcal{A}) = \infty$ s'il y en a une infinité. Pour un complexe $a$ non nul, on note
$\mathrm{Arg}(a)$ son unique argument dans $]-\pi, \pi]$.

On a montré dans des parties précédentes les résultats suivants, que l'on admet.

- **(R1)** Si $\mathcal{A}$ contient un élément $a$ tel que $0 < |a| < 1$, alors
  $b(\mathcal{A}) = \infty$.
- **(R2)** Si $a$ est un complexe de module $1$ dont l'argument n'est ni un multiple de
  $\frac{\pi}{6}$, ni un multiple de $\frac{\pi}{4}$, il existe un entier $n \geq 1$ tel que
  $0 < |a^{2n} + a^{4n}| < 1$.
- **(R3)** Les parties suivantes sont de type S, et : l'ensemble des entiers $n \geq 2$ donne
  $b = 0$ ; $\mathbb{N}^*$ donne $b = 1$ ; $\mathbb{N}$ donne $b = 2$ ; $\mathbb{Z}$ donne
  $b = 3$ ; $\mathbb{C}$ donne $b = \infty$. Avec $j = e^{2i\pi/3}$ et $\mathbb{Z}[j]$
  l'ensemble des $a + bj$ ($a, b$ entiers relatifs), $\mathbb{Z}[j]$ privé de $0$ donne $b = 6$,
  $\mathbb{Z}[j]$ donne $b = 7$, et l'ensemble $\mathcal{R}$ des complexes $z$ tels que
  $z^2 \in \mathbb{Z}[j]$ donne $b = 13$.

Dans tout l'exercice, $\mathcal{A}$ est une partie de type S.

1. On suppose que $b(\mathcal{A})$ est fini et supérieur ou égal à $2$.

   a) Montrer qu'il existe $a \in \mathcal{A}$ tel que $|a| = 1$.

   b) Quelles sont alors les valeurs possibles de $\mathrm{Arg}(a)$ ?

   c) En déduire que $b(\mathcal{A}) \leq 17$.
2. Donner une partie $\mathcal{A}$ de type S telle que $b(\mathcal{A}) = 5$.
3. Donner une partie $\mathcal{A}$ de type S telle que $b(\mathcal{A}) = 9$.
4. Quelles sont les valeurs possibles de $b(\mathcal{A})$ ?

## Hints

1. **Question 1.** Pour b), si $\mathrm{Arg}(a)$ n'est pas un multiple de $\frac{\pi}{6}$ ni de
   $\frac{\pi}{4}$, le nombre $a^{2n} + a^{4n}$ donné par (R2) est-il dans $\mathcal{A}$ ?
2. **Question 2.** S'inspirer de $\mathbb{Z}[j]$ en remplaçant $j$ par $i$.
3. **Question 3.** S'inspirer de $\mathcal{R}$, toujours avec $i$ à la place de $j$.
4. **Question 4.** Si $b(\mathcal{A})$ est fini et au moins $2$, regarder l'ensemble $G$ des
   éléments de $\mathcal{A}$ de module $1$. D'après (R1), $b(\mathcal{A})$ vaut le nombre
   d'éléments de $G$, ou ce nombre plus $1$ selon que $0 \in \mathcal{A}$ ou non.
5. **Question 4.** Posons $\omega = e^{i\pi/12}$. D'après la question 1, tout élément de $G$
   est une puissance de $\omega$, donc $z^{24} = 1$ pour tout $z \in G$. En déduire que $1$ et
   l'inverse de chaque élément de $G$ sont dans $G$.
6. **Question 4.** Soit $d$ le plus petit entier $d \geq 1$ tel que $\omega^d \in G$. Montrer,
   avec une division euclidienne, que $G$ est exactement l'ensemble des puissances de
   $\omega^d$, et que $d$ divise $24$.
7. **Question 4.** On obtient que $G$ est l'ensemble des racines $m$-ièmes de l'unité, avec
   $m$ diviseur de $24$. Éliminer $m = 24$ avec la question 1, et $m = 3$ en calculant
   $1^2 + j^2$.
8. **Question 4.** Quand $i \in G$, le nombre $1^2 + i^2$ est dans $\mathcal{A}$. Que vaut-il ?

## Solution

**1.** a) Comme $b(\mathcal{A}) \geq 2$, au moins deux éléments de $\mathcal{A}$ sont de module au
plus $1$, et l'un d'eux, $a$, n'est pas nul. Si $|a| < 1$, (R1) donnerait
$b(\mathcal{A}) = \infty$, ce qui est exclu. Donc $|a| = 1$.

b) Soit $a \in \mathcal{A}$ de module $1$, et supposons que $\mathrm{Arg}(a)$ n'est ni un multiple
de $\frac{\pi}{6}$ ni un multiple de $\frac{\pi}{4}$. D'après (R2), il existe $n \geq 1$ tel que
$0 < |a^{2n} + a^{4n}| < 1$. Or $a^n$ et $a^{2n}$ sont dans $\mathcal{A}$ (produits d'éléments de
$\mathcal{A}$), donc $(a^n)^2 + (a^{2n})^2 = a^{2n} + a^{4n}$ aussi. Par (R1),
$b(\mathcal{A}) = \infty$ : contradiction.

**Conclusion :** $\mathrm{Arg}(a)$ est un multiple de $\frac{\pi}{6}$ ou de $\frac{\pi}{4}$
dans $]-\pi, \pi]$, c'est-à-dire l'une des valeurs $\frac{k\pi}{6}$ pour $k = -5, \ldots, 6$ ou
$\frac{k\pi}{4}$ pour $k = -3, \ldots, 4$. Autrement dit, $a$ est une racine douzième ou une racine
huitième de l'unité.

c) Les éléments de $\mathcal{A}$ de module au plus $1$ sont éventuellement $0$, et des nombres non
nuls qui, d'après (R1), sont tous de module $1$. Ces derniers sont déterminés par leur argument,
qui est l'une des valeurs de b). Il y a $12$ multiples de $\frac{\pi}{6}$ et $8$ multiples de
$\frac{\pi}{4}$ dans $]-\pi, \pi]$, dont $4$ sont communs ($-\frac{\pi}{2}$, $0$,
$\frac{\pi}{2}$, $\pi$), soit $12 + 8 - 4 = 16$ valeurs. Donc $b(\mathcal{A}) \leq 16 + 1 = 17$.

**2.** Soit $\mathbb{Z}[i]$ l'ensemble des complexes $a + bi$ avec $a$ et $b$ entiers relatifs. Il
contient $0$, et il est stable par somme et par produit :
$(a + bi)(c + di) = (ac - bd) + (ad + bc)\,i$. Donc, si $z_1, z_2 \in \mathbb{Z}[i]$, alors
$z_1 z_2$ et $z_1^2 + z_2^2$ sont dans $\mathbb{Z}[i]$ : il est de type S. Comme
$|a + bi|^2 = a^2 + b^2$ avec $a, b$ entiers, $|a + bi| \leq 1$ donne $(a, b) = (0, 0)$, ou
$a^2 = 1$ et $b = 0$, ou $a = 0$ et $b^2 = 1$. Les éléments de module au plus $1$ sont $0$,
$1$, $-1$, $i$, $-i$ : $b(\mathbb{Z}[i]) = 5$.

**3.** Soit $\mathcal{R}'$ l'ensemble des complexes $z$ tels que $z^2 \in \mathbb{Z}[i]$. Il
contient $0$. Si $z_1, z_2 \in \mathcal{R}'$, posons $w_1 = z_1^2$ et $w_2 = z_2^2$, qui sont dans
$\mathbb{Z}[i]$, stable par somme et produit. Alors $(z_1 z_2)^2 = w_1 w_2 \in \mathbb{Z}[i]$ et
$(z_1^2 + z_2^2)^2 = w_1^2 + 2 w_1 w_2 + w_2^2 \in \mathbb{Z}[i]$. Donc $\mathcal{R}'$ est de
type S.

Si $z \in \mathcal{R}'$ et $|z| \leq 1$, alors $z^2 \in \mathbb{Z}[i]$ et $|z^2| \leq 1$, donc
$z^2 \in \{0, 1, -1, i, -i\}$ d'après la question 2 ; réciproquement un tel $z$ est dans
$\mathcal{R}'$ et de module au plus $1$. Le carré $0$ ne vient que de $z = 0$. Chacun des quatre
nombres $1, -1, i, -i$ a deux racines carrées distinctes, et ces huit racines sont différentes :
ce sont les racines huitièmes de l'unité $e^{ik\pi/4}$, $k = 0, \ldots, 7$. Donc
$b(\mathcal{R}') = 1 + 8 = 9$.

**4.** Montrons que les valeurs possibles sont exactement
$$0,\ 1,\ 2,\ 3,\ 5,\ 6,\ 7,\ 9,\ 13 \text{ et } \infty .$$

*Ces valeurs sont atteintes*, par les exemples de (R3) et des questions 2 et 3.

*Ce sont les seules.* Supposons $b(\mathcal{A})$ fini et au moins égal à $2$ (les cas $0$ et $1$
sont déjà dans la liste). Soit $G$ l'ensemble des éléments de $\mathcal{A}$ de module $1$. D'après
(R1), les éléments de $\mathcal{A}$ de module au plus $1$ sont ceux de $G$, plus $0$ si
$0 \in \mathcal{A}$. Donc $b(\mathcal{A})$ est égal au nombre $m$ d'éléments de $G$, ou à $m + 1$.
D'après la question 1 a), $G$ n'est pas vide.

*Étape 1 : $G$ est stable par produit et par inverse.* Le produit de deux éléments de $G$ est dans
$\mathcal{A}$ et de module $1$, donc dans $G$. Posons $\omega = e^{i\pi/12}$. Les multiples de
$\frac{\pi}{6} = \frac{2\pi}{12}$ et de $\frac{\pi}{4} = \frac{3\pi}{12}$ sont des multiples de
$\frac{\pi}{12}$, donc, d'après la question 1 b), tout élément de $G$ est une puissance
$\omega^k$. Comme $\omega^{24} = e^{2i\pi} = 1$, on a $z^{24} = 1$ pour tout $z \in G$. Ainsi
$1 = z^{24} \in G$ et $z^{-1} = z^{23} \in G$.

*Étape 2 : $G$ est l'ensemble des racines $m$-ièmes de l'unité.* Comme $\omega^{24} = 1 \in G$,
il existe des entiers $d$ entre $1$ et $24$ tels que $\omega^d \in G$ ; soit $d$ le plus petit.
Soit $\omega^k \in G$ ($k$ entier). Écrivons la division euclidienne $k = qd + r$ avec
$0 \leq r < d$. Alors $\omega^r = \omega^k \times \left(\omega^d\right)^{-q}$ est dans $G$ par
l'étape 1. Si $r \geq 1$, cela contredit le choix de $d$, donc $r = 0$ : tout élément de $G$ est
une puissance de $\omega^d$. Réciproquement les puissances de $\omega^d$ sont dans $G$. Avec
$k = 24$, on obtient que $d$ divise $24$. En posant $m = \frac{24}{d}$, l'ensemble $G$ est formé
des $m$ nombres $\omega^{d}, \omega^{2d}, \ldots, \omega^{md} = 1$, qui sont distincts (leurs
arguments $\frac{\ell d \pi}{12}$, $1 \leq \ell \leq m$, sont dans $]0, 2\pi]$) : ce sont les
racines $m$-ièmes de l'unité $e^{2i\ell\pi/m}$.

*Étape 3 : les valeurs de $m$.* $m$ divise $24$, donc $m \in \{1, 2, 3, 4, 6, 8, 12, 24\}$.

- $m = 24$ est impossible : $G$ contiendrait $\omega$, d'argument $\frac{\pi}{12}$, qui n'est
  multiple ni de $\frac{\pi}{6}$ ni de $\frac{\pi}{4}$, contre la question 1 b).
- $m = 3$ est impossible : $G$ serait $\{1, j, j^2\}$. Mais alors
  $1^2 + j^2 = 1 + j^2 = -j$ serait dans $\mathcal{A}$, de module $1$, donc dans $G$. Or
  $(-j)^3 = -1$, donc $-j$ n'est pas une racine cubique de l'unité : contradiction.

*Étape 4 : quand $0$ est forcé.* Si $m$ est un multiple de $4$ ($m = 4$, $8$ ou $12$), alors
$i^m = 1$, donc $i \in G$, et $1^2 + i^2 = 0$ est dans $\mathcal{A}$. Dans ce cas
$b(\mathcal{A}) = m + 1$.

Il reste : $m = 1$ donne $b \in \{1, 2\}$ ; $m = 2$ donne $b \in \{2, 3\}$ ; $m = 6$ donne
$b \in \{6, 7\}$ ; $m = 4$, $8$, $12$ donnent $b = 5$, $9$, $13$.

**Conclusion :** $b(\mathcal{A})$ ne peut prendre que les valeurs $0$, $1$, $2$, $3$, $5$, $6$,
$7$, $9$, $13$ et $\infty$, et toutes sont atteintes. En particulier $4$, $8$, $10$, $11$, $12$ et
$14$ à $17$ sont impossibles.

**Bilan.** Si une partie de type S n'a qu'un nombre fini d'éléments dans le disque de rayon $1$,
ses éléments de module $1$ sont exactement les racines $m$-ièmes de l'unité pour un $m$ parmi
$1, 2, 4, 6, 8, 12$, et $0$ est forcé quand $m$ est multiple de $4$. Le nombre $b(\mathcal{A})$
vaut donc $0, 1, 2, 3, 5, 6, 7, 9, 13$ ou $\infty$, et chacune de ces valeurs est atteinte.

## Going further

- Pour chacune des valeurs $1$, $2$, $3$, $6$, $7$, on a trouvé un exemple. Trouver une partie
  de type S dont les éléments de module au plus $1$ sont exactement $-1$ et $1$ (donc sans $0$).
- À la question 1 c), la majoration par $17$ était loin d'être atteinte. Pourquoi une partie
  de type S ne peut-elle pas contenir à la fois $e^{i\pi/4}$ et $e^{i\pi/6}$ si $b$ est fini ?
