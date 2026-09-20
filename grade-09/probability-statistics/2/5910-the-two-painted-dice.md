---
id: "5910"
title: "Les deux dés peints en rouge et bleu"
grade: 9
theme: probability-statistics
difficulty: 2
duration_min: 20
tags: [probabilites, des, equiprobabilite, equation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Probability (Elgin Johnston)"
  reference: "EJohnstonProbability.pdf, problème 1"
  url: "https://mathcircles.org/activity/probability/"
  original_language: "en"
  local_copy: "sources/originals/namc/EJohnstonProbability.pdf"
---

## Statement

Alice et Bruno jouent avec deux dés, mais ils ne regardent pas les chiffres : chaque face de chaque dé a été peinte en rouge ou en bleu.

On lance les deux dés en même temps.

- Alice gagne si les deux faces du dessus sont de la **même** couleur.
- Bruno gagne si elles sont de couleurs **différentes**.

Le jeu est équitable : chacun a exactement une chance sur deux de gagner.

Le premier dé a $5$ faces rouges et $1$ face bleue. Combien le second dé a-t-il de faces rouges et de faces bleues ?

## Hints

1. Les deux dés sont équilibrés : chaque face a la même chance de sortir. Combien y a-t-il de résultats possibles en tout quand on lance les deux dés ?
2. Combien de ces résultats doivent être favorables à Alice pour que le jeu soit équitable ?
3. Note $r$ le nombre de faces rouges du second dé. Combien a-t-il de faces bleues ?
4. Compte séparément les résultats « les deux faces sont rouges » et les résultats « les deux faces sont bleues ». Tu obtiendras une équation en $r$.

## Solution

**Réponse : le second dé a $3$ faces rouges et $3$ faces bleues.**

### Le décompte des résultats

Chaque dé a $6$ faces également probables, donc le lancer des deux dés a
$$6 \times 6 = 36$$
résultats possibles, tous de même probabilité.

Pour que le jeu soit équitable, Alice doit gagner dans exactement la moitié de ces cas, c'est-à-dire dans $18$ résultats.

### L'équation

Notons $r$ le nombre de faces rouges du second dé. Il a alors $6 - r$ faces bleues.

Alice gagne dans deux situations, qui ne peuvent pas se produire en même temps :

- **les deux faces sont rouges** : $5$ choix pour la face du premier dé, $r$ choix pour celle du second, soit $5r$ résultats ;
- **les deux faces sont bleues** : $1$ choix pour le premier dé, $6 - r$ pour le second, soit $6 - r$ résultats.

Au total, Alice gagne dans $5r + (6 - r) = 4r + 6$ résultats. Cela doit faire $18$ :
$$4r + 6 = 18, \qquad 4r = 12, \qquad r = 3.$$

### Vérification

Le second dé a $3$ faces rouges et $3$ faces bleues.

- Deux faces rouges : $5 \times 3 = 15$ résultats.
- Deux faces bleues : $1 \times 3 = 3$ résultats.
- Total pour Alice : $15 + 3 = 18$ résultats sur $36$, soit une probabilité de $\tfrac{1}{2}$.

Le jeu est bien équitable.

## Going further

1. Le premier dé a maintenant $4$ faces rouges et $2$ bleues. Comment peindre le second pour que le jeu reste équitable ?
2. Le premier dé a $a$ faces rouges et $6 - a$ bleues. Pour quelles valeurs de $a$ existe-t-il un second dé qui rende le jeu équitable ? Que vaut alors $r$ ?
3. Et si le premier dé était entièrement rouge ? Explique ce qui se passe.
