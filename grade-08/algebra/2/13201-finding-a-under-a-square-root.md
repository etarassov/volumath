---
id: "13201"
title: "Retrouver a sous une racine carrée"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [fractions, racine-carree, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices collégiens, exercice 1 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Trouver le nombre $a$ tel que

$$\frac{1}{\sqrt{a+7}} + \frac{1}{7} = \frac{19}{84}.$$

## Hints

1. Commence par isoler la fraction qui contient $a$ : fais passer $\frac{1}{7}$ de l'autre côté.
2. Pour soustraire, écris $\frac{1}{7}$ avec le dénominateur $84$. Simplifie le résultat.
3. Si $\frac{1}{\sqrt{a+7}} = \frac{1}{12}$, que vaut $\sqrt{a+7}$ ? Et donc $a + 7$ ?

## Solution

**On isole la fraction qui contient $a$.** Comme $84 = 7 \times 12$, on a $\frac{1}{7} = \frac{12}{84}$, donc

$$\frac{1}{\sqrt{a+7}} = \frac{19}{84} - \frac{12}{84} = \frac{7}{84} = \frac{1}{12}.$$

**On remonte jusqu'à $a$.** Deux fractions de numérateur $1$ sont égales quand leurs dénominateurs sont égaux, donc $\sqrt{a+7} = 12$. Le nombre $a+7$ est donc le nombre positif dont la racine carrée vaut $12$ :

$$a + 7 = 12^2 = 144, \qquad a = 137.$$

**Vérification.** $\sqrt{137 + 7} = \sqrt{144} = 12$ et $\frac{1}{12} + \frac{1}{7} = \frac{7}{84} + \frac{12}{84} = \frac{19}{84}$.

**Conclusion.** $a = 137$.
