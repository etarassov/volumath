---
id: "7204"
title: "Découper 2017 pour que le produit soit maximal"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [optimisation, produit, decomposition, echanges]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Première journée », exercices d'échauffement, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

On écrit $2017$ comme une somme d'entiers strictement positifs. Par exemple
$$2017 = 1008 + 1009 \qquad \text{ou} \qquad 2017 = 458 + 776 + 793 .$$
Puis on multiplie entre eux tous les entiers de cette somme.

Quel est le plus grand produit que l'on puisse obtenir ?

## Hints

1. Essaie d'abord avec un petit nombre à la place de $2017$, par exemple $10$. Quelle
   décomposition donne le plus gros produit ?
2. Un $1$ dans la somme, est-ce une bonne idée ? Que se passe-t-il si on l'enlève et qu'on
   l'ajoute à un autre terme ?
3. Si un terme $k$ vaut au moins $4$, remplace-le par $2 + (k-2)$. Compare $k$ et $2(k-2)$.
4. Il ne reste alors que des $2$ et des $3$. Compare $2+2+2$ et $3+3$ : les deux font $6$, mais
   lequel donne le plus gros produit ?

## Solution

Appelons **décomposition** une écriture de $2017$ comme somme d'entiers strictement positifs, et
**valeur** d'une décomposition le produit de ses termes. Il n'y a qu'un nombre fini de
décompositions, donc il en existe au moins une de valeur maximale. Regardons à quoi elle
ressemble.

**Étape 1 : pas de $1$.**

Supposons qu'une décomposition contienne un terme $1$ et au moins un autre terme $a$. Remplaçons
ces deux termes par le seul terme $a+1$ : la somme ne change pas, et le produit est multiplié
par $\frac{a+1}{1 \times a} > 1$. La valeur augmente donc strictement.

Une décomposition de valeur maximale ne contient donc aucun $1$ (sauf la décomposition
$2017 = 2017$, de valeur $2017$, qui n'est évidemment pas la meilleure puisque
$2 \times 2015 = 4030$ fait déjà mieux).

**Étape 2 : pas de terme $\geqslant 4$.**

Soit $k \geqslant 4$ un terme de la décomposition. Remplaçons-le par les deux termes $2$ et
$k-2$. La somme ne change pas, et le produit est multiplié par
$$\frac{2(k-2)}{k} = \frac{2k-4}{k}.$$
Or $2k - 4 \geqslant k$ équivaut à $k \geqslant 4$, qui est vrai. Le produit ne diminue donc pas ;
il augmente strictement dès que $k \geqslant 5$.

Quitte à recommencer, on peut donc supposer que **tous les termes valent $2$ ou $3$**.

**Étape 3 : au plus deux $2$.**

S'il y avait trois termes égaux à $2$, remplaçons-les par deux termes égaux à $3$ : la somme ne
change pas ($2+2+2 = 3+3 = 6$), et le produit est multiplié par
$$\frac{3 \times 3}{2 \times 2 \times 2} = \frac{9}{8} > 1 .$$
La valeur augmente. Une décomposition maximale contient donc **au plus deux $2$**.

**Étape 4 : conclusion.**

La décomposition maximale s'écrit donc avec des $3$ et au plus deux $2$. Il y a trois cas à
examiner, et un seul marche :

- aucun $2$ : il faudrait que $2017$ soit un multiple de $3$. Or $2+0+1+7 = 10$ n'est pas un
  multiple de $3$, donc $2017$ non plus ;
- un seul $2$ : il faudrait que $2015$ soit un multiple de $3$. Or $2+0+1+5 = 8$ ne l'est pas ;
- deux $2$ : il faut que $2013$ soit un multiple de $3$, et c'est le cas, avec
  $2013 = 3 \times 671$.

La décomposition maximale est donc : six cent soixante-et-onze $3$ et deux $2$, ce qui donne bien
$$2017 = \underbrace{3 + 3 + \cdots + 3}_{671 \text{ termes}} + 2 + 2 .$$

Le produit maximal vaut donc
$$\boxed{4 \times 3^{671}} .$$

## Going further

On peut vérifier au passage que $2 + 2$ est bien meilleur que $1 + 3$ ($4 > 3$) et aussi bon que
le terme unique $4$ ($2 \times 2 = 4$) : la décomposition $4 \times 3^{671}$ peut donc aussi
s'écrire $3^{671} \times 4$ avec un seul terme $4$.

Pour un entier $n$ quelconque, la même méthode donne : on prend autant de $3$ que possible, et on
finit par un $4$ si le reste de $n$ modulo $3$ vaut $1$, par un $2$ si ce reste vaut $2$.
