---
id: "10427"
title: "Encadrer n itérations de x + x²/n"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [suites, inegalite, encadrement, telescopage]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 4 (algèbre)"
  reference: "2017-10_ofm-2014-2015-envoi-4.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2014-2015-envoi-4-solutions.pdf (erreur de la source : l'énoncé demande l'encadrement strict pour tout entier n > 0, mais pour n = 1 l'inégalité de droite est une égalité, car f(a) = a + a² ; l'énoncé ci-dessous prend n ⩾ 2)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-4.pdf"
---

## Statement

Soient $a$ un réel de l'intervalle $]0, 1[$ et $n \geqslant 2$ un entier. On note $f$ la fonction définie sur $\mathbb{R}$ par

$$f(x) = x + \frac{x^2}{n} ,$$

et $u_n$ le nombre obtenu en appliquant $n$ fois de suite la fonction $f$ au nombre $a$ : $u_n = f(f(\cdots f(a) \cdots))$, avec $n$ fois la lettre $f$. Montrer que

$$\frac{a(1 - a)n^2 + 2a^2 n + a^3}{(1 - a)^2 n^2 + a(2 - a)n + a^2} < u_n < \frac{an + a^2}{(1 - a)n + a} .$$

## Hints

1. Pose $u_0 = a$ et $u_{k+1} = f(u_k)$. Montre que la suite $(u_k)$ est strictement croissante et à termes strictement positifs.
2. Écris $u_{k+1} = \frac{u_k(u_k + n)}{n}$ et calcule $\frac{1}{u_k} - \frac{1}{u_k + n}$. Que remarques-tu ?
3. Additionne les égalités obtenues pour $k = 0, 1, \ldots, n - 1$. Il reste $\frac{1}{u_n}$ d'un côté, et une somme de $n$ fractions $\frac{1}{u_k + n}$ de l'autre. Encadre chacune de ces fractions avec $u_0 = a$ et $u_n$.
4. L'une des deux inégalités obtenues donne directement l'inégalité de droite. Pour celle de gauche, injecte dans l'autre la majoration de $u_n$ que tu viens d'obtenir.

## Solution

**Étape 1 : la suite.** Posons $u_0 = a$ et $u_{k+1} = f(u_k) = u_k + \frac{u_k^2}{n}$ pour tout $k \geqslant 0$. Ainsi $u_n$ est bien le nombre de l'énoncé. Par récurrence, tous les $u_k$ sont strictement positifs : $u_0 = a > 0$, et si $u_k > 0$, alors $u_{k+1} = u_k + \frac{u_k^2}{n} > u_k > 0$. Le même calcul montre que la suite est strictement croissante :

$$a = u_0 < u_1 < u_2 < \cdots < u_n .$$

**Étape 2 : une somme télescopique.** Pour tout $k \geqslant 0$, on a $u_{k+1} = \frac{u_k(u_k + n)}{n}$, donc

$$\frac{1}{u_{k+1}} = \frac{n}{u_k(u_k + n)} = \frac{1}{u_k} - \frac{1}{u_k + n} ,$$

comme on le vérifie en réduisant au même dénominateur. Additionnons ces égalités pour $k = 0, 1, \ldots, n - 1$. Les termes $\frac{1}{u_1}, \ldots, \frac{1}{u_{n-1}}$ apparaissent une fois de chaque côté et s'éliminent. Il reste

$$\frac{1}{u_n} = \frac{1}{a} - \sum_{k=0}^{n-1} \frac{1}{u_k + n} . \qquad (1)$$

**Étape 3 : encadrer la somme.** Pour $0 \leqslant k \leqslant n - 1$, on a $a \leqslant u_k < u_n$, donc

$$\frac{1}{u_n + n} < \frac{1}{u_k + n} \leqslant \frac{1}{a + n} ,$$

et l'inégalité de droite est stricte dès que $k \geqslant 1$. Comme $n \geqslant 2$, l'indice $k = 1$ fait partie de la somme. En additionnant ces $n$ encadrements,

$$\frac{n}{u_n + n} < \sum_{k=0}^{n-1} \frac{1}{u_k + n} < \frac{n}{a + n} .$$

Avec $(1)$, on obtient

$$\frac{1}{a} - \frac{n}{a + n} < \frac{1}{u_n} < \frac{1}{a} - \frac{n}{u_n + n} . \qquad (2)$$

**Étape 4 : l'inégalité de droite.** On calcule

$$\frac{1}{a} - \frac{n}{a + n} = \frac{a + n - an}{a(a + n)} = \frac{(1 - a)n + a}{a(a + n)} ,$$

qui est strictement positif. L'inégalité de gauche de $(2)$ dit que $\frac{1}{u_n}$ est strictement plus grand que ce nombre. En passant aux inverses (tout est positif),

$$u_n < \frac{a(a + n)}{(1 - a)n + a} = \frac{an + a^2}{(1 - a)n + a} .$$

**Étape 5 : l'inégalité de gauche.** Notons $U = \frac{an + a^2}{(1 - a)n + a}$. On vient de voir que $u_n < U$, donc $u_n + n < U + n$, puis $\frac{n}{u_n + n} > \frac{n}{U + n}$. L'inégalité de droite de $(2)$ donne alors

$$\frac{1}{u_n} < \frac{1}{a} - \frac{n}{U + n} . \qquad (3)$$

Calculons ce membre de droite. D'abord

$$U + n = \frac{an + a^2 + (1 - a)n^2 + an}{(1 - a)n + a} = \frac{D}{(1 - a)n + a}, \qquad \text{où} \qquad D = (1 - a)n^2 + 2an + a^2 .$$

Donc $\frac{n}{U + n} = \frac{n((1 - a)n + a)}{D}$, et

$$\frac{1}{a} - \frac{n}{U + n} = \frac{D - a(1 - a)n^2 - a^2 n}{aD} = \frac{(1 - a)^2 n^2 + a(2 - a)n + a^2}{aD} .$$

Notons $N$ le numérateur. Les nombres $N$ et $D$ sont strictement positifs, car tous leurs termes le sont. L'inégalité $(3)$ s'écrit $\frac{1}{u_n} < \frac{N}{aD}$, donc, en passant aux inverses,

$$u_n > \frac{aD}{N} = \frac{a(1 - a)n^2 + 2a^2 n + a^3}{(1 - a)^2 n^2 + a(2 - a)n + a^2} .$$

**Conclusion.** Les deux inégalités de l'énoncé sont démontrées.

## Going further

1. Que se passe-t-il pour $n = 1$ ? Laquelle des deux inégalités reste stricte ?
2. Montrer que les deux bornes de l'encadrement ont la même limite quand $n$ tend vers $+\infty$. En déduire la limite de $u_n$.
