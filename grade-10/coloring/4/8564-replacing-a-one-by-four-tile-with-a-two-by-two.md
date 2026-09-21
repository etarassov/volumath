---
id: "8564"
title: "Une pièce 1×4 remplacée par une pièce 2×2"
grade: 10
theme: coloring
difficulty: 4
duration_min: 35
tags: [coloriage, invariant, parite, pavage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Invariants » (Xavier) du Groupe A, exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Sur du papier quadrillé, on a dessiné une figure faite de carreaux, et on a réussi à la
recouvrir exactement avec des pièces $2 \times 2$ et des pièces $1 \times 4$ : chaque pièce
couvre quatre carreaux, les pièces ne se chevauchent pas et ne dépassent pas de la figure.

Une pièce $1 \times 4$ se casse. On la remplace par une pièce $2 \times 2$ de plus, les
autres pièces restant les mêmes.

Peut-on encore recouvrir exactement la même figure ?

## Hints

1. La réponse est non. Il faut donc trouver une quantité qui ne change pas quand on change de recouvrement, et qui distingue les deux jeux de pièces.
2. Numérote les lignes et les colonnes du quadrillage par des entiers, et noircis certains carreaux bien choisis.
3. Essaie de noircir les carreaux dont le numéro de ligne **et** le numéro de colonne sont pairs. Combien de carreaux noirs une pièce $2 \times 2$ couvre-t-elle ? Et une pièce $1 \times 4$ ?
4. Regarde la parité du nombre total de carreaux noirs de la figure.

## Solution

**La réponse est non.**

### Le coloriage

Numérotons les lignes et les colonnes du quadrillage par des entiers. Noircissons les
carreaux dont le numéro de ligne **et** le numéro de colonne sont tous les deux **pairs**.

Le nombre de carreaux noirs de la figure ne dépend que de la figure : il ne change pas quand
on change de recouvrement. Appelons-le $N$.

### Ce que couvre chaque pièce

**Une pièce $2 \times 2$** occupe deux lignes consécutives et deux colonnes consécutives.
Parmi deux entiers consécutifs il y a exactement un nombre pair : il y a donc exactement une
ligne paire et exactement une colonne paire. La pièce couvre donc **exactement $1$ carreau
noir**.

**Une pièce $1 \times 4$ horizontale** occupe une seule ligne et quatre colonnes
consécutives.

- Si sa ligne est impaire, elle ne couvre **aucun** carreau noir.
- Si sa ligne est paire, il faut compter les colonnes paires parmi quatre consécutives : il y
  en a exactement $2$. Elle couvre donc **$2$ carreaux noirs**.

Une pièce $1 \times 4$ verticale se traite de la même façon, en échangeant les rôles des
lignes et des colonnes : elle couvre $0$ ou $2$ carreaux noirs.

Dans tous les cas, une pièce $1 \times 4$ couvre un **nombre pair** de carreaux noirs.

### L'invariant

Additionnons sur toutes les pièces d'un recouvrement. Si le recouvrement utilise $p$ pièces
$2 \times 2$, alors

$$N = p \times 1 + (\text{un nombre pair}) ,$$

donc

$$N \text{ et } p \text{ ont la même parité} .$$

Autrement dit : **le nombre de pièces $2 \times 2$ d'un recouvrement de la figure a toujours
la même parité**, quel que soit le recouvrement.

### Conclusion

Le nouveau jeu de pièces contient une pièce $2 \times 2$ de plus que l'ancien : le nombre $p$
augmenterait de $1$, et changerait donc de parité. C'est impossible.

On ne peut donc pas recouvrir la même figure après l'échange.
