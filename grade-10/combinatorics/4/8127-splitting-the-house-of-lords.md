---
id: "8127"
title: "Partager la Chambre des Lords"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe-de-l-extremum, graphe, coloriage-en-deux-groupes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Principe de l'extremum », exercice 10"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

La Chambre des Lords compte un nombre fini de membres. Certains Lords sont ennemis ; l'inimitié est réciproque, et chaque Lord a **au plus trois** ennemis.

La Reine veut séparer la Chambre en deux groupes, de façon que chaque Lord ait **au plus un** ennemi dans son propre groupe.

Est-ce toujours possible ?

## Hints

1. Il y a un nombre fini de façons de séparer la Chambre en deux groupes. On peut donc en choisir une « meilleure » : reste à décider pour quel critère.
2. Ce qui gêne la Reine, ce sont les paires d'ennemis qui se retrouvent dans le même groupe. Compte-les.
3. Choisis un partage qui rend ce nombre le plus petit possible, puis montre qu'il convient.
4. Suppose qu'un Lord ait deux ennemis ou plus dans son groupe. Combien en a-t-il alors dans l'autre groupe ? Que se passe-t-il si on le déménage ?

## Solution

**Oui, c'est toujours possible.**

**Le partage que l'on choisit.**

Un partage de la Chambre, c'est une façon de ranger chaque Lord dans l'un des deux groupes. Comme la Chambre est finie, il y a un nombre fini de partages possibles.

Pour chaque partage, comptons le nombre de **paires gênantes** : les paires de Lords ennemis qui se trouvent dans le même groupe.

Parmi tous les partages possibles, choisissons-en un pour lequel ce nombre de paires gênantes est le plus petit possible. Montrons que ce partage-là convient à la Reine.

**Pourquoi il convient.**

Raisonnons par l'absurde. Supposons qu'il existe un Lord $L$ ayant au moins deux ennemis dans son propre groupe.

Comme $L$ a au plus trois ennemis en tout, il lui en reste au plus un dans l'autre groupe.

Déménageons $L$ dans l'autre groupe, et regardons comment varie le nombre de paires gênantes. Les paires qui ne font pas intervenir $L$ ne changent pas ; seules celles qui contiennent $L$ sont touchées :

- les paires gênantes formées par $L$ et un ennemi de son ancien groupe disparaissent : il y en avait au moins $2$ ;
- de nouvelles paires gênantes apparaissent, formées par $L$ et ses ennemis du nouveau groupe : il y en a au plus $1$.

Le nombre de paires gênantes a donc diminué d'au moins $2 - 1 = 1$ : il est strictement plus petit qu'avant.

C'est impossible, puisque nous avions choisi un partage rendant ce nombre minimal.

**Conclusion.**

Aucun Lord n'a deux ennemis ou plus dans son propre groupe : chaque Lord en a au plus un. La Reine peut donc toujours réaliser son partage.

## Going further

Le raisonnement n'utilise le nombre $3$ qu'à un seul endroit : il faut que « au plus un ennemi dans l'autre groupe » découle de « au moins deux ennemis dans son groupe ». La même démonstration montre donc : si chaque personne a au plus $2k+1$ ennemis, on peut faire deux groupes où chacun a au plus $k$ ennemis dans son groupe.
