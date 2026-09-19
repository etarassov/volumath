---
id: "0778"
title: "Le plus grand produit d'une décomposition"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [decomposition, produit, maximum, recherche-de-cas, optimisation]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 3, d'après Olympiades académiques de Versailles, 2006"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

On s'intéresse aux diverses façons d'écrire un nombre entier naturel comme somme d'au moins deux autres nombres entiers naturels non nuls. Pour éviter les répétitions, les termes sont toujours écrits dans l'ordre croissant. Par exemple, le nombre $5$ a six décompositions :

$$5 = 1+1+1+1+1 \quad 5 = 1+1+1+2 \quad 5 = 1+1+3 \quad 5 = 1+2+2 \quad 5 = 1+4 \quad 5 = 2+3$$

À chacune de ces sommes on associe le produit de ses termes. Les résultats obtenus pour $5$ sont $1$, $2$, $3$, $4$ et $6$.

1. Quelles sont les décompositions du nombre $7$ ? Quels sont les produits correspondants ? Lequel est le plus grand ?
2. On s'intéresse maintenant aux décompositions du nombre $28$, qu'on ne cherchera pas à écrire toutes, et à leurs produits.
   - On considère une décomposition de $28$ où apparaît le nombre $1$, et on appelle $P$ le produit associé. Trouver une décomposition de $28$ dont le produit associé est strictement supérieur à $P$.
   - On considère une décomposition de $28$ où apparaît le nombre $5$, et on appelle $R$ le produit associé. Trouver une décomposition de $28$ dont le produit associé est strictement supérieur à $R$.
   - Quelles décompositions de $28$ donnent le plus grand produit associé ?

## Hints

1. Pour $7$, organise la recherche : commence par les décompositions à deux termes, puis à trois termes, et ainsi de suite.
2. Question 2, premier point : si la décomposition contient un $1$, elle contient aussi un autre terme $a$. Que se passe-t-il si tu remplaces les deux termes $1$ et $a$ par le seul terme $a+1$ ?
3. Question 2, deuxième point : $5 = 2 + 3$, et $2 \times 3 = 6$. Remplace le terme $5$ par les deux termes $2$ et $3$ : de combien le produit est-il multiplié ?
4. Les deux points précédents disent que la meilleure décomposition n'utilise ni $1$, ni $5$. Le même raisonnement élimine tous les termes supérieurs ou égaux à $5$ : si $a \geqslant 5$, compare $a$ et $2 \times (a-2)$.
5. Il ne reste donc que des $2$, des $3$ et des $4$. Comme $4 = 2 + 2$ et $2 \times 2 = 4$, un $4$ peut toujours être remplacé par deux $2$ sans rien changer. Et trois $2$ font $6$, comme deux $3$ : lequel donne le plus grand produit, $2 \times 2 \times 2$ ou $3 \times 3$ ?

## Solution

### Question 1 : les décompositions de 7

En les rangeant par nombre de termes :

| Décomposition | Produit |
| --- | --- |
| $1 + 6$ | $6$ |
| $2 + 5$ | $10$ |
| $3 + 4$ | $\mathbf{12}$ |
| $1 + 1 + 5$ | $5$ |
| $1 + 2 + 4$ | $8$ |
| $1 + 3 + 3$ | $9$ |
| $2 + 2 + 3$ | $\mathbf{12}$ |
| $1 + 1 + 1 + 4$ | $4$ |
| $1 + 1 + 2 + 3$ | $6$ |
| $1 + 2 + 2 + 2$ | $8$ |
| $1 + 1 + 1 + 1 + 3$ | $3$ |
| $1 + 1 + 1 + 2 + 2$ | $4$ |
| $1 + 1 + 1 + 1 + 1 + 2$ | $2$ |
| $1 + 1 + 1 + 1 + 1 + 1 + 1$ | $1$ |

Il y a $14$ décompositions. Les produits obtenus sont $1$, $2$, $3$, $4$, $5$, $6$, $8$, $9$, $10$ et $12$.

