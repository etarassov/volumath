---
id: "40641"
title: "Les polynômes de Bernstein et la loi binomiale"
grade: 12
theme: probability-statistics
difficulty: 2
duration_min: 40
tags: [polynome, coefficients-binomiaux, triangle-de-pascal, binome-de-newton, loi-binomiale, esperance, variance]
adapted_from: null
see_also: ["40642"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2018, mathématiques, série S"
  reference: "cg-2018-s-sujet.pdf, problème I « Approximations de courbes », partie A « Les polynômes de Bernstein », questions 1 à 5"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2018-s-sujet.pdf"
---

## Statement

Pour tout entier naturel $n$ et tout entier $i$ compris entre $0$ et $n$, on note $B_{n,i}$ le
polynôme défini pour $p$ dans l'intervalle $[0, 1]$ par

$$B_{n,i}(p) = \binom{n}{i}\, p^i\, (1 - p)^{n - i}.$$

Ainsi $B_{0,0}(p) = 1$, $B_{1,0}(p) = 1 - p$ et $B_{1,1}(p) = p$. Ces polynômes s'appellent les
*polynômes de Bernstein*.

1. a) Donner l'expression de $B_{2,0}(p)$, $B_{2,1}(p)$ et $B_{2,2}(p)$.

   b) Donner l'expression des polynômes de Bernstein pour $n = 3$ : $B_{3,0}(p)$, $B_{3,1}(p)$,
   $B_{3,2}(p)$ et $B_{3,3}(p)$.
2. a) Quelle est l'expression de $B_{n,0}(p)$ et de $B_{n,n}(p)$ ?

   b) Démontrer que, pour tout $n \geqslant 2$ et tout entier $i$ compris entre $1$ et $n - 1$,
   $$B_{n,i}(p) = (1 - p)\, B_{n-1,i}(p) + p\, B_{n-1,i-1}(p).$$
3. a) En quelles valeurs de $p \in [0, 1]$ un polynôme de Bernstein s'annule-t-il ? On
   distinguera les cas selon les valeurs de $n$ et de $i$.

   b) Quel est son signe sur $[0, 1]$ ?
4. Démontrer que, pour tout entier naturel $n$, les polynômes de Bernstein de degré $n$ ont pour
   somme $1$ :
   $$B_{n,0}(p) + B_{n,1}(p) + \cdots + B_{n,n}(p) = 1.$$
   On dit qu'ils forment une *partition de l'unité*.
5. Calculer les sommes
   $$\sum_{i=0}^{n} i\, B_{n,i}(p) \qquad \text{et} \qquad \sum_{i=0}^{n} i^2\, B_{n,i}(p).$$
   Que représentent ces sommes en termes de probabilités ?

## Hints

1. **Question 2.** Écrire les deux termes du membre de droite avec les mêmes puissances de $p$
   et de $1 - p$, puis utiliser la formule de Pascal.
2. **Question 4.** Penser à la formule du binôme de Newton, appliquée à $p + (1 - p)$.
3. **Question 4.** Autre point de vue : si $X$ suit la loi binomiale de paramètres $n$ et $p$,
   que vaut $P(X = i)$ ?
4. **Question 5.** La première somme est l'espérance d'une variable aléatoire que vous
   connaissez. Pour la calculer directement, montrer que $i \binom{n}{i} = n \binom{n-1}{i-1}$
   pour $i \geqslant 1$.
5. **Question 5.** Pour la seconde somme, calculer d'abord $\sum i(i-1)\, B_{n,i}(p)$ en
   utilisant de la même façon $i(i-1)\binom{n}{i} = n(n-1)\binom{n-2}{i-2}$.

## Solution

**1.** a) $B_{2,0}(p) = (1-p)^2$, $B_{2,1}(p) = 2p(1-p)$, $B_{2,2}(p) = p^2$.

b) $B_{3,0}(p) = (1-p)^3$, $B_{3,1}(p) = 3p(1-p)^2$, $B_{3,2}(p) = 3p^2(1-p)$,
$B_{3,3}(p) = p^3$.

**2.** a) Comme $\binom{n}{0} = \binom{n}{n} = 1$, on a $B_{n,0}(p) = (1-p)^n$ et
$B_{n,n}(p) = p^n$.

b) Soit $n \geqslant 2$ et $1 \leqslant i \leqslant n - 1$. Les deux termes du membre de droite
ont les mêmes puissances :
$$(1 - p)\, B_{n-1,i}(p) = \binom{n-1}{i}\, p^i (1-p)^{n-1-i+1} = \binom{n-1}{i}\, p^i (1-p)^{n-i},$$
$$p\, B_{n-1,i-1}(p) = \binom{n-1}{i-1}\, p^{i-1+1} (1-p)^{n-1-(i-1)} = \binom{n-1}{i-1}\, p^i (1-p)^{n-i}.$$
Leur somme vaut donc $\left(\binom{n-1}{i} + \binom{n-1}{i-1}\right) p^i (1-p)^{n-i}$. Par la
formule de Pascal, $\binom{n-1}{i} + \binom{n-1}{i-1} = \binom{n}{i}$, et l'on obtient bien
$B_{n,i}(p)$.

