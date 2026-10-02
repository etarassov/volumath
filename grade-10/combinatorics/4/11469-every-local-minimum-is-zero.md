---
id: "11469"
title: "Tout minimum local vaut 0"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [grille, distance, bijection, denombrement, sous-ensembles, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 4 (combinatoire)"
  reference: "2025-03_Sujet-envoi-4-2024-2025.pdf, Exercices Juniors, exercice 8 ; corrigé 2025-05_Corrige-envoi-4-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/03/Sujet-envoi-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-03_Sujet-envoi-4-2024-2025.pdf"
---

## Statement

Soient $n$ et $m$ deux entiers strictement positifs. On considère une grille de $n$ lignes et $m$
colonnes. Deux cases sont **voisines** si elles ont un côté commun.

Auguste veut écrire un entier positif ou nul dans chaque case, de sorte que :

- les nombres écrits dans deux cases voisines diffèrent d'au plus $1$ ;
- si le nombre d'une case est inférieur ou égal aux nombres de toutes ses voisines, alors ce nombre
  vaut $0$.

De combien de façons peut-il remplir sa grille ?

## Hints

1. Essaie avec une grille d'une ligne et deux ou trois cases. Tu devrais trouver $3$, puis $7$ façons.
   Quelle formule devines-tu ?
2. Montre qu'une grille bien remplie contient au moins un $0$. Puis, une fois choisies les cases qui
   contiennent $0$, essaie de remplir le reste : as-tu le moindre choix ?
3. Pour une case $c$, note $d(c)$ le plus petit nombre de pas, d'une case à une case voisine, qu'il faut
   pour aller d'une case contenant $0$ jusqu'à $c$. Montre que le nombre écrit dans $c$ vaut forcément
   $d(c)$ : prouve séparément qu'il est au plus $d(c)$ et au moins $d(c)$.

## Solution

Repérons une case par son numéro de ligne $i$ et son numéro de colonne $j$. Pour aller de la case
$(i, j)$ à la case $(i', j')$ en passant de case voisine en case voisine, il faut au moins
$|i - i'| + |j - j'|$ pas, et ce nombre de pas suffit. On l'appelle la **distance** entre les deux cases.
Deux cases voisines sont à distance $1$.

On va montrer qu'un remplissage correct est entièrement déterminé par l'ensemble des cases qui
contiennent $0$, et que cet ensemble peut être n'importe quel ensemble non vide de cases.

**Étape 1 : un remplissage correct contient au moins un 0.** Prenons une case où est écrit le plus petit
nombre de la grille. Ce nombre est inférieur ou égal à ceux de toutes ses voisines, donc il vaut $0$.

**Étape 2 : à partir d'un ensemble de zéros, un seul remplissage possible.** Soit $Z$ un ensemble non vide
de cases. Pour toute case $c$, notons $d(c)$ la distance de $c$ à la case de $Z$ la plus proche. En
particulier $d(c) = 0$ exactement quand $c$ est dans $Z$.

Prenons un remplissage correct dont les zéros sont exactement les cases de $Z$, et notons $f(c)$ le
nombre écrit dans la case $c$. Montrons que $f(c) = d(c)$ pour toute case $c$.

- **$f(c) \leqslant d(c)$.** Il existe un chemin de $d(c)$ pas, de case voisine en case voisine, qui part
  d'une case de $Z$ et arrive en $c$. Au départ le nombre écrit vaut $0$, et à chaque pas il augmente
  d'au plus $1$. À l'arrivée, il vaut donc au plus $d(c)$.
- **$f(c) \geqslant d(c)$.** Si $f(c) = 0$, la case $c$ est dans $Z$ et $d(c) = 0$. Sinon, $f(c) > 0$,
  donc $f(c)$ n'est pas inférieur ou égal aux nombres de toutes les voisines de $c$ : une voisine porte
  un nombre strictement plus petit. Comme deux voisines diffèrent d'au plus $1$, ce nombre vaut
  exactement $f(c) - 1$. On recommence depuis cette voisine, et ainsi de suite : on obtient un chemin de
  cases voisines dont les nombres valent $f(c)$, $f(c) - 1$, $f(c) - 2$, …, jusqu'à $0$. Ce chemin compte
  $f(c)$ pas et se termine dans une case de $Z$. Donc $d(c) \leqslant f(c)$.

On a donc bien $f(c) = d(c)$ partout : il n'y a **qu'une seule** façon possible de remplir la grille avec
les zéros exactement en $Z$.

**Étape 3 : ce remplissage convient vraiment.** Écrivons $d(c)$ dans chaque case $c$ et vérifions les
deux règles.

- *Deux voisines $c$ et $c'$ diffèrent d'au plus $1$.* En partant de $c'$, on atteint $c$ en un pas, donc
  $d(c) \leqslant d(c') + 1$. De même $d(c') \leqslant d(c) + 1$. Donc $d(c)$ et $d(c')$ diffèrent d'au
  plus $1$.
- *Un nombre non nul n'est pas inférieur ou égal à tous ses voisins.* Si $d(c) > 0$, prenons une case $z$
  de $Z$ à distance $d(c)$ de $c$, et faisons un pas depuis $c$ vers $z$ (en ligne ou en colonne). On
  arrive sur une voisine $c'$ de $c$ dont la distance à $z$ vaut $d(c) - 1$. Donc
  $d(c') \leqslant d(c) - 1 < d(c)$.

Enfin les cases où l'on a écrit $0$ sont exactement celles de $Z$. Voici par exemple le remplissage
d'une grille $3 \times 4$ quand $Z$ est formé des deux coins marqués $0$ :

| | | | |
|---|---|---|---|
| **0** | 1 | 2 | 2 |
| 1 | 2 | 2 | 1 |
| 2 | 2 | 1 | **0** |

**Étape 4 : le dénombrement.** Les étapes 1 à 3 montrent qu'à chaque ensemble non vide $Z$ de cases
correspond exactement un remplissage correct, celui dont les zéros sont les cases de $Z$, et que tout
remplissage correct est obtenu ainsi. Deux ensembles $Z$ différents donnent des remplissages différents,
puisque leurs zéros ne sont pas au même endroit.

Il y a donc autant de remplissages corrects que d'ensembles non vides de cases. La grille compte $nm$
cases, et chaque case est dans $Z$ ou non : cela fait $2^{nm}$ ensembles de cases, dont un seul est vide.

**Conclusion.** Auguste peut remplir sa grille de $2^{nm} - 1$ façons.

## Going further

Le même raisonnement marche sur n'importe quel réseau de cases d'un seul tenant, pas seulement sur un
rectangle, à condition de remplacer la formule $|i - i'| + |j - j'|$ par le plus petit nombre de pas pour
aller d'une case à l'autre. Le nombre de remplissages est toujours $2^N - 1$, où $N$ est le nombre de
cases.
