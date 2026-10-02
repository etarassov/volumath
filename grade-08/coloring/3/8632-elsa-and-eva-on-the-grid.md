---
id: "8632"
title: "Elsa et Éva se croiseront-elles ?"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [parite, invariant, deplacement, coordonnees]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Invariants/coloriages » (Gaëtan & Vincent), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Elsa et Éva se promènent sur les points à coordonnées entières du plan. Elsa part du point $(0, 0)$ et Éva du point $(0, 1)$.

Chaque seconde, chacune des deux se déplace vers un point voisin du sien : un pas vers le haut, vers le bas, vers la gauche ou vers la droite. Elles se déplacent toutes les deux en même temps, à chaque seconde.

Pourront-elles un jour se retrouver sur le même point ?

## Hints

1. Colorie les points du plan comme un damier : le point $(x,y)$ en noir si $x+y$ est pair, en blanc sinon. De quelle couleur sont les points de départ ?
2. Quand on fait un pas, une des deux coordonnées change de $1$. Que devient la somme $x+y$ ? Et sa parité ?
3. Elsa change donc de couleur à chaque seconde, et Éva aussi. Si elles partent de couleurs différentes, que se passe-t-il ?
4. Si elles étaient au même point, elles seraient forcément de la même couleur.

## Solution

**Le coloriage.** Colorions chaque point à coordonnées entières $(x, y)$ :

- en **noir** si $x + y$ est pair,
- en **blanc** si $x + y$ est impair.

C'est exactement le coloriage d'un damier : deux points voisins n'ont jamais la même couleur.

**Les points de départ.** Elsa part de $(0,0)$, avec $0 + 0 = 0$ pair : elle est sur une case **noire**. Éva part de $(0,1)$, avec $0 + 1 = 1$ impair : elle est sur une case **blanche**.

**Un pas change la couleur.** Un pas modifie une seule des deux coordonnées, de $+1$ ou de $-1$. La somme $x + y$ change donc de $+1$ ou de $-1$, et sa parité change à coup sûr. Autrement dit, **à chaque seconde, chacune des deux passe d'une couleur à l'autre.**

**L'invariant.** Elsa et Éva bougent en même temps, donc elles changent de couleur en même temps. Comme elles partent de couleurs différentes, elles resteront toujours de couleurs différentes : à chaque instant, l'une est sur une case noire et l'autre sur une case blanche.

**Conclusion.** Si elles se retrouvaient sur le même point, elles seraient sur une case de la même couleur. C'est impossible : **Elsa et Éva ne se rencontreront jamais.**

## Going further

Une autre façon de dire exactement la même chose, sans parler de couleurs : appelons $S$ la somme des quatre coordonnées des deux points où se trouvent Elsa et Éva. Chaque seconde, $S$ varie de $-2$, $0$ ou $+2$ : sa parité ne change pas. Au départ $S = 0 + 0 + 0 + 1 = 1$, donc $S$ est impair pour toujours. Or si elles étaient toutes les deux au point $(x,y)$, on aurait $S = 2(x+y)$, un nombre pair.

Et si Éva partait du point $(1,1)$ au lieu de $(0,1)$ ? L'obstruction disparaîtrait. Peuvent-elles alors se rencontrer ?
