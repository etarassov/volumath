---
id: "8471"
title: "Un rectangle d'une seule couleur dans une grille 3 × 7"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe-des-tiroirs, coloriage, rectangle, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Comptage et pot-pourri » (Emile Avérous et Maena Quemener), exercice 14"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On dispose d'un quadrillage de $3$ lignes et $7$ colonnes. Chaque case est coloriée en blanc ou en noir, de la façon que l'on veut.

Montrer qu'il existe toujours quatre cases de la même couleur situées aux quatre coins d'un rectangle, les côtés de ce rectangle étant portés par des lignes et des colonnes du quadrillage.

*Une seule case ne compte pas comme un rectangle : les quatre coins doivent être quatre cases distinctes.*

## Hints

1. Un tel rectangle est déterminé par deux colonnes et deux lignes. Il faut donc trouver deux colonnes qui « se ressemblent » sur deux mêmes lignes.
2. Regarde une colonne toute seule : elle contient $3$ cases coloriées en deux couleurs. Que peux-tu dire ?
3. Dans chaque colonne, choisis deux cases de la même couleur, et note quelles lignes elles occupent et quelle est leur couleur. Combien d'étiquettes différentes cela fait-il ?
4. Compare ce nombre d'étiquettes au nombre de colonnes.

## Solution

### Étape 1. Dans chaque colonne, deux cases de même couleur

Une colonne contient $3$ cases, coloriées avec seulement $2$ couleurs. Par le principe des tiroirs, deux de ces trois cases ont la même couleur.

Pour chaque colonne, choisissons une fois pour toutes deux cases de même couleur, et fabriquons l'**étiquette** de cette colonne :

> **étiquette** = la paire de lignes occupée par ces deux cases, et leur couleur.

### Étape 2. Combien d'étiquettes différentes ?

Les paires de lignes possibles parmi les lignes $1$, $2$, $3$ sont

$$\{1, 2\}, \qquad \{1, 3\}, \qquad \{2, 3\},$$

soit $3$ possibilités. À cela s'ajoute le choix de la couleur, blanc ou noir, soit $2$ possibilités.

Il y a donc en tout

$$3 \times 2 = 6 \text{ étiquettes différentes}.$$

### Étape 3. Le principe des tiroirs

Nous avons $7$ colonnes et seulement $6$ étiquettes possibles. Par le principe des tiroirs, **deux colonnes portent la même étiquette**.

Appelons-les colonne $C$ et colonne $C'$. Porter la même étiquette signifie :

- elles ont chacune deux cases de même couleur sur les **mêmes deux lignes**, disons les lignes $i$ et $j$ ;
- et cette couleur est **la même** pour les deux colonnes, disons le noir.

### Étape 4. Conclure

Considérons les quatre cases situées aux intersections des lignes $i$ et $j$ avec les colonnes $C$ et $C'$ :

$$(i, C), \qquad (j, C), \qquad (i, C'), \qquad (j, C').$$

Les quatre sont noires. Comme $i \neq j$ et $C \neq C'$, ce sont bien quatre cases distinctes, et elles forment les quatre coins d'un rectangle dont les côtés suivent les lignes et les colonnes du quadrillage.

$$\boxed{\text{Un tel rectangle existe toujours.}}$$

## Going further

Le nombre $7$ est exactement le bon : **avec $6$ colonnes seulement, on peut éviter tout rectangle monochrome.** Il suffit de donner aux six colonnes les six étiquettes différentes, ce qui se réalise par exemple ainsi (N pour noir, B pour blanc) :

| | $C_1$ | $C_2$ | $C_3$ | $C_4$ | $C_5$ | $C_6$ |
|---|---|---|---|---|---|---|
| ligne 1 | N | N | B | B | B | N |
| ligne 2 | N | B | N | B | N | B |
| ligne 3 | B | N | N | N | B | B |

Chaque colonne a exactement une paire de cases de même couleur, et les six paires portent six étiquettes différentes : lignes $\{1,2\}$ en noir, $\{1,3\}$ en noir, $\{2,3\}$ en noir, puis les trois mêmes paires en blanc. Aucun rectangle monochrome n'apparaît.

On peut se poser la même question avec plus de couleurs ou plus de lignes. Avec $4$ lignes et deux couleurs, le raisonnement donne $\binom{4}{2} \times 2 = 12$ étiquettes, donc $13$ colonnes suffisent ; en réalité $7$ suffisent déjà, et il faut travailler davantage pour le voir. La méthode des étiquettes donne une réponse correcte, mais pas toujours la meilleure possible.
