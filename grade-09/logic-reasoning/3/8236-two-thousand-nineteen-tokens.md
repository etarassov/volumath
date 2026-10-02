---
id: "8236"
title: "Deux mille dix-neuf jetons, et des piles de dix"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, piles, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Stratégie des jeux » (Félix Breton, Andrei Barbu), section Invariants, exercice 7"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On part d'une seule pile de $2019$ jetons.

À chaque étape, on choisit une pile contenant **au moins $3$ jetons**, on en jette un à la poubelle, puis on sépare les jetons restants de cette pile en **deux nouvelles piles non vides**.

Peut-on arriver à une situation où toutes les piles contiennent exactement $10$ jetons ?

## Hints

1. Une étape change deux choses : le nombre de jetons et le nombre de piles. Regarde comment chacun varie.
2. Le nombre de jetons baisse de $1$. Et le nombre de piles ?
3. Si l'un baisse de $1$ et l'autre monte de $1$, quelle combinaison des deux ne bouge pas ?
4. Calcule cette quantité au départ, puis à l'arrivée souhaitée, en appelant $k$ le nombre de piles finales.

## Solution

**L'invariant.**

Regardons ce que fait une étape.

- *Les jetons.* On en jette un seul, donc le nombre total de jetons **diminue de $1$**.
- *Les piles.* On supprime une pile et on en crée deux, donc le nombre de piles **augmente de $1$**.

La somme

$$S = (\text{nombre de jetons}) + (\text{nombre de piles})$$

varie donc de $-1 + 1 = 0$ : elle ne change **jamais**.

**Sa valeur au départ.**

Au début, il y a $2019$ jetons répartis en $1$ pile, donc

$$S = 2019 + 1 = 2020 .$$

**Sa valeur à l'arrivée.**

Supposons qu'on arrive à une situation où toutes les piles ont $10$ jetons. Notons $k$ le nombre de piles. Il y a alors $10k$ jetons et $k$ piles, donc

$$S = 10k + k = 11k .$$

**La contradiction.**

Il faudrait donc $11k = 2020$. Or

$$2020 = 11 \times 183 + 7 ,$$

donc $2020$ n'est pas un multiple de $11$, et aucun entier $k$ ne convient.

$$\boxed{\text{Non, c'est impossible.}}$$

**Remarque.** On n'a jamais eu besoin de savoir *comment* on sépare les piles, ni dans quel ordre on joue. C'est la force d'un invariant : il ferme la question d'un coup, sans explorer le moindre cas.

**Un contre-point utile.** Un invariant prouve qu'on ne peut **pas** atteindre une situation ; il ne prouve jamais qu'on peut l'atteindre. Ici, par exemple, un départ à $2020$ jetons donnerait $S = 2021$, qui n'est pas non plus un multiple de $11$ : encore impossible. Un départ à $2021$ jetons donnerait $S = 2022 = 11 \times 183 + 9$ : toujours impossible. Le test ne dit rien de plus que « impossible » ou « peut-être » ; quand il dit « peut-être », il reste à construire la solution à la main.

## Going further

1. Pour quelles valeurs du nombre initial de jetons le test de l'invariant est-il franchi, c'est-à-dire pour lesquelles $S$ est-il un multiple de $11$ ?
2. Pour l'une de ces valeurs, construire effectivement une suite d'étapes qui aboutit à des piles de $10$ jetons.
