---
id: "0812"
title: "Vingt-cinq tétraminos en T"
grade: 8
theme: coloring
difficulty: 3
duration_min: 20
tags: [coloriage, pavage, echiquier, tetraminos, parite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 15, d'après Arthur Engel, « Solutions d'expert »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Le **tétramino en T** est la pièce formée de trois cases alignées et d'une quatrième case collée au milieu :

![Le tétramino en T](0812-figure-1.svg)

Montrer qu'un échiquier $10 \times 10$ ne peut pas être entièrement recouvert par $25$ tétraminos en T.

Les pièces peuvent être tournées dans tous les sens ; elles suivent le quadrillage, ne se chevauchent pas et ne dépassent pas de l'échiquier.

## Hints

1. Vérifie d'abord le compte des cases : le nombre de pièces est-il le bon ? Si oui, l'obstacle est ailleurs.
2. Un échiquier est déjà colorié. Combien y a-t-il de cases de chaque couleur sur un damier $10 \times 10$ ?
3. Pose un tétramino en T n'importe où sur l'échiquier et compte les cases noires qu'il recouvre. Essaie plusieurs positions et plusieurs orientations.
4. Tu trouveras toujours $3$ et $1$, jamais $2$ et $2$. Pourquoi ? Regarde d'abord les trois cases alignées, puis la quatrième.
5. Appelle $k$ le nombre de pièces qui recouvrent trois cases noires, et compte les cases noires de l'échiquier de deux façons.

## Solution

**Étape 1. Le compte des cases tombe juste.**

L'échiquier a $10 \times 10 = 100$ cases et $25$ tétraminos recouvrent $25 \times 4 = 100$ cases. Il n'y a donc rien à redire de ce côté : c'est ailleurs qu'il faut chercher.

**Étape 2. Les couleurs de l'échiquier.**

Un échiquier $10 \times 10$ est colorié en alternance : chaque ligne contient $5$ cases noires et $5$ cases blanches, donc l'échiquier entier contient
$$50 \text{ cases noires} \qquad \text{et} \qquad 50 \text{ cases blanches}.$$

**Étape 3. Ce que recouvre un tétramino en T.**

Prenons un tétramino en T posé n'importe où. Ses trois cases alignées se suivent, donc leurs couleurs alternent : deux d'une couleur, une de l'autre, et c'est **la case du milieu** qui est de la couleur minoritaire.

La quatrième case est collée par un côté à cette case du milieu, donc elle est de l'autre couleur : celle qui était déjà majoritaire.

Bilan : **un tétramino en T recouvre toujours $3$ cases d'une couleur et $1$ case de l'autre.** Jamais $2$ et $2$.

**Étape 4. Compter les cases noires de deux façons.**

Supposons qu'un recouvrement existe. Parmi les $25$ pièces, appelons $k$ le nombre de celles qui recouvrent $3$ cases noires ; les $25 - k$ autres recouvrent $3$ cases blanches, donc $1$ case noire.

En additionnant pièce par pièce, le nombre de cases noires de l'échiquier vaut
$$3k + 1 \times (25 - k) = 2k + 25.$$

Or ce nombre vaut $50$. Il faudrait donc
$$2k + 25 = 50, \qquad \text{c'est-à-dire} \qquad 2k = 25.$$

C'est impossible : $2k$ est pair et $25$ est impair.

**Conclusion.** Un échiquier $10 \times 10$ ne peut pas être recouvert par $25$ tétraminos en T.

*Autre formulation du même argument.* Le nombre $2k + 25$ est impair quel que soit $k$ : $25$ tétraminos en T recouvrent toujours un nombre **impair** de cases noires. Un échiquier $10 \times 10$ en a un nombre pair.

## Going further

1. Montre qu'un carré $4 \times 4$, lui, se recouvre avec $4$ tétraminos en T. Le raisonnement ci-dessus ne dit rien de ce cas : pourquoi ?
2. En déduis-tu un recouvrement d'un échiquier $8 \times 8$ par $16$ tétraminos en T ?
3. Que dit le même comptage pour un échiquier $6 \times 6$ recouvert par $9$ tétraminos en T ?
