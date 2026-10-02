---
id: "11463"
title: "4048 boules dans 4047 sacs"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 10
tags: [tiroirs, couleurs, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 4 (combinatoire)"
  reference: "2025-03_Sujet-envoi-4-2024-2025.pdf, Exercices Juniors, exercice 1 (repris en Seniors, exercice 10) ; corrigé 2025-05_Corrige-envoi-4-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/03/Sujet-envoi-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-03_Sujet-envoi-4-2024-2025.pdf"
---

## Statement

Erik possède $2024$ boules blanches et $2024$ boules noires. Il les répartit toutes dans $4047$ sacs.

Une fois la répartition terminée, il remarque qu'aucun sac ne contient deux boules de la même couleur :
chaque sac contient au plus une boule blanche et au plus une boule noire.

Montrer qu'il existe un sac qui contient exactement une boule blanche et une boule noire.

## Hints

1. Combien y a-t-il de boules en tout ? Compare avec le nombre de sacs.
2. Il y a plus de boules que de sacs. Que peut-on en déduire pour au moins un sac ?
3. Un sac contient au moins deux boules. Peut-il en contenir trois ? Et s'il en contient deux, de quelles
   couleurs sont-elles ?

## Solution

**Il y a plus de boules que de sacs.** Erik a en tout $2024 + 2024 = 4048$ boules, et seulement $4047$ sacs.

Si chaque sac contenait au plus une boule, il y aurait au plus $4047$ boules en tout. Ce n'est pas le cas,
donc au moins un sac contient **au moins deux** boules. C'est le principe des tiroirs. Appelons ce sac $T$.

**Le sac $T$ contient exactement deux boules.** Il n'y a que deux couleurs. Si $T$ contenait trois boules
ou plus, deux d'entre elles auraient la même couleur, ce qui est interdit. Donc $T$ contient exactement
deux boules.

**Ces deux boules sont de couleurs différentes.** Sinon $T$ contiendrait deux boules de la même couleur,
ce qui est encore interdit. L'une est donc blanche et l'autre noire.

**Conclusion.** Le sac $T$ contient exactement une boule blanche et une boule noire.

## Going further

On peut aussi raisonner couleur par couleur. Les $2024$ boules blanches sont dans $2024$ sacs différents,
et les $2024$ boules noires aussi. Cela fait $2024 + 2024 = 4048$ « places occupées » pour seulement
$4047$ sacs, donc un sac est compté deux fois : il contient une boule de chaque couleur.

Avec $2024$ boules blanches et $2024$ boules noires, combien faut-il de sacs au minimum pour que la
conclusion puisse être fausse ? Réponse : $4048$, en mettant une seule boule par sac.
