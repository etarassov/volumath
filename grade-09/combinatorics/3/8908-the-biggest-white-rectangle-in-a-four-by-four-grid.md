---
id: "8908"
title: "Le plus grand rectangle blanc d'une grille 4 × 4"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [grille, rectangle, tiroirs, maximum, contre-exemple]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2026"
  reference: "Poly-Valbonne-2026.pdf, chapitre II « Coupe Animath de printemps 2026 », exercice 9 (sujet lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Dans une grille $4 \times 4$, quelqu'un colorie deux cases en noir. Les quatorze autres restent blanches. On ne sait pas lesquelles ont été noircies : cela peut être n'importe quelles deux cases.

On cherche ensuite, dans la grille, un rectangle formé de cases entières, dont les côtés sont parallèles à ceux de la grille, et qui ne contienne aucune case noire.

Trouver le plus grand entier $k$ tel que, **quelles que soient** les deux cases noircies, on soit certain de pouvoir trouver un tel rectangle formé d'au moins $k$ cases.

## Hints

1. Comme toujours quand on cherche « le plus grand $k$ », il y a deux moitiés : montrer qu'on trouve toujours un rectangle d'au moins $k$ cases, et exhiber un coloriage où on ne peut pas faire mieux que $k$.
2. Commencez par la moitié facile. Il y a quatre lignes dans la grille et seulement deux cases noires. Que pouvez-vous en déduire sur les lignes ?
3. Une ligne entière est déjà un rectangle. Combien de cases contient-elle ?
4. Pour l'autre moitié, cherchez à placer les deux cases noires de façon à gêner le plus possible. Où sont les cases les plus « centrales » ?
5. Un rectangle de $5$ cases ou de $6$ cases, à quoi ressemblerait-il dans une grille $4 \times 4$ ? Faites la liste des formes possibles, il n'y en a pas tant.

## Solution

La réponse est $k = 4$.

### On trouve toujours un rectangle de $4$ cases

La grille a quatre lignes. Les deux cases noires occupent au plus deux lignes. Il reste donc **au moins deux lignes entièrement blanches**.

Une ligne entière est un rectangle $1 \times 4$, formé de $4$ cases, et elle ne contient aucune case noire. Donc on trouve toujours un rectangle blanc d'au moins $4$ cases, et $k \geq 4$.

### On ne peut pas garantir $5$ cases

Voici un coloriage qui bloque tout rectangle de plus de $4$ cases : on noircit les deux cases centrales qui se touchent en diagonale.

![Une grille 4 × 4 dont les deux cases noires sont deux cases centrales voisines en diagonale](8908-figure-1.svg)

Numérotons les lignes et les colonnes de $1$ à $4$. Les cases noires sont en $(2,2)$ et en $(3,3)$.

Un rectangle de la grille a pour dimensions $h \times l$ avec $h$ et $l$ compris entre $1$ et $4$. Pour qu'il contienne au moins $5$ cases, il faut $h \times l \geq 5$, donc il faut que $h$ et $l$ soient tous les deux au moins $2$ : en effet si $h = 1$ alors $h \times l = l \leq 4$. Un tel rectangle contient donc un sous-rectangle $2 \times 3$ ou $3 \times 2$. Il suffit donc de vérifier qu'aucun rectangle $2 \times 3$ ni $3 \times 2$ n'est entièrement blanc.

**Les rectangles $2 \times 3$** (deux lignes consécutives, trois colonnes consécutives). Les colonnes consécutives sont $\{1,2,3\}$ ou $\{2,3,4\}$ : dans les deux cas, les colonnes $2$ et $3$ sont prises. Les lignes consécutives sont $\{1,2\}$, $\{2,3\}$ ou $\{3,4\}$ : dans les trois cas, la ligne $2$ ou la ligne $3$ est prise. Si la ligne $2$ est prise, la case $(2,2)$ est dans le rectangle ; si c'est la ligne $3$, c'est la case $(3,3)$. Un tel rectangle contient donc toujours une case noire.

**Les rectangles $3 \times 2$.** Le même raisonnement en échangeant les rôles des lignes et des colonnes donne la même conclusion.

Aucun rectangle de $5$ cases ou plus n'est donc entièrement blanc, et le plus grand rectangle blanc de cette grille fait bien $4$ cases (par exemple la première ligne). Donc $k \leq 4$.

### Conclusion

$$\boxed{k = 4.}$$

*Un conseil de correcteur.* Raisonner en cherchant « le pire cas » est un piège fréquent : l'intuition souffle la bonne réponse, mais elle ne fournit pas de preuve. Les deux moitiés se démontrent séparément, et par des arguments de nature différente : un argument général pour la minoration, un exemple explicite pour la majoration.

## Going further

1. Même question dans une grille $5 \times 5$ avec deux cases noires. Et avec trois cases noires ?
2. Dans la grille $4 \times 4$, combien faut-il de cases noires au minimum pour empêcher tout rectangle blanc de $4$ cases ?
