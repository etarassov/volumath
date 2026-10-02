---
id: "11424"
title: "Des voisins qui diffèrent de 2 ou de 3"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [construction, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Juniors, exercice 4 (le même texte est l'exercice 10 des Seniors) ; corrigé 2022-04_corrige-envoi-4.pdf, construction de la « solution alternative »"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 1$ pour lesquels on peut écrire les nombres $1, 2, \ldots, n$
sur une ligne, chacun une seule fois, de sorte que la différence entre deux nombres voisins soit
toujours $2$ ou $3$.

Par exemple, pour $n = 4$, la ligne $2, 4, 1, 3$ convient : les différences sont $2$, $3$ et $2$.

## Hints

1. Essaie $n = 2$ et $n = 3$. Où peut-on placer le nombre $2$ ?
2. Cherche une ligne pour $n = 5$, puis pour $n = 6$. Peux-tu en trouver une pour $n = 6$ qui
   contient celle de $n = 5$ ?
3. Quand on a une bonne ligne pour $1, \ldots, n$, peut-on ajouter $n + 1$ à l'une des deux
   extrémités ? Quel nombre faut-il trouver à cette extrémité ?
4. Range les nombres impairs à partir de $7$ d'un côté, les nombres pairs à partir de $8$ de
   l'autre.

## Solution

**Réponse : c'est possible pour tous les $n$, sauf $n = 2$ et $n = 3$.**

### Les cas impossibles

Pour $n = 2$, la seule ligne est $1, 2$ (ou $2, 1$), et la différence vaut $1$. C'est impossible.

Pour $n = 3$, le nombre $2$ a au moins un voisin. Ce voisin doit valoir $2 - 3$, $2 - 2$, $2 + 2$ ou
$2 + 3$, c'est-à-dire $-1$, $0$, $4$ ou $5$. Aucun de ces nombres n'est entre $1$ et $3$. C'est
impossible.

Pour $n = 1$, la ligne réduite au seul nombre $1$ convient, puisqu'il n'y a aucune paire de voisins.

### Les petites valeurs à partir de 4

$$n = 4 : \quad 2, 4, 1, 3 \qquad \text{(différences } 2, 3, 2\text{)}$$

$$n = 5 : \quad 5, 2, 4, 1, 3 \qquad \text{(différences } 3, 2, 3, 2\text{)}$$

$$n = 6 : \quad 5, 2, 4, 1, 3, 6 \qquad \text{(différences } 3, 2, 3, 2, 3\text{)}$$

### Comment continuer

La ligne de $n = 6$ commence par $5$ et finit par $6$. On peut donc écrire $7$ au début, puisque
$7 - 5 = 2$, et $8$ à la fin, puisque $8 - 6 = 2$ :

$$7, 5, 2, 4, 1, 3, 6 \qquad \text{pour } n = 7, \qquad\qquad 7, 5, 2, 4, 1, 3, 6, 8 \qquad \text{pour } n = 8 .$$

On recommence : la ligne commence maintenant par $7$ et finit par $8$, on ajoute $9$ au début et $10$
à la fin, et ainsi de suite. Les nombres impairs s'accumulent à gauche, les pairs à droite :

$$\ldots, 11, 9, 7, 5, 2, 4, 1, 3, 6, 8, 10, 12, \ldots$$

Précisément, pour tout $n \geqslant 7$, on écrit dans l'ordre :

- à gauche, les nombres impairs de $7$ à $n$, du plus grand au plus petit ;
- au milieu, le bloc $5, 2, 4, 1, 3, 6$ ;
- à droite, les nombres pairs de $8$ à $n$, du plus petit au plus grand.

Par exemple, pour $n = 11$ : $11, 9, 7, 5, 2, 4, 1, 3, 6, 8, 10$.

Vérifions. Chaque nombre de $1$ à $n$ apparaît une fois : ceux de $1$ à $6$ dans le bloc du milieu,
les impairs à partir de $7$ à gauche, les pairs à partir de $8$ à droite. Et les différences entre
voisins valent :

- $2$ entre deux impairs qui se suivent à gauche, et entre $7$ et $5$ ;
- $3, 2, 3, 2, 3$ à l'intérieur du bloc du milieu ;
- $2$ entre $6$ et $8$, et entre deux pairs qui se suivent à droite.

Toutes valent $2$ ou $3$.

**Conclusion.** On peut écrire les nombres de $1$ à $n$ en respectant la règle pour $n = 1$ et pour
tout $n \geqslant 4$. Seuls $n = 2$ et $n = 3$ sont impossibles.
