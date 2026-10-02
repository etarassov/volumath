---
id: "5507"
title: "Trois nombres reconstitués à partir de trois indices"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [systeme, identites-remarquables, polynome, racines, symetrie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 4, problème 37 (sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

On cherche tous les triplets de nombres réels $(x\,;\,y\,;\,z)$ vérifiant les trois égalités
$$x + y + z = 6, \qquad x^2 + y^2 + z^2 = 14, \qquad xyz = 6 .$$

**a)** Vérifier que $(1\,;\,2\,;\,3)$ est solution, et en déduire cinq autres solutions sans aucun calcul.

**b)** Calculer $xy + yz + zx$.

**c)** On pose $P(t) = (t - x)(t - y)(t - z)$. Développer $P(t)$ et montrer que
$$P(t) = t^3 - 6t^2 + 11t - 6 .$$

**d)** En déduire toutes les solutions du système.

## Hints

1. Question a) : regarde le rôle joué par $x$, par $y$ et par $z$ dans les trois égalités.
2. Question b) : la quantité $xy + yz + zx$ apparaît quand on développe $(x + y + z)^2$. Essaie.
3. Question c) : développe soigneusement $(t-x)(t-y)(t-z)$ et range selon les puissances de $t$. Les coefficients sont exactement les trois quantités que tu connais.
4. Question d) : $x$, $y$ et $z$ annulent $P$. Cherche une racine évidente de $t^3 - 6t^2 + 11t - 6$, puis factorise.
5. Pour finir proprement : tu sais que chacun des trois nombres est $1$, $2$ ou $3$. Utilise les deux autres égalités pour écarter les cas où deux d'entre eux seraient égaux.

## Solution

**a) Une solution, et cinq autres.**

Pour $(1\,;\,2\,;\,3)$ :
$$1 + 2 + 3 = 6, \qquad 1^2 + 2^2 + 3^2 = 1 + 4 + 9 = 14, \qquad 1 \times 2 \times 3 = 6 .$$
C'est bien une solution.

Dans les trois égalités, les inconnues $x$, $y$, $z$ jouent exactement le même rôle : on peut les échanger sans rien changer. Donc **les six façons d'ordonner $1$, $2$ et $3$ sont solutions** :
$$(1\,;\,2\,;\,3),\quad (1\,;\,3\,;\,2),\quad (2\,;\,1\,;\,3),\quad (2\,;\,3\,;\,1),\quad (3\,;\,1\,;\,2),\quad (3\,;\,2\,;\,1).$$

**b) La somme des produits deux à deux.**

On développe le carré de la somme :
$$(x + y + z)^2 = x^2 + y^2 + z^2 + 2(xy + yz + zx) .$$
Avec les données, $6^2 = 14 + 2(xy+yz+zx)$, donc
$$xy + yz + zx = \frac{36 - 14}{2} = 11 .$$

**c) Le polynôme.**

Développons :
$$(t-x)(t-y) = t^2 - (x+y)t + xy ,$$
puis
$$P(t) = \big[t^2 - (x+y)t + xy\big](t - z) = t^3 - (x+y)t^2 + xy\,t - z\,t^2 + (x+y)z\,t - xyz ,$$
soit, en rangeant,
$$P(t) = t^3 - (x + y + z)\,t^2 + (xy + yz + zx)\,t - xyz .$$

Les trois coefficients sont précisément les trois quantités connues : $6$, $11$ et $6$. Donc
$$P(t) = t^3 - 6t^2 + 11t - 6 .$$

**d) Les solutions.**

Par construction, $P(x) = 0$, $P(y) = 0$ et $P(z) = 0$ : les trois nombres cherchés sont des racines de $t^3 - 6t^2 + 11t - 6$.

Cherchons une racine évidente : $P(1) = 1 - 6 + 11 - 6 = 0$. On peut donc factoriser par $t - 1$ :
$$t^3 - 6t^2 + 11t - 6 = (t - 1)(t^2 - 5t + 6) .$$
(On le vérifie en développant.) Enfin $t^2 - 5t + 6$ a pour discriminant $25 - 24 = 1$ et pour racines $2$ et $3$, donc
$$P(t) = (t-1)(t-2)(t-3) .$$

Chacun des trois nombres $x$, $y$, $z$ appartient donc à $\{1\,;\,2\,;\,3\}$. Reste à savoir s'ils peuvent être égaux entre eux. Leur somme vaut $6$, ce qui laisse deux possibilités : les trois nombres sont $1$, $2$, $3$ dans un certain ordre, ou bien ils valent tous $2$. Mais dans ce dernier cas le produit vaudrait $8$, et non $6$.

**Conclusion : les solutions sont exactement les six triplets formés de $1$, $2$ et $3$ dans un ordre quelconque**, ceux trouvés à la question a). Il n'y en a pas d'autres.

**Ce qu'il faut retenir.** Les trois données du problème ne disent rien sur $x$ tout seul, mais elles déterminent complètement les trois coefficients d'un polynôme de degré $3$ dont $x$, $y$, $z$ sont les racines. On passe ainsi d'un système qui semblait inextricable à une simple factorisation.

## Going further

1. Refais l'exercice avec $x + y + z = 0$, $x^2 + y^2 + z^2 = 6$ et $xyz = 0$.
2. Pourquoi la donnée de $x + y + z$, de $x^2 + y^2 + z^2$ et de $xyz$ suffit-elle toujours à retrouver les trois nombres, quel que soit le triplet de départ ?
3. Beaucoup plus difficile : trouver tous les quadruplets $(w\,;\,x\,;\,y\,;\,z)$ tels que
$$w + x + y + z = 10, \quad w^2 + x^2 + y^2 + z^2 = 30, \quad w^3 + x^3 + y^3 + z^3 = 100, \quad wxyz = 24 .$$
Essaie d'abord de deviner une solution, puis cherche comment la méthode ci-dessus s'adapte.
