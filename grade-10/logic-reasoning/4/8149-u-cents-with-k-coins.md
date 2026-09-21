---
id: "8149"
title: "U centimes avec K pièces, K euros avec U pièces"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [monnaie, construction, produit, raisonnement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 67 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

La Reine dispose d'une réserve illimitée de pièces de $1$, $2$, $5$, $10$, $20$ et $50$ centimes, ainsi que de pièces de $1$ euro (elle possède une infinité de pièces de chaque sorte). On rappelle qu'un euro vaut $100$ centimes.

Pour certains entiers $U$ et $K$, elle sait obtenir exactement $U$ centimes avec exactement $K$ pièces.

Montrer qu'elle sait alors obtenir exactement $K$ euros avec exactement $U$ pièces.

## Hints

1. Écris la liste des valeurs disponibles, en centimes : $1$, $2$, $5$, $10$, $20$, $50$, $100$. Pour chacune, calcule $100$ divisé par cette valeur. Que remarques-tu ?
2. Chaque valeur $v$ a donc une « valeur jumelle » $\dfrac{100}{v}$, qui est elle aussi disponible.
3. Si tu prends $v$ pièces de valeur $\dfrac{100}{v}$ centimes, combien cela fait-il d'argent ? Et combien de pièces ?
4. Applique cette idée à chacune des $K$ pièces de la somme de départ, et fais les deux totaux.

## Solution

**La liste des valeurs et leurs jumelles.**

Exprimons tout en centimes. Les valeurs disponibles sont

$$1, \quad 2, \quad 5, \quad 10, \quad 20, \quad 50, \quad 100.$$

Pour chacune de ces valeurs $v$, calculons $\dfrac{100}{v}$ :

| $v$ | 1 | 2 | 5 | 10 | 20 | 50 | 100 |
|---|---|---|---|---|---|---|---|
| $100/v$ | 100 | 50 | 20 | 10 | 5 | 2 | 1 |

On tombe **exactement sur la même liste**. Autrement dit, pour toute valeur disponible $v$, la valeur $\dfrac{100}{v}$ est elle aussi un entier et une valeur disponible. On l'appellera la **jumelle** de $v$.

**La construction.**

Par hypothèse, la Reine sait obtenir $U$ centimes avec $K$ pièces. Notons

$$v_1, \quad v_2, \quad \ldots, \quad v_K$$

les valeurs de ces $K$ pièces, en centimes. On a donc

$$v_1 + v_2 + \cdots + v_K = U.$$

Construisons maintenant une nouvelle somme, en remplaçant chaque pièce par un petit paquet :

> pour chaque $i$, prenons $v_i$ pièces de valeur $\dfrac{100}{v_i}$ centimes.

C'est bien possible, puisque la jumelle $\dfrac{100}{v_i}$ est une valeur disponible et que la réserve est illimitée.

**Le total en argent.**

Le paquet numéro $i$ contient $v_i$ pièces de $\dfrac{100}{v_i}$ centimes, donc il vaut

$$v_i \times \frac{100}{v_i} = 100 \text{ centimes} = 1 \text{ euro}.$$

Chaque paquet vaut exactement un euro, et il y a $K$ paquets : le total vaut $K$ euros.

**Le total en pièces.**

Le paquet numéro $i$ contient $v_i$ pièces. Le nombre total de pièces vaut donc

$$v_1 + v_2 + \cdots + v_K = U.$$

**Conclusion.**

La Reine obtient bien $K$ euros avec exactement $U$ pièces.

**Un exemple.** Avec $K = 3$ pièces, $50 + 20 + 1 = 71$, donc $U = 71$. La construction donne : $50$ pièces de $2$ centimes, $20$ pièces de $5$ centimes, $1$ pièce de $1$ euro. Cela fait $50 + 20 + 1 = 71$ pièces, pour une valeur de $100 + 100 + 100 = 300$ centimes, soit $3$ euros. C'est bien $K$ euros avec $U$ pièces.
