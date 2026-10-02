---
id: "12844"
title: "Une grille 4047 × 4047 et un grand carré d'une seule couleur"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [grille, coloriage, majorite, construction, maximum]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 21 et 22 février 2024"
  reference: "2025-01_Enonce-Test-3.pdf, test junior, exercice 1 ; corrigé 2025-01_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-3.pdf"
---

## Statement

On considère une grille de $4047$ lignes et $4047$ colonnes. Chacune de ses $4047^2$ cases est coloriée soit en rouge, soit en bleu, de sorte que :

- exactement $2024$ colonnes contiennent une majorité de cases bleues ;
- exactement $2024$ lignes contiennent une majorité de cases rouges ;
- la grille contient un carré d'une seule couleur de côté $k$, c'est-à-dire un carré de $k$ lignes consécutives et $k$ colonnes consécutives dont les $k^2$ cases sont toutes rouges ou toutes bleues.

Quel est le plus grand entier $k$ pour lequel un tel coloriage existe ?

## Hints

1. Comme $4047$ est impair, chaque ligne et chaque colonne a une majorité de rouge ou une majorité de bleu, jamais d'égalité.
2. Supposez que le grand carré est bleu et qu'il a $k$ lignes. Combien y a-t-il de lignes à majorité rouge ? Si $k$ est grand, l'une d'elles doit traverser le carré. Combien de cases rouges peut-elle alors avoir au plus ?
3. Vous devriez trouver $k \leq 2023$. Pour construire un exemple, découpez les lignes en paquets de $2022$, $1$, $1$ et $2023$, et les colonnes en paquets de $2023$, $1$, $1$ et $2022$, et coloriez chaque bloc d'une seule couleur.

## Solution

La réponse est $k = 2023$.

Comme $4047 = 2 \times 2023 + 1$ est impair, une ligne ou une colonne a toujours une majorité de rouge ou une majorité de bleu. Avoir une majorité de rouge, c'est avoir au moins $2024$ cases rouges, donc au plus $2023$ cases bleues. Et inversement pour le bleu.

### Aucun carré de côté 2024 ou plus

Supposons que la grille contienne un carré d'une seule couleur de côté $k \geq 2024$.

**Si ce carré est bleu.** Il occupe $k$ lignes. Les $2024$ lignes à majorité rouge ne peuvent pas toutes éviter ces $k$ lignes, car il n'y a que $4047 - k \leq 2023$ autres lignes. L'une des lignes à majorité rouge traverse donc le carré, et elle y a $k \geq 2024$ cases bleues. Elle a alors au plus $4047 - 2024 = 2023$ cases rouges : ce n'est pas une majorité. C'est absurde.

**Si ce carré est rouge.** On fait le même raisonnement avec les colonnes : il occupe $k$ colonnes, l'une des $2024$ colonnes à majorité bleue le traverse, et elle a alors au moins $2024$ cases rouges, donc pas une majorité de bleu. C'est absurde.

Donc $k \leq 2023$.

### Un exemple avec un carré de côté 2023

On découpe les lignes, de haut en bas, en quatre paquets de $2022$, $1$, $1$ et $2023$ lignes, et les colonnes, de gauche à droite, en quatre paquets de $2023$, $1$, $1$ et $2022$ colonnes. Chacun des seize blocs obtenus est colorié d'une seule couleur :

| | 2023 colonnes | 1 colonne | 1 colonne | 2022 colonnes |
|---|---|---|---|---|
| **2022 lignes** | rouge | bleu | bleu | bleu |
| **1 ligne** | rouge | rouge | bleu | bleu |
| **1 ligne** | bleu | bleu | bleu | rouge |
| **2023 lignes** | **bleu** | rouge | rouge | rouge |

Le bloc en bas à gauche est un carré bleu de côté $2023$. Vérifions les deux autres conditions.

**Les lignes**, paquet par paquet :

- les $2022$ premières ont $2023$ cases rouges et $1 + 1 + 2022 = 2024$ bleues : majorité bleue ;
- la suivante a $2023 + 1 = 2024$ cases rouges : majorité rouge ;
- la suivante a $2023 + 1 + 1 = 2025$ cases bleues : majorité bleue ;
- les $2023$ dernières ont $1 + 1 + 2022 = 2024$ cases rouges : majorité rouge.

Il y a donc $1 + 2023 = 2024$ lignes à majorité rouge.

**Les colonnes**, paquet par paquet :

- les $2023$ premières ont $1 + 2023 = 2024$ cases bleues : majorité bleue ;
- la suivante a $1 + 2023 = 2024$ cases rouges : majorité rouge ;
- la suivante a $2022 + 1 + 1 = 2024$ cases bleues : majorité bleue ;
- les $2022$ dernières ont $1 + 2023 = 2024$ cases rouges : majorité rouge.

Il y a donc $2023 + 1 = 2024$ colonnes à majorité bleue.

**Conclusion : le plus grand entier $k$ possible est $2023$.**

## Going further

1. Reprenez le problème avec une grille de $2n + 1$ lignes et $2n + 1$ colonnes, où exactement $n + 1$ colonnes ont une majorité de bleu et exactement $n + 1$ lignes une majorité de rouge. Montrez que la réponse est $n$.
2. Pourquoi ne peut-on pas se contenter de colorier en bleu le carré de côté $2023$ en bas à gauche, et tout le reste en rouge ?
