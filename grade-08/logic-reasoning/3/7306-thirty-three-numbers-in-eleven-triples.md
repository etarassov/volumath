---
id: "7306"
title: "Onze paquets de trois nombres"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [parite, somme, invariant, partition]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2007"
  reference: "stage_ete_2007.pdf, « En colle », stratégies de base, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

On voudrait ranger les nombres
$$1, 2, 3, \ldots, 33$$
en onze paquets de trois nombres chacun, de façon que dans **chaque** paquet, l'un des trois nombres soit la somme des deux autres.

Par exemple, $\{4, 9, 13\}$ serait un paquet acceptable, puisque $4 + 9 = 13$.

Est-ce possible ?

## Hints

1. Essaie à la main sur un cas plus petit, par exemple ranger $1, 2, \ldots, 9$ en trois paquets de ce genre. Y arrives-tu ?
2. Regarde la **somme des trois nombres d'un paquet**. Si le paquet est $\{a,\ b,\ a+b\}$, combien vaut cette somme ?
3. Cette somme vaut $2a + 2b$. Que peux-tu dire de sa parité ?
4. Si chaque paquet a une somme paire, que vaut la parité de la somme des onze paquets réunis ?
5. Calcule maintenant $1 + 2 + \cdots + 33$ et compare.

## Solution

**La réponse est non : c'est impossible.**

**L'idée : regarder les parités.**

Supposons qu'un tel rangement existe et considérons un paquet quelconque. Il est formé de trois nombres dont l'un est la somme des deux autres : appelons-les $a$, $b$ et $a+b$.

La somme des trois nombres de ce paquet vaut
$$a + b + (a+b) = 2a + 2b = 2(a+b) .$$

C'est un nombre **pair**, et cela quel que soit le paquet.

**On additionne tous les paquets.**

Les onze paquets contiennent ensemble tous les nombres de $1$ à $33$, chacun une seule fois. Donc

$$\underbrace{(\text{somme du paquet }1) + \cdots + (\text{somme du paquet }11)}_{\text{onze nombres pairs}} = 1 + 2 + 3 + \cdots + 33 .$$

À gauche, on additionne onze nombres pairs : le résultat est pair.

**Mais la somme de droite est impaire.**

Calculons $1 + 2 + \cdots + 33$. En regroupant les termes deux par deux en partant des bouts,
$$(1 + 33) + (2 + 32) + \cdots + (16 + 18) + 17 = 16 \times 34 + 17 = 544 + 17 = 561 .$$

(On peut aussi utiliser la formule $\dfrac{33 \times 34}{2} = 33 \times 17 = 561$.)

Le nombre $561$ est **impair**.

**Contradiction.**

On aurait donc un nombre pair égal à un nombre impair, ce qui est impossible. L'hypothèse de départ était fausse.

**Conclusion.** On ne peut pas ranger $1, 2, \ldots, 33$ en onze paquets de trois nombres où l'un est la somme des deux autres.

## Going further

1. Reprends le raisonnement avec $1, 2, \ldots, 3n$ rangés en $n$ paquets. Pour quelles valeurs de $n$ l'argument de parité interdit-il le rangement ?
2. Pour $n = 4$, l'argument de parité ne dit rien : la somme $1 + 2 + \cdots + 12 = 78$ est paire. Trouve un rangement de $1, 2, \ldots, 12$ en quatre paquets convenables, ou montre qu'il n'y en a pas.
3. Et avec $1, 2, \ldots, 9$ en trois paquets ? La somme vaut $45$, impaire : conclusion immédiate.
