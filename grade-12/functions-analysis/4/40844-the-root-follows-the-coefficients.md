---
id: "40844"
title: "Quand les coefficients convergent, la racine suit-elle ?"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [polynome, coefficients, suites, limite, passage-a-la-limite, signe, convergence]
adapted_from: null
see_also: ["40842", "40843"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2023, mathématiques"
  reference: "cg-2023-s-sujet.pdf, exercice 2 « Limite sympathique ! », partie C « De la suite dans les idées », questions 10 à 14, avec les résultats de la partie B rappelés. Erreur du sujet corrigée : la définition de « vraiment sympathique » y impose 1 ≤ k ≤ d − 1. Avec cette borne, le premier exemple x² + x/n − 1 (coefficient de x strictement positif) n'est pas vraiment sympathique et la question 14 ne s'applique pas à lui, et la question 8 a) de la partie B est fausse. On a remplacé la borne par 0 ≤ k ≤ d − 1, seul changement."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2023-s-sujet.pdf"
---

## Statement

On fixe un entier $d \geqslant 1$. Un *polynôme de degré au plus $d$* est une fonction $P : x \mapsto a_d x^d + \cdots + a_1 x + a_0$, où $a_0, \ldots, a_d$ sont des réels. On dit que :

- $P$ est **initialement sympathique** si $a_0 = -1$ et $a_j \geqslant 0$ pour tout $j$ tel que $1 \leqslant j \leqslant d$ ;
- $P$ est **faussement sympathique** si $a_0 = -1$ et $a_j \leqslant 0$ pour tout $j$ tel que $1 \leqslant j \leqslant d$ ;
- $P$ est **vraiment sympathique** si $a_0 = -1$ et s'il existe un entier $k$ tel que $0 \leqslant k \leqslant d - 1$ et
$$a_1 \leqslant 0, \; \ldots, \; a_k \leqslant 0 \quad \text{et} \quad a_{k+1} > 0, \; a_{k+2} \geqslant 0, \; \ldots, \; a_d \geqslant 0$$
(quand $k = 0$, il n'y a aucune condition « $\leqslant 0$ ») ;
- $P$ est **sympathique** s'il est initialement, faussement ou vraiment sympathique.

On a montré dans une partie précédente les deux résultats suivants, que l'on admet ici.

- **(R1)** Tout polynôme faussement sympathique est strictement négatif sur $[0, +\infty[$.
- **(R2)** Tout polynôme vraiment sympathique $P$ a une unique racine strictement positive $\rho$ ; de plus $P(x) < 0$ pour $0 \leqslant x < \rho$ et $P(x) > 0$ pour $x > \rho$.

On considère maintenant des polynômes vraiment sympathiques $P_1, P_2, \ldots$ de degré au plus $d$, que l'on écrit

$$P_n : x \mapsto a_{d,n} x^d + \cdots + a_{1,n} x + a_{0,n}.$$

On suppose que, pour tout entier $k$ tel que $0 \leqslant k \leqslant d$, la suite $(a_{k,n})_{n \geqslant 1}$ converge ; on note $a_{k,\infty}$ sa limite, et l'on considère le polynôme

$$P_\infty : x \mapsto a_{d,\infty} x^d + \cdots + a_{1,\infty} x + a_{0,\infty}.$$

Enfin, pour tout $n \geqslant 1$, on note $x_n$ l'unique racine strictement positive de $P_n$. On étudie la convergence de la suite $(x_n)_{n \geqslant 1}$.

1. Soit $t$ un réel fixé. Démontrer que la suite $(P_n(t))_{n \geqslant 1}$ converge vers $P_\infty(t)$.
2. Démontrer que le polynôme $P_\infty$ est sympathique.
3. On suppose dans cette question que $P_\infty$ est vraiment sympathique, et on note $x_\infty$ sa racine strictement positive.

   a) Soit $u$ et $v$ deux réels tels que $0 < u < x_\infty < v$. Démontrer qu'il existe un entier $M_{u,v}$ tel que $P_n(u) < 0 < P_n(v)$ pour tout entier $n \geqslant M_{u,v}$.

   b) En déduire que la suite $(x_n)$ converge vers $x_\infty$.

4. On suppose dans cette question que $P_\infty$ est faussement sympathique. Démontrer que $(x_n)$ diverge vers $+\infty$.
5. Pour tout entier $n \geqslant 1$, on considère les quatre équations
$$x^2 + \frac{1}{n}x - 1 = 0, \qquad \frac{1}{n}y^2 - y - 1 = 0, \qquad z^3 + \frac{1}{n}z^2 - 1 = 0, \qquad \frac{1}{n}t^3 - t^2 - 1 = 0.$$
Que deviennent leurs racines strictement positives quand $n$ tend vers $+\infty$ ?

## Hints

1. **Question 2.** On ne sait rien de l'entier $k$ de $P_n$ : il peut changer avec $n$. Regarder plutôt le premier indice $m \geqslant 1$ tel que $a_{m,\infty} > 0$, s'il en existe un.
2. **Question 2.** Si $a_{m,\infty} > 0$, alors $a_{m,n} > 0$ pour $n$ assez grand. Que peut-on en déduire sur le signe des coefficients $a_{j,n}$ pour $j > m$ ?
3. **Question 3 a).** Quel est le signe de $P_\infty(u)$ et de $P_\infty(v)$ ? Utiliser la question 1.
4. **Question 3 b).** Si $P_n(u) < 0$, la racine $x_n$ peut-elle être inférieure ou égale à $u$ ? Prendre $u = x_\infty - \varepsilon$ et $v = x_\infty + \varepsilon$.
5. **Question 4.** Pour un réel $A > 0$, quel est le signe de $P_n(A)$ quand $n$ est grand ?
6. **Question 5.** Écrire chaque équation comme $P_n = 0$ avec un polynôme vraiment sympathique, et identifier $P_\infty$.

