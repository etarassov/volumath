---
id: "8338"
title: "Combien d'entiers forcent un écart de 2 ?"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [principe-des-tiroirs, minimum, construction, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe B"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe B, « Principes des tiroirs et de l'extrémum » (Pierre-Marie), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Combien d'entiers faut-il choisir au minimum dans l'ensemble $\{1, 2, \ldots, 20\}$ pour être
**sûr** que le choix contienne deux entiers $a$ et $b$ tels que

$$a - b = 2 \;\;?$$

## Hints

1. Comme toujours quand on cherche un minimum, il y a deux choses à faire : montrer que le nombre annoncé marche toujours, et exhiber un choix de taille juste en dessous qui échoue.
2. Commence par l'échec : essaie de construire un gros ensemble d'entiers de $1$ à $20$ dans lequel aucun couple ne diffère de $2$.
3. Les entiers qui diffèrent de $2$ ont la même parité. Sépare donc les pairs et les impairs, et regarde chaque famille comme une suite : $1, 3, 5, 7, \ldots$ et $2, 4, 6, \ldots$
4. Dans la suite $1, 3, 5, 7, \ldots$, on ne peut pas prendre deux termes voisins. Combien au maximum peut-on en prendre ?
5. Pour la seconde moitié, fabrique des « tiroirs » : des paires $\{a, a+2\}$ qui recouvrent tout $\{1, \ldots, 20\}$.

## Solution

La réponse est $11$.

**Partie 1 : avec $10$ entiers on peut échouer.**

Considérons l'ensemble

$$E = \{1, 2, \;\; 5, 6, \;\; 9, 10, \;\; 13, 14, \;\; 17, 18\} ,$$

obtenu en gardant deux entiers consécutifs sur quatre. Il contient $10$ éléments.

Dans $E$, deux éléments ne diffèrent jamais de $2$ : deux éléments d'un même paquet diffèrent de
$1$, et deux éléments de paquets différents diffèrent d'au moins $3$.

Donc $10$ entiers ne suffisent pas.

**Partie 2 : avec $11$ entiers c'est toujours gagné.**

Construisons des tiroirs : des paires $\{a, a+2\}$ qui recouvrent $\{1, 2, \ldots, 20\}$ tout
entier, chaque entier apparaissant dans exactement un tiroir.

$$\{1, 3\}, \; \{2, 4\}, \quad \{5, 7\}, \; \{6, 8\}, \quad \{9, 11\}, \; \{10, 12\},$$
$$\{13, 15\}, \; \{14, 16\}, \quad \{17, 19\}, \; \{18, 20\} .$$

Vérifions : ces $10$ paires contiennent $20$ entiers deux à deux distincts, donc elles forment
bien une partition de $\{1, 2, \ldots, 20\}$.

Si on choisit $11$ entiers, on a $11$ « chaussettes » pour $10$ tiroirs. Par le principe des
tiroirs, deux des entiers choisis tombent dans le même tiroir. Or les deux éléments d'un même
tiroir diffèrent exactement de $2$.

**Conclusion.** Le nombre cherché est

$$\boxed{11} .$$

## Going further

La construction de la partie 1 et les tiroirs de la partie 2 sont deux faces de la même pièce :
l'ensemble $E$ contient exactement un élément de chaque tiroir, et c'est pour cela qu'il est de
taille maximale.

Ce va-et-vient est typique : quand on a trouvé les bons tiroirs, la construction qui montre
l'optimalité s'en déduit tout de suite, et réciproquement.

Que deviendrait la réponse avec $a - b = 3$ au lieu de $a - b = 2$ ? Et avec
$\{1, 2, \ldots, 100\}$ ?
