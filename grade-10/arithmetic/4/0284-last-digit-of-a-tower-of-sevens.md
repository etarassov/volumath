---
id: "0284"
title: "Le dernier chiffre d'une tour de 7"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [puissances, restes, dernier-chiffre, cycle]
adapted_from: null
see_also: ["0554"]
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 5, задача 6"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Trouver le dernier chiffre de :

1. $7^7$ ;
2. $7^{7^7}$ ;
3. $7^{7^{7^7}}$.

Comme toujours, une tour de puissances se lit du haut vers le bas : $7^{7^7}$ signifie $7^{(7^7)}$, et $7^{7^{7^7}}$ signifie $7^{\left(7^{(7^7)}\right)}$.

## Hints

1. Le dernier chiffre d'un nombre entier, c'est son reste dans la division par $10$.
2. Calculez les derniers chiffres de $7^1$, $7^2$, $7^3$, $7^4$, $7^5$. Que remarquez-vous ?
3. Le dernier chiffre de $7^n$ ne dépend donc que du reste de l'exposant $n$ dans la division par $4$. Le problème devient : quel reste donne l'exposant ?
4. Pour la question 2, il faut le reste de $7^7$ dans la division par $4$. Remarquez que $49 = 4 \times 12 + 1$, donc $7^2$ a pour reste $1$.
5. Pour la question 3, l'exposant est $7^{7^7}$. A-t-il un exposant pair ou impair ? Que vaut le reste de $7$ à une puissance impaire dans la division par $4$ ?

## Solution

**Première étape : le cycle des derniers chiffres des puissances de 7.**

Le dernier chiffre d'un entier est son reste dans la division par $10$. Calculons les premières puissances de $7$ :

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|
| $7^n$ | $7$ | $49$ | $343$ | $2401$ | $16\,807$ | $\dots$ | $\dots$ | $\dots$ |
| dernier chiffre | $7$ | $9$ | $3$ | $1$ | $7$ | $9$ | $3$ | $1$ |

Les derniers chiffres se répètent : $7, 9, 3, 1$, puis $7, 9, 3, 1$, et ainsi de suite.

Pourquoi ? Parce que le dernier chiffre d'un produit ne dépend que des derniers chiffres des facteurs. Dès qu'on retombe sur le dernier chiffre $1$ (à $7^4$), tout recommence à l'identique : $7^5$ a le même dernier chiffre que $7^1$, $7^6$ que $7^2$, etc.

**Le cycle a donc une longueur de $4$**, et le dernier chiffre de $7^n$ ne dépend que du reste de $n$ dans la division par $4$ :

| reste de $n$ par $4$ | $1$ | $2$ | $3$ | $0$ |
|---|---|---|---|---|
| dernier chiffre de $7^n$ | $7$ | $9$ | $3$ | $1$ |

Tout le problème se ramène donc à **trouver le reste de l'exposant dans la division par $4$**.

**Deuxième étape : les restes des puissances de 7 dans la division par 4.**

C'est la clé pour les questions 2 et 3. Partons de

$$7^2 = 49 = 4 \times 12 + 1.$$

Donc $7^2$ a pour reste $1$ dans la division par $4$. Prenons alors un exposant impair, $m = 2s + 1$ :

$$7^m = 7^{2s+1} = \left(7^2\right)^s \times 7.$$

Le facteur $\left(7^2\right)^s$ est un produit de nombres qui ont tous pour reste $1$, il a donc lui aussi pour reste $1$. En le multipliant par $7$, on obtient un nombre de même reste que $7$, c'est-à-dire **de reste $3$**.

Retenons ce résultat :

> Si $m$ est impair, alors $7^m$ a pour reste $3$ dans la division par $4$.

**Troisième étape : les trois réponses.**

*Question 1.* L'exposant est $7$, et $7 = 4 \times 1 + 3$ : son reste par $4$ vaut $3$. Le tableau donne un dernier chiffre égal à $3$.

(On peut vérifier directement : $7^7 = 823\,543$.)

*Question 2.* L'exposant est $7^7$. C'est une puissance de $7$ d'exposant impair, donc d'après la deuxième étape son reste par $4$ vaut $3$. Le dernier chiffre de $7^{7^7}$ est donc $3$.

*Question 3.* L'exposant est $7^{7^7}$. Là encore, c'est une puissance de $7$ dont l'exposant $7^7$ est impair (toute puissance de $7$ est impaire). Son reste par $4$ vaut donc $3$, et le dernier chiffre de $7^{7^{7^7}}$ est $3$.

**Conclusion.** Dans les trois cas, le dernier chiffre vaut $3$.

**Ce qu'il faut retenir.** Pour le dernier chiffre d'une grande puissance, on ne calcule jamais la puissance : on cherche le cycle des derniers chiffres, puis le reste de l'exposant dans la division par la longueur de ce cycle. Et si l'exposant est lui-même une puissance, on recommence le même travail un étage plus haut.

## Going further

1. Quel est le dernier chiffre de $3^{2024}$ ? Et de $2^{2^{2^2}}$ ?
2. Quels sont les **deux** derniers chiffres de $7^7$ ? Cherchez d'abord le cycle des deux derniers chiffres des puissances de $7$.
3. Une tour de $7$ à cent étages : quel est son dernier chiffre ? Pourquoi la réponse ne change-t-elle plus à partir d'un certain nombre d'étages ?
