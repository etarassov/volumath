---
id: "7751"
title: "Les deux feux du phare"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [ppcm, multiples, congruences, probleme concret]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : arithmétique », lundi 25 matin (Nicolas Ségarra), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Un phare porte deux feux.

Le feu jaune s'allume pour la première fois $2$ secondes après la mise en route, puis toutes les $15$ secondes.

Le feu rouge s'allume pour la première fois $8$ secondes après la mise en route, puis toutes les $28$ secondes.

Au bout de combien de temps les deux feux s'allument-ils pour la première fois en même temps ?

## Hints

1. Écris les premiers instants où chaque feu s'allume : $2$, $17$, $32$, … pour le jaune, et $8$, $36$, $64$, … pour le rouge. Continuer la liste finit par marcher, mais c'est long : cherche mieux.
2. Appelle $t$ l'instant cherché. Traduis « le jaune s'allume à l'instant $t$ » par : $t - 2$ est un multiple de $15$. Fais de même pour le rouge.
3. Tu cherches donc $t$ tel que $t - 2$ soit multiple de $15$ **et** $t - 8$ multiple de $28$. Écris $t = 2 + 15k$ et reporte dans la seconde condition.
4. Tu arrives à : $15k - 6$ doit être un multiple de $28$. Teste $k = 0, 1, 2, \ldots$ jusqu'à tomber juste ; il n'y a que $28$ valeurs à examiner au pire.

## Solution

**Les deux feux s'allument ensemble pour la première fois au bout de $92$ secondes, soit $1$ minute et $32$ secondes.**

**Mise en équation.** Notons $t$ le temps écoulé, en secondes, depuis la mise en route.

Le feu jaune s'allume aux instants $2, 17, 32, 47, \ldots$, c'est-à-dire exactement quand $t - 2$ est un multiple de $15$.

Le feu rouge s'allume aux instants $8, 36, 64, \ldots$, c'est-à-dire exactement quand $t - 8$ est un multiple de $28$.

On cherche le plus petit $t$ qui vérifie les deux conditions à la fois.

**On utilise la première condition.** Puisque $t - 2$ est un multiple de $15$, écrivons

$$t = 2 + 15k, \qquad k \text{ entier } \geqslant 0 .$$

**On reporte dans la seconde.** Il faut que $t - 8$ soit un multiple de $28$, c'est-à-dire que

$$2 + 15k - 8 = 15k - 6$$

soit un multiple de $28$.

**On cherche $k$.** Calculons $15k - 6$ pour les premières valeurs de $k$ et regardons le reste dans la division par $28$ :

| $k$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| $15k - 6$ | $-6$ | $9$ | $24$ | $39$ | $54$ | $69$ | $84$ |
| reste par $28$ | $22$ | $9$ | $24$ | $11$ | $26$ | $13$ | $0$ |

Pour $k = 6$ on obtient $84 = 28 \times 3$ : c'est bien un multiple de $28$.

**On conclut.** Avec $k = 6$,

$$t = 2 + 15 \times 6 = 92 .$$

Vérifions : $92 - 2 = 90 = 15 \times 6$, donc le jaune s'allume bien à cet instant ; et $92 - 8 = 84 = 28 \times 3$, donc le rouge aussi.

Aucune valeur de $k$ inférieure à $6$ ne convient, d'après le tableau. Comme $t$ croît avec $k$, l'instant $t = 92$ est bien le premier.

**Conclusion : les deux feux brillent ensemble pour la première fois au bout de $92$ secondes, soit $1$ min $32$ s.**

## Going further

Une fois cette première coïncidence trouvée, les suivantes sont faciles : les deux feux se retrouvent ensemble tous les $\mathrm{PPCM}(15, 28)$ secondes. Comme $15 = 3 \times 5$ et $28 = 2^2 \times 7$ n'ont aucun facteur commun, ce PPCM vaut $15 \times 28 = 420$ secondes, soit $7$ minutes.

Les instants de coïncidence sont donc $92$ s, $512$ s, $932$ s, et ainsi de suite.
