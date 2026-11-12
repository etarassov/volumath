---
id: "17832"
title: "Un comité et son président"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [double-comptage, coefficients-binomiaux, combinaisons]
adapted_from: null
see_also: []
same_as: ["2404"]
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », combinatoire, mercredi après-midi, « Double comptage » (Jean-Louis Tu), exercice 10, p.69 ; solution p.69. La source note ce nombre C_n^k ; on utilise ici la notation actuelle."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soient $n$ et $k$ deux entiers avec $1 \le k \le n$. On note $\binom{n}{k}$ le nombre de façons de choisir un groupe de $k$ personnes parmi $n$ personnes, sans ordre. Par exemple $\binom{4}{2} = 6$ : parmi Ali, Bea, Cyril et Dana, on peut former $6$ groupes de deux.

Montrer que

$$k \binom{n}{k} = n \binom{n-1}{k-1} .$$

## Hints

1. Vérifiez l'égalité pour $n = 4$ et $k = 2$.
2. Dans une classe de $n$ élèves, on veut former un comité de $k$ élèves, puis choisir un président parmi les membres du comité. Combien de façons de faire ?
3. Comptez-les d'une autre façon : en choisissant d'abord le président.

## Solution

**L'idée : compter la même chose de deux façons.** Dans une classe de $n$ élèves, comptons le nombre $N$ de façons de former un comité de $k$ élèves dont l'un est le président.

**Première façon : d'abord le comité.** On choisit le groupe des $k$ membres : il y a $\binom{n}{k}$ façons. Puis on choisit le président parmi ces $k$ membres : $k$ façons. Donc

$$N = \binom{n}{k} \times k .$$

**Deuxième façon : d'abord le président.** On choisit le président parmi les $n$ élèves : $n$ façons. Puis on complète le comité en choisissant les $k - 1$ autres membres parmi les $n - 1$ élèves restants : $\binom{n-1}{k-1}$ façons. Donc

$$N = n \times \binom{n-1}{k-1} .$$

Les deux façons comptent les mêmes comités avec président, donc les deux résultats sont égaux :

$$k \binom{n}{k} = n \binom{n-1}{k-1} .$$

**Vérification** avec $n = 4$ et $k = 2$ : à gauche $2 \times 6 = 12$, à droite $4 \times \binom{3}{1} = 4 \times 3 = 12$.

## Going further

Cette égalité permet de calculer $\binom{n}{k}$ de proche en proche, sans faire de liste. Par exemple $\binom{5}{1} = 5$, puis $2 \binom{6}{2} = 6 \times 5$ donne $\binom{6}{2} = 15$, puis $3 \binom{7}{3} = 7 \times 15$ donne $\binom{7}{3} = 35$. Combien y a-t-il de façons de choisir $3$ élèves parmi $7$ ? Vérifiez que vous trouvez bien $35$ en raisonnant directement.
