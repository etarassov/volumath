---
id: "7243"
title: "Comparer trois produits"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, developpement, factorisation, comparaison]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Algèbre : calcul », exercice 2 ; repris en 2024 dans Poly_StCheron_2024.pdf, groupe A, « Calculus » (Clémentine), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ quatre nombres réels tels que
$$a < b < c < d .$$

On pose
$$x = (a+b)(c+d), \qquad y = (a+c)(b+d), \qquad z = (a+d)(b+c) .$$

Ranger $x$, $y$ et $z$ dans l'ordre croissant.

## Hints

1. Essaie d'abord avec des nombres, par exemple $a=1$, $b=2$, $c=3$, $d=4$. Tu obtiendras la
   réponse à démontrer.
2. Pour comparer deux nombres, la méthode la plus sûre est d'étudier le signe de leur différence.
3. Développe $y - x$ et factorise le résultat. Beaucoup de termes se simplifient.
4. Recommence avec $z - y$.

## Solution

**Un essai numérique.**

Avec $a=1$, $b=2$, $c=3$, $d=4$ :
$$x = 3 \times 7 = 21, \qquad y = 4 \times 6 = 24, \qquad z = 5 \times 5 = 25 .$$
On conjecture donc $x < y < z$. Démontrons-le.

**Comparaison de $x$ et $y$.**

Développons les deux produits :
$$x = (a+b)(c+d) = ac + ad + bc + bd ,$$
$$y = (a+c)(b+d) = ab + ad + bc + cd .$$

Beaucoup de termes sont communs ($ad$ et $bc$). En soustrayant :
$$y - x = (ab + cd) - (ac + bd) .$$

Factorisons :
$$y - x = a(b - c) + d(c - b) = (d - a)(c - b) .$$

Comme $a < d$, on a $d - a > 0$ ; comme $b < c$, on a $c - b > 0$. Le produit de deux nombres
strictement positifs est strictement positif, donc
$$y - x > 0, \qquad \text{c'est-à-dire} \qquad x < y .$$

**Comparaison de $y$ et $z$.**

$$z = (a+d)(b+c) = ab + ac + db + dc .$$

En soustrayant $y = ab + ad + bc + cd$ :
$$z - y = (ac + bd) - (ad + bc) .$$

Factorisons :
$$z - y = a(c - d) + b(d - c) = (b - a)(d - c) .$$

Comme $a < b$, on a $b - a > 0$ ; comme $c < d$, on a $d - c > 0$. Donc
$$z - y > 0, \qquad \text{c'est-à-dire} \qquad y < z .$$

**Conclusion.**

$$\boxed{x < y < z} .$$

## Going further

On peut retenir la règle sous une forme imagée. Les trois produits utilisent les mêmes quatre
nombres, appariés de trois façons différentes :
$$\{a,b\} \text{ avec } \{c,d\}, \qquad \{a,c\} \text{ avec } \{b,d\}, \qquad
\{a,d\} \text{ avec } \{b,c\} .$$
Dans les trois cas, la somme totale $a+b+c+d$ est la même ; seule change la répartition entre les
deux facteurs. Et l'on sait que pour une somme fixée, le produit de deux nombres est d'autant plus
grand que les deux nombres sont proches l'un de l'autre. Le troisième appariement, qui met
ensemble le plus petit et le plus grand, équilibre le mieux les deux facteurs : il donne le plus
grand produit.
