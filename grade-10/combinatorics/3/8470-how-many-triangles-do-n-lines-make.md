---
id: "8470"
title: "Combien de triangles forment n droites ?"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, coefficient-binomial, droites, position-generale]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Comptage et pot-pourri » (Emile Avérous et Maena Quemener), exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On trace $n$ droites dans le plan, placées « au hasard » au sens suivant :

- deux droites ne sont jamais parallèles ;
- trois droites ne passent jamais toutes les trois par un même point.

Combien ces droites dessinent-elles de triangles ?

## Hints

1. Fais un dessin avec $3$ droites, puis avec $4$, puis avec $5$. Compte les triangles à chaque fois.
2. Combien faut-il de droites pour dessiner un triangle ? Et à l'inverse, un triangle est-il déterminé par le choix des droites qui portent ses côtés ?
3. Il suffit donc de compter les façons de choisir trois droites parmi $n$.
4. Attention, il reste deux choses à justifier : que trois droites quelconques forment **toujours** un triangle, et que deux choix différents donnent **toujours** deux triangles différents.

## Solution

La réponse est $\binom{n}{3} = \dfrac{n(n-1)(n-2)}{6}$.

Pour l'obtenir, on met en correspondance les triangles dessinés et les groupes de trois droites.

### Étape 1. Trois droites forment toujours un triangle

Prenons trois de nos droites, appelons-les $d_1$, $d_2$, $d_3$.

Comme elles ne sont pas parallèles deux à deux, elles se coupent deux à deux. Notons

$$A = d_1 \cap d_2, \qquad B = d_1 \cap d_3, \qquad C = d_2 \cap d_3.$$

Ces trois points sont distincts. En effet, si par exemple $A = B$, ce point serait sur les trois droites, or trois droites ne sont jamais concourantes.

Ces trois points ne sont pas alignés. En effet, $A$ et $B$ sont tous deux sur $d_1$, donc la droite $(AB)$ est exactement $d_1$. Si $C$ était aussi sur cette droite, il serait sur $d_1$, et comme il est sur $d_2$ et $d_3$, les trois droites seraient concourantes : exclu.

Donc $A$, $B$, $C$ forment bien un vrai triangle, dont les côtés sont portés par $d_1$, $d_2$, $d_3$.

### Étape 2. Deux groupes différents donnent deux triangles différents

Réciproquement, un triangle du dessin détermine les trois droites qui portent ses côtés. Deux groupes de trois droites différents donnent donc deux triangles différents, puisqu'à partir du triangle on peut retrouver le groupe.

### Étape 3. Compter

Les triangles sont donc **exactement** en correspondance avec les groupes de trois droites choisies parmi $n$, sans tenir compte de l'ordre. Leur nombre est

$$\boxed{\binom{n}{3} = \frac{n(n-1)(n-2)}{6}.}$$

### Vérification sur de petits cas

| $n$ | $\binom{n}{3}$ |
|---|---|
| $2$ | $0$ |
| $3$ | $1$ |
| $4$ | $4$ |
| $5$ | $10$ |
| $6$ | $20$ |

Avec $4$ droites en position générale, on trouve bien $4$ triangles : chacun s'obtient en oubliant une des quatre droites.

## Going further

L'exercice est un bon exemple de **comptage par correspondance** : au lieu de compter directement des objets compliqués (des triangles dans une figure qui devient vite illisible), on montre qu'ils sont en correspondance exacte avec des objets simples (des groupes de trois droites), et l'on compte ceux-là.

Attention toutefois : les triangles comptés ici sont ceux dont les côtés sont **portés** par trois des droites. Dans le dessin, certains de ces triangles sont traversés par d'autres droites, donc ne sont pas des « petites régions » de la figure. Compter les régions triangulaires, celles qu'on pourrait colorier sans lever le crayon, est une question différente et nettement plus difficile.

Deux autres comptages du même genre, avec les mêmes hypothèses :

- le nombre de points d'intersection est $\binom{n}{2} = \dfrac{n(n-1)}{2}$, puisque chaque paire de droites donne un point, et que deux paires différentes donnent deux points différents ;
- le nombre de régions du plan découpées par les $n$ droites est $1 + \dfrac{n(n+1)}{2}$, que l'on obtient en ajoutant les droites une par une.