**3.** a) Le coefficient $\binom{n}{i}$ n'est jamais nul. Un produit $p^i (1-p)^{n-i}$ est nul
exactement quand l'un des facteurs est nul, et $p^i$ ne peut s'annuler que si $i \geqslant 1$
(en $p = 0$), $(1-p)^{n-i}$ que si $i \leqslant n - 1$ (en $p = 1$). D'où :

- si $n = 0$, $B_{0,0} = 1$ ne s'annule jamais ;
- si $n \geqslant 1$ et $i = 0$, $B_{n,0}(p) = (1-p)^n$ s'annule seulement en $p = 1$ ;
- si $n \geqslant 1$ et $i = n$, $B_{n,n}(p) = p^n$ s'annule seulement en $p = 0$ ;
- si $n \geqslant 2$ et $1 \leqslant i \leqslant n - 1$, $B_{n,i}$ s'annule en $p = 0$ et en
  $p = 1$, et nulle part ailleurs.

b) Pour $p \in [0, 1]$, on a $p \geqslant 0$ et $1 - p \geqslant 0$, donc
$B_{n,i}(p) \geqslant 0$. Il est même strictement positif sur $]0, 1[$, d'après a).

**4.** D'après la formule du binôme de Newton,
$$\sum_{i=0}^{n} B_{n,i}(p) = \sum_{i=0}^{n} \binom{n}{i} p^i (1-p)^{n-i} = (p + (1 - p))^n = 1^n = 1.$$

On peut aussi le voir ainsi : si $X$ suit la loi binomiale de paramètres $n$ et $p$, alors
$P(X = i) = B_{n,i}(p)$, et la somme des probabilités de toutes les valeurs possibles de $X$
vaut $1$.

**5.** *Première somme.* Pour $1 \leqslant i \leqslant n$,
$$i \binom{n}{i} = \frac{i \cdot n!}{i!\,(n-i)!} = \frac{n \cdot (n-1)!}{(i-1)!\,(n-i)!} = n \binom{n-1}{i-1}.$$
Le terme $i = 0$ est nul. Donc, pour $n \geqslant 1$, en posant $j = i - 1$,
$$\sum_{i=0}^{n} i\, B_{n,i}(p) = \sum_{i=1}^{n} n \binom{n-1}{i-1} p^i (1-p)^{n-i} = np \sum_{j=0}^{n-1} \binom{n-1}{j} p^j (1-p)^{n-1-j} = np,$$
la dernière somme valant $1$ d'après la question 4. Pour $n = 0$, la somme vaut $0 = np$ aussi.

**Conclusion :** $\sum_{i=0}^{n} i\, B_{n,i}(p) = np$.

*Seconde somme.* De la même façon, pour $2 \leqslant i \leqslant n$,
$$i(i-1) \binom{n}{i} = \frac{n!}{(i-2)!\,(n-i)!} = n(n-1) \binom{n-2}{i-2},$$
et les termes $i = 0$ et $i = 1$ sont nuls. Donc, pour $n \geqslant 2$, en posant $j = i - 2$,
$$\sum_{i=0}^{n} i(i-1)\, B_{n,i}(p) = n(n-1)p^2 \sum_{j=0}^{n-2} \binom{n-2}{j} p^j (1-p)^{n-2-j} = n(n-1)p^2.$$
Cette égalité reste vraie pour $n = 0$ et $n = 1$, où les deux membres sont nuls. Comme
$i^2 = i(i-1) + i$,
$$\sum_{i=0}^{n} i^2\, B_{n,i}(p) = n(n-1)p^2 + np = n^2p^2 + np(1-p).$$

**Conclusion :** $\sum_{i=0}^{n} i^2\, B_{n,i}(p) = np(1-p) + n^2p^2$.

*Interprétation.* Si $X$ suit la loi binomiale de paramètres $n$ et $p$, alors
$P(X = i) = B_{n,i}(p)$. La première somme est l'espérance $E(X) = np$, la seconde est
l'espérance de $X^2$. On retrouve la variance du cours :
$V(X) = E(X^2) - E(X)^2 = np(1-p) + n^2p^2 - n^2p^2 = np(1-p)$.

**Bilan.** Les polynômes de Bernstein de degré $n$ sont les probabilités de la loi binomiale de
paramètres $n$ et $p$. Ils sont positifs ou nuls sur $[0, 1]$, ont pour somme $1$, et vérifient
$\sum i\, B_{n,i}(p) = np$ et $\sum i^2\, B_{n,i}(p) = np(1-p) + n^2p^2$.

## Going further

- Dans la suite du sujet, on utilisait ces polynômes pour dessiner des courbes : les *courbes de
  Bézier*, que l'on retrouve dans tous les logiciels de dessin (voir l'exercice 40642).
- Pour une fonction $f$ continue sur $[0, 1]$, le polynôme
  $\sum_{i=0}^{n} f(i/n)\, B_{n,i}(p)$ se rapproche de $f$ quand $n$ grandit.
  Les deux sommes de la question 5 sont la clé de la preuve : elles montrent que $\frac{X}{n}$ est
  presque toujours proche de $p$ (inégalité de Bienaymé-Tchebychev).
