---
id: "40404"
title: "Une suite majoritairement décroissante tend vers 0"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 50
tags: [suites, limite, majoration, denombrement, recurrence, puissances-de-2, ensembles-finis]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2012, mathématiques, série S"
  reference: "cg-2012-s-sujet.pdf, problème 2 « Une suite majoritairement décroissante »"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2012-s-sujet.pdf"
---

## Statement

Soit $(u_n)_{n \geq 0}$ une suite de nombres réels positifs ou nuls telle que $u_0 = 1$ et telle
que, pour tout entier $n \geq 1$, **au moins la moitié** des termes $u_0, u_1, \ldots, u_{n-1}$
soient supérieurs ou égaux à $2u_n$.

Montrer que $u_n$ tend vers $0$.

## Hints

1. Commencer par les premiers termes : montrer que $u_1 \leq \frac{1}{2}$, $u_2 \leq \frac{1}{2}$
   et $u_3 \leq \frac{1}{4}$. Fabriquer une suite qui vérifie la condition en choisissant chaque
   terme aussi grand que possible.
2. Montrer d'abord que tous les termes sont inférieurs ou égaux à $1$.
3. Soit $s > 0$ un seuil. Si $u_n > \frac{s}{2}$, que peut-on dire d'au moins $\frac{n}{2}$ des
   termes précédents ? En déduire que si seuls un nombre fini de termes dépassent $s$, alors seuls
   un nombre fini de termes dépassent $\frac{s}{2}$.
4. Noter $N_k$ le nombre d'indices $n$ tels que $u_n > \frac{1}{2^k}$. Montrer que si
   $u_n > \frac{1}{2^{k+1}}$, alors $n \leq 2N_k$, et en déduire $N_{k+1} \leq 2N_k + 1$.
5. En déduire que $N_k \leq 2^k - 1$, puis que $u_n \leq \frac{1}{2^k}$ dès que
   $n \geq 2^k - 1$.

## Solution

*Une remarque pour commencer.* Pour $n \geq 1$, la condition porte sur $n$ termes, et « au
moins la moitié » veut dire au moins $\frac{n}{2}$ d'entre eux, donc au moins un. Par exemple
$u_0 \geq 2u_1$ donne $u_1 \leq \frac{1}{2}$.

**Étape 1 : tous les termes sont inférieurs ou égaux à $1$.** C'est vrai pour $u_0 = 1$.
Supposons que $u_0, \ldots, u_{n-1}$ soient tous inférieurs ou égaux à $1$. Au moins l'un d'eux
est supérieur ou égal à $2u_n$, donc $2u_n \leq 1$ et $u_n \leq \frac{1}{2} \leq 1$. Par
récurrence, $u_n \leq 1$ pour tout $n$.

**Étape 2 : compter les termes qui dépassent un seuil.** Pour tout entier $k \geq 0$, on note
$N_k$ le nombre d'indices $n$ tels que $u_n > \frac{1}{2^k}$ (pour l'instant, ce nombre
pourrait être infini). L'étape 1 donne $N_0 = 0$ : aucun terme ne dépasse $1$.

Soit $k \geq 0$ tel que $N_k$ soit fini, et soit $n \geq 1$ tel que $u_n > \frac{1}{2^{k+1}}$.
Au moins $\frac{n}{2}$ des termes $u_0, \ldots, u_{n-1}$ vérifient
$$u_j \geq 2u_n > \frac{2}{2^{k+1}} = \frac{1}{2^k} .$$
Ces indices $j$ font tous partie des $N_k$ indices comptés par $N_k$, donc $\frac{n}{2} \leq N_k$,
c'est-à-dire $n \leq 2N_k$. Cela reste vrai pour $n = 0$.

Ainsi, tous les indices $n$ tels que $u_n > \frac{1}{2^{k+1}}$ sont parmi
$0, 1, \ldots, 2N_k$. Il y en a donc au plus $2N_k + 1$ :
$$N_{k+1} \leq 2N_k + 1 .$$

**Étape 3 : $N_k \leq 2^k - 1$ pour tout $k \geq 0$.** Par récurrence : $N_0 = 0 = 2^0 - 1$, et
si $N_k \leq 2^k - 1$, alors $N_{k+1} \leq 2(2^k - 1) + 1 = 2^{k+1} - 1$. En particulier, chaque
$N_k$ est fini, ce qui justifie l'étape 2 à chaque rang.

**Étape 4 : conclusion.** Soit $k \geq 1$. D'après l'étape 2 appliquée au rang $k - 1$, tout
indice $n$ tel que $u_n > \frac{1}{2^k}$ vérifie
$$n \leq 2N_{k-1} \leq 2(2^{k-1} - 1) = 2^k - 2 .$$
Donc, pour tout $n \geq 2^k - 1$, on a
$$0 \leq u_n \leq \frac{1}{2^k} .$$
Soit maintenant $\varepsilon > 0$. Comme $\frac{1}{2^k}$ tend vers $0$, on peut choisir $k$ tel que
$\frac{1}{2^k} < \varepsilon$. Alors, à partir du rang $2^k - 1$, tous les termes $u_n$ sont
compris entre $0$ et $\varepsilon$. C'est exactement la définition de « $u_n$ tend vers $0$ ».

**Conclusion :** $u_n$ tend vers $0$. Plus précisément, $u_n \leq \frac{1}{2^k}$ dès que
$n \geq 2^k - 1$.

*Cette majoration est la meilleure possible.* La suite
$$1, \quad \frac{1}{2}, \frac{1}{2}, \quad \frac{1}{4}, \frac{1}{4}, \frac{1}{4}, \frac{1}{4}, \quad \frac{1}{8}, \ldots$$
où $\frac{1}{2^k}$ est répété $2^k$ fois, a $u_n = \frac{1}{2^k}$ exactement quand
$2^k - 1 \leq n \leq 2^{k+1} - 2$. Elle vérifie la condition de l'énoncé : pour un tel $n \geq 1$,
les termes $u_0, \ldots, u_{2^k - 2}$ valent au moins $\frac{1}{2^{k-1}} = 2u_n$, il y en a
$2^k - 1$, et $\frac{n}{2} \leq 2^k - 1$. Pour elle, la majoration est atteinte.

**Bilan.** Une suite dont chaque terme est au plus la moitié d'au moins la moitié des termes
précédents tend vers $0$, même si elle n'est pas décroissante. L'idée est de compter les termes
qui dépassent $\frac{1}{2^k}$ : ce nombre est fini et au plus double, plus un, quand on divise le
seuil par $2$.

## Going further

- Montrer que $u_n < \frac{2}{n + 1}$ pour tout $n \geq 0$. La suite donnée à la fin de la
  solution montre qu'on ne peut pas remplacer $2$ par $1$ : pour elle, $u_n \geq \frac{1}{n+1}$.
- Que devient le résultat si l'on remplace « au moins la moitié » par « au moins un tiers », et
  $2u_n$ par $3u_n$ ? Et par « au moins un terme » ?
- Une suite qui vérifie la condition peut-elle ne pas être décroissante ? En donner un exemple.
