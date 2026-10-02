---
id: "10409"
title: "Une inégalité dans un triangle acutangle"
grade: 11
theme: algebra
difficulty: 5
duration_min: 60
tags: [inegalite, identite-remarquable, triangle, factorisation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 4 (algèbre)"
  reference: "2017-10_ofm-2012-2013-envoi4.pdf, Exercices Olympiques, exercice 9 ; corrigé 2017-10_ofm-2012-2013-envoi4-corrige.pdf (qui passe par la trigonométrie, Al-Kashi et une étude de convexité ; la solution ci-dessous est entièrement algébrique)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi4.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois réels strictement positifs tels que

$$a^2 + b^2 > c^2, \qquad b^2 + c^2 > a^2, \qquad c^2 + a^2 > b^2 .$$

Montrer que

$$\frac{a^2 b^2 c^2}{(a^2 + b^2 - c^2)(b^2 + c^2 - a^2)(c^2 + a^2 - b^2)} + 2\,\frac{(a + b - c)(b + c - a)(c + a - b)}{abc} \geqslant 3 .$$

## Hints

1. Note $A$ la première fraction et $B$ la seconde, de sorte qu'il faut montrer $A + 2B \geqslant 3$. Vérifie d'abord que $a + b > c$, $b + c > a$ et $c + a > b$ : tous les facteurs sont positifs.
2. Calcule $A$ et $B$ quand $a = b = c$. Cela suggère de comparer le produit $A B^2$ à $1$. Quelle inégalité entre $(a + b - c)(b + c - a)(c + a - b)$ et $(a^2 + b^2 - c^2)(b^2 + c^2 - a^2)(c^2 + a^2 - b^2)$ cela demande-t-il ?
3. Si tu sais que $A B^2 \geqslant 1$, pose $t = B$. Alors $A \geqslant \frac{1}{t^2}$. Étudie le signe de $\frac{1}{t^2} + 2t - 3$ en le mettant sur un seul dénominateur.
4. Pour comparer les deux produits, groupe les facteurs deux par deux. Compare $\left[(c + a - b)(c - a + b)\right]^2$ et $(c^2 + a^2 - b^2)(c^2 - a^2 + b^2)$ : les deux sont des produits de la forme $(X + Y)(X - Y)$.

## Solution

Notons

$$P = (a + b - c)(b + c - a)(c + a - b), \qquad Q = (a^2 + b^2 - c^2)(b^2 + c^2 - a^2)(c^2 + a^2 - b^2),$$

puis $A = \dfrac{a^2 b^2 c^2}{Q}$ et $B = \dfrac{P}{abc}$. Il faut montrer que $A + 2B \geqslant 3$.

**Étape 0 : tout est positif.** Par hypothèse, les trois facteurs de $Q$ sont strictement positifs. De plus $c^2 < a^2 + b^2 < a^2 + 2ab + b^2 = (a + b)^2$, donc $c < a + b$, c'est-à-dire $a + b - c > 0$. De même $b + c - a > 0$ et $c + a - b > 0$. Ainsi $P > 0$, $Q > 0$, $A > 0$ et $B > 0$.

**Étape 1 : une inégalité pour deux facteurs.** Montrons que

$$\left[(c + a - b)(c - a + b)\right]^2 \geqslant (c^2 + a^2 - b^2)(c^2 - a^2 + b^2) . \qquad (1)$$

Les deux produits sont de la forme $(X + Y)(X - Y) = X^2 - Y^2$ :

$$(c + a - b)(c - a + b) = c^2 - (a - b)^2, \qquad (c^2 + a^2 - b^2)(c^2 - a^2 + b^2) = c^4 - (a^2 - b^2)^2 .$$

Calculons la différence des deux membres de $(1)$, en utilisant $(a^2 - b^2)^2 = (a - b)^2 (a + b)^2$ :

$$\begin{aligned}
\left[c^2 - (a - b)^2\right]^2 - c^4 + (a - b)^2 (a + b)^2
&= -2c^2 (a - b)^2 + (a - b)^4 + (a - b)^2 (a + b)^2 \\
&= (a - b)^2 \left[ (a - b)^2 + (a + b)^2 - 2c^2 \right] \\
&= 2\,(a - b)^2 \left( a^2 + b^2 - c^2 \right) .
\end{aligned}$$

C'est un carré multiplié par un nombre positif, donc c'est positif, et $(1)$ est démontrée.

**Étape 2 : on multiplie.** En échangeant les rôles des lettres, on obtient de la même façon

$$\left[(a + b - c)(a - b + c)\right]^2 \geqslant (a^2 + b^2 - c^2)(a^2 - b^2 + c^2), \qquad (2)$$
$$\left[(b + c - a)(b - c + a)\right]^2 \geqslant (b^2 + c^2 - a^2)(b^2 - c^2 + a^2). \qquad (3)$$

Tous les membres de $(1)$, $(2)$, $(3)$ sont strictement positifs, on peut donc multiplier ces trois inégalités membre à membre.

- À gauche, chacun des trois facteurs $a + b - c$, $b + c - a$, $c + a - b$ apparaît dans deux des crochets, et chaque crochet est élevé au carré. On obtient $P^4$.
- À droite, chacun des trois facteurs de $Q$ apparaît exactement deux fois. On obtient $Q^2$.

Donc $P^4 \geqslant Q^2$. Comme $P^2$ et $Q$ sont positifs, cela donne $P^2 \geqslant Q$. Par conséquent

$$A B^2 = \frac{a^2 b^2 c^2}{Q} \times \frac{P^2}{a^2 b^2 c^2} = \frac{P^2}{Q} \geqslant 1 .$$

**Étape 3 : conclure.** Posons $t = B > 0$. D'après l'étape 2, $A \geqslant \frac{1}{t^2}$, donc

$$A + 2B - 3 \geqslant \frac{1}{t^2} + 2t - 3 = \frac{2t^3 - 3t^2 + 1}{t^2} = \frac{(t - 1)^2 (2t + 1)}{t^2} .$$

(La factorisation se vérifie en développant : $t = 1$ annule le numérateur.) Le numérateur est un carré multiplié par $2t + 1 > 0$, et le dénominateur est positif. Donc $A + 2B - 3 \geqslant 0$.

**Conclusion.** Sous les hypothèses de l'énoncé,

$$\frac{a^2 b^2 c^2}{(a^2 + b^2 - c^2)(b^2 + c^2 - a^2)(c^2 + a^2 - b^2)} + 2\,\frac{(a + b - c)(b + c - a)(c + a - b)}{abc} \geqslant 3 ,$$

avec égalité quand $a = b = c$ (les deux fractions valent alors $1$).

## Going further

1. Les hypothèses disent que $a$, $b$, $c$ sont les côtés d'un triangle dont les trois angles sont aigus. Pourquoi ? (Utilise la réciproque du théorème de Pythagore, ou la formule d'Al-Kashi.)
2. En s'inspirant de l'étape 1, montrer que pour un tel triangle $(a + b - c)(b + c - a)(c + a - b) \leqslant abc$. (Piste : comparer $\left[c^2 - (a - b)^2\right]$ à $c^2$.)
