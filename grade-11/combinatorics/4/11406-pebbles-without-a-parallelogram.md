---
id: "11406"
title: "Des cailloux sans parallélogramme"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [maximum, parallelogramme, grille, construction, tiroirs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 4 (combinatoire)"
  reference: "2020-01_EnvoiCombiFinal.pdf, Exercices Seniors, exercice 14 ; corrigé 2020-03_corrige-commente-envoi-4.pdf (le corrigé ne vérifie pas que la construction en L ne contient aucun parallélogramme ; la vérification est faite ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/EnvoiCombiFinal.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_EnvoiCombiFinal.pdf"
---

## Statement

On dispose d'une grille de $2019 \times 2019$ cases. On pose des cailloux sur certaines cases, au
plus un caillou par case, et on assimile chaque caillou au centre de sa case.

Une disposition est dite **belle** si l'on ne peut pas trouver quatre cailloux qui sont les quatre
sommets d'un parallélogramme non aplati (c'est-à-dire dont les quatre sommets ne sont pas tous
sur une même droite).

Quel est le plus grand nombre de cailloux d'une belle disposition ?

## Hints

1. Cherche la réponse sur des grilles $2 \times 2$, $3 \times 3$ et $4 \times 4$.
2. Prends deux cailloux dans une même colonne, et deux autres cailloux dans une autre colonne,
   avec le même écart vertical. Que forment-ils ?
3. Dans une colonne qui contient $k$ cailloux, combien d'écarts verticaux différents obtiens-tu
   en partant du caillou le plus bas ?
4. Combien d'écarts verticaux différents sont possibles dans toute la grille ? Pour la
   construction, pense à une forme en L.

## Solution

On note $n = 2019$. On va montrer que la réponse est $2n - 1 = 4037$.

**Une remarque sur les colonnes.**

Mesurons l'écart vertical entre deux cailloux d'une même colonne en nombre de lignes : c'est un
entier entre $1$ et $n - 1 = 2018$.

Supposons que deux cailloux $A$ et $B$ d'une colonne, $B$ au-dessus de $A$, aient un écart $h$,
et que deux cailloux $C$ et $D$ d'une **autre** colonne, $D$ au-dessus de $C$, aient le même
écart $h$. Alors les vecteurs $\overrightarrow{AB}$ et $\overrightarrow{CD}$ sont égaux (tous les
deux « monter de $h$ lignes »), donc $ABDC$ est un parallélogramme. Il n'est pas aplati, car $A$
et $B$ sont dans une colonne, $C$ et $D$ dans une autre, et une droite qui passe par deux points
d'une même colonne est cette colonne.

Dans une belle disposition, **un même écart ne peut donc pas apparaître dans deux colonnes
différentes**.

**On ne peut pas dépasser $4037$ cailloux.**

Soit une belle disposition. Pour chaque colonne non vide, notons $k$ son nombre de cailloux et
regardons les écarts entre le caillou le plus bas et chacun des $k - 1$ autres : ce sont $k - 1$
écarts tous différents.

D'après la remarque, les écarts obtenus ainsi dans des colonnes différentes sont aussi
différents. On obtient donc en tout
$$\sum_{\text{colonnes non vides}} (k - 1)$$
écarts tous différents, compris entre $1$ et $2018$. Cette somme vaut donc au plus $2018$.

Or cette somme est égale au nombre total de cailloux moins le nombre de colonnes non vides. Il y
a au plus $2019$ colonnes non vides, donc
$$\text{nombre de cailloux} \leqslant 2018 + 2019 = 4037 .$$

**Une belle disposition de $4037$ cailloux.**

On remplit toute la ligne du bas et toute la colonne de gauche : cela fait
$2019 + 2019 - 1 = 4037$ cailloux, la case du coin étant comptée une seule fois. Montrons qu'il
n'y a pas de parallélogramme non aplati.

Dans un parallélogramme non aplati, trois sommets ne sont jamais alignés : si $A$, $B$ et $C$
étaient sur une droite, le quatrième sommet, obtenu en ajoutant à $A$ le vecteur
$\overrightarrow{BC}$, serait sur la même droite.

Tous nos cailloux sont sur deux droites : la ligne du bas et la colonne de gauche.

- Si le caillou du coin était un sommet, les trois autres sommets seraient répartis sur ces deux
  droites, donc deux d'entre eux seraient sur la même droite que le coin : trois sommets alignés,
  impossible.
- Sinon, il y a exactement deux sommets sur chaque droite. Prenons le coin comme origine. Les
  sommets sont $(p, 0)$, $(q, 0)$, $(0, r)$, $(0, s)$ avec $p, q, r, s \geqslant 1$, $p \neq q$
  et $r \neq s$. Les diagonales d'un parallélogramme ont le même milieu. Si les diagonales sont
  $[(p,0)\,(q,0)]$ et $[(0,r)\,(0,s)]$, leurs milieux sont $\left(\frac{p+q}{2}, 0\right)$ et
  $\left(0, \frac{r+s}{2}\right)$, qui ne sont pas égaux car $p + q > 0$. Si les diagonales sont
  $[(p,0)\,(0,r)]$ et $[(q,0)\,(0,s)]$, les milieux $\left(\frac{p}{2}, \frac{r}{2}\right)$ et
  $\left(\frac{q}{2}, \frac{s}{2}\right)$ demanderaient $p = q$. Le dernier cas est pareil.

Aucun parallélogramme non aplati n'est donc formé.

**Conclusion.**

**Le plus grand nombre de cailloux d'une belle disposition est $4037$.** Plus généralement, sur
une grille $n \times n$, c'est $2n - 1$.
