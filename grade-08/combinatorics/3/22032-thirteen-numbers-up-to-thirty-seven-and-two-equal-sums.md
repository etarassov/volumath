---
id: "22032"
title: "Treize nombres jusqu'à 37 et deux sommes égales"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [principe-des-tiroirs, paires, denombrement]
adapted_from: null
see_also: ["11822", "8543"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Principe des tiroirs » (Aline), exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On choisit $13$ entiers, tous différents, entre $1$ et $37$.

Montrer qu'on peut toujours en trouver quatre, tous différents, que l'on note $a$, $b$, $c$, $d$, tels que

$$a + b = c + d.$$

## Hints

1. Combien de paires peut-on former avec les $13$ nombres choisis ?
2. Quelles valeurs peut prendre la somme des deux nombres d'une paire ?
3. Deux paires différentes ont la même somme. Peuvent-elles avoir un nombre en commun ?

## Solution

**Un outil : le principe des tiroirs.** Si l'on range des objets dans des tiroirs et qu'il y a plus d'objets que de tiroirs, alors un tiroir contient au moins deux objets.

**Étape 1 : les objets.** Une paire est un choix de deux nombres différents parmi les $13$, sans tenir compte de l'ordre. Chacun des $13$ nombres peut être associé à $12$ autres, ce qui donne $13 \times 12 = 156$ associations. Chaque paire est comptée deux fois (la paire $\{3, 8\}$ est comptée depuis $3$ et depuis $8$), donc il y a $\frac{156}{2} = 78$ paires.

**Étape 2 : les tiroirs.** La somme des deux nombres d'une paire vaut au moins $1 + 2 = 3$ et au plus $36 + 37 = 73$. Elle ne peut donc prendre que les valeurs $3, 4, \ldots, 73$, soit $73 - 3 + 1 = 71$ valeurs. On range chaque paire dans le tiroir qui porte sa somme.

**Étape 3 : le principe des tiroirs.** Il y a $78$ paires et seulement $71$ sommes possibles. Comme $78 > 71$, deux paires différentes ont la même somme. Notons-les $\{a, b\}$ et $\{c, d\}$, avec $a + b = c + d$.

**Étape 4 : les quatre nombres sont différents.** On a $a \neq b$ et $c \neq d$, puisque ce sont des paires. Supposons que les deux paires aient un nombre en commun, par exemple $a = c$. Alors $a + b = a + d$ donne $b = d$, et les deux paires seraient les mêmes, ce qui est faux. Les deux paires n'ont donc aucun nombre en commun.

**Conclusion.** Les quatre nombres $a$, $b$, $c$, $d$ sont tous différents, et $a + b = c + d$.

## Going further

1. Le résultat reste-t-il vrai si l'on choisit seulement $12$ nombres entre $1$ et $37$ ? Que donne le même calcul ?
2. On choisit maintenant $16$ nombres entre $1$ et $100$. Pourquoi le même raisonnement ne suffit-il plus ? Regardez les différences au lieu des sommes : que faut-il vérifier en plus ?
