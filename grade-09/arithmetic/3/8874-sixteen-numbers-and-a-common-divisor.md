---
id: "8874"
title: "Seize nombres et un diviseur commun"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [principe-des-tiroirs, nombres-premiers, premiers-entre-eux, diviseurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : TD de pot pourri » (Emilhan)"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : TD de pot pourri », exercice 2, p. 286 et 289"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On choisit des nombres entiers compris entre $2$ et $50$, tous différents.

Déterminer le plus petit entier $k \geqslant 1$ tel que, **quels que soient** les $k$ nombres choisis, il y en ait forcément deux qui **ne sont pas premiers entre eux**, c'est-à-dire deux qui admettent un diviseur commun supérieur ou égal à $2$.

## Hints

1. Il faut faire deux choses : montrer qu'avec $k$ nombres c'est toujours vrai, et exhiber $k-1$ nombres pour lesquels c'est faux.
2. Pour la seconde, cherche une famille de nombres entre $2$ et $50$ **deux à deux** premiers entre eux, la plus grande possible. Quels nombres sont premiers avec presque tout le monde ?
3. Combien y a-t-il de nombres premiers inférieurs ou égaux à $50$ ? Écris-les.
4. Pour la première, associe à chaque nombre choisi son **plus petit** diviseur premier. Ce diviseur est-il forcément inférieur ou égal à $50$ ?
5. Compare le nombre de nombres choisis au nombre de diviseurs premiers disponibles.

## Solution

La réponse est
$$\boxed{k = 16} .$$

### Les nombres premiers jusqu'à $50$

Ce sont
$$2,\; 3,\; 5,\; 7,\; 11,\; 13,\; 17,\; 19,\; 23,\; 29,\; 31,\; 37,\; 41,\; 43,\; 47 ,$$
soit $15$ nombres.

### $15$ nombres ne suffisent pas

Choisissons précisément ces $15$ nombres premiers. Deux nombres premiers différents n'ont aucun diviseur commun autre que $1$, donc ils sont premiers entre eux. Ces $15$ nombres sont donc **deux à deux** premiers entre eux : avec $k = 15$, la propriété demandée est fausse.

Donc $k \geqslant 16$.

### $16$ nombres suffisent toujours

Prenons maintenant $16$ nombres quelconques, tous différents, entre $2$ et $50$.

Chacun d'eux est un entier supérieur ou égal à $2$, donc il possède au moins un diviseur premier ; notons $p(n)$ le plus petit d'entre eux. Comme $p(n)$ divise $n$ et que $n \leqslant 50$, on a $p(n) \leqslant 50$ : c'est donc l'un des $15$ nombres premiers listés plus haut.

On a ainsi $16$ nombres choisis (les chaussettes) et $15$ diviseurs premiers possibles (les tiroirs). Par le principe des tiroirs, deux des nombres choisis, disons $a$ et $b$, ont le **même** plus petit diviseur premier $p$.

Alors $p$ divise $a$ et $p$ divise $b$, donc $p$ est un diviseur commun de $a$ et $b$ avec $p \geqslant 2$ : les nombres $a$ et $b$ ne sont pas premiers entre eux.

### Conclusion

Avec $15$ nombres on peut éviter la situation, avec $16$ on ne le peut plus. Le plus petit entier cherché est $k = 16$.

### Deux moitiés à ne pas oublier

Une question du type « quel est le plus petit $k$ tel que … » demande toujours deux démonstrations : un **exemple** qui montre que $k-1$ ne suffit pas, et une **preuve générale** pour $k$. Sauter l'une des deux ne répond qu'à la moitié de la question.

## Going further

1. Reprendre la question avec des nombres entre $2$ et $100$.
2. Et avec des nombres entre $2$ et $n$, pour un entier $n$ quelconque ? Exprimer la réponse à l'aide du nombre de nombres premiers inférieurs ou égaux à $n$.
3. La liste des $15$ nombres premiers n'est pas la seule famille de $15$ nombres entre $2$ et $50$ deux à deux premiers entre eux. En trouver une autre. (Indication : que se passe-t-il si l'on remplace $2$ par $4$ ?)
