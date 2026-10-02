---
id: "13454"
title: "Cinq racines carrées et des fractions emboîtées"
grade: 9
theme: algebra
difficulty: 1
duration_min: 10
tags: [racine carree, fractions, calcul, carres parfaits]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve lycée, exercice 8 (seule la réponse était demandée) ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf. L'original écrit des fractions emboîtées sur quatre étages ; on les écrit ici avec la barre / pour qu'elles restent lisibles"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

Calculer, sans calculatrice, le nombre

$$A = \sqrt{12 \;/\; \sqrt{45 \;/\; \sqrt{250 \;/\; \sqrt{400 \;/\; \sqrt{16}}}}}$$

où la barre $/$ désigne une division : $12 / \sqrt{\ldots}$ signifie $12$ divisé par $\sqrt{\ldots}$.

## Hints

1. On ne peut pas commencer par la racine extérieure. Commence par la racine la plus à l'intérieur, puis remonte.
2. Que vaut $\sqrt{16}$ ? Et $400 / 4$ ?
3. À chaque étape, on tombe sur un carré parfait.

## Solution

On calcule de l'intérieur vers l'extérieur. À chaque étape, on fait une division, puis on prend la racine carrée.

- La racine la plus à l'intérieur vaut $\sqrt{16} = 4$.
- Ensuite $400 / 4 = 100$, et $\sqrt{100} = 10$.
- Ensuite $250 / 10 = 25$, et $\sqrt{25} = 5$.
- Ensuite $45 / 5 = 9$, et $\sqrt{9} = 3$.
- Enfin $12 / 3 = 4$, et $\sqrt{4} = 2$.

Donc

$$A = 2.$$

*Remarque.* Le calcul tombe juste parce que les nombres ont été choisis pour cela : $400 = 4 \times 10^2$, $250 = 10 \times 5^2$, $45 = 5 \times 3^2$ et $12 = 3 \times 2^2$.

## Going further

En suivant l'idée de la remarque, fabriquer une expression du même genre, avec quatre racines carrées emboîtées, qui vaut $3$.
