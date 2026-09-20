---
id: "5203"
title: "Écrire un nombre comme une somme ordonnée"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, bijection, puissances-de-deux, sommes]
adapted_from: null
see_also: ["5204"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Compositions — Josh Zucker"
  reference: "JZuckerCompositions.pdf, questions 1 et 2"
  url: "https://mathcircles.org/activity/compositions/"
  original_language: "en"
  local_copy: "sources/originals/namc/JZuckerCompositions.pdf"
---

## Statement

On veut écrire un entier comme une somme d'entiers strictement positifs. **L'ordre des termes compte** : $2 + 1$ et $1 + 2$ sont deux écritures différentes. Une somme d'un seul terme est autorisée.

Par exemple, le nombre $3$ admet exactement quatre écritures :

$$3, \qquad 2 + 1, \qquad 1 + 2, \qquad 1 + 1 + 1 .$$

1. Écrire toutes les sommes qui donnent $4$. Combien y en a-t-il ?
2. Faire de même pour $5$. Quelle formule semble donner le nombre d'écritures de $n$ ?
3. Démontrer cette formule. Combien le nombre $10$ a-t-il d'écritures ?

## Hints

1. Pour la question 1, organisez la recherche : commencez par les sommes dont le premier terme est $1$, puis celles dont le premier terme est $2$, et ainsi de suite.
2. Vous devriez trouver $1, 2, 4, 8$ pour $n = 1, 2, 3, 4$. Ces nombres doublent à chaque fois.
3. Pour la démonstration, remplacez le nombre $n$ par $n$ bâtons alignés, par exemple pour $n = 5$
   $$| \;\; | \;\; | \;\; | \;\; |$$
   Une somme, c'est une façon de regrouper ces bâtons en paquets, de gauche à droite.
4. Entre deux bâtons voisins, il y a un espace. Dans chaque espace, vous choisissez de mettre ou non une barre de séparation. Combien y a-t-il d'espaces ? Combien de choix par espace ?

## Solution

### 1. Les écritures de 4

Classons-les selon leur premier terme :

- premier terme $1$ : $1+1+1+1$, $1+1+2$, $1+2+1$, $1+3$ ;
- premier terme $2$ : $2+1+1$, $2+2$ ;
- premier terme $3$ : $3+1$ ;
- premier terme $4$ : $4$.

Cela fait $4 + 2 + 1 + 1 = 8$ écritures.

### 2. Les écritures de 5, et la conjecture

Le même classement donne, pour $5$ :

- premier terme $1$, suivi d'une écriture de $4$ : $8$ écritures ;
- premier terme $2$, suivi d'une écriture de $3$ : $4$ écritures ;
- premier terme $3$, suivi d'une écriture de $2$ : $2$ écritures ;
- premier terme $4$, suivi d'une écriture de $1$ : $1$ écriture ;
- premier terme $5$, seul : $1$ écriture.

Soit $8 + 4 + 2 + 1 + 1 = 16$ écritures.

Récapitulons :

| $n$ | 1 | 2 | 3 | 4 | 5 |
|---|---|---|---|---|---|
| nombre d'écritures | 1 | 2 | 4 | 8 | 16 |

On conjecture que le nombre d'écritures de $n$ vaut $2^{n-1}$.

### 3. La démonstration

Représentons $n$ par $n$ bâtons alignés. Pour $n = 5$ :

$$| \quad | \quad | \quad | \quad |$$

Une écriture de $n$ en somme ordonnée, c'est exactement une façon de couper cette rangée en paquets consécutifs : le premier paquet donne le premier terme, le deuxième paquet le deuxième terme, et ainsi de suite. Par exemple

$$| \;\; | \;\; \mathbf{/} \;\; | \;\; \mathbf{/} \;\; | \;\; | \quad \text{correspond à} \quad 5 = 2 + 1 + 2 .$$

Les coupures ne peuvent se placer que dans les **espaces entre deux bâtons voisins**, et il y en a $n - 1$. Dans chacun de ces espaces, on a deux choix indépendants : couper, ou ne pas couper.

- Deux choix de coupures différents donnent deux sommes différentes, puisque la liste des paquets change.
- Réciproquement, toute somme ordonnée provient d'un choix de coupures.

Il y a donc autant d'écritures que de façons de répondre $n-1$ fois par oui ou par non, c'est-à-dire

$$\boxed{2^{n-1}} .$$

Pour $n = 10$, cela fait $2^9 = \boxed{512}$ écritures.

On retrouve bien les valeurs du tableau : $2^0 = 1$, $2^1 = 2$, $2^2 = 4$, $2^3 = 8$, $2^4 = 16$.

## Going further

Le même dessin permet de compter plus finement. Une écriture de $n$ en exactement $k$ termes correspond à un choix de $k-1$ coupures parmi les $n-1$ espaces disponibles. On peut aussi se demander combien d'écritures de $n$ n'utilisent que des termes **impairs** : la réponse est beaucoup plus surprenante, et c'est l'objet de l'exercice 5204.
