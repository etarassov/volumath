---
id: "11868"
title: "Si a² < 16bc, b² < 16ca et c² < 16ab"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, racine-carree, moyenne-arithmetique-et-geometrique, inegalite-triangulaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Seniors, exercice 15 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels strictement positifs tels que
$$a^2 < 16bc, \qquad b^2 < 16ca, \qquad c^2 < 16ab.$$
Montrer que
$$a^2 + b^2 + c^2 < 2(ab + bc + ca).$$

## Hints

1. Montrer que $\sqrt{a} < \sqrt{b} + \sqrt{c}$. On pourra raisonner par l'absurde et utiliser que $u + v \geqslant 2\sqrt{uv}$ pour $u, v \geqslant 0$.
2. Les nombres $\sqrt{a}$, $\sqrt{b}$, $\sqrt{c}$ vérifient donc trois inégalités qui ressemblent à celles des côtés d'un triangle. En déduire un encadrement de $\sqrt{c}$, puis de $c$.
3. Mettre au carré l'encadrement de $c - a - b$ obtenu.

## Solution

**Rappel.** Pour tous réels $u, v \geqslant 0$, on a $u + v \geqslant 2\sqrt{uv}$, car $u + v - 2\sqrt{uv} = (\sqrt{u} - \sqrt{v})^2 \geqslant 0$.

**Étape 1 : $\sqrt{a} < \sqrt{b} + \sqrt{c}$.** Supposons au contraire que $\sqrt{a} \geqslant \sqrt{b} + \sqrt{c}$. Par le rappel appliqué à $u = \sqrt{b}$ et $v = \sqrt{c}$, on a $\sqrt{b} + \sqrt{c} \geqslant 2\sqrt{\sqrt{bc}}$. Tous ces nombres sont positifs, on peut donc élever à la puissance $4$ sans changer le sens des inégalités :
$$a^2 = \left(\sqrt{a}\right)^4 \geqslant \left(\sqrt{b} + \sqrt{c}\right)^4 \geqslant 2^4 \left(\sqrt{\sqrt{bc}}\right)^4 = 16bc.$$
Cela contredit l'hypothèse $a^2 < 16bc$. Donc $\sqrt{a} < \sqrt{b} + \sqrt{c}$.

De la même façon, avec les deux autres hypothèses, $\sqrt{b} < \sqrt{a} + \sqrt{c}$ et $\sqrt{c} < \sqrt{a} + \sqrt{b}$.

**Étape 2 : un encadrement de $\sqrt{c}$.** Les deux premières inégalités s'écrivent $\sqrt{a} - \sqrt{b} < \sqrt{c}$ et $\sqrt{b} - \sqrt{a} < \sqrt{c}$, c'est-à-dire $\left|\sqrt{a} - \sqrt{b}\right| < \sqrt{c}$. Avec la troisième :
$$\left|\sqrt{a} - \sqrt{b}\right| < \sqrt{c} < \sqrt{a} + \sqrt{b}.$$

**Étape 3 : on élève au carré.** Les trois membres sont positifs, donc
$$\left(\sqrt{a} - \sqrt{b}\right)^2 < c < \left(\sqrt{a} + \sqrt{b}\right)^2, \quad \text{soit} \quad a + b - 2\sqrt{ab} < c < a + b + 2\sqrt{ab}.$$
En retranchant $a + b$ :
$$-2\sqrt{ab} < c - a - b < 2\sqrt{ab}, \quad \text{c'est-à-dire} \quad |c - a - b| < 2\sqrt{ab}.$$
En élevant encore au carré, $(c - a - b)^2 < 4ab$.

**Étape 4 : on développe.**
$$(c - a - b)^2 = a^2 + b^2 + c^2 + 2ab - 2bc - 2ca.$$
L'inégalité $(c - a - b)^2 < 4ab$ devient donc $a^2 + b^2 + c^2 + 2ab - 2bc - 2ca < 4ab$, soit
$$a^2 + b^2 + c^2 < 2ab + 2bc + 2ca.$$

**Conclusion.** **On a bien $a^2 + b^2 + c^2 < 2(ab + bc + ca)$.**

## Going further

L'étape 1 dit que $\sqrt{a}$, $\sqrt{b}$ et $\sqrt{c}$ sont les longueurs des côtés d'un vrai triangle. En posant $x = \sqrt{a}$, $y = \sqrt{b}$, $z = \sqrt{c}$, on peut aussi vérifier que
$$2(ab + bc + ca) - (a^2 + b^2 + c^2) = (x + y + z)(-x + y + z)(x - y + z)(x + y - z),$$
qui vaut $16$ fois le carré de l'aire de ce triangle (formule de Héron). C'est une autre façon de voir pourquoi cette quantité est positive.
