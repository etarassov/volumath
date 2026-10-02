---
id: "11872"
title: "Un produit de quatre sommes égal à 25"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, moyenne-arithmetique-et-geometrique, identites-remarquables, racine-carree]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Juniors, exercice 1 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. Le corrigé utilise la moyenne arithmétique et géométrique de quatre nombres ; la solution ici n'utilise que celle de deux nombres, démontrée."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ quatre nombres réels positifs ou nuls tels que
$$(a + c)(a + d)(b + c)(b + d) = 25.$$
Montrer que $a + b + c + d \geqslant 2\sqrt{5}$.

## Hints

1. Pour deux nombres $x$ et $y$, comparer $xy$ et $\left(\dfrac{x + y}{2}\right)^2$. Développer la différence.
2. Regrouper les quatre facteurs en deux paires dont chacune a pour somme $a + b + c + d$.
3. On pose $S = a + b + c + d$. Majorer $(a + c)(b + d)$ et $(a + d)(b + c)$ à l'aide de $S$.

## Solution

**Un outil.** Pour tous réels $x$ et $y$,
$$\left(\frac{x + y}{2}\right)^2 - xy = \frac{x^2 + 2xy + y^2 - 4xy}{4} = \frac{(x - y)^2}{4} \geqslant 0,$$
donc $xy \leqslant \left(\dfrac{x + y}{2}\right)^2$, avec égalité seulement si $x = y$.

**Regrouper les facteurs.** On pose $S = a + b + c + d$. Les deux paires de facteurs $(a + c, \; b + d)$ et $(a + d, \; b + c)$ ont chacune pour somme $S$. L'outil donne
$$(a + c)(b + d) \leqslant \left(\frac{S}{2}\right)^2 \qquad \text{et} \qquad (a + d)(b + c) \leqslant \left(\frac{S}{2}\right)^2.$$
Tous ces nombres sont positifs ou nuls, on peut donc multiplier les deux inégalités membre à membre :
$$25 = (a + c)(a + d)(b + c)(b + d) \leqslant \left(\frac{S}{2}\right)^4.$$

**Conclure.** On pose $t = \left(\dfrac{S}{2}\right)^2 \geqslant 0$. On a $t^2 \geqslant 25$, donc $t \geqslant 5$ (si l'on avait $0 \leqslant t < 5$, on aurait $t^2 < 25$). Ainsi $\left(\dfrac{S}{2}\right)^2 \geqslant 5$, et comme $\dfrac{S}{2} \geqslant 0$, on obtient de la même façon $\dfrac{S}{2} \geqslant \sqrt{5}$.

**Conclusion : $a + b + c + d \geqslant 2\sqrt{5}$.**

**Le cas d'égalité.** L'égalité demande $a + c = b + d$ et $a + d = b + c$. En soustrayant, $c - d = d - c$, donc $c = d$, puis $a = b$. Par exemple $a = b = c = d = \dfrac{\sqrt{5}}{2}$ convient : chaque facteur vaut $\sqrt{5}$, le produit vaut $25$ et la somme vaut $2\sqrt{5}$. La borne ne peut donc pas être améliorée.
