---
id: "13418"
title: "Neuf racines carrées emboîtées"
grade: 9
theme: algebra
difficulty: 1
duration_min: 10
tags: [racine carree, calcul astucieux, carres parfaits]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve lycée, exercice 8 ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Calculer, sans calculatrice, le nombre

$$\sqrt{7 + \sqrt{1 + \sqrt{7 + \sqrt{1 + \sqrt{7 + \sqrt{1 + \sqrt{7 + \sqrt{3 + \sqrt{1}}}}}}}}}.$$

## Hints

1. On ne peut pas commencer par la racine extérieure. Commence par la racine la plus à l'intérieur, puis remonte.
2. Que vaut $\sqrt{3 + \sqrt{1}}$ ? Et $\sqrt{7 + 2}$ ?
3. Regarde les nombres que tu obtiens à chaque étape : ce sont toujours les mêmes.

## Solution

On calcule de l'intérieur vers l'extérieur.

- La racine la plus à l'intérieur vaut $\sqrt{1} = 1$.
- Ensuite $\sqrt{3 + 1} = \sqrt{4} = 2$.
- Ensuite $\sqrt{7 + 2} = \sqrt{9} = 3$.
- Ensuite $\sqrt{1 + 3} = \sqrt{4} = 2$.

On retombe sur le nombre $2$, et l'expression continue avec un « $7 +$ » puis un « $1 +$ » : les deux mêmes étapes se répètent. Chaque fois qu'on a obtenu $2$ et qu'on calcule $\sqrt{7 + 2}$, on trouve $3$ ; chaque fois qu'on a obtenu $3$ et qu'on calcule $\sqrt{1 + 3}$, on retrouve $2$.

Les racines qui commencent par « $7 +$ » valent donc toutes $3$, et celles qui commencent par « $1 +$ » valent toutes $2$. La racine extérieure commence par « $7 +$ » :

$$\sqrt{7 + \sqrt{1 + \sqrt{7 + \sqrt{1 + \sqrt{7 + \sqrt{1 + \sqrt{7 + \sqrt{3 + \sqrt{1}}}}}}}}} = 3.$$

Le tout repose sur deux égalités : $7 + 2 = 9 = 3^2$ et $1 + 3 = 4 = 2^2$.

## Going further

Trouver un entier $a$ pour lequel le nombre

$$\sqrt{a + \sqrt{a + \sqrt{a + \sqrt{a + \sqrt{9}}}}}$$

est un entier, et calculer ce nombre.
