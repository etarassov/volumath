---
id: "8454"
title: "Quand une somme de puissances divise la suivante"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, puissances, majoration, combinaison-lineaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Factorisation et divisibilité » (Antoine Derimay), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Pour quels entiers $n \geqslant 1$ le nombre $5^{\,n-1} + 3^{\,n-1}$ divise-t-il $5^{\,n} + 3^{\,n}$ ?

## Hints

1. Essaie $n = 1$, $n = 2$, $n = 3$ pour te faire une idée de la réponse.
2. Note $A = 5^{\,n-1} + 3^{\,n-1}$. Si $A$ divise $5^{\,n} + 3^{\,n}$, alors $A$ divise aussi $5^{\,n} + 3^{\,n} - 5A$. Calcule cette différence : les puissances de $5$ doivent disparaître.
3. Tu obtiens que $A$ divise un nombre bien plus petit que lui, sauf pour de toutes petites valeurs de $n$. Un diviseur positif d'un entier non nul ne peut pas dépasser cet entier.

## Solution

Posons

$$A = 5^{\,n-1} + 3^{\,n-1}, \qquad B = 5^{\,n} + 3^{\,n},$$

et supposons que $A$ divise $B$.

### Étape 1. Faire disparaître les puissances de 5

Comme $5^{\,n} = 5 \times 5^{\,n-1}$, calculons

$$B - 5A = \left(5^{\,n} + 3^{\,n}\right) - 5\left(5^{\,n-1} + 3^{\,n-1}\right) = 5^{\,n} + 3^{\,n} - 5^{\,n} - 5 \times 3^{\,n-1}.$$

Il reste

$$B - 5A = 3^{\,n} - 5 \times 3^{\,n-1} = 3^{\,n-1}(3 - 5) = -2 \times 3^{\,n-1}.$$

Comme $A$ divise $B$ et divise évidemment $5A$, il divise la différence :

$$A \mid 2 \times 3^{\,n-1}.$$

### Étape 2. Comparer les tailles

Le nombre $2 \times 3^{\,n-1}$ est strictement positif, et $A$ est un diviseur positif de ce nombre. Un diviseur positif d'un entier strictement positif ne peut pas être plus grand que lui :

$$5^{\,n-1} + 3^{\,n-1} = A \leqslant 2 \times 3^{\,n-1} = 3^{\,n-1} + 3^{\,n-1}.$$

En retranchant $3^{\,n-1}$ des deux côtés :

$$5^{\,n-1} \leqslant 3^{\,n-1}.$$

### Étape 3. Conclure

Si $n \geqslant 2$, alors $n - 1 \geqslant 1$ et $5^{\,n-1} > 3^{\,n-1}$, car $5 > 3$ et les deux nombres sont élevés à la même puissance strictement positive. L'inégalité obtenue est donc impossible.

Il ne reste que $n = 1$. Vérifions : $A = 5^{0} + 3^{0} = 1 + 1 = 2$, et $B = 5 + 3 = 8$. Or $2$ divise bien $8$.

$$\boxed{n = 1 \text{ est la seule valeur possible.}}$$

## Going further

La manœuvre de l'étape 1 est le geste de base de ce genre d'exercice : **on combine les deux nombres pour en fabriquer un troisième, beaucoup plus petit**, que le diviseur doit encore diviser. La taille fait ensuite tout le travail.

On aurait pu aussi éliminer les puissances de $3$ au lieu de celles de $5$ :

$$B - 3A = 5^{\,n} - 3 \times 5^{\,n-1} = 5^{\,n-1}(5 - 3) = 2 \times 5^{\,n-1},$$

donc $A$ divise $2 \times 5^{\,n-1}$ aussi. Cette fois la majoration ne donne rien, puisque $A$ est bel et bien plus petit que $2 \times 5^{\,n-1}$ dès que $n$ grandit. Les deux combinaisons ne se valent donc pas : il fallait choisir celle qui élimine la **plus grosse** des deux bases.
