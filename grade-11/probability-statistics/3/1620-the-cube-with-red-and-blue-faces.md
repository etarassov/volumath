---
id: "1620"
title: "Le cube aux faces rouges et bleues"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [probabilites, denombrement, equiprobabilite, cube, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2A, Group Competition"
  reference: "Handout-2698-2323.pdf, problème 13 (réponse dans Handout-2710-2323.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2698-2323.pdf"
---

## Statement

On peint chacune des six faces d'un cube en rouge ou en bleu. Pour chaque face, les deux
couleurs ont la même probabilité $\dfrac12$, et les six choix sont indépendants les uns des
autres.

Quelle est la probabilité que l'on puisse ensuite poser le cube sur une table de façon que
ses **quatre faces verticales** soient toutes de la même couleur ?

## Hints

1. Combien y a-t-il de façons de peindre le cube en tout ? Ces façons sont-elles équiprobables ?
2. Poser le cube sur la table revient à choisir quelle paire de faces opposées sera horizontale (dessus et dessous). Combien de paires de faces opposées un cube a-t-il ?
3. La condition demandée s'écrit donc : il existe une paire de faces opposées telle que les **quatre autres** faces soient de la même couleur. Compte les coloriages qui la vérifient.
4. Sépare les cas selon le nombre de faces de la couleur majoritaire : $6$, $5$, $4$, ou $3$. Dans le cas $4$ contre $2$, la position des deux faces minoritaires compte.

## Solution

**L'idée : traduire « on peut poser le cube » en une condition sur les coloriages, puis
compter les coloriages favorables parmi les $64$ possibles.**

**Étape 1. L'univers.**

Chaque face reçoit l'une de deux couleurs, indépendamment des autres : il y a
$$2^6 = 64$$
coloriages possibles, tous de même probabilité $\dfrac{1}{64}$.

**Étape 2. Traduire la condition.**

Poser le cube sur la table, c'est décider quelle paire de faces opposées sera horizontale : le
dessus et le dessous. Les quatre faces restantes sont alors les faces verticales, et elles
forment un « anneau » autour du cube.

Un cube a exactement $3$ paires de faces opposées, donc $3$ anneaux de quatre faces.

La condition de l'énoncé devient :

> il existe une paire de faces opposées telle que les quatre autres faces soient toutes de la
> même couleur.

**Étape 3. Compter les coloriages favorables.**

Séparons les cas selon le nombre de faces de la couleur qui apparaît le plus souvent.

*Cas $6$ contre $0$ :* toutes les faces ont la même couleur. Les trois anneaux conviennent.
Cela fait $2$ coloriages (tout rouge, tout bleu), tous favorables.

*Cas $5$ contre $1$ :* une seule face $F$ est de la couleur minoritaire. Choisissons comme
faces horizontales $F$ et la face qui lui est opposée : les quatre faces verticales restantes
sont toutes de la couleur majoritaire. Cela marche toujours. Nombre de coloriages :
$2$ (choix de la couleur majoritaire) $\times\ 6$ (choix de la face $F$) $= 12$, tous
favorables.

*Cas $4$ contre $2$ :* appelons $F_1$ et $F_2$ les deux faces minoritaires. Un anneau
monochrome doit être formé des quatre faces majoritaires, donc les deux faces horizontales
doivent être exactement $F_1$ et $F_2$. C'est possible **si et seulement si** $F_1$ et $F_2$
sont opposées.

- Si $F_1$ et $F_2$ sont opposées, le coloriage est favorable. Nombre de tels coloriages :
  $2$ (couleur majoritaire) $\times\ 3$ (choix de la paire de faces opposées) $= 6$.
- Si $F_1$ et $F_2$ sont adjacentes, aucun anneau n'est monochrome : le coloriage n'est pas
  favorable.

*Cas $3$ contre $3$ :* un anneau monochrome demande quatre faces de la même couleur, et
aucune couleur n'apparaît quatre fois. Aucun coloriage favorable.

**Total :**
$$2 + 12 + 6 = 20 \text{ coloriages favorables.}$$

**Étape 4. La probabilité.**

$$P = \frac{20}{64} = \frac{5}{16} = \text{0,3125} .$$

**Conclusion : la probabilité cherchée vaut $\dfrac{5}{16}$, soit un peu moins d'une chance
sur trois.**

## Going further

Une énumération par ordinateur des $64$ coloriages confirme le compte de $20$ cas favorables.

Attention au piège du dénombrement : ici on a compté les **coloriages**, c'est-à-dire les
façons de peindre des faces repérées d'avance (dessus, dessous, nord, sud, est, ouest). Si
l'on comptait plutôt les cubes peints « à rotation près », on trouverait seulement $10$ cubes
différents — mais ils ne seraient plus équiprobables, et le calcul de probabilité serait faux.
