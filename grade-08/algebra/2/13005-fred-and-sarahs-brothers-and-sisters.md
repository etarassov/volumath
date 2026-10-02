---
id: "13005"
title: "Les frères et sœurs de Fred et Sarah"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [mise-en-equation, systeme, famille]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 3 octobre 2012"
  reference: "2017-09_coupe_automne_2012.pdf, exercices pour les élèves de collège et de seconde, exercice 1 ; corrigé 2017-09_coupe_automne_2012_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2012.pdf"
---

## Statement

Fred et Sarah sont frère et sœur dans une grande famille.

- Fred a deux fois moins de frères que de sœurs.
- Sarah a autant de sœurs que de frères.

Combien d'enfants y a-t-il dans cette famille ?

## Hints

1. Note $f$ le nombre de filles et $g$ le nombre de garçons de la famille.
2. Attention : Fred ne se compte pas parmi ses propres frères. Combien de frères a-t-il ? Combien de sœurs ?
3. Fais de même pour Sarah, puis traduis chacune des deux phrases par une égalité entre $f$ et $g$.

## Solution

Notons $f$ le nombre de filles et $g$ le nombre de garçons dans la famille.

**Ce que dit Fred.** Fred est un garçon. Ses frères sont les autres garçons : il en a $g - 1$. Ses sœurs sont toutes les filles : il en a $f$. Il a deux fois moins de frères que de sœurs, donc il a deux fois plus de sœurs que de frères :
$$f = 2\,(g - 1).$$

**Ce que dit Sarah.** Sarah est une fille. Elle a $f - 1$ sœurs et $g$ frères. Elle en a autant des deux, donc
$$f - 1 = g.$$

**On résout.** On remplace $g$ par $f - 1$ dans la première égalité :
$$f = 2\,(f - 1 - 1) = 2f - 4, \qquad \text{donc} \qquad f = 4.$$
Puis $g = f - 1 = 3$.

**Vérification.** Avec $4$ filles et $3$ garçons, Fred a $2$ frères et $4$ sœurs : il a bien deux fois moins de frères que de sœurs. Sarah a $3$ sœurs et $3$ frères : autant des deux.

**Conclusion.** La famille compte $4 + 3 = 7$ enfants.

## Going further

1. Dans une autre famille, chaque garçon a autant de frères que de sœurs, et chaque fille a deux fois plus de frères que de sœurs. Combien d'enfants compte cette famille ?
