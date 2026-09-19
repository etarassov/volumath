---
id: "4612"
title: "Au plus trois angles aigus"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [polygone, angles, convexe, majoration, demonstration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners, Geometry II"
  reference: "Handout-1181-1189.pdf, section « Angles in a Polygon », exercice 3 (réponse dans Handout-1193-1189.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1181-1189.pdf"
---

## Statement

On considère un polygone **convexe** à $11$ côtés. Convexe veut dire que tous ses angles
intérieurs mesurent moins de $180°$.

Un angle est dit **aigu** quand il mesure moins de $90°$.

Montrer qu'un tel polygone possède au plus $3$ angles aigus.

## Hints

1. Commence par calculer la somme des $11$ angles intérieurs. Un polygone à $n$ côtés se découpe
   en triangles à partir d'un sommet : combien de triangles obtiens-tu ?
2. Raisonne par l'absurde : suppose qu'il y ait au moins $4$ angles aigus.
3. Majore la somme des $11$ angles : les $4$ angles aigus mesurent chacun moins de $90°$, et les
   $7$ autres mesurent chacun moins de $180°$, puisque le polygone est convexe.
4. Compare le majorant que tu obtiens avec la vraie valeur de la somme.

## Solution

**Étape 1 : la somme des angles intérieurs.**

Choisissons un sommet et traçons toutes les diagonales issues de ce sommet. Un polygone à $11$
côtés se découpe ainsi en $11 - 2 = 9$ triangles, et la somme de ses angles intérieurs est la
somme de tous les angles de ces $9$ triangles :
$$9 \times 180° = 1620° .$$

**Étape 2 : le raisonnement par l'absurde.**

Supposons qu'au moins $4$ des $11$ angles soient aigus. Prenons-en exactement $4$ parmi eux, et
appelons « autres » les $7$ angles restants.

- Chacun des $4$ angles aigus mesure strictement moins de $90°$, donc leur somme est strictement
  inférieure à $4 \times 90° = 360°$.
- Le polygone est convexe, donc chacun des $7$ autres angles mesure strictement moins de $180°$,
  et leur somme est strictement inférieure à $7 \times 180° = 1260°$.

En additionnant, la somme des $11$ angles intérieurs serait strictement inférieure à
$$360° + 1260° = 1620° .$$

**Étape 3 : la contradiction.**

Mais cette somme vaut exactement $1620°$, d'après l'étape 1. On aurait donc $1620° < 1620°$, ce
qui est absurde.

**Conclusion.** Un polygone convexe à $11$ côtés a au plus $3$ angles aigus.

## Going further

Le nombre $11$ ne joue aucun rôle. Reprends la démonstration pour un polygone convexe à $n$
côtés : la somme des angles vaut $(n-2) \times 180°$, et quatre angles aigus donneraient une
somme strictement inférieure à
$$4 \times 90° + (n-4) \times 180° = 360° + (n-4) \times 180° = (n-2) \times 180° ,$$
la même contradiction. **Aucun polygone convexe, quel que soit son nombre de côtés, n'a plus de
trois angles aigus.**

Et $3$ angles aigus, est-ce vraiment atteignable ? Oui : un triangle dont les trois angles sont
aigus en donne déjà un exemple, et on peut en construire à $11$ côtés en partant d'un triangle
aigu et en « rabotant » très légèrement ses côtés pour créer huit sommets supplémentaires dont
les angles sont presque plats.
