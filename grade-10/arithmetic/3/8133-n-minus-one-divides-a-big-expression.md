---
id: "8133"
title: "n − 1 divise 2nⁿ + 3n − 5"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, factorisation, congruences, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, entraînement final du Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Exercices d'entraînement – Entraînement final », exercice 1"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $n$ un entier supérieur ou égal à $2$. Montrer que $n-1$ divise

$$2n^n + 3n - 5.$$

## Hints

1. Vérifie d'abord sur un exemple, par exemple $n = 3$ : le nombre vaut $2 \times 27 + 9 - 5 = 58$, et $58 = 29 \times 2$.
2. Cherche à écrire l'expression comme une somme de morceaux dont chacun est visiblement un multiple de $n-1$.
3. Connais-tu la factorisation de $x^k - 1$ ? Elle commence par $(x-1)$.
4. Essaie de faire apparaître $n^n - 1$ et $n - 1$ dans l'expression. Combien vaut $2(n^n - 1) + 3(n-1)$ ?

## Solution

**La factorisation utile.**

Pour tout entier $k \geq 1$ et tout nombre $x$,

$$x^k - 1 = (x-1)\left(x^{k-1} + x^{k-2} + \cdots + x + 1\right).$$

(On le vérifie en développant : dans le produit, tous les termes se télescopent sauf $x^k$ et $-1$.)

En particulier, avec $x = n$ et $k = n$ : **le nombre $n-1$ divise $n^n - 1$.**

**Le découpage de l'expression.**

Écrivons

$$2n^n + 3n - 5 = 2n^n - 2 + 3n - 3 = 2\left(n^n - 1\right) + 3\left(n - 1\right).$$

(On vérifie bien : $-2 - 3 = -5$.)

Les deux morceaux sont des multiples de $n-1$ :

- $2(n^n - 1)$, car $n-1$ divise $n^n - 1$ ;
- $3(n-1)$, de façon évidente.

Une somme de deux multiples de $n-1$ est un multiple de $n-1$.

**Conclusion : $n-1$ divise $2n^n + 3n - 5$.**

## Going further

Avec le langage des congruences, la démonstration tient en une ligne. Modulo $n-1$, on a $n \equiv 1$, donc

$$2n^n + 3n - 5 \equiv 2 \times 1^n + 3 \times 1 - 5 \equiv 2 + 3 - 5 \equiv 0 \pmod{n-1}.$$

Attention à un piège fréquent : on remplace $n$ par $1$ partout **sauf en exposant**. L'exposant n'est pas un nombre que l'on calcule modulo $n-1$ ; il indique seulement combien de fois on multiplie.
