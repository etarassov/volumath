---
id: "13228"
title: "Deux racines carrées à identifier"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [racine-carree, factorisation, irrationnel]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices collégiens, exercice 1 ; réponse (8) dans 2017-10_coupe_automne_2017_elim_college.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Soient $a$ et $b$ des entiers tels que

$$(1 + \sqrt{2})(a + b\sqrt{3}) = 3 + 3\sqrt{2} + 5\sqrt{3} + 5\sqrt{6}.$$

Déterminer $a + b$.

## Hints

1. Regroupe les termes du membre de droite deux par deux. Peux-tu y faire apparaître le facteur $1 + \sqrt{2}$ ?
2. Écris $\sqrt{6} = \sqrt{2} \times \sqrt{3}$.
3. Tu obtiens $a + b\sqrt{3} = 3 + 5\sqrt{3}$. Pourquoi cela force-t-il $a = 3$ et $b = 5$ ?

## Solution

**On factorise le membre de droite.** Comme $\sqrt{6} = \sqrt{2} \times \sqrt{3}$,

$$3 + 3\sqrt{2} + 5\sqrt{3} + 5\sqrt{6} = 3\,(1 + \sqrt{2}) + 5\sqrt{3}\,(1 + \sqrt{2}) = (1 + \sqrt{2})(3 + 5\sqrt{3}).$$

L'égalité de l'énoncé devient $(1 + \sqrt{2})(a + b\sqrt{3}) = (1 + \sqrt{2})(3 + 5\sqrt{3})$. On divise par $1 + \sqrt{2}$, qui n'est pas nul :

$$a + b\sqrt{3} = 3 + 5\sqrt{3}, \qquad \text{c'est-à-dire} \qquad (b - 5)\sqrt{3} = 3 - a.$$

**On identifie.** Si $b$ était différent de $5$, on pourrait diviser par $b - 5$ et l'on aurait $\sqrt{3} = \frac{3 - a}{b - 5}$, un quotient de deux entiers. Or $\sqrt{3}$ n'est pas un nombre rationnel (voir plus bas). Donc $b = 5$, puis $3 - a = 0$, soit $a = 3$.

**Conclusion.** $a = 3$, $b = 5$ et $a + b = 8$.

## Going further

Pourquoi $\sqrt{3}$ n'est-il pas une fraction ? Supposons $\sqrt{3} = \frac{p}{q}$ avec $p$ et $q$ entiers positifs, et la fraction irréductible. Alors $p^2 = 3q^2$, donc $3$ divise $p^2$.

Un carré n'est un multiple de $3$ que si le nombre lui-même en est un : si $p = 3k + 1$ ou $p = 3k + 2$, alors $p^2 = 9k^2 + 6k + 1$ ou $p^2 = 9k^2 + 12k + 4$, qui laissent le reste $1$ dans la division par $3$. Donc $p = 3k$, puis $9k^2 = 3q^2$, soit $q^2 = 3k^2$, et $q$ est aussi un multiple de $3$. La fraction $\frac{p}{q}$ se simplifie par $3$, ce qui contredit l'hypothèse.
