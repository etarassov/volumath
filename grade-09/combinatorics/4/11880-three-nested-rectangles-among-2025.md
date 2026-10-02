---
id: "11880"
title: "Trois rectangles emboîtés parmi 2025"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [principe des tiroirs, rectangles, ordre, couches, exemple extremal]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Juniors, exercice 9, repris mot pour mot en exercice 15 (Seniors) ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. Le corrigé procède par récurrence en retirant la couche extérieure ; la solution ici découpe directement en 1012 couches et applique le principe des tiroirs, ce qui évite la récurrence."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

On dit qu'un rectangle de côtés $a$ et $b$ **se plonge** dans un rectangle de côtés $c$ et $d$ si l'on a ($a \leqslant c$ et $b \leqslant d$) ou bien ($a \leqslant d$ et $b \leqslant c$). Par exemple, un rectangle de côtés $1$ et $5$ se plonge dans un autre rectangle de côtés $1$ et $5$, et aussi dans un rectangle de côtés $6$ et $2$.

On dispose de $2025$ rectangles dont les côtés ont tous pour longueur un nombre entier compris entre $1$ et $2024$.

Montrer qu'on peut en choisir trois, $A$, $B$ et $C$, tels que $A$ se plonge dans $B$ et $B$ se plonge dans $C$.

## Hints

1. On note chaque rectangle $(a, b)$ avec $a \leqslant b$. Vérifier que $(a, b)$ se plonge dans $(c, d)$ (avec $c \leqslant d$) si et seulement si $a \leqslant c$ et $b \leqslant d$.
2. Montrer que deux rectangles qui ont tous les deux un côté égal à $1$ ou à $2024$ sont toujours comparables : l'un se plonge dans l'autre.
3. Répartir les rectangles en « couches », selon leur distance au bord du carré des valeurs possibles, et compter les couches.

## Solution

**Étape 1 : une écriture commode.** On note chaque rectangle $(a, b)$ avec $a \leqslant b$, son petit côté d'abord. Soient $(a, b)$ et $(c, d)$ deux rectangles écrits ainsi. Si $a \leqslant d$ et $b \leqslant c$, alors $a \leqslant b \leqslant c$ et $b \leqslant c \leqslant d$, donc on a aussi $a \leqslant c$ et $b \leqslant d$. Ainsi :
$$(a, b) \text{ se plonge dans } (c, d) \iff a \leqslant c \text{ et } b \leqslant d.$$

**Étape 2 : les couches.** Pour un rectangle $(a, b)$ avec $1 \leqslant a \leqslant b \leqslant 2024$, on appelle **couche** du rectangle le nombre
$$t = \min(a - 1, \; 2024 - b),$$
qui mesure à quelle distance $a$ est de $1$, ou $b$ de $2024$, en prenant la plus petite des deux. C'est un entier positif ou nul, et comme $(a - 1) + (2024 - b) \leqslant 2023$ (car $a \leqslant b$), le plus petit des deux est au plus $1011$ (s'ils valaient tous les deux au moins $1012$, leur somme dépasserait $2023$). Il y a donc $1012$ couches possibles : $t = 0, 1, \ldots, 1011$.

**Étape 3 : dans une même couche, tout est comparable.** Un rectangle de la couche $t$ vérifie $a \geqslant t + 1$ et $b \leqslant 2024 - t$, avec égalité dans au moins un des deux cas. Prenons deux rectangles de la couche $t$.

- S'ils ont tous les deux $a = t + 1$, ce sont $(t + 1, b)$ et $(t + 1, b')$ : celui qui a le plus petit grand côté se plonge dans l'autre.
- S'ils ont tous les deux $b = 2024 - t$, ce sont $(a, 2024 - t)$ et $(a', 2024 - t)$ : de même.
- Sinon, l'un est $(t + 1, b)$ et l'autre $(a', 2024 - t)$. Comme $t + 1 \leqslant a'$ et $b \leqslant 2024 - t$, le premier se plonge dans le second.

Dans tous les cas, l'un des deux se plonge dans l'autre.

**Étape 4 : le principe des tiroirs.** On range les $2025$ rectangles dans les $1012$ couches. Comme $2 \times 1012 = 2024 < 2025$, une couche contient au moins trois rectangles. On les range du plus petit au plus grand grand côté, puis, à grand côté égal, du plus petit au plus grand petit côté ; on les nomme $A$, $B$, $C$ dans cet ordre. Par l'étape 3, deux d'entre eux sont toujours comparables, et l'ordre choisi fait que c'est le premier qui se plonge dans le second. Donc $A$ se plonge dans $B$ et $B$ se plonge dans $C$.

**Conclusion.** Parmi $2025$ rectangles à côtés entiers entre $1$ et $2024$, on en trouve toujours trois, $A$, $B$, $C$, avec $A$ qui se plonge dans $B$ et $B$ qui se plonge dans $C$.

## Going further

Avec $2024$ rectangles, ce n'est plus vrai. On prend les $1012$ rectangles $(i, 2025 - i)$ et les $1012$ rectangles $(i, 2024 - i)$, pour $i$ de $1$ à $1012$. Dans chacune de ces deux familles, aucun rectangle ne se plonge dans un autre : quand le petit côté augmente, le grand côté diminue. Or si $A$ se plonge dans $B$ et $B$ dans $C$, alors $A$ se plonge aussi dans $C$, donc ces trois rectangles sont deux à deux comparables. Mais trois rectangles pris parmi ces $2024$ en contiennent deux de la même famille, qui ne sont pas comparables.
