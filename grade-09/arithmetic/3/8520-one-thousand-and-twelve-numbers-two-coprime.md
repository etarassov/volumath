---
id: "8520"
title: "Mille douze nombres et deux d'entre eux premiers entre eux"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [principe-des-tiroirs, pgcd, nombres-premiers-entre-eux, entiers-consecutifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Principe des tiroirs » (Vincent) du Groupe A, exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Caroline choisit $1012$ entiers parmi les nombres $1, 2, 3, \ldots, 2022$.

Démontrer que, parmi les entiers qu'elle a choisis, il y en a toujours deux qui sont premiers
entre eux.

*Deux entiers sont premiers entre eux lorsque leur seul diviseur positif commun est $1$,
autrement dit lorsque leur PGCD vaut $1$.*

## Hints

1. Caroline choisit $1012$ nombres parmi $2022$. Cela fait un peu plus de la moitié : elle ne peut donc pas les choisir n'importe comment.
2. Regroupe les $2022$ nombres en paquets, de façon à obtenir seulement $1011$ paquets. Le principe des tiroirs forcera alors deux des nombres choisis à tomber dans le même paquet.
3. Fabrique tes paquets de sorte que deux nombres d'un même paquet soient forcément premiers entre eux. Que peux-tu dire du PGCD de deux entiers consécutifs ?

## Solution

**Les tiroirs.** Regroupons les entiers de $1$ à $2022$ par paquets de deux nombres
consécutifs :

$$\{1, 2\}, \quad \{3, 4\}, \quad \{5, 6\}, \quad \ldots, \quad \{2021, 2022\} .$$

Comme $2022 = 2 \times 1011$, cela fait exactement $1011$ paquets, et chaque entier de $1$ à
$2022$ appartient à un paquet et un seul.

**Le principe des tiroirs.** Caroline choisit $1012$ entiers et il n'y a que $1011$ paquets.
Deux de ses entiers appartiennent donc à un même paquet. Appelons-les $a$ et $b$, avec
$a < b$ ; ce sont deux entiers consécutifs, donc

$$b - a = 1 .$$

**Ils sont premiers entre eux.** Soit $d$ un diviseur commun positif de $a$ et de $b$. Alors
$d$ divise aussi la différence $b - a = 1$, donc $d = 1$.

Le seul diviseur commun positif de $a$ et $b$ est $1$ : ces deux nombres sont premiers entre
eux.

**Conclusion.** Quel que soit le choix de Caroline, deux des $1012$ entiers choisis sont
premiers entre eux.

## Going further

Le nombre $1012$ est le plus petit qui fonctionne : en choisissant les $1011$ nombres pairs
$2, 4, 6, \ldots, 2022$, on obtient une sélection où deux nombres quelconques sont tous les
deux divisibles par $2$, donc jamais premiers entre eux.
