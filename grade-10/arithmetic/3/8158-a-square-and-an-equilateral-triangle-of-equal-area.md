---
id: "8158"
title: "Un carré et un triangle équilatéral de même aire"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [irrationnel, racine-carree, aire, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 56 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Peut-on trouver deux nombres **rationnels** strictement positifs $a$ et $b$ tels qu'un carré de côté $a$ ait exactement la même aire qu'un triangle équilatéral de côté $b$ ?

## Hints

1. Commence par exprimer l'aire d'un triangle équilatéral de côté $b$. Trace une hauteur et utilise le théorème de Pythagore.
2. Écris l'égalité des deux aires, puis isole $\sqrt{3}$.
3. Si $a$ et $b$ sont rationnels, que peux-tu dire du nombre que tu viens d'obtenir ?
4. Il reste à savoir si $\sqrt{3}$ est rationnel. Suppose $\sqrt{3} = \dfrac{p}{q}$ avec la fraction irréductible, et regarde la divisibilité par $3$.

## Solution

**L'aire du triangle équilatéral.**

Soit un triangle équilatéral de côté $b$. La hauteur issue d'un sommet coupe le côté opposé en son milieu, et forme un triangle rectangle de côtés $\dfrac{b}{2}$, $h$ et d'hypoténuse $b$. Le théorème de Pythagore donne

$$h^2 = b^2 - \frac{b^2}{4} = \frac{3b^2}{4}, \qquad \text{donc} \qquad h = \frac{b\sqrt{3}}{2} .$$

L'aire du triangle vaut donc

$$\frac{b \times h}{2} = \frac{b^2\sqrt{3}}{4} .$$

**L'égalité des aires.**

Supposons qu'il existe des rationnels strictement positifs $a$ et $b$ avec

$$a^2 = \frac{b^2\sqrt{3}}{4} .$$

Comme $b \neq 0$, on peut isoler la racine :

$$\sqrt{3} = \frac{4a^2}{b^2} .$$

Or $a$ et $b$ sont rationnels, donc $4a^2$ et $b^2$ le sont aussi, et le quotient de deux rationnels (le second non nul) est rationnel. Il faudrait donc que $\sqrt{3}$ soit un nombre rationnel.

**Mais $\sqrt{3}$ est irrationnel.**

Supposons le contraire : $\sqrt{3} = \dfrac{p}{q}$ avec $p$ et $q$ entiers strictement positifs et la fraction irréductible. En élevant au carré,

$$p^2 = 3q^2 .$$

Donc $3$ divise $p^2$. Comme $3$ est premier, $3$ divise $p$ : écrivons $p = 3p'$. Alors $9p'^2 = 3q^2$, donc $q^2 = 3p'^2$, et le même argument donne que $3$ divise $q$.

Ainsi $3$ divise à la fois $p$ et $q$, ce qui contredit le fait que la fraction $\dfrac{p}{q}$ soit irréductible. Donc $\sqrt{3}$ n'est pas rationnel.

**Conclusion.**

L'hypothèse de départ mène à une contradiction.

$$\boxed{\ \text{Non : un carré et un triangle équilatéral de côtés rationnels n'ont jamais la même aire.}\ }$$

## Going further

Rien n'empêche en revanche de trouver un carré et un triangle équilatéral de même aire : il suffit de prendre $b = 2$, donc une aire de $\sqrt{3}$, et un carré de côté $a = \sqrt[4]{3}$. Ce que dit l'exercice, c'est que l'un au moins des deux côtés est alors forcément irrationnel.
