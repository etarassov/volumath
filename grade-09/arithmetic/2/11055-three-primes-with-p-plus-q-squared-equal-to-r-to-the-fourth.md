---
id: "11055"
title: "Trois nombres premiers tels que p + q² = r⁴"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [nombres-premiers, factorisation, identites-remarquables, equation-diophantienne]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Juniors, exercice 4 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf. Le corrigé conclut par la parité ; ici on factorise une seconde fois q = (r − 1)(r + 1)."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Déterminer tous les triplets $(p, q, r)$ de nombres premiers tels que

$$p + q^2 = r^4 .$$

## Hints

1. Fais passer $q^2$ de l'autre côté : $p = r^4 - q^2$. Reconnais-tu une identité remarquable ?
2. Si un nombre premier est le produit de deux entiers positifs, l'un des deux vaut $1$. Lequel ?
3. Tu obtiens $q = r^2 - 1$. Factorise encore une fois.

## Solution

**Réponse :** il y a une seule solution, $(p, q, r) = (7, 3, 2)$.

**Étape 1 : une première factorisation.**

L'équation s'écrit $p = r^4 - q^2 = (r^2)^2 - q^2$, donc, avec l'identité $A^2 - B^2 = (A - B)(A + B)$,
$$p = (r^2 - q)(r^2 + q) .$$

Le facteur $r^2 + q$ est positif et $p$ aussi, donc $r^2 - q$ est positif lui aussi.

**Étape 2 : l'un des deux facteurs vaut 1.**

Un nombre premier $p$ n'a que deux diviseurs positifs, $1$ et $p$. Donc, des deux facteurs positifs $r^2 - q$ et $r^2 + q$, l'un vaut $1$ et l'autre vaut $p$. Comme $r^2 - q < r^2 + q$, c'est le plus petit qui vaut $1$ :
$$r^2 - q = 1 \qquad \text{et} \qquad r^2 + q = p .$$

**Étape 3 : une seconde factorisation.**

La première égalité donne $q = r^2 - 1 = (r - 1)(r + 1)$.

Le même raisonnement s'applique au nombre premier $q$ : des deux facteurs positifs $r - 1$ et $r + 1$, le plus petit vaut $1$. Donc $r - 1 = 1$, c'est-à-dire $r = 2$.

On en déduit $q = 2^2 - 1 = 3$, puis $p = r^2 + q = 4 + 3 = 7$.

**Étape 4 : vérification.**

Les nombres $7$, $3$ et $2$ sont bien premiers, et $7 + 3^2 = 7 + 9 = 16 = 2^4$.

**Conclusion.** Le seul triplet qui convient est $(p, q, r) = (7, 3, 2)$.

## Going further

Déterminer tous les triplets $(p, q, r)$ de nombres premiers tels que $p + q^2 = r^2$.

*Réponse :* $p = (r - q)(r + q)$, donc $r - q = 1$ : les nombres premiers $q$ et $r$ se suivent. Le seul couple de nombres premiers consécutifs est $(2, 3)$, car parmi deux entiers consécutifs l'un est pair, et le seul nombre premier pair est $2$. On trouve $(p, q, r) = (5, 2, 3)$, et en effet $5 + 4 = 9$.
