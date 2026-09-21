---
id: "7043"
title: "Un paquet dont la somme tombe juste"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [principe des tiroirs, divisibilite, sommes partielles]
adapted_from: null
see_also: ["7036"]
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, test final, débutants, exercice 3, question 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On se donne $2011$ nombres entiers, absolument quelconques : ils peuvent se répéter, être
négatifs, peu importe.

Montrer qu'on peut toujours en choisir **certains** (au moins un) dont la somme est un
multiple de $2011$.

## Hints

1. Note les nombres $x_1, x_2, \ldots, x_{2011}$. Au lieu de regarder les paquets au hasard,
   regarde seulement les paquets formés des **premiers** nombres.
2. Pose $S_1 = x_1$, $S_2 = x_1 + x_2$, …, $S_{2011} = x_1 + \cdots + x_{2011}$. Cela fait
   $2011$ nombres.
3. Regarde leurs restes dans la division par $2011$. Si l'un des restes est nul, c'est
   terminé.
4. Sinon, les $2011$ restes sont tous entre $1$ et $2010$ : il n'y a que $2010$ valeurs
   possibles. Tiroirs !
5. Deux sommes $S_i$ et $S_j$ ont le même reste. Que vaut leur différence, et à quoi
   correspond-elle ?

## Solution

**Les sommes partielles.**

Appelons $x_1, x_2, \ldots, x_{2011}$ les nombres donnés, dans un ordre quelconque, et
formons les $2011$ **sommes partielles** :
$$S_1 = x_1, \qquad S_2 = x_1 + x_2, \qquad S_3 = x_1 + x_2 + x_3, \qquad \ldots,
\qquad S_{2011} = x_1 + x_2 + \cdots + x_{2011} .$$

Chacune de ces sommes est la somme d'un paquet de nombres de départ. Si l'une d'elles est
divisible par $2011$, le problème est résolu.

**Sinon, les tiroirs.**

Supposons donc qu'aucune ne le soit. Le reste de $S_k$ dans la division par $2011$ est alors
un entier compris entre $1$ et $2010$ : cela fait $2010$ valeurs possibles.

Or on a $2011$ sommes partielles. Par le principe des tiroirs, **deux d'entre elles ont le
même reste** : il existe $i < j$ tels que
$$S_i \equiv S_j \pmod{2011} .$$

**La différence est le paquet cherché.**

Alors $2011$ divise $S_j - S_i$. Et par construction,
$$S_j - S_i = (x_1 + \cdots + x_j) - (x_1 + \cdots + x_i) = x_{i+1} + x_{i+2} + \cdots + x_j .$$

C'est bien la somme d'un paquet de nombres de départ, et ce paquet n'est pas vide puisque
$i < j$.

**Conclusion.** Dans les deux cas on a trouvé un paquet non vide dont la somme est un
multiple de $2011$. $\blacksquare$

## Going further

Rien dans la démonstration n'est propre à $2011$ : le même argument montre que **parmi $n$
entiers quelconques, on peut toujours en choisir dont la somme est un multiple de $n$.**

Le résultat est optimal, au sens où $n - 1$ entiers ne suffisent pas : prends
$n - 1$ fois le nombre $1$. Toute somme d'un paquet vaut entre $1$ et $n-1$, donc n'est
jamais un multiple de $n$.

Remarque aussi le point délicat de la démonstration : les paquets qu'on obtient sont toujours
formés de nombres **consécutifs dans la liste**. C'est beaucoup plus restrictif que ce que
l'énoncé demandait, et c'est justement ce qui rend le comptage possible.
