---
id: "8023"
title: "Laquelle des cinq longueurs est la diagonale ?"
grade: 9
theme: geometry
difficulty: 4
duration_min: 30
tags: [inegalite triangulaire, quadrilatere, diagonale, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath du 6 juin 2017, énoncés communs, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

On donne cinq nombres : $3$, $5$, $7$, $13$ et $19$.

Ce sont, dans un certain ordre, les longueurs des quatre côtés d'un quadrilatère non croisé et
la longueur $D$ de l'une de ses diagonales. Le quadrilatère n'est pas forcément convexe,
c'est-à-dire que la diagonale n'est pas forcément à l'intérieur.

Quelle peut être la longueur de la diagonale $D$ ?

## Hints

1. Une diagonale coupe le quadrilatère en deux triangles. Quels sont les côtés de chacun ?
2. Dans un triangle, chaque côté est plus court que la somme des deux autres. Écris cette
   condition pour les deux triangles.
3. Le nombre $19$ est très grand par rapport aux autres. Dans quel triangle se trouve-t-il, et
   qu'est-ce que cela impose à son voisin ?
4. Essaie les cinq valeurs possibles de $D$ une par une, en commençant par éliminer les petites.

## Solution

**La diagonale coupe le quadrilatère en deux triangles.** Notons $ABCD$ le quadrilatère et
supposons que la diagonale donnée soit $[AC]$. Alors $A$, $B$, $C$ d'une part et $A$, $C$, $D$
d'autre part forment deux vrais triangles, de côtés

$$(AB,\ BC,\ AC) \qquad \text{et} \qquad (CD,\ DA,\ AC).$$

C'est vrai même si le quadrilatère n'est pas convexe : trois sommets consécutifs d'un
quadrilatère ne sont jamais alignés.

Donc : les quatre autres longueurs se répartissent en deux paires, et chaque paire, accompagnée
de $D$, doit former un triangle. L'inégalité triangulaire doit être vérifiée des deux côtés.

**Le grand nombre $19$ donne la clé.** Le nombre $19$ est dans l'une des deux paires ;
appelons $x$ son compagnon. Le triangle de côtés $19$, $x$ et $D$ impose

$$19 < x + D, \qquad \text{c'est-à-dire} \qquad D > 19 - x .$$

**On teste les cinq valeurs possibles de $D$.**

*$D = 3$.* Il faudrait $x > 19 - 3 = 16$, or $x$ est l'un de $5$, $7$, $13$. Impossible.

*$D = 5$.* Il faudrait $x > 14$, or $x$ est l'un de $3$, $7$, $13$. Impossible.

*$D = 13$.* Il faudrait $x > 6$, donc $x = 7$ (les autres candidats sont $3$ et $5$). La paire
contenant $19$ est donc $\{7, 19\}$, et l'autre paire est $\{3, 5\}$. Mais le triangle de côtés
$3$, $5$ et $13$ n'existe pas : $3 + 5 = 8 < 13$. Impossible.

*$D = 19$.* Les deux paires sont formées avec $3$, $5$, $7$, $13$, et chacune doit vérifier
« somme des deux $> 19$ ». Mais la plus grande somme possible est $7 + 13 = 20$, et il reste
alors $3 + 5 = 8$, bien trop petit. Impossible.

*$D = 7$.* Essayons les paires $\{13, 19\}$ et $\{3, 5\}$ :

- triangle $13$, $19$, $7$ : $13 + 7 = 20 > 19$, $19 + 7 > 13$, $13 + 19 > 7$. Il existe.
- triangle $3$, $5$, $7$ : $3 + 5 = 8 > 7$, $3 + 7 > 5$, $5 + 7 > 3$. Il existe.

On construit donc les deux triangles séparément, puis on les recolle le long de leur côté
commun de longueur $7$, de part et d'autre de celui-ci. On obtient un quadrilatère non croisé
dont les côtés mesurent $3$, $5$, $13$, $19$ et dont une diagonale mesure $7$.

**La diagonale $D$ ne peut mesurer que $7$.**

## Going further

Le raisonnement ne se contente pas de tester : il élimine d'abord quatre valeurs sur cinq par
une seule idée (le $19$ a besoin d'un gros voisin), puis il construit vraiment la cinquième.
Les deux moitiés sont nécessaires. Une réponse qui n'aurait fait que l'élimination laisserait
ouverte la possibilité qu'aucune valeur ne marche.
