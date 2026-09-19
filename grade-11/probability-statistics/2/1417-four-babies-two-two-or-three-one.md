---
id: "1417"
title: "Quatre bébés : deux-deux ou trois-un ?"
grade: 11
theme: probability-statistics
difficulty: 2
duration_min: 20
tags: [probabilite, denombrement, coefficients-binomiaux, intuition]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, Introduction to Probability"
  reference: "Handout-3798-3429.pdf, problème 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3798-3429.pdf"
---

## Statement

Quatre bébés sont nés hier à la maternité. On suppose que chaque bébé a une chance sur deux d'être une fille, indépendamment des autres.

Lequel des deux événements suivants est le plus probable ?

- **A** : il y a exactement $2$ filles et $2$ garçons ;
- **B** : il y a $3$ bébés d'un sexe et $1$ de l'autre.

Calculer les deux probabilités.

## Hints

1. Décrire un résultat de l'expérience par un mot de quatre lettres, chaque lettre valant F ou G. Combien y a-t-il de mots possibles ?
2. Tous ces mots ont-ils la même probabilité ? Pourquoi ?
3. Compter les mots ayant exactement deux F. Puis ceux qui ont trois F, puis ceux qui ont trois G. Attention à ne pas oublier une moitié de l'événement **B**.

## Solution

**L'univers.**

Rangeons les quatre bébés dans un ordre fixé, par exemple l'ordre des naissances. Un résultat est alors un mot de quatre lettres, chacune valant F (fille) ou G (garçon) : il y en a

$$2^4 = 16 .$$

Chaque bébé est une fille avec probabilité $\tfrac12$, indépendamment des autres, donc chacun de ces $16$ mots a la même probabilité $\tfrac1{16}$. Il suffit donc de compter.

**L'événement A : deux filles et deux garçons.**

Il faut choisir les deux places occupées par les F parmi les quatre :

$$\binom{4}{2} = 6 \text{ mots}, \qquad P(A) = \frac{6}{16} = \frac38 = \text{0,375} .$$

(Les six mots sont FFGG, FGFG, FGGF, GFFG, GFGF, GGFF.)

**L'événement B : trois d'un sexe et un de l'autre.**

Attention, cet événement se coupe en deux morceaux disjoints.

- Trois filles et un garçon : il faut choisir la place du G, soit $\binom{4}{1} = 4$ mots.
- Trois garçons et une fille : de même, $4$ mots.

Au total $4 + 4 = 8$ mots, donc

$$P(B) = \frac{8}{16} = \frac12 = \text{0,5} .$$

**Conclusion.** C'est l'événement $B$ qui est le plus probable :

$$P(B) = \frac12 > P(A) = \frac38 .$$

Autrement dit, une répartition « trois contre un » arrive une fois sur deux, tandis que la répartition équilibrée « deux contre deux » n'arrive que trois fois sur huit.

**Pourquoi c'est contre-intuitif.** On a l'impression que « deux et deux » est le résultat le plus naturel, et c'est vrai : la répartition « deux contre deux » est bien le résultat **unique** le plus probable, devant « trois contre un » (avec $4$ mots) et devant « quatre contre zéro » (avec $1$ mot). Mais l'événement $B$ regroupe **deux** répartitions, trois filles et un garçon d'une part, une fille et trois garçons d'autre part, et ces deux moitiés mises bout à bout dépassent la répartition équilibrée. Le reste, la probabilité d'avoir les quatre bébés du même sexe, vaut $\frac{2}{16} = \frac18$, ce qui complète bien le total : $\frac38 + \frac12 + \frac18 = 1$.

## Going further

1. Reprendre la question avec $6$ bébés : « $3$ filles et $3$ garçons » est-il plus probable que « $4$ d'un sexe et $2$ de l'autre » ?
2. Avec $2n$ bébés, la probabilité d'avoir exactement $n$ filles tend vers $0$ quand $n$ grandit. Le vérifier pour $n = 1, 2, 3, 5$ et commenter.
3. Dans la réalité, la probabilité de naissance d'une fille est plutôt de 0,487. Le classement entre $A$ et $B$ change-t-il ?
