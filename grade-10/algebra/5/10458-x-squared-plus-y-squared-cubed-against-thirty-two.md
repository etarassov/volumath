---
id: "10458"
title: "(x² + y²)³ ≥ 32(x³ + y³)(xy − x − y)"
grade: 10
theme: algebra
difficulty: 5
duration_min: 50
tags: [inegalite, somme-et-produit, carres, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 3 (algèbre)"
  reference: "2018-12_envoi-3.pdf, Exercices communs, exercice 4 ; corrigé 2019-02_envoi-3-cor.pdf (qui utilise l'inégalité arithmético-géométrique pondérée ; ici on passe par la somme et le produit de x et y, et seules des factorisations servent)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-12_envoi-3.pdf"
---

## Statement

Soient $x$ et $y$ deux réels tels que $x + y \geqslant 0$. Montrer que

$$(x^2 + y^2)^3 \geqslant 32\,(x^3 + y^3)(xy - x - y) .$$

## Hints

1. Factorise $x^3 + y^3$ par $x + y$. Quel est le signe de $x^3 + y^3$ ? Dans quel cas le membre de droite est-il négatif ou nul ?
2. Dans l'autre cas, montre que $x$ et $y$ sont strictement positifs. Pose $s = x + y$ et $p = xy$, et écris les deux membres avec $s$ et $p$ seulement. N'oublie pas que $s^2 \geqslant 4p$.
3. Compare $4s(p - s)$ et $p^2$ : leur différence est un carré.
4. Pose $w = s^2 - 2p$. Il reste à montrer que $w^3 - 8p^2 w + 8p^3 \geqslant 0$. Cherche une racine évidente de ce polynôme en $w$.

## Solution

**Étape 1 : le signe de $x^3 + y^3$.** On a

$$x^3 + y^3 = (x + y)(x^2 - xy + y^2) \qquad \text{et} \qquad x^2 - xy + y^2 = \left( x - \frac{y}{2} \right)^2 + \frac{3y^2}{4} \geqslant 0 .$$

Comme $x + y \geqslant 0$, on obtient $x^3 + y^3 \geqslant 0$.

**Étape 2 : le cas facile.** Si $xy - x - y \leqslant 0$, le membre de droite est le produit de $32\,(x^3 + y^3) \geqslant 0$ par un nombre négatif ou nul. Il est donc négatif ou nul, alors que le membre de gauche est positif ou nul. L'inégalité est vraie.

**Étape 3 : le cas restant, avec la somme et le produit.** Supposons maintenant $xy - x - y > 0$, et posons $s = x + y$ et $p = xy$. On a donc $p > s \geqslant 0$. Ainsi $p > 0$ : les réels $x$ et $y$ sont non nuls et de même signe. Ils ne peuvent pas être tous deux négatifs, car leur somme $s$ est positive ou nulle. Donc $x > 0$, $y > 0$ et $s > 0$. De plus,

$$s^2 - 4p = (x - y)^2 \geqslant 0 , \qquad \text{donc} \qquad s^2 \geqslant 4p . \qquad (1)$$

On exprime tout avec $s$ et $p$ :

$$x^2 + y^2 = s^2 - 2p , \qquad x^3 + y^3 = s(x^2 - xy + y^2) = s(s^2 - 3p) .$$

L'inégalité à démontrer devient

$$(s^2 - 2p)^3 \geqslant 32\,s\,(p - s)(s^2 - 3p) . \qquad (2)$$

**Étape 4 : se débarrasser de $s(p - s)$.** On a

$$p^2 - 4s(p - s) = p^2 - 4sp + 4s^2 = (p - 2s)^2 \geqslant 0 , \qquad \text{donc} \qquad 32\,s\,(p - s) \leqslant 8p^2 .$$

D'après $(1)$, on a aussi $s^2 - 3p \geqslant 4p - 3p = p > 0$. En multipliant l'inégalité précédente par ce nombre strictement positif,

$$32\,s\,(p - s)(s^2 - 3p) \leqslant 8p^2 (s^2 - 3p) .$$

Pour obtenir $(2)$, il suffit donc de montrer que

$$(s^2 - 2p)^3 \geqslant 8p^2 (s^2 - 3p) . \qquad (3)$$

**Étape 5 : une factorisation.** Posons $w = s^2 - 2p$, de sorte que $s^2 - 3p = w - p$. L'inégalité $(3)$ s'écrit $w^3 \geqslant 8p^2 (w - p)$, c'est-à-dire

$$w^3 - 8p^2 w + 8p^3 \geqslant 0 .$$

Le nombre $w = 2p$ annule le membre de gauche, car $8p^3 - 16p^3 + 8p^3 = 0$. On factorise donc par $w - 2p$, et on vérifie en développant que

$$w^3 - 8p^2 w + 8p^3 = (w - 2p)(w^2 + 2pw - 4p^2) .$$

D'après $(1)$, on a $w = s^2 - 2p \geqslant 4p - 2p = 2p$. Donc $w - 2p \geqslant 0$, et

$$w^2 + 2pw - 4p^2 \geqslant (2p)^2 + 2p \cdot 2p - 4p^2 = 4p^2 > 0 .$$

Le produit est positif ou nul, ce qui démontre $(3)$, donc $(2)$.

**Conclusion.** Dans les deux cas, $(x^2 + y^2)^3 \geqslant 32\,(x^3 + y^3)(xy - x - y)$.

**Cas d'égalité.** Dans le cas de l'étape 2, il faut que le membre de gauche soit nul, donc $x = y = 0$. Dans l'autre cas, il faut $p = 2s$ (étape 4) et $w = 2p$, c'est-à-dire $s^2 = 4p$, donc $x = y$ (étape 5). Avec $x = y = t$, la condition $p = 2s$ s'écrit $t^2 = 4t$, d'où $t = 4$. Pour $x = y = 4$, les deux membres valent bien $32^3 = 32\,768$. L'égalité a donc lieu exactement pour $x = y = 0$ et pour $x = y = 4$.

## Going further

1. Pourquoi l'hypothèse $x + y \geqslant 0$ est-elle nécessaire ? Tester $x = 1$ et $y = -2$.
2. En reprenant l'étape 4, montrer que, pour tous réels $s$ et $p$, on a $4s(p - s) \leqslant p^2$. Quand y a-t-il égalité ?
