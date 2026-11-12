---
id: "17830"
title: "Des professeurs et des élèves"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [double-comptage, denombrement]
adapted_from: null
see_also: ["8867", "7130"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », combinatoire, mercredi après-midi, « Double comptage » (Jean-Louis Tu), exercices 7 et 8, p.69, réunis ici en un seul exercice ; solutions p.69"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Dans un collège, il y a $m$ professeurs et $n$ élèves.

1. On suppose que chaque professeur a exactement $k$ élèves, et que chaque élève a exactement $\ell$ professeurs. Trouver une relation entre $m$, $n$, $k$ et $\ell$.
2. On suppose maintenant que chaque professeur a exactement $k$ élèves, et que deux élèves différents, quels qu'ils soient, ont exactement $\ell$ professeurs en commun. Trouver une relation entre $m$, $n$, $k$ et $\ell$.

## Hints

1. Imaginez un tableau avec une ligne par professeur et une colonne par élève, et une croix dans la case quand le professeur a cet élève. Comptez les croix ligne par ligne, puis colonne par colonne.
2. Pour la question 2, comptez les triplets formés d'un professeur et de deux élèves différents de ce professeur, pris dans un certain ordre.
3. Combien de tels triplets pour un professeur donné ? Combien pour deux élèves donnés ?

## Solution

**L'idée : compter la même chose de deux façons.** On choisit une liste d'objets, on la compte de deux manières différentes, et l'on écrit que les deux résultats sont égaux.

**1.** Comptons les couples (professeur, élève) où le professeur a cet élève.

- Professeur par professeur : chacun des $m$ professeurs a $k$ élèves, cela fait $mk$ couples.
- Élève par élève : chacun des $n$ élèves a $\ell$ professeurs, cela fait $n\ell$ couples.

C'est le même nombre, donc

$$mk = n\ell .$$

**2.** Comptons les triplets $(p, e_1, e_2)$ où $p$ est un professeur, et $e_1$, $e_2$ sont deux élèves différents qui ont tous les deux $p$ comme professeur. L'ordre compte : $(p, e_1, e_2)$ et $(p, e_2, e_1)$ sont deux triplets différents.

- Professeur par professeur : un professeur $p$ a $k$ élèves. Il y a $k$ choix pour $e_1$ parmi eux, puis $k - 1$ choix pour $e_2$. Cela fait $k(k-1)$ triplets pour chaque professeur, donc $mk(k-1)$ en tout.
- Couple d'élèves par couple d'élèves : il y a $n$ choix pour $e_1$ et $n - 1$ pour $e_2$, soit $n(n-1)$ couples d'élèves différents. Chaque couple a exactement $\ell$ professeurs en commun, ce qui donne $\ell$ triplets. Cela fait $n(n-1)\ell$ triplets en tout.

Donc

$$mk(k-1) = n(n-1)\ell .$$

## Going further

Dans la situation de la question 2, montrez que tous les élèves ont le même nombre $r$ de professeurs. Pour cela, fixez un élève $e_1$ et comptez de deux façons les couples $(p, e_2)$ où $p$ est un professeur de $e_1$ et $e_2$ un autre élève de $p$. Vous devez trouver $r(k-1) = (n-1)\ell$.
