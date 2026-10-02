---
id: "10445"
title: "a + b√2 + c√3 très petit, mais pas trop"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [racines-carrees, irrationnels, principe-des-tiroirs, encadrement, facteurs-premiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 2 (algèbre)"
  reference: "2017-10_ofm-2016-2017-envoi-2.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2016-2017-envoi-2-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-2.pdf"
---

## Statement

a) Montrer qu'il existe des entiers $a$, $b$, $c$, non tous les trois nuls, tels que $|a| < 10^6$, $|b| < 10^6$, $|c| < 10^6$ et

$$|a + b\sqrt{2} + c\sqrt{3}| < 10^{-11} .$$

b) Soient $a$, $b$, $c$ des entiers, non tous les trois nuls, tels que $|a| < 10^6$, $|b| < 10^6$ et $|c| < 10^6$. Montrer que

$$|a + b\sqrt{2} + c\sqrt{3}| > 10^{-21} .$$

## Hints

1. Pour a), regarde tous les nombres $a + b\sqrt{2} + c\sqrt{3}$ avec $a$, $b$, $c$ entiers entre $0$ et $10^6 - 1$. Combien y en a-t-il ? Dans quel intervalle se trouvent-ils ?
2. Découpe cet intervalle en petits intervalles de même longueur, un de moins qu'il n'y a de nombres. Deux nombres tombent dans le même petit intervalle : regarde leur différence.
3. Pour b), multiplie $a + b\sqrt{2} + c\sqrt{3}$ par les trois nombres obtenus en changeant les signes devant $\sqrt{2}$ et devant $\sqrt{3}$. Montre que le produit de ces quatre nombres est un entier.
4. Montre que cet entier n'est pas nul. Tu peux utiliser que $\sqrt{2}$ est irrationnel, et compter le nombre de facteurs $2$ ou $3$ dans une décomposition en facteurs premiers. Puis majore les trois autres facteurs.

## Solution

On utilisera les majorations $\sqrt{2} < \text{1,5}$ et $\sqrt{3} < 2$, qui viennent de $2 < \text{2,25} = \text{1,5}^2$ et de $3 < 4$. Elles donnent

$$1 + \sqrt{2} + \sqrt{3} < \text{4,5} .$$

**Question a).** Notons $K = 10^6 - 1$, et considérons tous les triplets $(a, b, c)$ d'entiers tels que $0 \leqslant a, b, c \leqslant K$. Il y en a $(K + 1)^3 = 10^{18}$. Pour chacun, le nombre $a + b\sqrt{2} + c\sqrt{3}$ est compris entre $0$ et

$$L = K\,(1 + \sqrt{2} + \sqrt{3}) < \text{4,5} \times 10^6 .$$

Découpons l'intervalle $[0, L]$ en $10^{18} - 1$ intervalles de même longueur $\ell = \frac{L}{10^{18} - 1}$. Il y a plus de triplets que d'intervalles, donc deux triplets différents, $(a_1, b_1, c_1)$ et $(a_2, b_2, c_2)$, donnent deux nombres situés dans le même petit intervalle. C'est le principe des tiroirs. La différence de ces deux nombres vérifie donc

$$|(a_1 - a_2) + (b_1 - b_2)\sqrt{2} + (c_1 - c_2)\sqrt{3}| \leqslant \ell .$$

Posons $a = a_1 - a_2$, $b = b_1 - b_2$ et $c = c_1 - c_2$. Ces entiers ne sont pas tous nuls, car les deux triplets sont différents, et ils vérifient $|a|, |b|, |c| \leqslant K < 10^6$, car ce sont des différences de deux entiers entre $0$ et $K$. Enfin $10^{18} - 1 > 9 \times 10^{17}$, donc

$$|a + b\sqrt{2} + c\sqrt{3}| \leqslant \ell < \frac{\text{4,5} \times 10^6}{9 \times 10^{17}} = 5 \times 10^{-12} < 10^{-11} .$$

**Question b).** Soient $a$, $b$, $c$ comme dans l'énoncé. Notons

