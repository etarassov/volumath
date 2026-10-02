---
id: "8036"
title: "Un cube ne vaut jamais 4n + 2"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [parite, cube, divisibilite, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, groupe A : arithmétique, mercredi 23 après-midi (Rémi Lesbats), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Trouver tous les couples d'entiers relatifs $(m, n)$ tels que

$$m^3 = 4n + 2 .$$

## Hints

1. Le nombre $4n + 2$ est-il pair ou impair ? Qu'est-ce que cela impose à $m$ ?
2. Écris $m = 2k$ et remplace. Que devient l'égalité ?
3. Compare la divisibilité par $8$ des deux membres.

## Solution

**Le membre de droite est pair.** En effet $4n + 2 = 2\,(2n + 1)$.

**Donc $m$ est pair.** Si $m$ était impair, $m^3 = m \times m \times m$ serait impair (un
produit de nombres impairs est impair), alors que le membre de droite est pair. Donc $m$ est
pair : écrivons $m = 2k$ avec $k$ entier.

**On remplace.**

$$m^3 = (2k)^3 = 8k^3 ,$$

donc l'égalité devient

$$8k^3 = 4n + 2 .$$

**On divise par $2$.**

$$4k^3 = 2n + 1 .$$

**La contradiction.** Le membre de gauche, $4k^3$, est pair. Le membre de droite, $2n + 1$,
est impair. Ils ne peuvent pas être égaux.

**Il n'existe aucun couple d'entiers $(m, n)$ tel que $m^3 = 4n + 2$.**

## Going further

Autrement dit : un cube d'entier ne laisse jamais le reste $2$ dans la division par $4$. La
raison de fond est que $4n+2$ est divisible par $2$ mais pas par $4$, alors qu'un cube pair
est toujours divisible par $8$. Un cube « saute » donc par-dessus les nombres qui sont pairs
sans être multiples de $8$.

Le même raisonnement montre qu'un cube n'est jamais de la forme $4n - 2$, ni de la forme
$8n + 4$, ni de la forme $8n + 2$, ni de la forme $8n + 6$.
