---
id: "7514"
title: "Le plus petit des plus grands"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [maximum, minimum, tableau, comparaison, raisonnement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 48 (une étoile ; solution p. 245, résolue par Étienne Duclos et Sébastien Baumert)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On remplit un tableau carré avec des nombres entiers, un par case.

- Au-dessus de chaque colonne, on écrit **le plus grand** nombre de cette colonne. Parmi tous les nombres ainsi écrits, on appelle $a$ **le plus petit**.
- À gauche de chaque ligne, on écrit **le plus petit** nombre de cette ligne. Parmi tous les nombres ainsi écrits, on appelle $b$ **le plus grand**.

Comparer $a$ et $b$.

## Hints

1. Commence par un tableau $2 \times 2$ rempli au hasard, puis un $3 \times 3$. Calcule $a$ et $b$ à chaque fois. Une inégalité semble-t-elle toujours vraie dans le même sens ?
2. Le nombre $a$ vient d'une certaine colonne. Le nombre $b$ vient d'une certaine ligne. Que peux-tu dire de la case où cette ligne et cette colonne se croisent ?
3. Note $x$ le nombre écrit dans cette case. Compare $x$ à $a$, puis $x$ à $b$.
4. Attention au sens de chaque comparaison : $a$ est un **maximum** de colonne, $b$ est un **minimum** de ligne.

## Solution

**Réponse : on a toujours $a \geqslant b$.**

**Étape 1. On repère une colonne et une ligne.**

Par définition de $a$, il existe une colonne $C$ telle que $a$ soit le plus grand nombre de la colonne $C$.

Par définition de $b$, il existe une ligne $L$ telle que $b$ soit le plus petit nombre de la ligne $L$.

**Étape 2. On regarde le croisement.**

La colonne $C$ et la ligne $L$ se croisent en une case. Notons $x$ le nombre écrit dans cette case.

- $x$ est dans la colonne $C$, dont $a$ est le plus grand nombre. Donc $x \leqslant a$.
- $x$ est dans la ligne $L$, dont $b$ est le plus petit nombre. Donc $b \leqslant x$.

**Étape 3. On conclut.**

En mettant les deux bout à bout :

$$b \;\leqslant\; x \;\leqslant\; a,$$

donc $a \geqslant b$.

**Étape 4. Les deux cas sont possibles.**

L'inégalité peut être stricte ou non.

Dans le tableau

| 1 | 2 |
|---|---|
| 3 | 4 |

les plus grands nombres des colonnes sont $3$ et $4$, donc $a = 3$ ; les plus petits nombres des lignes sont $1$ et $3$, donc $b = 3$. Ici $a = b$.

Dans le tableau

| 1 | 2 |
|---|---|
| 2 | 1 |

les plus grands nombres des colonnes sont $2$ et $2$, donc $a = 2$ ; les plus petits nombres des lignes sont $1$ et $1$, donc $b = 1$. Ici $a > b$.

## Going further

La démonstration n'a utilisé ni la forme carrée du tableau, ni le fait que les nombres soient entiers : elle marche pour n'importe quel tableau rectangulaire de nombres réels. Tout ce dont on a besoin, c'est que la ligne choisie et la colonne choisie se croisent quelque part.

Cette inégalité est connue sous le nom de **« max-min $\leqslant$ min-max »**. Elle est au cœur de la théorie des jeux : si deux joueurs choisissent en secret, l'un une ligne et l'autre une colonne, et que le premier veut le nombre le plus grand possible pendant que le second le veut le plus petit possible, alors celui qui doit annoncer son choix en premier est désavantagé, et l'écart $a - b$ mesure exactement ce désavantage.
