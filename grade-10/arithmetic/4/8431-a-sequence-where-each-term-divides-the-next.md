---
id: "8431"
title: "Une suite où chaque terme en divise un autre"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [suite-recurrente, divisibilite, factorisation, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Modulos & factorisation » (Théo Lenoir et Angela Xue), exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On définit une suite d'entiers $a_1, a_2, a_3, \ldots$ par

$$a_1 = 1 \qquad \text{et} \qquad a_{n+1} = a_n^2 + a_n + 1 \quad \text{pour tout entier } n \geqslant 1.$$

Démontrer que, pour tout entier $n \geqslant 1$, le nombre $a_n^2 + 1$ divise le nombre $a_{n+1}^2 + 1$.

## Hints

1. Calcule les premiers termes : $a_1 = 1$, $a_2 = 3$, $a_3 = 13$. Vérifie sur eux ce qu'on demande de prouver, cela t'aidera à y croire.
2. Tout tourne autour de la quantité $a_n^2 + 1$. Essaie de faire apparaître ce bloc directement dans l'écriture de $a_{n+1}$.
3. Écris $a_{n+1} = (a_n^2 + 1) + a_n$, puis élève au carré. Pose $A = a_n^2+1$ et $b = a_n$ si cela t'aide à y voir clair.
4. Après avoir développé et ajouté $1$, mets $A$ en facteur : tous les termes doivent en contenir un.

## Solution

Fixons un entier $n \geqslant 1$, et posons pour alléger

$$b = a_n \qquad \text{et} \qquad A = b^2 + 1.$$

Il s'agit de montrer que $A$ divise $a_{n+1}^2 + 1$.

**Étape 1. Faire apparaître $A$ dans $a_{n+1}$.**

Par définition,

$$a_{n+1} = b^2 + b + 1 = \big(b^2 + 1\big) + b = A + b.$$

**Étape 2. Élever au carré.**

$$a_{n+1}^2 = (A + b)^2 = A^2 + 2Ab + b^2.$$

**Étape 3. Ajouter $1$ et regrouper.**

$$a_{n+1}^2 + 1 = A^2 + 2Ab + b^2 + 1 = A^2 + 2Ab + A,$$

puisque $b^2 + 1 = A$.

**Étape 4. Mettre $A$ en facteur.**

Les trois termes contiennent $A$ :

$$a_{n+1}^2 + 1 = A\,\big(A + 2b + 1\big).$$

Comme $A + 2b + 1$ est un entier, $A = a_n^2 + 1$ divise bien $a_{n+1}^2 + 1$.

C'est ce qu'il fallait démontrer.

## Going further

Le facteur obtenu se lit joliment :

$$A + 2b + 1 = b^2 + 1 + 2b + 1 = (b+1)^2 + 1.$$

Autrement dit,

$$a_{n+1}^2 + 1 = \big(a_n^2 + 1\big)\,\big((a_n+1)^2 + 1\big).$$

Vérifions sur les premiers termes. Avec $a_1 = 1$, on a $a_2 = 3$ et

$$a_2^2 + 1 = 10 = (1^2+1) \times (2^2+1) = 2 \times 5.$$

Avec $a_2 = 3$, on a $a_3 = 13$ et

$$a_3^2 + 1 = 170 = (3^2+1) \times (4^2+1) = 10 \times 17.$$

En enchaînant, $a_n^2 + 1$ est un produit de plus en plus long, ce qui montre au passage que les termes de la suite sont très loin d'être premiers.

Si tu connais les congruences, la démonstration tient en une ligne : modulo $a_n^2+1$, on a $a_{n+1} = (a_n^2+1) + a_n \equiv a_n$, donc $a_{n+1}^2 + 1 \equiv a_n^2 + 1 \equiv 0$.
