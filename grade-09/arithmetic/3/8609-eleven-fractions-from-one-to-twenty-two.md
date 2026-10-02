---
id: "8609"
title: "Onze fractions avec les nombres de 1 à 22"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, divisibilite, maximum]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023"
  reference: "valbonne-2023.pdf, Coupe Animath de printemps 2023, exercices lycéens, exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Antoine utilise chacun des nombres $1, 2, 3, \ldots, 22$ exactement une fois pour écrire $11$ fractions. Par exemple il peut écrire

$$\frac{10}{2}, \quad \frac{4}{3}, \quad \frac{15}{5}, \quad \frac{7}{6}, \quad \frac{8}{9}, \quad \frac{11}{19}, \quad \frac{12}{14}, \quad \frac{13}{17}, \quad \frac{22}{21}, \quad \frac{18}{16}, \quad \frac{20}{1} .$$

Dans cet exemple, trois fractions seulement valent un nombre entier : $\dfrac{10}{2} = 5$, $\dfrac{15}{5} = 3$ et $\dfrac{20}{1} = 20$.

Antoine veut faire mieux. **Quel est le nombre maximal de fractions entières qu'il peut obtenir ?**

## Hints

1. Commence par essayer d'en faire beaucoup à la main. Les paires $\dfrac{22}{11}$, $\dfrac{20}{10}$, $\dfrac{18}{9}$… viennent toutes seules.
2. Tu vas buter sur certains nombres. Lesquels résistent ?
3. Prends un nombre premier $p$ avec $2p > 22$. Dans quelle fraction entière peut-il apparaître ? Passe en revue les deux possibilités : en haut, ou en bas.
4. Trouve tous les nombres premiers $p$ entre $1$ et $22$ tels que $2p > 22$. Il y en a trois. Combien de fractions entières peuvent-ils occuper à eux trois ?

## Solution

**Les trois nombres gênants.** Regardons $13$, $17$ et $19$. Ce sont des nombres premiers, et leur double dépasse déjà $22$ : il n'y a donc, parmi $1, \ldots, 22$, aucun autre multiple de $13$, ni de $17$, ni de $19$.

Soit $p$ l'un de ces trois nombres, et regardons la fraction dans laquelle il se trouve.

- Si $p$ est au **dénominateur**, la fraction $\dfrac{x}{p}$ est entière seulement si $p$ divise $x$. Comme $x \leqslant 22$ et $x \neq p$, c'est impossible.
- Si $p$ est au **numérateur**, la fraction $\dfrac{p}{y}$ est entière seulement si $y$ divise $p$. Comme $p$ est premier, $y$ vaut $1$ ou $p$ ; et $y \neq p$, donc $y = 1$.

**Bilan : une fraction contenant $13$, $17$ ou $19$ est entière seulement si elle s'écrit $\dfrac{p}{1}$.**

**Pourquoi $11$ est impossible.** Les trois nombres $13$, $17$, $19$ sont répartis dans les $11$ fractions, et une fraction ne contient que deux nombres. Ils occupent donc **au moins deux** fractions différentes. Or une seule fraction au monde peut contenir le nombre $1$ : au plus une de ces deux fractions est entière. Il y a donc au moins une fraction non entière, et le nombre de fractions entières est au plus $10$.

**Pourquoi $10$ est atteint.** Il suffit de loger deux des trois gêneurs dans une même fraction, qu'on sacrifie, et de donner le $1$ au troisième :

$$\frac{22}{11}, \quad \frac{20}{10}, \quad \frac{18}{9}, \quad \frac{16}{8}, \quad \frac{14}{7}, \quad \frac{12}{6}, \quad \frac{21}{3}, \quad \frac{15}{5}, \quad \frac{4}{2}, \quad \frac{19}{1}, \quad \frac{17}{13} .$$

Vérifions : les vingt-deux nombres $1$ à $22$ y figurent chacun une fois exactement, et les dix premières fractions valent respectivement $2, 2, 2, 2, 2, 2, 7, 3, 2, 19$. Seule la dernière, $\dfrac{17}{13}$, n'est pas entière.

**Conclusion.** Le nombre maximal de fractions entières est $\boxed{10}$.

## Going further

Beaucoup de candidats ont repéré les trois nombres $13$, $17$, $19$, mais n'ont pas pensé à en mettre **deux dans la même fraction**. Ils sacrifiaient alors deux fractions au lieu d'une et s'arrêtaient à $9$.

Quand on doit sacrifier des objets gênants, il vaut souvent mieux les regrouper que les disperser : c'est une idée qui resservira.
