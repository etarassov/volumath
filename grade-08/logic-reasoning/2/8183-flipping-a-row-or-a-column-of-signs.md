---
id: "8183"
title: "Le tableau de signes qui résiste"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 20
tags: [invariant, parite, tableau, signe]
adapted_from: null
see_also: ["7118"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe C"
  reference: "stage_ete_2018.pdf, chapitre V « Groupe C », section 3 « Combinatoire », cours « Monovariants et invariants », exercice 1 (le polycopié ne nomme pas l'auteur du cours)."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Voici un tableau de $4$ lignes et $4$ colonnes, rempli de signes $+$ et $-$ :

|  | col. 1 | col. 2 | col. 3 | col. 4 |
|---|---|---|---|---|
| **ligne 1** | $+$ | $+$ | $-$ | $+$ |
| **ligne 2** | $-$ | $-$ | $+$ | $+$ |
| **ligne 3** | $+$ | $+$ | $+$ | $+$ |
| **ligne 4** | $+$ | $-$ | $+$ | $-$ |

Un coup consiste à choisir une **ligne** entière ou une **colonne** entière, et à changer tous
les signes qu'elle contient : chaque $+$ devient un $-$, chaque $-$ devient un $+$.

Peut-on, en jouant autant de coups qu'on veut, arriver à un tableau qui ne contient que des
$+$ ?

## Hints

1. Essaie. Tu verras que tu n'y arrives pas. Il faut donc trouver une raison, pas un chemin.
2. Compte les signes $-$ du tableau de départ. Combien y en a-t-il ?
3. Quand tu retournes une ligne, combien de signes $-$ gagnes-tu ou perds-tu ? Une ligne a
   quatre cases : si elle contient $k$ signes $-$, combien en contient-elle après le coup ?
4. Le nombre de $-$ change, mais peut-être pas n'importe comment. Regarde s'il est pair ou
   impair.

## Solution

**Comptons les signes $-$ au départ.**

Ligne par ligne :

- ligne $1$ : un $-$ ;
- ligne $2$ : deux $-$ ;
- ligne $3$ : aucun $-$ ;
- ligne $4$ : deux $-$.

En tout : $1 + 2 + 0 + 2 = 5$ signes $-$. C'est un nombre **impair**.

**Ce qui se passe quand on joue un coup.**

Une ligne, comme une colonne, contient exactement $4$ cases. Supposons qu'elle contienne $k$
signes $-$, donc $4 - k$ signes $+$.

Après le coup, les $k$ signes $-$ sont devenus des $+$, et les $4-k$ signes $+$ sont devenus
des $-$. La ligne contient maintenant $4 - k$ signes $-$.

Le nombre total de $-$ dans le tableau a donc varié de
$$(4 - k) - k = 4 - 2k.$$

Ce nombre $4 - 2k$ est **toujours pair**, quel que soit $k$ : c'est $4$ moins un nombre pair.

**La conclusion.**

Chaque coup change le nombre de $-$ d'une quantité paire. Donc ce nombre garde toujours la même
parité : s'il est impair au départ, il reste impair pour toujours.

Au départ il vaut $5$, qui est impair. Le tableau rempli uniquement de $+$ contient $0$ signe
$-$, et $0$ est pair.

On ne pourra donc jamais atteindre ce tableau.

**Réponse : non, c'est impossible.**

## Going further

Le raisonnement montre plus que cela : à partir de ce tableau, on ne peut atteindre **aucune**
configuration ayant un nombre pair de $-$. En particulier, on ne pourra jamais non plus obtenir
un tableau rempli uniquement de $-$, puisqu'il en contiendrait $16$.

En revanche, si le tableau de départ avait contenu un nombre pair de $-$, cet argument ne
dirait plus rien, et il faudrait chercher autre chose.
