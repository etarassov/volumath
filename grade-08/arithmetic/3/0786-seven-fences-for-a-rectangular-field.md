---
id: "0786"
title: "Sept barrières pour un terrain rectangulaire"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 40
tags: [perimetre, aire, decomposition, recherche-de-cas, rectangle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 14, d'après Olympiades académiques de Versailles, 2011"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

On dispose, pour clôturer un terrain rectangulaire, de sept barrières rectilignes de longueurs

$$11\text{ m} \qquad 10\text{ m} \qquad 9\text{ m} \qquad 7\text{ m} \qquad 4\text{ m} \qquad 3\text{ m} \qquad 2\text{ m}$$

Les sept barrières sont toutes utilisées, aucune n'est coupée, et chaque côté du terrain est formé d'une ou de plusieurs barrières mises bout à bout. On se propose de rechercher les aires des terrains qu'il est possible d'entourer ainsi.

1. Calculer le périmètre des terrains possibles.
2. Adèle a commencé une disposition : le côté gauche du terrain est formé de la barrière de $7$ m puis de celle de $2$ m, et le côté du bas commence par la barrière de $3$ m. Compléter sa disposition, et donner l'aire du terrain obtenu.
3. Marc prétend qu'il est impossible de trouver un terrain de largeur $7$ m. A-t-il raison ?
4. Trouver toutes les aires des terrains qu'il est possible d'entourer.

## Hints

1. Toutes les barrières servent, donc le périmètre ne dépend pas de la disposition. Combien vaut-il ? Qu'en déduis-tu sur la somme de la longueur et de la largeur ?
2. Question 2 : le côté gauche mesure $7 + 2 = 9$ m. Combien mesure alors le côté du bas ? Quelles barrières restent disponibles ?
3. Question 3 : les deux côtés de $7$ m sont formés de barrières, et ils n'ont aucune barrière en commun. Fais la liste de tous les groupes de barrières dont la somme vaut $7$ m. Il n'y en a pas beaucoup.
4. Question 4 : la largeur $l$ vérifie $l \leqslant 11$, puisque la largeur ne dépasse pas la longueur et que leur somme vaut $23$. Pour chaque valeur de $l$ entre $1$ et $11$, écris la liste des groupes de barrières de somme $l$.
5. Il faut deux tels groupes **sans barrière commune** : cela élimine d'un coup presque toutes les valeurs de $l$. Pour celles qui restent, vérifie que les barrières non utilisées se partagent en deux groupes de même somme.

## Solution

### Question 1 : le périmètre

Toutes les barrières sont utilisées et aucune n'est coupée, donc le périmètre est la somme de toutes les longueurs :

$$11 + 10 + 9 + 7 + 4 + 3 + 2 = 46\text{ m}$$

Le périmètre d'un rectangle de longueur $L$ et de largeur $l$ vaut $2(L + l)$, donc

$$L + l = 23$$

C'est la relation qui servira partout dans la suite : **la longueur et la largeur ont toujours pour somme $23$ m.**

### Question 2 : compléter la disposition d'Adèle

Le côté gauche d'Adèle mesure $7 + 2 = 9$ m. Le côté droit lui est opposé, il mesure donc aussi $9$ m. Et comme $L + l = 23$, les deux autres côtés mesurent $23 - 9 = 14$ m chacun.

Il reste les barrières $11$, $10$, $9$, $4$ et $3$.

- Le côté droit doit mesurer $9$ m : avec les barrières restantes, la seule possibilité est la barrière de $9$ m toute seule.
- Le côté du bas commence par la barrière de $3$ m et doit mesurer $14$ m : il lui manque $11$ m, c'est-à-dire exactement la barrière de $11$ m.
- Il reste $10$ et $4$ pour le côté du haut : $10 + 4 = 14$ m. C'est bien ce qu'il fallait.

La disposition complète est donc :

| côté | barrières | longueur |
| --- | --- | --- |
| gauche | $7 + 2$ | $9$ m |
| droite | $9$ | $9$ m |
| bas | $3 + 11$ | $14$ m |
| haut | $10 + 4$ | $14$ m |

L'aire du terrain vaut $9 \times 14 = 126\text{ m}^2$.

### Question 3 : une largeur de 7 m est-elle possible ?

Supposons qu'un terrain ait $7$ m de largeur. Ses deux côtés de $7$ m sont formés de barrières, et **une barrière ne peut pas servir deux fois** : les deux groupes de barrières sont donc disjoints.

Cherchons tous les groupes de barrières dont la somme vaut $7$ : les barrières de $9$, $10$ et $11$ m sont déjà trop longues, il ne reste qu'à essayer avec $7$, $4$, $3$ et $2$. On trouve

$$\{7\} \qquad \text{et} \qquad \{4\,;\,3\}$$

et c'est tout ($2$, $3$, $4$, $2+3 = 5$, $2+4 = 6$, $3+4 = 7$, $2+3+4 = 9$).

Il y a bien exactement deux groupes, et ils sont disjoints : les deux côtés de $7$ m seraient donc $\{7\}$ et $\{4\,;\,3\}$. Les barrières restantes sont alors $11$, $10$, $9$ et $2$, et elles devraient former les deux côtés longs, chacun de $23 - 7 = 16$ m.

Or aucun groupe pris dans $\{11\,;\,10\,;\,9\,;\,2\}$ ne donne $16$ :

$$9 + 2 = 11 \quad 10 + 2 = 12 \quad 11 + 2 = 13 \quad 10 + 9 = 19 \quad 11 + 9 = 20 \quad 11 + 10 = 21$$

et les groupes de trois barrières ou plus dépassent tous $16$. C'est impossible.

**Marc a raison** : aucun terrain ne peut avoir $7$ m de largeur.

### Question 4 : toutes les aires possibles

Appelons $l$ la largeur et $L$ la longueur, avec $l \leqslant L$ et $L + l = 23$. Alors $2l \leqslant 23$, donc $l \leqslant 11$.

Comme à la question 3, les deux côtés de largeur $l$ sont deux groupes de barrières **disjoints** de somme $l$. Dressons donc, pour chaque valeur de $l$ de $1$ à $11$, la liste de tous les groupes de somme $l$ :

| $l$ | groupes de barrières de somme $l$ |
| --- | --- |
| $1$ | aucun |
| $2$ | $\{2\}$ |
| $3$ | $\{3\}$ |
| $4$ | $\{4\}$ |
| $5$ | $\{3\,;\,2\}$ |
| $6$ | $\{4\,;\,2\}$ |
| $7$ | $\{7\}$, $\{4\,;\,3\}$ |
| $8$ | aucun |
| $9$ | $\{9\}$, $\{7\,;\,2\}$, $\{4\,;\,3\,;\,2\}$ |
| $10$ | $\{10\}$, $\{7\,;\,3\}$ |
| $11$ | $\{11\}$, $\{9\,;\,2\}$, $\{7\,;\,4\}$ |

Il faut **deux** groupes disjoints de même somme $l$. Cela élimine immédiatement $l = 1$, $2$, $3$, $4$, $5$, $6$ et $8$ : pour ces valeurs il y a au plus un groupe. Restent quatre valeurs à examiner.

**$l = 7$.** Traité à la question 3 : impossible.

**$l = 9$**, donc $L = 14$. Les deux groupes disjoints possibles sont $\{9\}$ et $\{7\,;\,2\}$, ou $\{9\}$ et $\{4\,;\,3\,;\,2\}$ (les groupes $\{7\,;\,2\}$ et $\{4\,;\,3\,;\,2\}$ se partagent la barrière de $2$ m, ils sont exclus).

- Avec $\{9\}$ et $\{7\,;\,2\}$ : il reste $11$, $10$, $4$, $3$, à partager en deux côtés de $14$ m. On y arrive : $11 + 3 = 14$ et $10 + 4 = 14$. **Ça marche.** C'est la disposition d'Adèle.
- Avec $\{9\}$ et $\{4\,;\,3\,;\,2\}$ : il reste $11$, $10$, $7$, à partager en deux côtés de $14$ m. Impossible : $11 + 7 = 18$, $10 + 7 = 17$, $11 + 10 = 21$, et aucune barrière seule ne fait $14$.

Terrain $9 \times 14$, d'aire $126\text{ m}^2$.

**$l = 10$**, donc $L = 13$. Les seuls groupes sont $\{10\}$ et $\{7\,;\,3\}$, et ils sont disjoints. Il reste $11$, $9$, $4$, $2$, à partager en deux côtés de $13$ m : $11 + 2 = 13$ et $9 + 4 = 13$. **Ça marche.**

Terrain $10 \times 13$, d'aire $130\text{ m}^2$.

**$l = 11$**, donc $L = 12$. Trois couples de groupes disjoints sont à examiner.

- $\{11\}$ et $\{9\,;\,2\}$ : il reste $10$, $7$, $4$, $3$, à partager en deux côtés de $12$ m. Les sommes possibles sont $7+3 = 10$, $7+4 = 11$, $10+3 = 13$, $10+4 = 14$, $4+3 = 7$ : jamais $12$. Impossible.
- $\{11\}$ et $\{7\,;\,4\}$ : il reste $10$, $9$, $3$, $2$, à partager en deux côtés de $12$ m : $10 + 2 = 12$ et $9 + 3 = 12$. **Ça marche.**
- $\{9\,;\,2\}$ et $\{7\,;\,4\}$ : la barrière de $11$ m serait alors sur un côté long, de longueur $12$ m ; il faudrait la compléter par exactement $1$ m, ce qui est impossible.

Terrain $11 \times 12$, d'aire $132\text{ m}^2$.

**Conclusion.** Il y a exactement trois terrains possibles, et donc trois aires :

| dimensions | aire |
| --- | --- |
| $9\text{ m} \times 14\text{ m}$ | $126\text{ m}^2$ |
| $10\text{ m} \times 13\text{ m}$ | $130\text{ m}^2$ |
| $11\text{ m} \times 12\text{ m}$ | $132\text{ m}^2$ |

On retrouve au passage un fait connu : à périmètre fixé, plus le rectangle est proche du carré, plus son aire est grande.

## Going further

Avec les mêmes sept barrières, peut-on clôturer un terrain **carré** ? Pourquoi ?
