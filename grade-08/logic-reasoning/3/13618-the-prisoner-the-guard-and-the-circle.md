---
id: "13618"
title: "Le prisonnier, le gardien et le cercle"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [strategie, jeu, pythagore, distance, racine-carree]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2012 (test de sélection du stage olympique de Montpellier, 5 juin 2012)"
  reference: "2017-09_coupe_printemps_2012_3.pdf, épreuve collège, exercice 2 (aussi exercice 2 de l'épreuve des secondes, 2017-09_coupe_printemps_2012_2.pdf) ; corrigé 2017-09_coupe_printemps_2012_corrige.pdf, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2012_3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2012_3.pdf"
---

## Statement

Un prisonnier se trouve au centre d'un cercle de rayon $10$ mètres. Chaque minute, il annonce une direction dans laquelle il veut avancer (n'importe laquelle, il y en a une infinité). Le gardien choisit alors : soit cette direction, soit la direction opposée. Puis le prisonnier avance d'un mètre dans la direction choisie par le gardien.

Le prisonnier a-t-il une stratégie qui lui garantit de sortir du cercle au bout d'un certain temps, même si le gardien fait tout pour l'en empêcher ?

## Hints

1. Le gardien choisit entre deux directions opposées. Peux-tu annoncer une direction telle que les deux choix du gardien t'éloignent du centre exactement autant l'un que l'autre ?
2. Pense à une direction perpendiculaire à la droite qui te relie au centre.
3. Avec le théorème de Pythagore, compare le carré de ta distance au centre avant et après une minute.
4. S'éloigner un peu à chaque minute ne suffit pas forcément pour sortir : il faut savoir de combien on s'éloigne.

## Solution

La réponse est **oui**. On note $O$ le centre du cercle et $P_n$ la position du prisonnier au bout de $n$ minutes. Les longueurs sont en mètres.

**La stratégie.**

- À la première minute, le prisonnier annonce n'importe quelle direction. Quel que soit le choix du gardien, il arrive en un point $P_1$ tel que $OP_1 = 1$.
- Ensuite, à chaque minute, le prisonnier, qui est en $P_n$, annonce une direction **perpendiculaire à la droite $(OP_n)$**.

![Les deux choix possibles du gardien depuis le point Pn, tous deux perpendiculaires à la droite (OPn)](13618-figure-1.svg)

**Le gardien n'y peut rien.** Les deux directions entre lesquelles le gardien choisit sont toutes les deux perpendiculaires à $(OP_n)$. Dans les deux cas, le prisonnier arrive en un point $P_{n+1}$ tel que le triangle $OP_nP_{n+1}$ est rectangle en $P_n$, avec $P_nP_{n+1} = 1$. D'après le théorème de Pythagore,

$$OP_{n+1}^2 = OP_n^2 + P_nP_{n+1}^2 = OP_n^2 + 1 .$$

Le choix du gardien ne change rien à la nouvelle distance au centre.

**De combien on s'éloigne.** On sait que $OP_1^2 = 1$, et le carré de la distance augmente de $1$ à chaque minute. Donc $OP_2^2 = 2$, $OP_3^2 = 3$, et ainsi de suite : au bout de $n$ minutes,

$$OP_n^2 = n, \qquad \text{donc} \qquad OP_n = \sqrt{n} .$$

Au bout de $100$ minutes, le prisonnier est à $\sqrt{100} = 10$ mètres du centre : il est sur le cercle. À la minute suivante, il est à $\sqrt{101} > 10$ mètres du centre : il est sorti.

**Pourquoi il fallait calculer.** Savoir seulement que la distance au centre augmente à chaque minute ne suffirait pas. Une distance qui augmente un peu moins à chaque fois peut très bien ne jamais dépasser $10$ : par exemple, les nombres $\text{1,9}$ ; $\text{1,99}$ ; $\text{1,999}$ ; ... augmentent toujours mais restent tous plus petits que $2$. Ici, le calcul montre que le carré de la distance augmente chaque fois de $1$ entier, ce qui garantit la sortie.

**Conclusion.** Oui. En annonçant toujours une direction perpendiculaire à la droite qui le relie au centre, le prisonnier est sûr d'atteindre le cercle au bout de $100$ minutes, et d'en être sorti au bout de $101$ minutes.

## Going further

Avec la même stratégie, combien de minutes faut-il pour sortir d'un cercle de rayon $100$ mètres ? Et d'un cercle de rayon $R$ mètres, quand $R$ est un nombre entier ?
