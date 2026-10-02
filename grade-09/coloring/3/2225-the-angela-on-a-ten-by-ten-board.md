---
id: "2225"
title: "L'« angela », une pièce qui saute de 1 et de 3"
grade: 9
theme: coloring
difficulty: 3
duration_min: 30
tags: [coloriage, invariant, parite, echiquier, deplacement]
adapted_from: null
see_also: ["0507"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Invariants II"
  reference: "Handout-623-735.pdf, exercice 5 (réponses dans Handout-624-735.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-623-735.pdf"
---

## Statement

On joue sur un damier $10 \times 10$, dont les colonnes sont notées de $a$ à $j$ et les rangées de $1$ à $10$, comme aux échecs. Les cases sont coloriées en noir et blanc de façon habituelle : deux cases qui partagent un côté n'ont jamais la même couleur.

On invente une nouvelle pièce, l'**angela**. À chaque coup, elle avance d'une case dans une direction, puis de trois cases dans une direction perpendiculaire. (Le cavalier ordinaire, lui, avance d'une case puis de deux.)

1. L'angela peut-elle aller de la case $a1$ à la case $j1$ ?
2. L'angela peut-elle, en un nombre quelconque de coups, arriver sur une case **voisine** de sa case de départ, c'est-à-dire une case qui partage un côté avec elle ?
3. L'angela peut-elle aller de la case $a1$ à la case $j10$, le coin opposé ?

## Hints

1. Colorie le damier comme un damier d'échecs et observe ce qui arrive à la couleur de la case occupée après un coup.
2. Numérote les colonnes de $1$ à $10$ et les rangées de $1$ à $10$. La couleur d'une case ne dépend que d'une seule chose : la parité de la somme numéro de colonne $+$ numéro de rangée.
3. De combien cette somme varie-t-elle lors d'un coup d'angela ? Attention, il y a plusieurs coups possibles, mais ils ont tous quelque chose en commun.
4. Pour la question 3, la couleur ne suffit plus à conclure : il faut essayer de trouver un chemin.

## Solution

**Traduire la couleur en nombres.**

Numérotons les colonnes $a, b, \ldots, j$ par $1, 2, \ldots, 10$. Une case est repérée par un couple (colonne, rangée), et sa couleur ne dépend que de la **parité de la somme** colonne $+$ rangée : toutes les cases de somme paire ont la même couleur, toutes celles de somme impaire ont l'autre. C'est exactement ce que dit l'énoncé : deux cases voisines diffèrent d'une unité sur une seule coordonnée, donc leurs sommes sont de parités différentes.

**Ce que fait un coup d'angela.**

Un coup déplace la pièce de $1$ case dans un sens et de $3$ cases dans le sens perpendiculaire. La somme colonne $+$ rangée varie donc de

$$\pm 1 \pm 3, \qquad \text{c'est-à-dire de } 4,\ 2,\ -2 \ \text{ou} \ -4 .$$

**Dans tous les cas, la variation est un nombre pair.** La parité de la somme ne change donc jamais :

**l'angela reste toujours sur des cases de la même couleur que sa case de départ.**

**1. De $a1$ à $j1$.**

- $a1$ : colonne $1$, rangée $1$, somme $2$, **paire**.
- $j1$ : colonne $10$, rangée $1$, somme $11$, **impaire**.

Les deux cases n'ont pas la même couleur. **C'est donc impossible**, quel que soit le nombre de coups joués.

**2. Vers une case voisine.**

Deux cases voisines n'ont jamais la même couleur, par définition du coloriage du damier. Or l'angela ne quitte jamais sa couleur. **Elle ne peut donc jamais arriver sur une case voisine de sa case de départ**, même en mille coups.

C'est une différence frappante avec le cavalier ordinaire, qui avance de $1$ puis de $2$ : sa somme varie de $\pm 1 \pm 2$, donc d'un nombre **impair**, et le cavalier change de couleur à chaque coup. Il peut donc, lui, rejoindre une case voisine.

**3. De $a1$ à $j10$.**

- $a1$ : somme $2$, paire.
- $j10$ : colonne $10$, rangée $10$, somme $20$, paire.

Les deux cases ont la même couleur : l'argument précédent ne dit plus rien, et il faut chercher un chemin. En voici un, en cinq coups :

$$a1 \longrightarrow b4 \longrightarrow c7 \longrightarrow d10 \longrightarrow g9 \longrightarrow j10 .$$

Vérifions chaque coup :

- de $a1$ à $b4$ : $+1$ colonne, $+3$ rangées ;
- de $b4$ à $c7$ : $+1$ colonne, $+3$ rangées ;
- de $c7$ à $d10$ : $+1$ colonne, $+3$ rangées ;
- de $d10$ à $g9$ : $+3$ colonnes, $-1$ rangée ;
- de $g9$ à $j10$ : $+3$ colonnes, $+1$ rangée.

Aucune case ne sort du damier. **La réponse est donc oui.**

**Conclusion.** L'angela ne change jamais de couleur. Elle ne peut donc atteindre ni $j1$, ni aucune case voisine de son point de départ ; en revanche elle atteint le coin opposé $j10$, et en fait toutes les cases de sa couleur.

**Ce qu'il faut retenir.** Un coloriage sert à fabriquer une quantité qui ne change jamais. Ici, cette quantité est la couleur de la case occupée. Dès qu'on la connaît, une infinité de trajets sont éliminés d'un coup, sans en essayer un seul.

## Going further

1. Combien de cases l'angela peut-elle atteindre au total en partant de $a1$ ?
2. Reprendre les trois questions pour une pièce qui avance de $2$ puis de $4$ cases. Le coloriage du damier suffit-il encore ? Essayer un coloriage en colonnes de deux.
3. Sur un damier $10 \times 10$, un cavalier ordinaire peut-il aller de $a1$ à $j1$ ?
4. Pour quels couples $(p, q)$ une pièce qui avance de $p$ puis de $q$ cases perpendiculairement change-t-elle de couleur à chaque coup ?
