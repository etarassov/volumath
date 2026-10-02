---
id: "11421"
title: "Un bilan optimiste chaque année"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [construction, puissances-de-deux, multiples, concours]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 4 (combinatoire)"
  reference: "2021-01_sujet-envoi-4.pdf, Exercices Seniors, exercice 18 ; corrigé 2021-03_Corrige-envoi-4.pdf ; les classes de congruence du corrigé sont écrites ici comme des années régulièrement espacées"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-01_sujet-envoi-4.pdf"
---

## Statement

Soient $a_1, a_2, \ldots, a_n$ des entiers strictement positifs tels que

$$\frac{1}{a_1} + \frac{1}{a_2} + \cdots + \frac{1}{a_n} \leqslant \frac{1}{2}.$$

Chaque année, les organisateurs d'une olympiade internationale publient un bilan de qualité qui
porte sur $n$ critères. Pour le critère numéro $i$, le bilan donne une note entière comprise entre
$1$ et $a_i$.

Un bilan est dit **optimiste** si au moins $n - 1$ des $n$ critères ont une note strictement plus
grande que l'année précédente.

Le premier bilan est publié en 2021. Montrer que les organisateurs peuvent s'arranger pour que le
bilan soit optimiste chaque année à partir de 2022.

## Hints

1. Chaque année, on peut faire baisser au plus un critère. Une idée simple : la note d'un critère
   monte de $1$ chaque année, puis retombe à $1$ de temps en temps. Il ne faut jamais que deux
   critères retombent la même année.
2. Remplace chaque $a_i$ par la plus grande puissance de $2$ qui ne le dépasse pas, notée $2^{k_i}$.
   Que devient la somme des inverses ?
3. Le critère $i$ retombe à $1$ une fois tous les $2^{k_i}$ ans, à intervalles réguliers. Il faut
   choisir l'année de départ de chaque critère. Commence par ceux qui retombent le plus souvent.

## Solution

**Étape 1 : des puissances de $2$.** Pour chaque $i$, soit $2^{k_i}$ la plus grande puissance de $2$
inférieure ou égale à $a_i$. On a donc $2^{k_i} \leqslant a_i < 2^{k_i + 1}$. De la seconde
inégalité, on tire $\frac{1}{2^{k_i}} = \frac{2}{2^{k_i+1}} < \frac{2}{a_i}$, et en ajoutant :

$$\frac{1}{2^{k_1}} + \cdots + \frac{1}{2^{k_n}} < 2 \left( \frac{1}{a_1} + \cdots + \frac{1}{a_n} \right) \leqslant 1.$$

Quitte à changer l'ordre des critères, on suppose $k_1 \leqslant k_2 \leqslant \cdots \leqslant k_n$.

**Étape 2 : la règle du jeu.** Numérotons les années : l'année $0$ est 2021, l'année $1$ est 2022,
et ainsi de suite. Pour chaque critère $i$, on va choisir une **année de départ** $d_i$ entre $1$ et
$2^{k_i}$. Le critère $i$ **retombe** les années

$$d_i, \quad d_i + 2^{k_i}, \quad d_i + 2 \times 2^{k_i}, \quad d_i + 3 \times 2^{k_i}, \quad \ldots$$

c'est-à-dire les années $y \geqslant 1$ telles que $y - d_i$ est un multiple de $2^{k_i}$.

Les notes sont données ainsi. L'année $0$, tous les critères ont la note $1$. Ensuite, chaque année,
un critère qui retombe cette année-là reçoit la note $1$, et les autres gagnent $1$ point.

Supposons qu'on ait choisi les années de départ de sorte que **deux critères ne retombent jamais la
même année**. Alors :

- chaque année, au plus un critère baisse et tous les autres montent : le bilan est optimiste ;
- les notes restent permises. Avant sa première chute, à l'année $d_i \leqslant 2^{k_i}$, le critère
  $i$ a eu les notes $1, 2, \ldots, d_i$. Ensuite, entre deux chutes, il s'écoule $2^{k_i}$ ans, et
  la note va de $1$ à $2^{k_i}$. Elle ne dépasse donc jamais $2^{k_i} \leqslant a_i$.

**Étape 3 : choisir les années de départ.** On les choisit dans l'ordre $d_1, d_2, \ldots, d_n$.
On prend $d_1 = 1$. Supposons $d_1, \ldots, d_{r-1}$ choisis de sorte que les critères
$1, \ldots, r - 1$ ne retombent jamais la même année. Cherchons $d_r$ parmi les années
$1, 2, \ldots, 2^{k_r}$.

Un critère $i < r$ a $k_i \leqslant k_r$, donc $2^{k_i}$ divise $2^{k_r}$. Parmi les $2^{k_r}$
années $1, 2, \ldots, 2^{k_r}$, il retombe une année sur $2^{k_i}$, soit exactement
$\frac{2^{k_r}}{2^{k_i}}$ fois. Le nombre d'années de $1$ à $2^{k_r}$ où un des critères précédents
retombe est donc au plus

$$\frac{2^{k_r}}{2^{k_1}} + \cdots + \frac{2^{k_r}}{2^{k_{r-1}}} = 2^{k_r} \left( \frac{1}{2^{k_1}} + \cdots + \frac{1}{2^{k_{r-1}}} \right) < 2^{k_r},$$

grâce à l'étape 1. Il existe donc une année $d_r$ entre $1$ et $2^{k_r}$ où aucun des critères
précédents ne retombe. On la choisit.

Vérifions qu'alors le critère $r$ ne retombe jamais en même temps qu'un critère $i < r$. Supposons
qu'une année $y$ soit une chute des deux. Alors $y - d_r$ est un multiple de $2^{k_r}$, donc aussi
de $2^{k_i}$, et $y - d_i$ est un multiple de $2^{k_i}$. Par différence, $d_r - d_i$ est un multiple
de $2^{k_i}$. Comme $d_r \geqslant 1$, l'année $d_r$ est alors, par définition, une année où le
critère $i$ retombe. C'est contraire au choix de $d_r$.

On continue ainsi jusqu'à $d_n$.

**Conclusion.** Avec ces années de départ, au plus un critère baisse chaque année et toutes les notes
restent entre $1$ et $a_i$. Les organisateurs peuvent donc publier un bilan optimiste chaque année à
partir de 2022.