Le plus grand produit vaut $\mathbf{12}$, et il est atteint deux fois : par $7 = 4 + 3$ et par $7 = 3 + 2 + 2$.

### Question 2 : le nombre 28

**Une décomposition qui contient un $1$ n'est jamais la meilleure.**

Supposons que la décomposition contienne le terme $1$. Il y a deux cas.

*Premier cas : la décomposition n'a que deux termes.* C'est alors $28 = 1 + 27$, et $P = 27$. La décomposition $28 = 2 + 26$ donne $2 \times 26 = 52 > 27$, ce qui répond à la question.

*Deuxième cas : la décomposition a au moins trois termes.* À côté du $1$, choisissons un autre terme $a$, et appelons $Q$ le produit de tous les termes restants. Il reste au moins un terme, donc $Q \geqslant 1$, et

$$P = 1 \times a \times Q = a \times Q$$

Remplaçons les deux termes $1$ et $a$ par le seul terme $a + 1$. La somme ne change pas, et il reste au moins deux termes : c'est donc encore une décomposition de $28$. Son produit vaut

$$(a+1) \times Q = a \times Q + Q > a \times Q = P$$

Le nouveau produit est **strictement plus grand** que $P$.

*Exemple :* $28 = 1 + 13 + 14$ a pour produit $P = 182$, et $28 = 14 + 14$ donne $196 > 182$.

**Une décomposition qui contient un $5$ n'est jamais la meilleure non plus.**

Supposons que la décomposition contienne le terme $5$, et appelons $Q$ le produit de tous les autres termes, de sorte que $R = 5 \times Q$. Remplaçons le terme $5$ par les deux termes $2$ et $3$ : la somme ne change pas, et le nouveau produit vaut

$$2 \times 3 \times Q = 6 \times Q > 5 \times Q = R$$

Là encore le produit a **strictement augmenté**.

**Quelles décompositions donnent le plus grand produit ?**

Le même échange élimine tous les grands termes. Si un terme $a$ vérifie $a \geqslant 5$, remplaçons-le par les deux termes $2$ et $a-2$ (tous deux $\geqslant 1$, et $a - 2 \geqslant 3$). Le produit est multiplié par

$$\frac{2 \times (a-2)}{a} = \frac{2a - 4}{a}$$

et $2a - 4 > a$ dès que $a > 4$. Le produit augmente donc strictement.

Dans une décomposition de produit maximal, tous les termes sont donc $2$, $3$ ou $4$. De plus :

- un terme $4$ peut être remplacé par $2 + 2$ sans changer ni la somme ni le produit, puisque $2 \times 2 = 4$ ;
- trois termes $2$ font la même somme que deux termes $3$, mais $2 \times 2 \times 2 = 8$ alors que $3 \times 3 = 9$. Remplacer trois $2$ par deux $3$ augmente donc le produit.

Une décomposition de produit maximal contient donc au plus deux $2$ (sinon on remplacerait trois d'entre eux par deux $3$), et pour le reste des $3$.

Comme $28 = 3 \times 8 + 4$, la seule possibilité avec des $3$ et au plus deux $2$ est : huit $3$ et deux $2$. Son produit vaut

$$3^8 \times 2^2 = 6561 \times 4 = 26\,244$$

En remplaçant les deux $2$ par un $4$, on obtient la même valeur :

$$3^8 \times 4 = 26\,244$$

**Conclusion.** Le plus grand produit possible vaut $26\,244$, et il est atteint par exactement deux décompositions :

$$28 = 2+2+3+3+3+3+3+3+3+3 \qquad \text{et} \qquad 28 = 3+3+3+3+3+3+3+3+4$$

## Going further

Reprendre la question pour $2006$ et pour $2007$. La règle générale est la même : on n'utilise que des $3$, complétés par un $4$ ou par deux $2$ selon le reste de la division par $3$.