## Solution

Un fait sert plusieurs fois : **si $P$ est vraiment sympathique et $w \geqslant 0$, alors $P(w) < 0$ entraîne $w < \rho$, et $P(w) > 0$ entraîne $w > \rho$**, où $\rho$ est la racine strictement positive de $P$. C'est (R2) lu à l'envers : si $w \geqslant \rho$, alors $P(w) \geqslant 0$, et si $w \leqslant \rho$, alors $P(w) \leqslant 0$.

**1.** On a $P_n(t) = a_{0,n} + a_{1,n}t + \cdots + a_{d,n}t^d$. Pour chaque $k$, la suite $(a_{k,n}t^k)_n$ converge vers $a_{k,\infty}t^k$ ($t^k$ est un nombre fixé). Une somme d'un nombre fixé de suites convergentes converge vers la somme des limites, donc $P_n(t) \to P_\infty(t)$.

**2.** Pour tout $n$, $a_{0,n} = -1$, donc $a_{0,\infty} = -1$.

*Une remarque.* Soit $m \geqslant 1$ tel que $a_{m,\infty} > 0$. Comme $a_{m,n} \to a_{m,\infty}$, l'intervalle ouvert $]0, +\infty[$ contient tous les $a_{m,n}$ à partir d'un certain rang $N$. Pour $n \geqslant N$, notons $k_n$ l'entier de la définition pour $P_n$. Comme $a_{m,n} > 0$ et que les coefficients d'indice $1$ à $k_n$ sont négatifs ou nuls, $m > k_n$. Donc pour tout $j > m$, on a $j \geqslant k_n + 2$, d'où $a_{j,n} \geqslant 0$. En passant à la limite dans cette inégalité, $a_{j,\infty} \geqslant 0$. Conclusion : **après un coefficient limite strictement positif, tous les coefficients limites sont positifs ou nuls.**

*Deux cas.*

- S'il n'existe aucun $m \geqslant 1$ tel que $a_{m,\infty} > 0$, alors $a_{j,\infty} \leqslant 0$ pour tout $j \geqslant 1$ : $P_\infty$ est faussement sympathique.
- Sinon, soit $m$ le plus petit indice $m \geqslant 1$ tel que $a_{m,\infty} > 0$. Alors $a_{1,\infty}, \ldots, a_{m-1,\infty}$ sont négatifs ou nuls (par le choix de $m$), $a_{m,\infty} > 0$, et $a_{j,\infty} \geqslant 0$ pour $j > m$ (par la remarque). Avec $k = m - 1$, qui vérifie $0 \leqslant k \leqslant d - 1$, $P_\infty$ est vraiment sympathique.

Dans les deux cas, $P_\infty$ est sympathique (et même : faussement ou vraiment sympathique).

