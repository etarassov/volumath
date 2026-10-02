---
id: "13011"
title: "AI = BC et un angle double"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [cercle inscrit, bissectrice, loi des sinus, trigonometrie, angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 3 octobre 2012"
  reference: "2017-09_coupe_automne_2012.pdf, exercices pour les élèves de première et terminale, exercice 10 ; corrigé 2017-09_coupe_automne_2012_corrige.pdf (le corrigé écrit IAC au lieu de AIC et inverse les deux cas de l'équation sin x = sin y, la conclusion 60° reste juste)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2012.pdf"
---

## Statement

Soit $ABC$ un triangle et $I$ le centre de son cercle inscrit, c'est-à-dire le point où se coupent ses trois bissectrices. On suppose que
$$AI = BC \qquad \text{et} \qquad \widehat{ICA} = 2\,\widehat{IAC} .$$
Quelle est la mesure de l'angle $\widehat{ABC}$ ?

## Hints

1. Pose $\alpha = \widehat{IAC}$. Comme $(AI)$ et $(CI)$ sont des bissectrices, exprime les trois angles du triangle $ABC$ en fonction de $\alpha$, puis l'angle $\widehat{AIC}$.
2. Les segments $[AI]$ et $[BC]$ sont dans deux triangles différents, $AIC$ et $ABC$, qui ont le côté $[AC]$ en commun. Un outil relie, dans un triangle, la longueur d'un côté au sinus de l'angle opposé.
3. C'est la loi des sinus : dans un triangle $ABC$, $\dfrac{BC}{\sin \widehat{A}} = \dfrac{CA}{\sin \widehat{B}} = \dfrac{AB}{\sin \widehat{C}}$. Elle se démontre en calculant l'aire du triangle de trois façons.
4. Tu dois obtenir une égalité $\sin x = \sin y$ entre deux angles compris entre $0^\circ$ et $180^\circ$. Dans ce cas, ou bien $x = y$, ou bien $x + y = 180^\circ$.

## Solution

**Rappel : la loi des sinus.** Dans un triangle $ABC$, notons $a = BC$, $b = CA$, $c = AB$, et $S$ son aire. Soit $H$ le pied de la hauteur issue de $C$. Dans le triangle rectangle $AHC$, on a $CH = b \sin \widehat{A}$. C'est encore vrai si l'angle $\widehat{A}$ est obtus, car alors $H$ est de l'autre côté de $A$, l'angle en $A$ du triangle $AHC$ vaut $180^\circ - \widehat{A}$, et $\sin\left(180^\circ - \widehat{A}\right) = \sin \widehat{A}$. Si $\widehat{A}$ est droit, $H = A$ et $CH = b = b \sin 90^\circ$. Donc
$$2S = c \times CH = b\,c\,\sin \widehat{A} .$$
En faisant le même calcul avec les deux autres sommets, $2S = c\,a\,\sin \widehat{B} = a\,b\,\sin \widehat{C}$. On divise ces trois égalités par $a\,b\,c$ :
$$\frac{\sin \widehat{A}}{a} = \frac{\sin \widehat{B}}{b} = \frac{\sin \widehat{C}}{c}, \qquad \text{c'est-à-dire} \qquad \frac{a}{\sin \widehat{A}} = \frac{b}{\sin \widehat{B}} = \frac{c}{\sin \widehat{C}} .$$

**Les angles en fonction de $\alpha$.** Posons $\alpha = \widehat{IAC}$. La droite $(AI)$ est la bissectrice de l'angle en $A$, donc $\widehat{BAC} = 2\alpha$. Par hypothèse $\widehat{ICA} = 2\alpha$, et $(CI)$ est la bissectrice de l'angle en $C$, donc $\widehat{ACB} = 4\alpha$. La somme des angles du triangle $ABC$ donne
$$\widehat{ABC} = 180^\circ - 6\alpha .$$
Comme cet angle est strictement positif, $0 < \alpha < 30^\circ$.

Dans le triangle $AIC$, les angles en $A$ et en $C$ valent $\alpha$ et $2\alpha$, donc
$$\widehat{AIC} = 180^\circ - 3\alpha .$$

**La loi des sinus deux fois.** Dans le triangle $AIC$, le côté $[AI]$ est opposé à l'angle en $C$, qui vaut $2\alpha$, et le côté $[AC]$ est opposé à l'angle en $I$ :
$$\frac{AI}{\sin 2\alpha} = \frac{AC}{\sin\left(180^\circ - 3\alpha\right)}, \qquad \text{donc} \qquad AI = \frac{AC \sin 2\alpha}{\sin\left(180^\circ - 3\alpha\right)} .$$
Dans le triangle $ABC$, le côté $[BC]$ est opposé à l'angle en $A$, qui vaut aussi $2\alpha$, et le côté $[AC]$ est opposé à l'angle en $B$ :
$$\frac{BC}{\sin 2\alpha} = \frac{AC}{\sin \widehat{ABC}}, \qquad \text{donc} \qquad BC = \frac{AC \sin 2\alpha}{\sin \widehat{ABC}} .$$
Les deux numérateurs sont égaux. L'égalité $AI = BC$ revient donc à
$$\sin \widehat{ABC} = \sin\left(180^\circ - 3\alpha\right) .$$

**On résout.** Les deux angles $\widehat{ABC} = 180^\circ - 6\alpha$ et $180^\circ - 3\alpha$ sont compris strictement entre $0^\circ$ et $180^\circ$. Sur le cercle trigonométrique, deux tels angles ont le même sinus seulement s'ils sont égaux ou si leur somme vaut $180^\circ$.

- S'ils sont égaux : $180^\circ - 6\alpha = 180^\circ - 3\alpha$, donc $\alpha = 0$. C'est impossible.
- Si leur somme vaut $180^\circ$ : $360^\circ - 9\alpha = 180^\circ$, donc $\alpha = 20^\circ$.

On trouve $\alpha = 20^\circ$, d'où $\widehat{ABC} = 180^\circ - 120^\circ = 60^\circ$.

**Ce triangle existe bien.** Prenons le triangle d'angles $\widehat{A} = 40^\circ$, $\widehat{B} = 60^\circ$, $\widehat{C} = 80^\circ$. Alors $\widehat{IAC} = 20^\circ$ et $\widehat{ICA} = 40^\circ = 2\,\widehat{IAC}$. Les deux formules ci-dessus donnent $AI = \dfrac{AC \sin 40^\circ}{\sin 120^\circ}$ et $BC = \dfrac{AC \sin 40^\circ}{\sin 60^\circ}$, qui sont égales car $\sin 120^\circ = \sin 60^\circ$. Les deux conditions sont donc remplies.

**Conclusion.** L'angle $\widehat{ABC}$ mesure $60^\circ$.

## Going further

1. Dans le triangle trouvé, l'angle $\widehat{AIC}$ vaut $120^\circ$ et l'angle $\widehat{ABC}$ vaut $60^\circ$ : ils sont supplémentaires. Montrer que dans tout triangle, $\widehat{AIC} = 90^\circ + \dfrac{1}{2}\widehat{ABC}$, et en déduire que $\widehat{AIC} + \widehat{ABC} = 180^\circ$ seulement quand $\widehat{ABC} = 60^\circ$.
2. Montrer que les quatre points $A$, $I$, $C$ et le centre $O$ du cercle circonscrit à $ABC$ sont sur un même cercle exactement quand $\widehat{ABC} = 60^\circ$.
