---
id: "13416"
title: "Des droites qui en coupent chacune dix autres"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [droites, paralleles, denombrement, diviseurs, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve collège, exercice 6 ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Soit $n$ un entier strictement positif. On suppose qu'on peut tracer dans le plan $n$ droites distinctes telles que chacune d'elles coupe exactement dix des autres.

Quelles sont les valeurs possibles de $n$ ?

## Hints

1. Deux droites distinctes du plan sont soit parallèles, soit sécantes. Choisis une des $n$ droites : combien des autres lui sont parallèles ?
2. Ce nombre est le même pour toutes les droites. Range alors les droites par paquets de droites parallèles entre elles. Combien chaque paquet contient-il de droites ?
3. S'il y a $g$ paquets, on a $n = g \times (n - 10)$. Calcule $n - (n - 10)$ de deux façons.
4. N'oublie pas la deuxième moitié du travail : pour chaque valeur trouvée, il faut montrer qu'un tel ensemble de droites existe vraiment.

## Solution

On rappelle que deux droites distinctes du plan sont soit parallèles, soit sécantes (elles ont alors exactement un point commun).

**Étape 1 : chaque droite a le même nombre de parallèles.**

Choisissons une des $n$ droites, notée $(d)$. Les $n - 1$ autres droites se partagent en deux groupes : les $10$ droites qui coupent $(d)$, et celles qui sont parallèles à $(d)$. Il y a donc exactement

$$(n - 1) - 10 = n - 11$$

droites parallèles à $(d)$. En particulier $n \geqslant 11$. Ce nombre $n - 11$ ne dépend pas de la droite choisie : **chaque droite est parallèle à exactement $n - 11$ autres droites.**

**Étape 2 : les paquets de droites parallèles.**

Rangeons ensemble les droites qui sont parallèles entre elles. Deux droites parallèles à une même troisième sont parallèles entre elles, donc chaque droite se trouve dans un seul paquet, avec toutes ses parallèles, et rien d'autre. D'après l'étape 1, chaque paquet contient une droite et ses $n - 11$ parallèles, soit

$$(n - 11) + 1 = n - 10 \text{ droites}.$$

Si l'on appelle $g$ le nombre de paquets, on a donc $n = g \times (n - 10)$.

**Étape 3 : les valeurs possibles.**

On en déduit

$$10 = n - (n - 10) = g \times (n - 10) - (n - 10) = (g - 1) \times (n - 10).$$

Le nombre $n - 10$ est un entier positif (car $n \geqslant 11$) qui divise $10$. Les diviseurs positifs de $10$ sont $1$, $2$, $5$ et $10$, donc

$$n - 10 \in \{1, 2, 5, 10\} \qquad \text{c'est-à-dire} \qquad n \in \{11, 12, 15, 20\}.$$

**Étape 4 : ces quatre valeurs sont bien possibles.**

L'idée est de prendre $g$ paquets de droites parallèles, chacun dans sa propre direction. Une droite d'un paquet coupe alors toutes les droites des autres paquets, et aucune droite de son propre paquet.

- $n = 11$ : on trace $11$ droites dont deux ne sont jamais parallèles ($11$ paquets d'une droite). Chacune coupe les $10$ autres.
- $n = 12$ : on trace $6$ paquets de $2$ droites parallèles, dans $6$ directions différentes. Chaque droite coupe $12 - 2 = 10$ droites.
- $n = 15$ : on trace $3$ paquets de $5$ droites parallèles, dans $3$ directions différentes. Chaque droite coupe $15 - 5 = 10$ droites.
- $n = 20$ : on trace $2$ paquets de $10$ droites parallèles, par exemple $10$ droites horizontales et $10$ droites verticales. Chaque droite coupe les $10$ droites de l'autre paquet.

**Conclusion.** Les valeurs possibles de $n$ sont $11$, $12$, $15$ et $20$.

## Going further

Même question quand chaque droite doit couper exactement quatre des autres droites. Puis exactement $m$ des autres, pour un entier $m \geqslant 1$ quelconque.