**3. a)** D'après (R2) appliqué à $P_\infty$, $P_\infty(u) < 0$ car $0 < u < x_\infty$, et $P_\infty(v) > 0$ car $v > x_\infty$. D'après la question 1, $P_n(u) \to P_\infty(u)$ ; l'intervalle ouvert $]{-\infty}, 0[$ contient $P_\infty(u)$, donc il contient $P_n(u)$ pour tout $n$ à partir d'un rang $N_1$. De même, $P_n(v) > 0$ pour tout $n \geqslant N_2$. Avec $M_{u,v} = \max(N_1, N_2)$, on a $P_n(u) < 0 < P_n(v)$ pour tout $n \geqslant M_{u,v}$.

**b)** Soit $\varepsilon$ un réel tel que $0 < \varepsilon < x_\infty$. Posons $u = x_\infty - \varepsilon$ et $v = x_\infty + \varepsilon$ : on a $0 < u < x_\infty < v$. Pour $n \geqslant M_{u,v}$, $P_n(u) < 0$ donne $u < x_n$, et $P_n(v) > 0$ donne $v > x_n$ (fait rappelé au début, appliqué à $P_n$). Donc $|x_n - x_\infty| < \varepsilon$ pour tout $n \geqslant M_{u,v}$. Ceci vaut pour tout $\varepsilon$ assez petit, donc aussi pour tout $\varepsilon > 0$ : la suite $(x_n)$ converge vers $x_\infty$.

**4.** Soit $A > 0$. D'après (R1), $P_\infty(A) < 0$. D'après la question 1, $P_n(A) \to P_\infty(A)$, donc $P_n(A) < 0$ pour tout $n$ à partir d'un certain rang. Pour ces $n$, le fait rappelé au début donne $A < x_n$. Ainsi, pour tout $A > 0$, tous les $x_n$ dépassent $A$ à partir d'un certain rang : $(x_n)$ diverge vers $+\infty$.

**5.** Les quatre polynômes ont bien un coefficient constant égal à $-1$.

- $x^2 + \frac{1}{n}x - 1$ ($d = 2$) : coefficients $a_1 = \frac{1}{n} > 0$, $a_2 = 1$, vraiment sympathique avec $k = 0$. La limite $x^2 - 1$ ($a_1 = 0$, $a_2 = 1 > 0$) est vraiment sympathique avec $k = 1$, de racine positive $1$. Donc $x_n \to 1$.
- $\frac{1}{n}y^2 - y - 1$ ($d = 2$) : $a_1 = -1 \leqslant 0$, $a_2 = \frac{1}{n} > 0$, vraiment sympathique avec $k = 1$. La limite $-y - 1$ est faussement sympathique. Donc $y_n \to +\infty$.
- $z^3 + \frac{1}{n}z^2 - 1$ ($d = 3$) : $a_1 = 0$, $a_2 = \frac{1}{n} > 0$, $a_3 = 1$, vraiment sympathique avec $k = 1$. La limite $z^3 - 1$ est vraiment sympathique avec $k = 2$, de racine positive $1$. Donc $z_n \to 1$.
- $\frac{1}{n}t^3 - t^2 - 1$ ($d = 3$) : $a_1 = 0$, $a_2 = -1$, $a_3 = \frac{1}{n} > 0$, vraiment sympathique avec $k = 2$. La limite $-t^2 - 1$ est faussement sympathique. Donc $t_n \to +\infty$.

**Bilan.** Si des polynômes vraiment sympathiques ont des coefficients qui convergent, le polynôme limite est vraiment ou faussement sympathique. Dans le premier cas, la racine strictement positive de $P_n$ converge vers celle du polynôme limite ; dans le second, elle tend vers $+\infty$. Les quatre exemples se traitent alors sans aucun calcul de racine.

## Going further

- Pourquoi a-t-on besoin de l'hypothèse « vraiment sympathique » ? Les polynômes $x^2 - \frac{1}{n}$ ont un coefficient constant qui n'est pas $-1$, et leur racine positive tend vers $0$, qui n'est pas strictement positif. Et les polynômes $(x^2 - 1)\left(1 - \frac{x}{n}\right)$, dont les coefficients convergent vers ceux de $x^2 - 1$ : combien ont-ils de racines strictement positives, et que deviennent-elles ? Pourquoi ne sont-ils pas sympathiques ?
- Dans la partie A du sujet (exercice 40842), ces quatre exemples étaient traités un par un, en calculant ou en encadrant les racines.
