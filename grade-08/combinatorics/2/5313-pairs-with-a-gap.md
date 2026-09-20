---
id: "5313"
title: "Les paires bien espacées"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [rangement, essais organises, suites de langford]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Puzzling Pairs (d'après les suites de Langford)"
  reference: "Puzzling-Pairs-slides-1.pdf, diapositives 1 à 6 ; les solutions ne sont pas imprimées"
  url: "https://mathcircles.org/activity/puzzling-pairs/"
  original_language: "en"
  local_copy: "sources/originals/namc/Puzzling-Pairs-slides-1.pdf"
---

## Statement

On dispose de six jetons : deux jetons marqués $1$, deux jetons marqués $2$, deux jetons marqués $3$.

Il faut les ranger en ligne, les uns à côté des autres, de façon que :

- il y ait exactement **une** case entre les deux jetons marqués $1$ ;
- il y ait exactement **deux** cases entre les deux jetons marqués $2$ ;
- il y ait exactement **trois** cases entre les deux jetons marqués $3$.

1. Trouver un tel rangement.
2. Recommencer avec huit jetons : deux $1$, deux $2$, deux $3$ et deux $4$, avec la même règle (exactement $k$ cases entre les deux jetons marqués $k$).

## Hints

1. Commencer par placer le jeton le plus encombrant, celui qui laisse le moins de choix : le $3$ pour la première question, le $4$ pour la seconde.
2. Pour six cases, les deux $3$ ne peuvent occuper que les positions $1$ et $5$, ou les positions $2$ et $6$. Essayer les deux.
3. Une fois les $3$ posés, placer les $2$, puis regarder si les deux cases qui restent conviennent pour les $1$.
4. Pour huit cases, faire pareil : commencer par les deux $4$, qui ne peuvent occuper que trois paires de positions.

## Solution

### Question 1 : six jetons

Numérotons les six cases de $1$ à $6$.

Les deux jetons $3$ sont séparés par trois cases : leurs positions diffèrent donc de $4$. Il n'y a que deux possibilités : les cases $1$ et $5$, ou les cases $2$ et $6$.

**Essayons les cases $2$ et $6$ pour les $3$.**

$$?\ \ \ 3\ \ \ ?\ \ \ ?\ \ \ ?\ \ \ 3$$

Les deux $2$ sont séparés par deux cases : leurs positions diffèrent de $3$. Les cases libres sont $1$, $3$, $4$, $5$. Les paires possibles écartées de $3$ sont $(1 ; 4)$. On place donc les $2$ en $1$ et $4$ :

$$2\ \ \ 3\ \ \ ?\ \ \ 2\ \ \ ?\ \ \ 3$$

Il reste les cases $3$ et $5$ pour les deux $1$ : elles diffèrent de $2$, donc il y a bien une seule case entre elles. Parfait :

$$\boxed{2\ \ \ 3\ \ \ 1\ \ \ 2\ \ \ 1\ \ \ 3}$$

**Vérification.** Les $1$ sont en $3$ et $5$ : une case entre eux (la case $4$). Les $2$ sont en $1$ et $4$ : deux cases entre eux (les cases $2$ et $3$). Les $3$ sont en $2$ et $6$ : trois cases entre eux (les cases $3$, $4$, $5$). 

L'autre possibilité, les $3$ en $1$ et $5$, donne le rangement $3\ 1\ 2\ 1\ 3\ 2$, qui est simplement le précédent lu à l'envers. **À ce retournement près, c'est le seul rangement possible.**

### Question 2 : huit jetons

Les deux $4$ sont séparés par quatre cases, donc leurs positions diffèrent de $5$ : ce sont les cases $(1 ; 6)$, $(2 ; 7)$ ou $(3 ; 8)$.

**Essayons les cases $1$ et $6$ :**

$$4\ \ \ ?\ \ \ ?\ \ \ ?\ \ \ ?\ \ \ 4\ \ \ ?\ \ \ ?$$

Les deux $3$ diffèrent de $4$ : parmi les cases libres $2, 3, 4, 5, 7, 8$, les paires possibles sont $(3 ; 7)$ et $(4 ; 8)$. Prenons $(3 ; 7)$ :

$$4\ \ \ ?\ \ \ 3\ \ \ ?\ \ \ ?\ \ \ 4\ \ \ 3\ \ \ ?$$

Les deux $2$ diffèrent de $3$ : parmi les cases libres $2, 4, 5, 8$, la seule paire possible est $(5 ; 8)$ :

$$4\ \ \ ?\ \ \ 3\ \ \ ?\ \ \ 2\ \ \ 4\ \ \ 3\ \ \ 2$$

Il reste les cases $2$ et $4$ pour les $1$ : elles diffèrent de $2$, c'est exactement ce qu'il faut.

$$\boxed{4\ \ \ 1\ \ \ 3\ \ \ 1\ \ \ 2\ \ \ 4\ \ \ 3\ \ \ 2}$$

**Vérification.** $1$ en $2$ et $4$ : une case au milieu. $2$ en $5$ et $8$ : deux cases. $3$ en $3$ et $7$ : trois cases. $4$ en $1$ et $6$ : quatre cases. 

Les autres branches ne mènent à rien : avec les $4$ en $1$ et $6$ et les $3$ en $4$ et $8$, les $2$ ne peuvent aller qu'en $2$ et $5$, et les cases restantes $3$ et $7$ sont trop loin l'une de l'autre pour les $1$ ; et si les $4$ occupent les cases $2$ et $7$, les deux placements possibles des $3$ échouent de la même façon. Le cas des $4$ en $3$ et $8$ est le retournement du premier. **À ce retournement près, le rangement trouvé est donc le seul.**

## Going further

1. Essayer maintenant avec **cinq** paires de jetons, de $1$ à $5$, puis avec **six** paires. On peut chercher longtemps : que se passe-t-il ?
2. Et avec **sept** paires ? Combien de rangements différents arrive-t-on à trouver ?
3. Et si l'on utilisait des triplets de jetons au lieu de paires, avec exactement $k$ cases entre deux jetons marqués $k$ qui se suivent ?
