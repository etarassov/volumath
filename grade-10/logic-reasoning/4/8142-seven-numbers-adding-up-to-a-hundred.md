---
id: "8142"
title: "Sept nombres dont la somme fait 100"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [inegalite, raisonnement-par-l-absurde, entiers-distincts]
adapted_from: null
see_also: ["7305"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 1, exercice 6 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On se donne sept entiers strictement positifs, deux à deux distincts, dont la somme vaut $100$.

Montrer qu'on peut en choisir trois dont la somme vaut au moins $50$.

## Hints

1. Range les sept entiers dans l'ordre décroissant : $a_1 > a_2 > \cdots > a_7$. Quels sont les trois que tu vas essayer de choisir ?
2. Raisonne par l'absurde : suppose que $a_1 + a_2 + a_3 \leq 49$, donc que $a_4 + a_5 + a_6 + a_7 \geq 51$.
3. Les quatre derniers sont distincts et rangés dans l'ordre décroissant : majore leur somme en fonction de $a_4$ seul.
4. Tu obtiens une minoration de $a_4$. Remonte alors à $a_3$, $a_2$, $a_1$ et calcule la somme totale.

## Solution

Rangeons les sept entiers dans l'ordre décroissant :

$$a_1 > a_2 > a_3 > a_4 > a_5 > a_6 > a_7 \geq 1, \qquad a_1 + a_2 + \cdots + a_7 = 100.$$

Nous allons montrer que les trois plus grands suffisent, c'est-à-dire que

$$a_1 + a_2 + a_3 \geq 50.$$

**Raisonnement par l'absurde.**

Supposons le contraire : $a_1 + a_2 + a_3 \leq 49$. Comme la somme totale vaut $100$, cela donne

$$a_4 + a_5 + a_6 + a_7 \geq 100 - 49 = 51.$$

**Étape 1 : $a_4$ est grand.**

Les entiers $a_4 > a_5 > a_6 > a_7$ sont des entiers distincts rangés dans l'ordre décroissant, donc

$$a_5 \leq a_4 - 1, \qquad a_6 \leq a_4 - 2, \qquad a_7 \leq a_4 - 3.$$

En additionnant :

$$a_4 + a_5 + a_6 + a_7 \leq 4a_4 - 6.$$

En combinant avec $a_4 + a_5 + a_6 + a_7 \geq 51$ :

$$4a_4 - 6 \geq 51, \qquad \text{donc} \qquad a_4 \geq \frac{57}{4} = 14{,}25,$$

et comme $a_4$ est un entier, $a_4 \geq 15$.

**Étape 2 : les trois premiers aussi.**

Les entiers $a_1 > a_2 > a_3 > a_4$ sont distincts et décroissants, donc

$$a_3 \geq a_4 + 1 \geq 16, \qquad a_2 \geq a_4 + 2 \geq 17, \qquad a_1 \geq a_4 + 3 \geq 18.$$

D'où

$$a_1 + a_2 + a_3 \geq 18 + 17 + 16 = 51.$$

**Étape 3 : la contradiction.**

La somme totale vaut alors

$$100 = (a_1 + a_2 + a_3) + (a_4 + a_5 + a_6 + a_7) \geq 51 + 51 = 102,$$

ce qui est faux.

**Conclusion.**

L'hypothèse était absurde : on a donc toujours

$$a_1 + a_2 + a_3 \geq 50.$$

**Les trois plus grands des sept entiers ont une somme d'au moins $50$.**

Remarque : la valeur $50$ ne peut pas être améliorée. Avec les sept entiers

$$18, \quad 17, \quad 15, \quad 14, \quad 13, \quad 12, \quad 11,$$

dont la somme vaut bien $100$, les trois plus grands donnent exactement $18+17+15 = 50$, et aucun autre choix de trois nombres ne fait mieux.
