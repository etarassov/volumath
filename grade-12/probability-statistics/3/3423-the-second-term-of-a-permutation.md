---
id: "3423"
title: "Le deuxième terme d'une permutation tirée au hasard"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 25
tags: [permutations, denombrement, probabilite, equiprobabilite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12 Training, Week 4: Combinatorics"
  reference: "Handout-3716-3316.pdf, section 1.3, problème 3 (réponse dans Handout-3718-3316.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3716-3316.pdf"
---

## Statement

On note $S$ l'ensemble des rangements des cinq nombres $1, 2, 3, 4, 5$ dont le premier terme n'est **pas** $1$.

On tire au hasard un rangement de $S$, tous les rangements de $S$ ayant la même probabilité d'être tirés.

Quelle est la probabilité que le deuxième terme soit $2$ ?

## Hints

1. Commence par compter $S$. Combien y a-t-il de choix pour la première place ? Et ensuite pour les quatre autres ?
2. $S$ contient $4 \times 4! = 96$ rangements.
3. Pour compter les rangements favorables, commence toujours par la contrainte la plus serrée. Ici, c'est la deuxième place : elle ne peut contenir que le nombre $2$.
4. Une fois le $2$ placé en deuxième position, combien de nombres peuvent encore aller en première position ? Attention, il y a deux interdits.

## Solution

**L'idée : compter d'abord la contrainte la plus serrée, c'est-à-dire la place qui n'admet qu'une seule valeur.**

**Étape 1. Combien d'éléments dans $S$ ?**

Un rangement de $S$ se construit ainsi :

- la première place peut recevoir $2$, $3$, $4$ ou $5$ : **$4$ choix** ;
- les quatre nombres restants se répartissent sur les quatre autres places : **$4! = 24$ façons**.

$$\operatorname{card}(S) = 4 \times 24 = 96.$$

**Étape 2. Combien de rangements favorables ?**

Appelons $A$ l'ensemble des rangements de $S$ dont le deuxième terme est $2$. Construisons-les en commençant par la place la plus contrainte.

- La **deuxième** place doit contenir $2$ : **$1$ choix**.
- La **première** place ne peut contenir ni $1$ (interdit par la définition de $S$), ni $2$ (déjà utilisé). Il reste $3$, $4$ ou $5$ : **$3$ choix**.
- Les trois nombres restants se répartissent sur les trois dernières places : **$3! = 6$ façons**.

$$\operatorname{card}(A) = 1 \times 3 \times 6 = 18.$$

**Étape 3. La probabilité.**

Comme tous les rangements de $S$ sont équiprobables,

$$P(A) = \frac{\operatorname{card}(A)}{\operatorname{card}(S)} = \frac{18}{96} = \frac{3}{16}.$$

**Conclusion : la probabilité vaut $\dfrac{3}{16}$, soit environ $19\%$.**

## Going further

Sans la contrainte sur la première place, la probabilité que le deuxième terme soit $2$ vaudrait $\dfrac15 = 20\%$, par symétrie : chacun des cinq nombres a la même chance d'occuper la deuxième place.

Le fait d'interdire $1$ en première place rend le $1$ un peu plus probable ailleurs, et donc le $2$ un peu moins probable en deuxième place. Le résultat $\dfrac{3}{16} = \text{18,75}\%$ est bien légèrement inférieur à $20\%$.

Un bon réflexe : vérifier que les cinq probabilités s'additionnent à $1$. Pour le $1$ en deuxième place, on trouve $\dfrac{4 \times 3!}{96} = \dfrac{24}{96} = \dfrac14$, et pour chacun des nombres $2$, $3$, $4$, $5$ on trouve $\dfrac{3}{16}$. Or $\dfrac14 + 4 \times \dfrac{3}{16} = \dfrac{4}{16} + \dfrac{12}{16} = 1$. C'est cohérent.
