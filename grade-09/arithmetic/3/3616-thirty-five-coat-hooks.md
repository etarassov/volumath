---
id: "3616"
title: "Les trente-cinq patères"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [diviseurs, equation-entiere, espacement, denombrement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), X26 AMC 8, Number Theory"
  reference: "Handout-5143-5656.pdf, problème 5.3 (AMC 8 2025, problème 22)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5143-5656.pdf"
---

## Statement

Une salle de classe possède une rangée de $35$ patères alignées.

Pauline aime que les manteaux soient régulièrement espacés. Plus précisément, elle veut qu'il y ait **le même nombre de patères libres** avant le premier manteau, après le dernier manteau, et entre deux manteaux voisins.

On suppose qu'il y a au moins un manteau et au moins une patère libre.

Combien de nombres de manteaux différents peuvent convenir ?

## Hints

1. Appelle $m$ le nombre de manteaux et $v$ le nombre de patères libres dans chaque intervalle. Combien y a-t-il d'intervalles en tout ?
2. Écris l'égalité qui exprime que le total des patères vaut $35$.
3. Ajoute $1$ de chaque côté au bon endroit pour faire apparaître un produit. Tu chercheras ensuite les diviseurs d'un nombre bien connu.

## Solution

**Étape 1. Poser les notations.**

Notons $m$ le nombre de manteaux et $v$ le nombre de patères libres dans chaque intervalle.

Les intervalles sont : celui avant le premier manteau, ceux entre deux manteaux voisins (il y en a $m - 1$), et celui après le dernier manteau. Cela fait en tout

$$1 + (m-1) + 1 = m + 1 \text{ intervalles}$$

**Étape 2. Écrire l'équation.**

Chaque patère est soit occupée par un manteau, soit libre dans l'un des intervalles :

$$m + v(m+1) = 35$$

avec $m \geqslant 1$ et $v \geqslant 1$, tous deux entiers.

**Étape 3. Faire apparaître un produit.**

Ajoutons $1$ aux deux membres :

$$m + 1 + v(m+1) = 36$$
$$(m+1)(1 + v) = 36$$

**Étape 4. Chercher les diviseurs.**

Posons $d = m + 1$. Alors $d$ divise $36$, et $1 + v = \dfrac{36}{d}$.

Les contraintes deviennent :

- $m \geqslant 1$ donne $d \geqslant 2$ ;
- $v \geqslant 1$ donne $1 + v \geqslant 2$, c'est-à-dire $\dfrac{36}{d} \geqslant 2$, donc $d \leqslant 18$.

Les diviseurs de $36$ sont $1$, $2$, $3$, $4$, $6$, $9$, $12$, $18$, $36$. Ceux qui vérifient $2 \leqslant d \leqslant 18$ sont

$$2, \ 3, \ 4, \ 6, \ 9, \ 12, \ 18$$

soit $7$ valeurs.

**Étape 5. Revenir aux manteaux.**

À chaque $d$ correspond $m = d - 1$ :

| $d$ | $2$ | $3$ | $4$ | $6$ | $9$ | $12$ | $18$ |
|---|---|---|---|---|---|---|---|
| $m$ | $1$ | $2$ | $3$ | $5$ | $8$ | $11$ | $17$ |
| $v$ | $17$ | $11$ | $8$ | $5$ | $3$ | $2$ | $1$ |

Vérifions le cas $m = 5$, $v = 5$ : $5 + 5 \times 6 = 35$. C'est correct.

**Réponse.** $7$ nombres de manteaux conviennent : $1$, $2$, $3$, $5$, $8$, $11$ et $17$.

## Going further

Le tableau est symétrique : la ligne $m$ lue à l'envers donne la ligne $v$. Ce n'est pas un hasard, car l'équation $(m+1)(v+1) = 36$ ne change pas quand on échange $m$ et $v$.

L'astuce « ajouter $1$ pour faire apparaître un produit » revient souvent. Elle transforme une équation à deux inconnues entières, difficile à explorer, en une simple recherche de diviseurs.
