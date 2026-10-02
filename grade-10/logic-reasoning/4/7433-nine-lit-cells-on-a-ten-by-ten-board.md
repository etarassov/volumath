---
id: "7433"
title: "Neuf cases allumées sur un plateau 10 × 10"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, perimetre, propagation, impossibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, groupe des débutants"
  reference: "stage_ete_2010.pdf, « Groupe des Débutants », exercices du jour, samedi 21 août, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

On considère un plateau carré de $10 \times 10$ cases. Au départ, $9$ cases sont **allumées** et
toutes les autres sont éteintes ; c'est toi qui choisis lesquelles.

Ensuite, la règle de propagation est la suivante : une case éteinte s'allume dès qu'au moins
**deux** de ses voisines sont allumées. Deux cases sont voisines si elles partagent un côté (les
contacts par un coin ne comptent pas).

Une case allumée ne s'éteint jamais.

Peut-on choisir les $9$ cases de départ de façon que, au bout d'un certain temps, les $100$ cases
soient allumées ?

## Hints

1. Essaie d'abord avec un petit plateau, $3 \times 3$ ou $4 \times 4$, et quelques cases allumées.
   Tu verras vite qu'il faut plus de cases de départ qu'on ne croit.
2. Cherche une quantité qui ne peut pas augmenter. Regarde le **contour** de la région allumée :
   la longueur totale des côtés qui séparent une case allumée d'une case éteinte ou du bord du
   plateau.
3. Quand une case s'allume, elle avait au moins deux côtés en contact avec des cases allumées.
   Combien de côtés le contour perd-il ? Combien en gagne-t-il ?

## Solution

**La réponse est non : c'est impossible.**

**L'invariant : le périmètre de la zone allumée.**

Appelons **périmètre** de la zone allumée la longueur totale de son contour, en prenant le côté
d'une case comme unité. Autrement dit, on compte tous les côtés de cases allumées qui donnent soit
sur une case éteinte, soit sur l'extérieur du plateau.

*Le périmètre ne peut jamais augmenter.*

Quand une case éteinte s'allume, elle avait au moins deux voisines allumées, disons $k \geq 2$.
Regardons ce qui arrive au périmètre.

- Les $k$ côtés qui la séparaient de ses voisines allumées **sortent** du contour : ils ne
  séparent plus une case allumée d'une case éteinte. Le périmètre perd $k$.
- Ses $4 - k$ autres côtés **entrent** dans le contour : ils séparent maintenant la nouvelle case
  allumée d'une case éteinte ou de l'extérieur. Le périmètre gagne $4 - k$.

Le périmètre varie donc de
$$(4 - k) - k = 4 - 2k.$$

Comme $k \geq 2$, ce nombre est inférieur ou égal à $0$ : **le périmètre ne peut que diminuer ou
rester le même.**

**Le périmètre de départ.**

Chaque case allumée a quatre côtés, donc le contour d'une zone formée de $9$ cases a un périmètre
d'au plus
$$9 \times 4 = 36.$$

(Il est souvent plus petit, car deux cases allumées voisines suppriment deux côtés du contour.
Mais nous n'avons besoin que de cette majoration.)

**Le périmètre d'arrivée.**

Si les $100$ cases étaient allumées, la zone allumée serait le plateau tout entier, dont le
contour est le bord du carré : son périmètre vaut
$$4 \times 10 = 40.$$

**La contradiction.**

Le périmètre partirait d'une valeur au plus égale à $36$ et devrait atteindre $40$, alors qu'il ne
peut jamais augmenter. C'est impossible.

**Conclusion : quelles que soient les $9$ cases choisies au départ, on n'allumera jamais tout le
plateau.**

## Going further

Avec $10$ cases allumées au départ, peut-on y arriver ? Trouve une disposition qui marche.
Conclusion : le nombre $10$ est exactement le minimum pour un plateau $10 \times 10$.
