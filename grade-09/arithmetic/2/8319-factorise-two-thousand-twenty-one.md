---
id: "8319"
title: "Décomposer 2020, puis 2021"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [decomposition-en-facteurs-premiers, identites-remarquables, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Nombres premiers » (Jean), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

1. Donner la décomposition en facteurs premiers de $2020$.
2. Donner la décomposition en facteurs premiers de $2021$.

Pour la seconde question, on pourra commencer par remarquer que $45^2 = 2025$.

## Hints

1. Pour $2020$, procède comme d'habitude : teste $2$, puis $3$, puis $5$, et ainsi de suite.
2. Pour $2021$, la méthode habituelle marche aussi, mais elle est longue : il faut tester tous les premiers jusqu'à $\sqrt{2021}$, soit jusqu'à $43$.
3. Sers-toi de l'indication. Comme $2025 = 45^2$, on a $2021 = 2025 - 4$. Reconnais-tu quelque chose ?
4. $2021 = 45^2 - 2^2$, et $a^2 - b^2 = (a-b)(a+b)$.
5. Une fois les deux facteurs obtenus, il reste à vérifier qu'ils sont bien premiers.

## Solution

**1) La décomposition de 2020.**

Le nombre $2020$ est pair :

$$2020 = 2 \times 1010 = 2 \times 2 \times 505 = 4 \times 505 .$$

Le nombre $505$ se termine par $5$, donc il est divisible par $5$ : $505 = 5 \times 101$.

Reste à vérifier que $101$ est premier. Comme $10^2 = 100 < 101 < 121 = 11^2$, il suffit de
tester les premiers strictement inférieurs à $11$, soit $2$, $3$, $5$ et $7$ :

- $101$ n'est pas pair ;
- $1 + 0 + 1 = 2$ n'est pas divisible par $3$ ;
- $101$ ne se termine ni par $0$ ni par $5$ ;
- $101 = 14 \times 7 + 3$, donc $7$ ne divise pas $101$.

Donc $101$ est premier, et

$$\boxed{2020 = 2^2 \times 5 \times 101} .$$

**2) La décomposition de 2021.**

Utilisons l'indication. Comme $45^2 = 2025$ :

$$2021 = 2025 - 4 = 45^2 - 2^2 .$$

L'identité $a^2 - b^2 = (a-b)(a+b)$ donne alors

$$2021 = (45 - 2)(45 + 2) = 43 \times 47 .$$

Les nombres $43$ et $47$ sont tous les deux premiers : aucun n'est divisible par $2$, $3$ ou $5$,
et $7^2 = 49$ dépasse déjà les deux.

$$\boxed{2021 = 43 \times 47} .$$

## Going further

Pourquoi l'indication « $45^2 = 2025$ » est-elle si efficace ? Parce que $2021$ est le produit de
deux nombres premiers **proches l'un de l'autre**, $43$ et $47$. Quand $N = pq$ avec $p$ et $q$
proches, leur moyenne $m = \tfrac{p+q}{2}$ est proche de $\sqrt N$, et $N = m^2 - d^2$ où
$d = \tfrac{q-p}{2}$ est petit. Il suffit alors d'essayer les carrés juste au-dessus de $N$ et de
regarder si la différence est un carré.

Cette idée porte un nom : c'est la **méthode de factorisation de Fermat**. Elle est redoutable
quand les deux facteurs sont proches, et complètement inefficace quand ils sont très différents.
C'est d'ailleurs pour cela qu'en cryptographie on évite de choisir deux nombres premiers voisins.

Essaie la méthode sur $2491$. Le carré juste au-dessus est $50^2 = 2500$.
