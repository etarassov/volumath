---
id: "10415"
title: "Le plus grand et le plus petit de trois racines"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, racine-carree, extremum, carres]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 3 (algèbre)"
  reference: "2017-10_ofm-2013-2014-envoi-3.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2013-2014-envoi-3-solutions.pdf (erreur de la source : l'énoncé impose a, b, c strictement positifs, mais le minimum 2 + √2 n'est atteint que pour a = 0, donc il n'y a pas de plus petite valeur ; l'énoncé ci-dessous autorise la valeur 0. Le corrigé écrit aussi « égalité pour a = b = c = 2 » au lieu de √2, et utilise Cauchy-Schwarz, remplacé ici par une somme de carrés)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-3.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels de l'intervalle $[0, 2]$ tels que $a^2 + b^2 + c^2 = 6$.

Déterminer la plus grande valeur et la plus petite valeur possibles de

$$E = \sqrt{4 - a^2} + \sqrt{4 - b^2} + \sqrt{4 - c^2} .$$

## Hints

1. Pose $u = \sqrt{4 - a^2}$, $v = \sqrt{4 - b^2}$ et $w = \sqrt{4 - c^2}$. Que vaut $u^2 + v^2 + w^2$ ?
2. Pour la plus grande valeur, développe $(u - v)^2 + (v - w)^2 + (w - u)^2$ et compare avec $(u + v + w)^2$.
3. Pour la plus petite valeur, essaie des triplets où l'un des nombres vaut $0$ ou $2$, par exemple $(a, b, c) = (0, \sqrt{2}, 2)$.
4. Montre que $\sqrt{x} + \sqrt{y} \geqslant \sqrt{x + y}$ pour tous $x, y \geqslant 0$. Range les nombres pour que $a$ soit le plus petit des trois, et utilise cette inégalité pour les deux autres racines.

## Solution

Posons $u = \sqrt{4 - a^2}$, $v = \sqrt{4 - b^2}$ et $w = \sqrt{4 - c^2}$. Ces nombres sont bien définis car $a, b, c \in [0, 2]$, ils sont positifs ou nuls, et

$$u^2 + v^2 + w^2 = 12 - (a^2 + b^2 + c^2) = 6 , \qquad E = u + v + w .$$

**La plus grande valeur.** Développons :

$$(u - v)^2 + (v - w)^2 + (w - u)^2 = 2(u^2 + v^2 + w^2) - 2(uv + vw + wu) .$$

Or $(u + v + w)^2 = u^2 + v^2 + w^2 + 2(uv + vw + wu)$. En additionnant ces deux égalités, on obtient

$$(u - v)^2 + (v - w)^2 + (w - u)^2 + (u + v + w)^2 = 3(u^2 + v^2 + w^2) = 18 .$$

La somme des trois carrés est positive ou nulle, donc $E^2 = (u + v + w)^2 \leqslant 18$, et comme $E \geqslant 0$, on a $E \leqslant \sqrt{18} = 3\sqrt{2}$.

Cette valeur est atteinte pour $a = b = c = \sqrt{2}$ : on a bien $a^2 + b^2 + c^2 = 6$, et $E = 3\sqrt{4 - 2} = 3\sqrt{2}$.

**La plus petite valeur.** L'expression $E$ et la condition ne changent pas si l'on échange $a$, $b$ et $c$. On peut donc supposer que $a$ est le plus petit des trois. Alors $3a^2 \leqslant a^2 + b^2 + c^2 = 6$, donc $a^2 \leqslant 2$.

*Un lemme.* Pour tous $x, y \geqslant 0$, on a $\sqrt{x} + \sqrt{y} \geqslant \sqrt{x + y}$. En effet, les deux membres sont positifs, et $(\sqrt{x} + \sqrt{y})^2 = x + y + 2\sqrt{xy} \geqslant x + y$.

Appliquons ce lemme aux deux dernières racines :

$$v + w \geqslant \sqrt{(4 - b^2) + (4 - c^2)} = \sqrt{8 - (6 - a^2)} = \sqrt{2 + a^2} .$$

Notons $t = a^2$, qui est dans $[0, 2]$. On a donc $E \geqslant \sqrt{4 - t} + \sqrt{2 + t}$. Élevons ce membre de droite au carré :

$$\left( \sqrt{4 - t} + \sqrt{2 + t} \right)^2 = 6 + 2\sqrt{(4 - t)(2 + t)} = 6 + 2\sqrt{8 + t(2 - t)} .$$

Comme $0 \leqslant t \leqslant 2$, on a $t(2 - t) \geqslant 0$, donc ce carré est au moins $6 + 2\sqrt{8} = 6 + 4\sqrt{2} = (2 + \sqrt{2})^2$. Par conséquent $E \geqslant 2 + \sqrt{2}$.

Cette valeur est atteinte pour $(a, b, c) = (0, \sqrt{2}, 2)$ : on a $0 + 2 + 4 = 6$ et $E = \sqrt{4} + \sqrt{2} + \sqrt{0} = 2 + \sqrt{2}$.

**Conclusion.** La plus grande valeur de $E$ est $3\sqrt{2}$, atteinte pour $a = b = c = \sqrt{2}$. La plus petite valeur est $2 + \sqrt{2}$, atteinte par exemple pour $(a, b, c) = (0, \sqrt{2}, 2)$.

## Going further

1. Dans l'énoncé d'origine, $a$, $b$ et $c$ devaient être strictement positifs. Montrer qu'alors $E$ n'a pas de plus petite valeur : $E$ reste toujours strictement plus grand que $2 + \sqrt{2}$, mais peut s'en approcher autant qu'on veut. (Piste : regarder quand chaque inégalité de la solution est une égalité.)
2. Pour quels triplets $(a, b, c)$ la valeur $2 + \sqrt{2}$ est-elle atteinte ?
