---
id: "12230"
title: "x² = y²(x + y⁴ + 2y²)"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [equation diophantienne, carres parfaits, discriminant, factorisation, diviseurs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2015, jour 2"
  reference: "2017-10_ofm-2014-2015-test-mai-2.pdf, test final du 13 mai 2015, exercices pour les candidats à la JBMO, exercice 6 (pas de corrigé publié)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mai-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mai-2.pdf"
---

## Statement

Déterminer tous les couples $(x, y)$ d'entiers relatifs tels que

$$x^2 = y^2\left(x + y^4 + 2y^2\right).$$

## Hints

1. Regarde l'équation comme une équation du second degré en $x$, où $y$ est un paramètre.
2. Multiplie par $4$ et fais apparaître le carré $(2x - y^2)^2$.
3. Tu dois trouver que $4y^2 + 9$ est le carré d'un entier quand $y \neq 0$.
4. Si $4y^2 + 9 = k^2$, factorise $k^2 - 4y^2$.

## Solution

**Étape 1. Un carré.** L'équation s'écrit $x^2 - y^2 x = y^6 + 2y^4$. En multipliant par $4$, puis en ajoutant $y^4$ des deux côtés :

$$4x^2 - 4y^2 x + y^4 = 4y^6 + 8y^4 + y^4, \qquad \text{c'est-à-dire} \qquad (2x - y^2)^2 = y^4\left(4y^2 + 9\right).$$

**Étape 2. Le cas $y = 0$.** L'équation devient $x^2 = 0$, donc $x = 0$. Le couple $(0, 0)$ est solution.

**Étape 3. Si $y \neq 0$, alors $4y^2 + 9$ est le carré d'un entier.**

Posons $q = \dfrac{|2x - y^2|}{y^2}$. C'est un nombre rationnel positif, et l'étape 1 donne $q^2 = 4y^2 + 9$, qui est un entier.

Montrons qu'un rationnel positif dont le carré est un entier est lui-même un entier. Écrivons $q = \dfrac{m}{n}$ sous forme de fraction irréductible, avec $m \geqslant 0$ et $n \geqslant 1$. Si $n > 1$, soit $p$ un nombre premier qui divise $n$. Comme $m^2 = q^2 n^2$ et que $q^2$ est entier, $p$ divise $m^2$, donc $p$ divise $m$ (un nombre premier qui divise un produit divise l'un des facteurs). Alors $p$ divise à la fois $m$ et $n$, ce qui contredit l'irréductibilité. Donc $n = 1$ et $q$ est entier.

Ainsi $4y^2 + 9 = k^2$ pour un entier $k \geqslant 0$.

**Étape 4. On trouve $y$.**

On a $k^2 - 4y^2 = 9$, c'est-à-dire

$$(k - 2|y|)(k + 2|y|) = 9.$$

Le second facteur est strictement positif, donc le premier aussi. Ce sont deux diviseurs positifs de $9$ dont le produit vaut $9$, et le premier est strictement plus petit que le second puisque $y \neq 0$. La seule possibilité est $k - 2|y| = 1$ et $k + 2|y| = 9$. En soustrayant, $4|y| = 8$, donc $|y| = 2$ et $k = 5$.

**Étape 5. On trouve $x$.**

Pour $y = 2$ ou $y = -2$, on a $y^2 = 4$ et l'étape 1 donne $(2x - 4)^2 = 16 \times 25 = 400$, donc $2x - 4 = 20$ ou $2x - 4 = -20$, soit $x = 12$ ou $x = -8$.

**Vérification.** Pour $y = \pm 2$, le membre de droite vaut $4\,(x + 16 + 8) = 4x + 96$. Pour $x = 12$, on trouve $144 = 12^2$. Pour $x = -8$, on trouve $64 = (-8)^2$.

**Réponse :** les solutions sont les cinq couples $(0, 0)$, $(12, 2)$, $(12, -2)$, $(-8, 2)$ et $(-8, -2)$.

## Going further

L'étape 1 revient à calculer le discriminant de l'équation $x^2 - y^2 x - (y^6 + 2y^4) = 0$, d'inconnue $x$ : il vaut $y^4 + 4y^6 + 8y^4 = y^4(4y^2 + 9)$. Pour que $x$ soit entier, il faut que ce discriminant soit un carré parfait.

Le résultat de l'étape 3 explique aussi pourquoi $\sqrt{2}$ est irrationnel : si c'était un rationnel, son carré $2$ étant entier, ce serait un entier, ce qui est faux car $1^2 < 2 < 2^2$.
