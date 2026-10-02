---
id: "13626"
title: "Quand n divisé par la partie entière de √n augmente-t-il ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [partie entiere, racine carree, divisibilite, carres parfaits, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2015 (2 juin 2015)"
  reference: "2017-09_coupe_printemps_2015.pdf, énoncés lycée, exercice 6 ; corrigé 2017-09_coupe_printemps_2015_corrige.pdf, exercice 6, où une coquille écrit « n + 1 = m² = 2m » au lieu de « n + 1 = m² + 2m » (la conclusion du corrigé est juste)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2015.pdf"
---

## Statement

Pour un nombre réel $x$, on note $\lfloor x \rfloor$ sa **partie entière**, c'est-à-dire le plus grand entier inférieur ou égal à $x$. Par exemple, $\lfloor 15/4 \rfloor = 3$ et $\lfloor \sqrt{10} \rfloor = 3$.

Pour tout entier $n \ge 1$, on pose

$$f(n) = \left\lfloor \frac{n}{\lfloor \sqrt{n} \rfloor} \right\rfloor .$$

Trouver tous les entiers $n \ge 1$ tels que $f(n + 1) > f(n)$.

## Hints

1. Calcule $f(n)$ pour $n$ allant de $1$ à $12$, et repère les valeurs de $n$ pour lesquelles $f(n + 1) > f(n)$.
2. Pose $m = \lfloor \sqrt{n} \rfloor$. Entre quels carrés se trouve $n$ ? Quand a-t-on $\lfloor \sqrt{n + 1} \rfloor = m$ ?
3. Traite à part le cas où $n + 1$ est un carré : calcule alors directement $f(n)$ et $f(n + 1)$.
4. Dans l'autre cas, montre que $\left\lfloor \frac{n + 1}{m} \right\rfloor > \left\lfloor \frac{n}{m} \right\rfloor$ exactement quand $m$ divise $n + 1$.

## Solution

**Les premières valeurs.** Voici $f(n)$ pour $n$ de $1$ à $12$ :

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $\lfloor \sqrt{n} \rfloor$ | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 |
| $f(n)$ | 1 | 2 | 3 | 2 | 2 | 3 | 3 | 4 | 3 | 3 | 3 | 4 |

La fonction $f$ augmente en passant de $n$ à $n + 1$ pour $n = 1, 2, 5, 7, 11$. Elle diminue juste avant chaque carré : de $3$ à $2$ en $4$, de $4$ à $3$ en $9$. On va expliquer tout cela.

**Un outil sur les parties entières.** Soit $p \ge 1$ et $k \ge 0$ deux entiers. On fait la division euclidienne de $k$ par $p$ : $k = qp + r$, avec $0 \le r \le p - 1$. Alors $\left\lfloor \frac{k}{p} \right\rfloor = q$, car $q \le \frac{k}{p} < q + 1$. Et $k + 1 = qp + (r + 1)$.

- Si $r \le p - 2$, alors $r + 1 \le p - 1$, et $\left\lfloor \frac{k + 1}{p} \right\rfloor = q$ aussi.
- Si $r = p - 1$, alors $k + 1 = (q + 1)p$, et $\left\lfloor \frac{k + 1}{p} \right\rfloor = q + 1$.

Donc $\left\lfloor \frac{k + 1}{p} \right\rfloor > \left\lfloor \frac{k}{p} \right\rfloor$ **exactement quand $p$ divise $k + 1$**.

**Le cadre.** Soit $n \ge 1$ et $m = \lfloor \sqrt{n} \rfloor$, qui est un entier au moins égal à $1$. Par définition, $m \le \sqrt{n} < m + 1$, donc $m^2 \le n < (m + 1)^2$. Comme ce sont des entiers, cela s'écrit

$$m^2 \le n \le m^2 + 2m .$$

On sépare deux cas, selon que $n + 1$ est un carré ou non.

**Premier cas : $n = m^2 + 2m$.** Alors $n + 1 = (m + 1)^2$, donc $\lfloor \sqrt{n + 1} \rfloor = m + 1$, et

$$f(n + 1) = \frac{(m + 1)^2}{m + 1} = m + 1, \qquad f(n) = \left\lfloor \frac{m^2 + 2m}{m} \right\rfloor = m + 2 .$$

Ici $f(n + 1) < f(n)$ : aucun $n$ de ce cas ne convient. (C'est la baisse observée juste avant chaque carré.)

**Second cas : $m^2 \le n \le m^2 + 2m - 1$.** Alors $n + 1 \le m^2 + 2m < (m + 1)^2$, donc $m^2 \le n + 1 < (m + 1)^2$ et $\lfloor \sqrt{n + 1} \rfloor = m$ aussi. Ainsi

$$f(n) = \left\lfloor \frac{n}{m} \right\rfloor \qquad \text{et} \qquad f(n + 1) = \left\lfloor \frac{n + 1}{m} \right\rfloor .$$

D'après l'outil, $f(n + 1) > f(n)$ exactement quand $m$ divise $n + 1$. Or $n + 1$ est compris entre $m^2 + 1$ et $m^2 + 2m$. Les multiples de $m$ voisins de cet intervalle sont $m^2$, $m^2 + m$, $m^2 + 2m$ et $m^2 + 3m$. Seuls $m^2 + m$ et $m^2 + 2m$ sont dans l'intervalle. Donc $f(n + 1) > f(n)$ exactement quand

$$n + 1 = m^2 + m \qquad \text{ou} \qquad n + 1 = m^2 + 2m .$$

Ces deux valeurs de $n$, à savoir $m^2 + m - 1$ et $m^2 + 2m - 1$, sont bien dans le second cas, car $m \ge 1$ donne $m^2 + m - 1 \ge m^2$.

**Vérification.** Pour $m = 1$, on trouve $n = 1$ et $n = 2$. Pour $m = 2$, on trouve $n = 5$ et $n = 7$. Pour $m = 3$, on trouve $n = 11$ et $n = 14$. On retrouve les valeurs $1$, $2$, $5$, $7$ et $11$ repérées dans le tableau.

**Conclusion.** Les entiers $n \ge 1$ tels que $f(n + 1) > f(n)$ sont exactement ceux qui s'écrivent

$$n = m^2 + m - 1 \qquad \text{ou} \qquad n = m^2 + 2m - 1,$$

avec $m$ un entier au moins égal à $1$ : ce sont $1, 2, 5, 7, 11, 14, 19, 23, 29, 34, \ldots$

## Going further

Entre deux carrés consécutifs $m^2$ et $(m + 1)^2$, combien de valeurs différentes prend $f(n)$ ? Quelle est la plus grande valeur de $f(n)$ pour $n \le 100$ ?
