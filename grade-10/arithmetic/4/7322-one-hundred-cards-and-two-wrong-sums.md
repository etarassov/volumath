---
id: "7322"
title: "Cent cartes et trois additions fausses"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [parite, modulo, encadrement, entiers-consecutifs]
adapted_from: null
see_also: []
same_as: ["12279"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2007"
  reference: "stage_ete_2007.pdf, « En TD », stratégie de base (groupe B), exercice 46 (Olympiades académiques 2005)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

On dispose de $100$ cartes. Sur chacune sont écrits **deux entiers consécutifs**, de telle sorte que chacun des entiers $1, 2, \ldots, 200$ figure sur exactement une carte.

**a)** Alice choisit $21$ cartes au hasard. Elle additionne tous les entiers écrits sur ses cartes et annonce à Bob que la somme vaut $2004$. Montrer qu'Alice s'est trompée dans son calcul.

**b)** Alice recompte et annonce cette fois $2005$. Montrer qu'elle s'est à nouveau trompée.

**c)** Le vrai total d'Alice est en fait $2003$. Pendant ce temps, Bob a choisi $20$ cartes au hasard parmi celles qui restaient. Il additionne les nombres écrits sur ses cartes et annonce $1396$. Montrer que Bob s'est trompé.

## Hints

1. Que vaut la somme des deux nombres écrits sur une carte ? Est-elle paire ou impaire ?
2. Pour a), additionne $21$ nombres impairs. Quelle est la parité du résultat ?
3. Pour b), la parité ne suffit plus. Regarde modulo $4$. Mais d'abord : quelles sont exactement les $100$ cartes ? Sur quelle carte figure le nombre $1$ ?
4. Une fois les cartes identifiées, la somme des nombres d'une carte s'écrit $4n - 1$. Quel est son reste modulo $4$ ? Et celui d'une somme de $21$ telles cartes ?
5. Pour c), Alice et Bob ont ensemble $41$ cartes. Quelle est la **plus petite** somme possible pour $41$ cartes ? Compare-la à $2003 + 1396$.

## Solution

### a) La parité

Une carte porte deux entiers consécutifs : l'un est pair, l'autre est impair. Leur somme est donc **impaire**.

Alice additionne les nombres de $21$ cartes, c'est-à-dire qu'elle additionne $21$ nombres impairs. Une somme d'un nombre **impair** de nombres impairs est impaire.

Son total est donc impair. Or $2004$ est pair. **Alice s'est trompée.**

### b) Modulo 4

Le nombre $2005$ est impair : la parité ne suffit plus. Regardons de plus près.

**Quelles sont les cartes ?** Le nombre $1$ figure sur une carte, avec l'entier qui le précède ou celui qui le suit. Comme $0$ ne fait pas partie des nombres distribués, $1$ est forcément avec $2$. La carte $\{1, 2\}$ existe donc.

Ensuite, $3$ ne peut plus aller avec $2$ : il va avec $4$. Puis $5$ avec $6$, et ainsi de suite. Les $100$ cartes sont donc entièrement déterminées :
$$\{1,2\},\ \{3,4\},\ \{5,6\},\ \ldots,\ \{199,200\} .$$

**La somme d'une carte.** La carte $\{2n-1,\ 2n\}$ a pour somme
$$(2n-1) + 2n = 4n - 1 .$$

Modulo $4$, cette somme vaut donc $-1$, c'est-à-dire $3$.

**La somme d'Alice.** En additionnant $21$ cartes, on obtient un nombre congru à
$$21 \times (-1) = -21 \pmod 4 .$$
Or $-21 = -24 + 3$, donc le total d'Alice est congru à $3$ modulo $4$.

Et $2005 = 4 \times 501 + 1$ est congru à $1$ modulo $4$. **Alice s'est encore trompée.**

*(On vérifie au passage que $2003 = 4 \times 500 + 3$ est bien congru à $3$ : le troisième total annoncé, lui, est compatible.)*

### c) Un encadrement

Si personne ne s'était trompé, Alice et Bob auraient ensemble $21 + 20 = 41$ cartes, toutes différentes, et la somme de tous les nombres écrits dessus vaudrait
$$2003 + 1396 = 3399 .$$

Quelle est la **plus petite** valeur possible pour la somme des nombres de $41$ cartes ? C'est celle qu'on obtient en prenant les $41$ cartes qui portent les plus petits nombres, c'est-à-dire
$$\{1,2\},\ \{3,4\},\ \ldots,\ \{81,82\} .$$

Cette somme vaut
$$1 + 2 + 3 + \cdots + 82 = \frac{82 \times 83}{2} = 41 \times 83 = 3403 .$$

N'importe quel choix de $41$ cartes donne donc une somme **supérieure ou égale à $3403$**.

Or $3399 < 3403$. La somme annoncée est trop petite pour être possible : **Bob s'est trompé.**

## Going further

1. Quelle est la plus grande somme possible pour $21$ cartes ? Et la plus petite ? Combien de valeurs le total d'Alice peut-il prendre ?
2. Alice annonce $2003$ et Bob annonce $1408$. Ces deux annonces passent-elles les trois tests de l'exercice (parité, reste modulo $4$, minoration) ?
3. Reprends la question b) en supposant qu'Alice a choisi $22$ cartes au lieu de $21$. Quels totaux sont alors interdits ?
