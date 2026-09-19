---
id: "2821"
title: "Le disque posé au hasard sur la table"
grade: 10
theme: probability-statistics
difficulty: 2
duration_min: 20
tags: [probabilite, aire, geometrie, proportion]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II, Counting and probabilities"
  reference: "Handout-854-941.pdf, problème 9 (mesures converties en unités métriques)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-854-941.pdf"
---

## Statement

Une table a un plateau carré de $\text{1,5}$ m de côté.

On choisit un point $C$ au hasard sur le plateau, chaque endroit ayant la même chance d'être choisi. On pose alors sur la table un disque de rayon $30$ cm, de façon que son centre tombe exactement sur $C$.

Quelle est la probabilité que le disque repose **entièrement** sur la table, c'est-à-dire qu'aucune partie du disque ne dépasse d'un bord ?

## Hints

1. Fais un dessin du plateau vu de dessus, et place un disque qui dépasse à peine d'un bord. Où se trouve son centre ?
2. Traduis la condition « le disque ne dépasse pas » par une condition portant uniquement sur le **centre** $C$ : à quelle distance minimale de chaque bord doit-il se trouver ?
3. L'ensemble des positions possibles du centre forme une figure simple à l'intérieur du carré. Laquelle, et quelles sont ses dimensions ?
4. Quand un point est choisi au hasard dans une figure, la probabilité qu'il tombe dans une partie donnée est le rapport des aires.
5. Attention aux unités : ramène tout en mètres, ou tout en centimètres.

## Solution

**Traduire la condition sur le centre.**

Passons tout en centimètres : le plateau est un carré de côté $150$ cm, et le disque a un rayon de $30$ cm.

Le disque déborde d'un bord si et seulement si son centre se trouve à moins de $30$ cm de ce bord. Le disque repose donc entièrement sur la table si et seulement si son centre $C$ est à une distance **supérieure ou égale à $30$ cm de chacun des quatre bords**.

**La zone favorable.**

Écartons-nous de $30$ cm de chacun des quatre côtés du carré. On perd une bande de $30$ cm à gauche et une de $30$ cm à droite, donc $60$ cm sur la largeur ; de même $60$ cm sur la hauteur.

Ce qui reste est un carré de côté

$$150 - 30 - 30 = 90 \text{ cm},$$

centré sur le plateau. C'est exactement l'ensemble des positions favorables du centre.

**Le calcul de la probabilité.**

Le point $C$ étant choisi au hasard de façon uniforme sur le plateau, la probabilité qu'il tombe dans une région donnée est le rapport de l'aire de cette région à l'aire totale du plateau :

$$P = \frac{\text{aire du carré favorable}}{\text{aire du plateau}} = \frac{90^2}{150^2} = \frac{8100}{22\,500}.$$

Simplifions en remarquant que $\dfrac{90}{150} = \dfrac{3}{5}$ :

$$P = \left(\frac{3}{5}\right)^2 = \frac{9}{25} = \text{0,36}.$$

**Conclusion.** La probabilité que le disque repose entièrement sur la table vaut

$$\frac{9}{25} = \text{0,36},$$

soit $36\,\%$.

**Ce qui est surprenant.** Le disque est petit : son rayon ne représente qu'un cinquième du côté. Pourtant il a près de deux chances sur trois de déborder. La raison est que la zone interdite est une bande tout le tour du plateau, et qu'une bande fine le long d'un long périmètre représente une grande surface.

## Going further

1. Quel devrait être le rayon du disque pour que la probabilité soit exactement de $\dfrac12$ ?
2. À partir de quel rayon la probabilité devient-elle nulle ?
3. Reprendre la question avec un plateau **rond** de $\text{1,5}$ m de diamètre et le même disque de rayon $30$ cm.
