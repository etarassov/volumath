---
id: "0806"
title: "Des singes et quatre sortes de fruits"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [maximum, majoration, construction, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 6, d'après Mathematical Olympiads for Middle School (Moscou), 2015"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Un singe est content quand il mange trois fruits de trois sortes différentes.

Quel est le nombre maximal de singes que l'on peut contenter avec $20$ poires, $30$ bananes, $40$ pêches et $50$ pommes ?

## Hints

1. Il y a quatre sortes de fruits et chaque singe en mange trois sortes différentes : il laisse donc tomber exactement une sorte.
2. Combien de pommes un seul singe peut-il manger ?
3. Un singe mange au plus une pomme, donc au moins deux de ses trois fruits sont des poires, des bananes ou des pêches. Combien y a-t-il de fruits de ces trois sortes ?
4. Si $N$ singes sont contents, ils mangent au moins $2N$ fruits pris parmi les $90$ poires, bananes et pêches. Qu'en déduis-tu sur $N$ ?
5. Il reste le plus intéressant : montrer que le nombre trouvé est vraiment atteint. Compose trois menus et décide combien de singes prennent chacun.

## Solution

**Réponse : $45$ singes.**

Une réponse à ce genre de question se démontre toujours en deux temps : d'abord on montre qu'on ne peut pas faire mieux, ensuite on montre qu'on peut faire aussi bien.

**Étape 1. On ne peut pas contenter plus de $45$ singes.**

Il y a quatre sortes de fruits, et un singe content mange trois sortes **différentes**. Il mange donc au plus **une pomme**, et au moins **deux** de ses trois fruits sont une poire, une banane ou une pêche.

Or il n'y a que
$$20 + 30 + 40 = 90$$
poires, bananes et pêches en tout.

Si $N$ singes sont contents, ils consomment au moins $2N$ de ces $90$ fruits, donc
$$2N \leqslant 90, \qquad \text{c'est-à-dire} \qquad N \leqslant 45.$$

**Étape 2. On peut contenter $45$ singes.**

Il suffit d'exhiber une façon de faire. Distribuons trois menus :

| menu | nombre de singes | poires | bananes | pêches | pommes |
|---|---|---|---|---|---|
| banane + pêche + pomme | $25$ | | $25$ | $25$ | $25$ |
| poire + pêche + pomme | $15$ | $15$ | | $15$ | $15$ |
| poire + banane + pomme | $5$ | $5$ | $5$ | | $5$ |
| **total** | $\mathbf{45}$ | $20$ | $30$ | $40$ | $45$ |

Vérifions les stocks :

- poires : $15 + 5 = 20$, il n'en reste pas ; ✓
- bananes : $25 + 5 = 30$, il n'en reste pas ; ✓
- pêches : $25 + 15 = 40$, il n'en reste pas ; ✓
- pommes : $25 + 15 + 5 = 45 \leqslant 50$, il en reste $5$. ✓

Chacun des $45$ singes a bien mangé trois fruits de trois sortes différentes.

**Conclusion.** Le nombre maximal de singes que l'on peut contenter est $45$. Il restera cinq pommes, et aucun singe ne peut être content avec des pommes seulement.

## Going further

1. Refais le raisonnement avec $20$ poires, $30$ bananes, $40$ pêches et $1000$ pommes. La réponse change-t-elle ?
2. Et si un singe n'était content qu'en mangeant les **quatre** sortes de fruits ? Combien de singes pourrait-on contenter avec les mêmes stocks ?
