---
id: "11012"
title: "ab + 85 = 12 PPCM + 20 PGCD"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [pgcd, ppcm, equation-diophantienne, factorisation, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Juniors, exercice 4 ; corrigé 2021-02_Corrige-envoi-3.pdf. Le sujet dit « entiers naturels » ; le corrigé ne traite que des entiers non nuls, ce que précise l'énoncé ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Trouver tous les couples $(a, b)$ d'entiers naturels non nuls tels que

$$ab + 85 = 12 \times \mathrm{PPCM}(a, b) + 20 \times \mathrm{PGCD}(a, b) .$$

## Hints

1. Note $d = \mathrm{PGCD}(a, b)$ et $m = \mathrm{PPCM}(a, b)$. Que vaut le produit $dm$ ?
2. L'équation devient $dm + 85 = 12m + 20d$. Essaie de l'écrire sous la forme $(m - \ldots)(d - \ldots) = \ldots$
3. Tu dois trouver $(m - 20)(d - 12) = 155 = 5 \times 31$. Fais la liste des cas, sans oublier que $d$ divise $m$.

## Solution

Notons $d = \mathrm{PGCD}(a, b)$ et $m = \mathrm{PPCM}(a, b)$.

**Un rappel : $dm = ab$.** Écrivons $a = dx$ et $b = dy$. Les entiers $x$ et $y$ n'ont aucun facteur
premier commun, sinon $d$ ne serait pas le plus grand diviseur commun. Le nombre $dxy$ est un multiple
de $a = dx$ (c'est $a \times y$) et de $b = dy$ (c'est $b \times x$). Inversement, soit $M$ un multiple commun
de $a$ et de $b$. On écrit $M = dxu$. Comme $dy$ divise $dxu$, le nombre $y$ divise $xu$. Or $y$ n'a aucun
facteur premier en commun avec $x$, donc tous les facteurs premiers de $y$, avec leur exposant, se trouvent
dans $u$ : $y$ divise $u$, et $M$ est un multiple de $dxy$. Le plus petit multiple commun est donc
$m = dxy$, et
$$dm = d \cdot dxy = (dx)(dy) = ab .$$

**On factorise.** L'équation devient
$$dm + 85 = 12m + 20d, \qquad \text{c'est-à-dire} \qquad dm - 12m - 20d + 240 = 240 - 85 ,$$
soit
$$(m - 20)(d - 12) = 155 = 5 \times 31 .$$

**On liste les cas.** Les nombres $m - 20$ et $d - 12$ sont deux entiers de même signe dont le produit vaut
$155$.

- S'ils sont tous les deux négatifs, alors $m < 20$ et $d < 12$, donc $20 - m \leqslant 19$ et
  $12 - d \leqslant 11$. Comme $(20 - m)(12 - d) = 155$ et que les diviseurs de $155$ sont $1$, $5$, $31$ et
  $155$, il faudrait $20 - m \in \{1, 5\}$, donc $12 - d \in \{155, 31\}$, ce qui dépasse $11$. Impossible.
- S'ils sont tous les deux positifs, il y a quatre possibilités :

| $m - 20$ | $d - 12$ | $m$ | $d$ | $d$ divise-t-il $m$ ? |
|---|---|---|---|---|
| $1$ | $155$ | $21$ | $167$ | non |
| $5$ | $31$ | $25$ | $43$ | non |
| $31$ | $5$ | $51$ | $17$ | oui, $51 = 3 \times 17$ |
| $155$ | $1$ | $175$ | $13$ | non, $175 = 13 \times 13 + 6$ |

Le PGCD divise toujours le PPCM (puisque $d$ divise $a$, qui divise $m$). Il ne reste donc que
$m = 51$ et $d = 17$.

**On retrouve $a$ et $b$.** Avec $a = 17x$, $b = 17y$ et $m = dxy$, on obtient $17xy = 51$, donc $xy = 3$.
Les seules possibilités sont $x = 1, y = 3$ et $x = 3, y = 1$, et dans les deux cas $x$ et $y$ n'ont pas de
facteur commun.

**Vérification.** Pour $(a, b) = (17, 51)$ : $\mathrm{PGCD} = 17$, $\mathrm{PPCM} = 51$, et
$$17 \times 51 + 85 = 867 + 85 = 952, \qquad 12 \times 51 + 20 \times 17 = 612 + 340 = 952 .$$

**Conclusion.** Les solutions sont $(a, b) = (17, 51)$ et $(a, b) = (51, 17)$.
