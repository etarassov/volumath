---
id: "7416"
title: "Le cube et ses arêtes"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, cube, coloriage, impossibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, incontournable : stratégies de base"
  reference: "stage_ete_2011.pdf, « Première période », incontournable stratégies de base, second TD, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On considère un cube $ABCDEFGH$, où $ABCD$ est la face du dessous et $EFGH$ celle du dessus,
$E$ étant au-dessus de $A$, $F$ au-dessus de $B$, $G$ au-dessus de $C$ et $H$ au-dessus de $D$.

On écrit un entier naturel à chaque sommet. Au départ, on écrit $1$ en $A$, $1$ en $C$, et $0$ à
chacun des six autres sommets.

Un coup consiste à choisir une **arête** du cube et à ajouter $1$ aux deux nombres écrits à ses
extrémités.

Peut-on, au bout d'un certain nombre de coups, arriver à ce que les huit sommets portent tous le
même nombre ?

## Hints

1. Joue quelques coups. Cherche une quantité qui ne change pas, ou qui change toujours de la même
   façon.
2. Essaie de partager les huit sommets en deux groupes de quatre, de telle sorte qu'une arête
   relie toujours un sommet d'un groupe à un sommet de l'autre. (Pense à colorier le cube comme un
   damier.)
3. Note $S_1$ la somme des nombres du premier groupe et $S_2$ celle du second. Que devient
   $S_1 - S_2$ après un coup ?

## Solution

**La réponse est non : c'est impossible.**

**Un partage en deux groupes.**

Partageons les huit sommets en deux groupes :
$$E_1 = \{A,\ C,\ F,\ H\}, \qquad E_2 = \{B,\ D,\ E,\ G\}.$$

Vérifions que **toute arête du cube relie un sommet de $E_1$ à un sommet de $E_2$**.

- Arêtes de la face du dessous : $AB$, $BC$, $CD$, $DA$. Elles relient bien $\{A, C\}$ à
  $\{B, D\}$.
- Arêtes de la face du dessus : $EF$, $FG$, $GH$, $HE$. Elles relient bien $\{F, H\}$ à
  $\{E, G\}$.
- Arêtes verticales : $AE$, $BF$, $CG$, $DH$. Chacune relie un sommet du bas à celui juste
  au-dessus, et on voit dans la liste que $A \in E_1$ et $E \in E_2$, $B \in E_2$ et $F \in E_1$,
  $C \in E_1$ et $G \in E_2$, $D \in E_2$ et $H \in E_1$.

Ce partage est simplement le coloriage du cube « en damier » : deux sommets voisins ne sont jamais
dans le même groupe.

**L'invariant.**

Notons $S_1$ la somme des quatre nombres écrits sur $E_1$, et $S_2$ celle des quatre nombres
écrits sur $E_2$.

Un coup choisit une arête, donc ajoute $1$ à un sommet de $E_1$ **et** $1$ à un sommet de $E_2$.
Après le coup, $S_1$ a augmenté de $1$ et $S_2$ aussi.

La différence $S_1 - S_2$ **ne change donc jamais**.

**Conclusion.**

Au départ, $S_1 = 1 + 1 + 0 + 0 = 2$ (les $1$ sont en $A$ et $C$, tous deux dans $E_1$) et
$S_2 = 0$. Donc
$$S_1 - S_2 = 2$$
à tout instant.

Si les huit sommets portaient tous le même nombre $m$, on aurait $S_1 = 4m$ et $S_2 = 4m$, donc
$S_1 - S_2 = 0$. Or cette différence vaut $2$ : c'est impossible.

**On ne peut donc jamais rendre les huit nombres égaux.**

## Going further

Et si on partait de $1$ en $A$ et $1$ en $B$ (deux sommets **voisins**), tout le reste à $0$ ?
Est-ce encore impossible ? Et si on partait de $1$ en $A$ seulement ?
