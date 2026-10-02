---
id: "0788"
title: "Trois fléchettes dans la cible"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 25
tags: [denombrement, somme, recherche-de-cas, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 15, questions 2b et 3, d'après Olympiades académiques de Versailles, 2011"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

On joue aux fléchettes sur une cible comportant trois zones : une à $5$ points, une à $7$ points et une à $11$ points. Toutes les fléchettes lancées atteignent la cible. Le score est la somme des points obtenus.

On dit que deux jeux sont **identiques** si chaque zone de la cible reçoit le même nombre de fléchettes dans l'un et dans l'autre. Ainsi les jeux $7 + 5 + 5 + 11$ et $5 + 7 + 11 + 5$ sont identiques.

1. Démontrer qu'il existe deux jeux différents, et deux seulement, correspondant au score $34$.
2. Trouver tous les scores que l'on peut obtenir avec un lancer de trois fléchettes ayant toutes atteint la cible. Présenter les résultats de manière organisée.

## Hints

1. Un jeu est entièrement décrit par trois nombres : combien de fléchettes dans la zone à $5$, combien dans celle à $7$, combien dans celle à $11$.
2. Question 1 : commence par la zone à $11$ points. Combien de fléchettes au maximum peut-elle recevoir si le score vaut $34$ ?
3. Question 1 : pour chacun des cas $3$, $2$, $1$, $0$ fléchettes à $11$ points, il reste un nombre à obtenir avec des $5$ et des $7$. Là encore, passe en revue le nombre de fléchettes à $7$ points.
4. Question 2 : cette fois le nombre de fléchettes est imposé, il vaut $3$. Combien y a-t-il de façons de répartir ces trois fléchettes entre trois zones ? Range-les, par exemple, selon le nombre de fléchettes à $11$ points.
5. Question 2 : n'oublie pas que deux répartitions différentes peuvent donner le même score. Vérifie chaque total.

## Solution

Notons $(a\,;\,b\,;\,c)$ le jeu qui envoie $a$ fléchettes dans la zone à $5$ points, $b$ dans la zone à $7$ points et $c$ dans la zone à $11$ points. Le score vaut alors

$$5a + 7b + 11c$$

Deux jeux sont identiques exactement quand ils ont les mêmes $a$, $b$ et $c$.

### Question 1 : le score 34

Comme $11 \times 4 = 44 > 34$, on a $c \leqslant 3$. Examinons les quatre cas.

**$c = 3$.** Il reste $34 - 33 = 1$ point à faire avec des $5$ et des $7$ : impossible.

**$c = 2$.** Il reste $34 - 22 = 12$. Avec des $5$ et des $7$ : $b = 0$ donnerait $5a = 12$, impossible ; $b = 1$ donne $5a = 5$, donc $a = 1$. Un seul jeu : $(1\,;\,1\,;\,2)$, c'est-à-dire $5 + 7 + 11 + 11 = 34$.

**$c = 1$.** Il reste $34 - 11 = 23$. On essaie toutes les valeurs de $b$ :

$$b = 0 : 5a = 23 \quad b = 1 : 5a = 16 \quad b = 2 : 5a = 9 \quad b = 3 : 5a = 2$$

Aucun de ces nombres n'est un multiple de $5$ : impossible.

**$c = 0$.** Il reste $34$. De même :

$$b = 0 : 5a = 34 \quad b = 1 : 5a = 27 \quad b = 2 : 5a = 20 \quad b = 3 : 5a = 13 \quad b = 4 : 5a = 6$$

Seul $b = 2$ convient, avec $a = 4$. Un seul jeu : $(4\,;\,2\,;\,0)$, c'est-à-dire $5 + 5 + 5 + 5 + 7 + 7 = 34$.

**Conclusion.** Il existe exactement deux jeux de score $34$ :

$$34 = 5 + 5 + 5 + 5 + 7 + 7 \qquad \text{et} \qquad 34 = 5 + 7 + 11 + 11$$

### Question 2 : les scores à trois fléchettes

Il faut maintenant $a + b + c = 3$. Rangeons les répartitions selon $c$, le nombre de fléchettes à $11$ points.

| $c$ | répartition $(a\,;\,b\,;\,c)$ | calcul | score |
| --- | --- | --- | --- |
| $0$ | $(3\,;\,0\,;\,0)$ | $5+5+5$ | $15$ |
| $0$ | $(2\,;\,1\,;\,0)$ | $5+5+7$ | $17$ |
| $0$ | $(1\,;\,2\,;\,0)$ | $5+7+7$ | $19$ |
| $0$ | $(0\,;\,3\,;\,0)$ | $7+7+7$ | $21$ |
| $1$ | $(2\,;\,0\,;\,1)$ | $5+5+11$ | $21$ |
| $1$ | $(1\,;\,1\,;\,1)$ | $5+7+11$ | $23$ |
| $1$ | $(0\,;\,2\,;\,1)$ | $7+7+11$ | $25$ |
| $2$ | $(1\,;\,0\,;\,2)$ | $5+11+11$ | $27$ |
| $2$ | $(0\,;\,1\,;\,2)$ | $7+11+11$ | $29$ |
| $3$ | $(0\,;\,0\,;\,3)$ | $11+11+11$ | $33$ |

Il y a $10$ répartitions possibles, mais deux d'entre elles donnent le même score $21$ : $7+7+7$ et $5+5+11$.

**Conclusion.** Les scores réalisables avec trois fléchettes sont

$$15 \quad 17 \quad 19 \quad 21 \quad 23 \quad 25 \quad 27 \quad 29 \quad 33$$

soit neuf scores différents.

On remarque qu'ils sont tous impairs : c'est normal, car $5$, $7$ et $11$ sont impairs et la somme de trois nombres impairs est impaire. On remarque aussi que le seul nombre impair manquant entre $15$ et $33$ est $31$.

## Going further

Pourquoi $31$ n'est-il pas atteignable avec trois fléchettes ? (Regarder ce qu'il faudrait obtenir après avoir fixé le nombre de fléchettes à $11$ points.)