$$z_1 = a + b\sqrt{2} + c\sqrt{3}, \qquad z_2 = a + b\sqrt{2} - c\sqrt{3}, \qquad z_3 = a - b\sqrt{2} + c\sqrt{3}, \qquad z_4 = a - b\sqrt{2} - c\sqrt{3} .$$

*Étape 1 : le produit $N = z_1 z_2 z_3 z_4$ est un entier.* Avec l'identité $(u + v)(u - v) = u^2 - v^2$,

$$z_1 z_2 = (a + b\sqrt{2})^2 - 3c^2 = (a^2 + 2b^2 - 3c^2) + 2ab\sqrt{2},$$

$$z_3 z_4 = (a - b\sqrt{2})^2 - 3c^2 = (a^2 + 2b^2 - 3c^2) - 2ab\sqrt{2} .$$

En notant $p = a^2 + 2b^2 - 3c^2$, qui est un entier, on obtient

$$N = (p + 2ab\sqrt{2})(p - 2ab\sqrt{2}) = p^2 - 8a^2 b^2 .$$

C'est un entier.

*Étape 2 : $N$ n'est pas nul.* Supposons, par l'absurde, que $N = 0$, c'est-à-dire $p^2 = 8a^2 b^2$.

- Si $ab \neq 0$, alors $\left( \frac{p}{2ab} \right)^2 = 2$, donc $\sqrt{2} = \frac{|p|}{2|ab|}$ serait un nombre rationnel. C'est faux. Donc $ab = 0$, puis $p^2 = 0$, c'est-à-dire $a^2 + 2b^2 = 3c^2$.
- Si $a = 0$, il reste $2b^2 = 3c^2$. Supposons $b \neq 0$, donc aussi $c \neq 0$. Dans la décomposition en facteurs premiers, $b^2$ et $c^2$ contiennent chacun le facteur $2$ un nombre pair de fois. Donc $2b^2$ le contient un nombre impair de fois, et $3c^2$ un nombre pair de fois. Ces deux entiers ne peuvent pas être égaux. Donc $b = 0$, puis $c = 0$.
- Si $b = 0$, il reste $a^2 = 3c^2$, et le même raisonnement avec le facteur $3$ donne $a = c = 0$.

Dans tous les cas $a = b = c = 0$, ce qui est exclu. Donc $N \neq 0$.

*Étape 3 : la minoration.* Comme $N$ est un entier non nul, $|N| \geqslant 1$. En particulier aucun des $z_i$ n'est nul. Pour $i = 2, 3, 4$, on a, puisque $|a|, |b|, |c| < 10^6$,

$$|z_i| \leqslant |a| + |b|\sqrt{2} + |c|\sqrt{3} < 10^6\,(1 + \sqrt{2} + \sqrt{3}) < \text{4,5} \times 10^6 .$$

Donc $|z_2 z_3 z_4| < \text{4,5}^3 \times 10^{18} < 100 \times 10^{18} = 10^{20}$, car $\text{4,5}^3 = \text{91,125}$. Finalement,

$$|z_1| = \frac{|N|}{|z_2 z_3 z_4|} \geqslant \frac{1}{|z_2 z_3 z_4|} > \frac{1}{10^{20}} = 10^{-20} > 10^{-21} .$$

**Conclusion.** On peut rendre $|a + b\sqrt{2} + c\sqrt{3}|$ plus petit que $10^{-11}$, mais jamais plus petit que $10^{-20}$, et donc jamais plus petit que $10^{-21}$.

## Going further

1. Montrer de même qu'il existe des entiers $a$ et $b$, non tous les deux nuls, avec $|a|, |b| < 10^6$ et $|a + b\sqrt{2}| < 10^{-5}$. Montrer aussi que, pour tous tels entiers, $|a + b\sqrt{2}| > 10^{-7}$. Pense au produit $(a + b\sqrt{2})(a - b\sqrt{2})$.
2. Déduire de l'étape 2 que $a + b\sqrt{2} + c\sqrt{3}$ n'est jamais nul quand $a$, $b$, $c$ sont des entiers non tous nuls. Que peut-on en conclure pour les $10^{18}$ nombres de la question a) ?
