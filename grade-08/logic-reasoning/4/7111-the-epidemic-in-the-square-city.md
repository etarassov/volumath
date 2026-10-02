---
id: "7111"
title: "L'épidémie dans la ville carrée"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, perimetre, quadrillage, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2016"
  reference: "stage_junior_2016.pdf, « Débutants : stratégies de base », l'après-midi (Colin Davalo), exercice 18 (énoncé seul, sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2016.pdf"
---

## Statement

Une ville a la forme d'un carré $10 \times 10$, découpé en $100$ quartiers carrés. Deux
quartiers sont **voisins** lorsqu'ils partagent un côté.

Une épidémie se répand. Au départ, $9$ quartiers sont contaminés. Ensuite, un quartier sain
devient contaminé dès qu'**au moins deux** de ses voisins le sont, et un quartier contaminé
le reste pour toujours.

La ville peut-elle finir entièrement contaminée ?

## Hints

1. Essaie sur une petite ville, $3 \times 3$ par exemple, en partant de quelques quartiers.
   Cherche une quantité qui ne grandit jamais.
2. Regarde le **contour** de la zone contaminée : la longueur totale des côtés de quartiers
   qui séparent un quartier contaminé d'un quartier sain ou de l'extérieur de la ville.
3. Quand un quartier devient contaminé, combien de côtés de contour disparaissent ? Combien
   en apparaissent au plus ?
4. Combien vaut ce contour au départ, au maximum ? Et quand toute la ville est contaminée ?

## Solution

**La réponse est non.**

**Le périmètre de la zone contaminée.** À chaque instant, considérons la figure formée par
les quartiers contaminés, et mesurons son **périmètre** : le nombre de côtés de quartiers
qui séparent un quartier contaminé d'un quartier sain, ou d'un quartier contaminé de
l'extérieur de la ville. On prend le côté d'un quartier pour unité de longueur.

**Le périmètre ne grandit jamais.** Supposons qu'un quartier $Q$ devienne contaminé. C'est
qu'au moins deux de ses quatre voisins l'étaient déjà. Regardons les quatre côtés de $Q$.

- Les côtés partagés avec un voisin déjà contaminé faisaient partie du périmètre avant ;
  après, ils séparent deux quartiers contaminés, donc ils **sortent** du périmètre. Il y en
  a au moins deux.
- Les autres côtés de $Q$ (au plus deux) **entrent** dans le périmètre, puisqu'ils séparent
  désormais $Q$, contaminé, d'un quartier sain ou de l'extérieur.

Le périmètre perd donc au moins $2$ unités et en gagne au plus $2$ : **il ne peut pas
augmenter.**

**Sa valeur au départ.** Au départ il y a $9$ quartiers contaminés. Chaque quartier a $4$
côtés, donc le périmètre de la zone contaminée vaut au plus

$$9 \times 4 = 36 .$$

(Il vaut exactement $36$ si les neuf quartiers sont séparés les uns des autres, et moins
s'ils se touchent.)

**Sa valeur à l'arrivée.** Si toute la ville était contaminée, la zone contaminée serait le
carré $10 \times 10$ tout entier, dont le périmètre vaut

$$4 \times 10 = 40 .$$

**Conclusion.** Le périmètre part d'une valeur au plus égale à $36$ et ne grandit jamais ;
il ne pourra donc jamais atteindre $40$. **La ville ne peut pas être entièrement
contaminée.**

## Going further

Le raisonnement donne davantage que la réponse : il indique **combien** de quartiers il
faudrait contaminer au départ. Pour espérer atteindre un périmètre de $40$, il faut partir
d'au moins $40 : 4 = 10$ quartiers contaminés.

Et dix suffisent : il suffit de contaminer au départ les dix quartiers de la diagonale. Fais
le dessin et regarde l'épidémie se propager, case par case, jusqu'à remplir la ville. Le
nombre $10$ est donc exactement le minimum, et le même raisonnement donne $n$ pour une ville
$n \times n$.
