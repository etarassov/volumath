---
id: "3814"
title: "Les deux E du mot NEUVE"
grade: 9
theme: probability-statistics
difficulty: 3
duration_min: 20
tags: [probabilite, anagrammes, denombrement, lettres repetees]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, More on Combinatorics and Probability"
  reference: "Handout-4133-3874.pdf, problème 15 (le mot anglais SEVEN a été remplacé par NEUVE)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4133-3874.pdf"
---

## Statement

On écrit les cinq lettres du mot **NEUVE** sur cinq jetons, puis on les aligne au hasard.

Quelle est la probabilité que les deux lettres E se retrouvent côte à côte ?

## Hints

1. Deux des cinq lettres sont identiques. Deux alignements qui ne diffèrent que par l'échange des deux E donnent la même suite de lettres : attention à ne pas compter deux fois le même mot.
2. Commence par compter toutes les suites de lettres différentes que l'on peut former.
3. Pour compter celles où les deux E sont collés, imagine que tu colles les deux E ensemble pour en faire un seul gros jeton. Combien de lettres te reste-t-il à ranger ?

## Solution

**L'idée : coller les deux E pour transformer le comptage en un rangement de quatre objets tous différents.**

Les lettres sont N, E, U, V, E : cinq lettres, dont deux E identiques.

**Étape 1. Le nombre total de suites différentes.**

Si les cinq lettres étaient toutes différentes, il y aurait $5! = 120$ rangements.

Mais les deux E sont indiscernables : chaque suite de lettres est obtenue exactement deux fois (une fois pour chaque façon de placer les deux jetons E dans leurs deux positions). Le nombre de suites de lettres différentes est donc

$$\frac{5!}{2} = \frac{120}{2} = 60.$$

Chacune de ces $60$ suites vient d'exactement $2$ rangements de jetons sur les $120$ possibles : elles ont donc toutes la même probabilité $\dfrac{2}{120} = \dfrac{1}{60}$. On peut donc compter directement sur les suites de lettres.

**Étape 2. Les suites où les deux E sont côte à côte.**

Collons les deux E pour former un seul bloc **EE**. Il reste alors quatre objets à ranger :

$$\text{EE}, \quad \text{N}, \quad \text{U}, \quad \text{V},$$

tous différents, ce qui donne $4! = 24$ rangements. Chacun correspond à une suite de lettres différente, et toutes les suites où les deux E sont voisins sont obtenues exactement une fois.

Il y a donc $24$ suites favorables sur $60$.

**Étape 3. On calcule la probabilité.**

$$P = \frac{24}{60} = \frac{2}{5}.$$

(Sur les $120$ rangements de jetons, cela fait $24 \times 2 = 48$ rangements favorables, et $\dfrac{48}{120} = \dfrac{2}{5}$ : on retrouve bien le même résultat.)

**Conclusion.** La probabilité que les deux E soient côte à côte vaut $\dfrac{2}{5}$, soit $40\ \%$.

## Going further

1. Retrouve le résultat autrement : il y a $10$ façons de choisir les deux positions occupées par les E parmi les cinq places, et elles sont équiprobables. Combien de ces paires de positions sont voisines ?
2. Quelle est la probabilité que les deux E soient séparés par exactement une lettre ?
3. Même question avec un mot de six lettres dont deux sont identiques.
