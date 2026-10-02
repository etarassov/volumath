---
id: "10685"
title: "Une équation fonctionnelle avec un polynôme caché"
grade: 12
theme: algebra
difficulty: 5
duration_min: 90
tags: [equation-fonctionnelle, polynome, injectivite, fonction-croissante, nombres-rationnels]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Seniors, exercice 18 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf. Le corrigé conclut à tort que f(x) = ax : sa propre formule f(x) = a⁻¹((x + 1)^α − 1) avec α = 1 donne f(x) = x/a, et f(x) = ax ne convient que si a = 1. Le corrigé invoque aussi l'équation de Cauchy multiplicative ; la solution ci-dessous l'évite en calculant g(1) et g(2), puis en passant par les entiers et les rationnels."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soit $P$ un polynôme à coefficients réels positifs ou nuls, et soit $f$ une fonction de $\mathbb{R}_+^*$ dans $\mathbb{R}_+^*$ telle que, pour tous réels $x > 0$ et $y > 0$,

$$f(x + P(x) f(y)) = (y + 1) f(x)$$

1. Montrer que le degré de $P$ est au plus $1$.
2. Trouver tous les couples $(P, f)$ qui vérifient cette équation.

## Hints

1. Montre que $P$ n'est pas le polynôme nul, puis que $f$ est injective : si $f(y_1) = f(y_2)$, que donne l'équation ?
2. Applique l'équation au point $x' = x + P(x) f(y)$ avec un nouveau réel $z$. Compare avec l'équation en $x$ et en $w = y + z + yz$, en remarquant que $w + 1 = (y + 1)(z + 1)$.
3. Pour la question 1, prends $y = z = 1$ dans la relation obtenue et compare les degrés des deux membres.
4. Une fois que $P(X) = aX + b$, la relation de l'indication 2 ne contient plus $x$. Déduis-en que $f$ est strictement croissante, puis qu'elle prend des valeurs aussi petites que l'on veut.
5. Montre que $b = 0$. Pose ensuite $g = af$, calcule $g(1)$ et $g(2)$, puis $g$ aux entiers et aux rationnels.

## Solution

On note $E(x, y)$ l'égalité de l'énoncé pour des réels $x > 0$ et $y > 0$.

**Étape 0. $P$ n'est pas nul.**

Si $P$ était nul, $E(x, y)$ donnerait $f(x) = (y + 1) f(x)$, donc $y f(x) = 0$, ce qui est impossible car $f(x) > 0$. Comme les coefficients de $P$ sont positifs ou nuls et que l'un d'eux n'est pas nul, on a $P(x) > 0$ pour tout $x > 0$.

**Étape 1. $f$ est injective.**

Si $f(y_1) = f(y_2)$, les membres de gauche de $E(x, y_1)$ et de $E(x, y_2)$ sont égaux, donc $(y_1 + 1) f(x) = (y_2 + 1) f(x)$. Comme $f(x) \neq 0$, on obtient $y_1 = y_2$.

**Étape 2. Appliquer l'équation deux fois.**

Soient $x, y, z > 0$. Posons $x' = x + P(x) f(y)$ et $w = y + z + yz$, de sorte que $w + 1 = (y + 1)(z + 1)$. Par $E(x', z)$ puis $E(x, y)$,

$$f(x' + P(x') f(z)) = (z + 1) f(x') = (z + 1)(y + 1) f(x)$$

Par $E(x, w)$, on a aussi $f(x + P(x) f(w)) = (w + 1) f(x) = (y + 1)(z + 1) f(x)$. Par injectivité, $x' + P(x') f(z) = x + P(x) f(w)$, c'est-à-dire

$$(1) \qquad P(x) f(y) + P(x + P(x) f(y))\, f(z) = P(x) f(y + z + yz)$$

**Étape 3. Le degré de $P$ est au plus $1$ (question 1).**

Prenons $y = z = 1$ dans $(1)$ et notons $u = f(1) > 0$ :

$$u\,P(x + u P(x)) = (f(3) - f(1))\, P(x)$$

Le membre de gauche est strictement positif, donc $f(3) - f(1) > 0$. Notons $m$ le degré de $P$ et $c$ son coefficient dominant, avec $c > 0$. Supposons $m \geqslant 2$.

Le polynôme $x + u P(x)$ est de degré $m$, de coefficient dominant $uc$. En le remplaçant dans $P$, le terme $c\,(x + uP(x))^m$ donne le terme de plus haut degré : le membre de gauche est un polynôme de degré $m^2$, de coefficient dominant $u \cdot c\,(uc)^m > 0$. Le membre de droite est un polynôme de degré $m$. Divisons les deux membres par $x^{m^2}$ et faisons tendre $x$ vers $+\infty$ : à gauche, la limite est $u\,c\,(uc)^m > 0$, et à droite, elle est $0$ car $m < m^2$. C'est impossible.

Donc $m \leqslant 1$, et on peut écrire $P(X) = aX + b$ avec $a \geqslant 0$, $b \geqslant 0$, non tous deux nuls.

**Étape 4. Une relation sans $x$.**

Avec $P(X) = aX + b$, on calcule $P(x + P(x) f(y)) = ax + b + a P(x) f(y) = P(x)\,(1 + a f(y))$. En divisant $(1)$ par $P(x) > 0$, on obtient, pour tous $y, z > 0$ :

$$(2) \qquad f(y + z + yz) = f(y) + f(z) + a f(y) f(z)$$

**Étape 5. $f$ est strictement croissante.**

Soient $0 < y < v$. Posons $z = \frac{v - y}{1 + y} > 0$. Alors $y + z + yz = y + z(1 + y) = v$, et $(2)$ donne $f(v) = f(y) + f(z) + a f(y) f(z) > f(y)$, car $f(z) > 0$ et $a \geqslant 0$.

**Étape 6. $f$ prend toutes les valeurs strictement positives.**

*Des valeurs aussi petites que l'on veut.* Soit $t > 0$ et $s = \sqrt{1 + t} - 1 > 0$, de sorte que $s^2 + 2s = t$. La relation $(2)$ avec $y = z = s$ donne $f(t) = 2f(s) + a f(s)^2 \geqslant 2 f(s)$, donc $f(s) \leqslant \frac{f(t)}{2}$. En recommençant à partir de $s$, on trouve des valeurs de $f$ inférieures à $\frac{f(t)}{4}$, puis à $\frac{f(t)}{8}$, et ainsi de suite. Donc, pour tout $\varepsilon > 0$, il existe $x > 0$ tel que $f(x) < \varepsilon$.

*Toutes les valeurs.* Soit $d > 0$. Choisissons $x$ tel que $f(x) < d$, et posons $y = \frac{d}{f(x)} - 1 > 0$. Alors $E(x, y)$ donne $f(x + P(x) f(y)) = (y + 1) f(x) = d$.

**Étape 7. $b = 0$.**

Supposons $b > 0$. Pour tout $x > 0$, on a $x + P(x) f(1) > b f(1)$, car $x > 0$ et $a x f(1) \geqslant 0$. Comme $f$ est strictement croissante, $E(x, 1)$ donne

$$2 f(x) = f(x + P(x) f(1)) > f(b f(1))$$

Donc $f(x) > \frac{1}{2} f(b f(1))$ pour tout $x > 0$, ce qui contredit l'étape 6. Ainsi $b = 0$, et comme $P$ n'est pas nul, $a > 0$ : $P(X) = aX$.

**Étape 8. La fonction $g = af$.**

Posons $g(x) = a f(x)$ et $k = g(1) > 0$. Comme $f$, la fonction $g$ est strictement croissante et prend toutes les valeurs strictement positives. Avec $P(x) = ax$, l'égalité $E(x, y)$ multipliée par $a$ s'écrit

$$g(x\,(1 + g(y))) = (1 + y)\, g(x)$$

Pour $x = 1$, cela donne $g(1 + g(y)) = k\,(1 + y)$, donc $g(x\,(1 + g(y))) = \frac{g(1 + g(y))\, g(x)}{k}$. Or tout réel $\lambda > 1$ s'écrit $1 + g(y)$, car $g$ prend la valeur $\lambda - 1 > 0$. Donc, pour tout $\lambda > 1$ et tout $x > 0$,

$$(3) \qquad g(\lambda x) = \frac{g(\lambda)\, g(x)}{k}$$

Enfin, $(2)$ multipliée par $a$ donne $g(y + z + yz) = g(y) + g(z) + g(y) g(z)$. Pour $z = y$, on obtient $g(y(y + 2)) = g(y)\,(2 + g(y))$. Mais par $(3)$ avec $\lambda = y + 2 > 1$, on a aussi $g(y(y + 2)) = \frac{g(y + 2)\, g(y)}{k}$. En simplifiant par $g(y) > 0$, pour tout $y > 0$ :

$$(4) \qquad g(y + 2) = k\,(2 + g(y))$$

**Étape 9. $g(1) = 1$ et $g(2) = 2$.**

Soit $y > 0$. Calculons $g(2y + 4)$ de deux façons.

- Par $(3)$ avec $\lambda = 2$, puis $(4)$ : $g(2(y + 2)) = \frac{g(2)\, g(y + 2)}{k} = g(2)\,(2 + g(y))$.
- Par $(4)$ appliquée à $2y + 2$, puis à $2y$, puis $(3)$ avec $\lambda = 2$ : $g(2y + 4) = k\,(2 + g(2y + 2))$ et $g(2y + 2) = k\,(2 + g(2y)) = 2k + g(2)\, g(y)$. Donc $g(2y + 4) = 2k + 2k^2 + k\, g(2)\, g(y)$.

En égalant, on obtient pour tout $y > 0$ :

$$g(2)\,(1 - k)\, g(y) = 2k + 2k^2 - 2g(2)$$

Le membre de droite ne dépend pas de $y$, alors que $g(y)$ prend toutes les valeurs strictement positives. Donc $g(2)\,(1 - k) = 0$, et comme $g(2) > 0$, $k = 1$. L'égalité devient alors $0 = 4 - 2g(2)$, donc $g(2) = 2$.

**Étape 10. $g$ est l'identité.**

Avec $k = 1$, les relations $(3)$ et $(4)$ s'écrivent $g(\lambda x) = g(\lambda) g(x)$ pour $\lambda > 1$, et $g(y + 2) = g(y) + 2$.

- *Entiers.* On a $g(1) = 1$, $g(2) = 2$, et $g(n + 2) = g(n) + 2$. Par récurrence, $g(n) = n$ pour tout entier $n \geqslant 1$.
- *Rationnels.* Soit $r = \frac{p}{q}$ avec $p$ et $q$ entiers strictement positifs. Si $q = 1$, $r$ est un entier. Sinon $q > 1$, et $g(q \cdot r) = g(q)\, g(r)$ s'écrit $p = q\, g(r)$, donc $g(r) = r$.
- *Réels.* Soit $x > 0$ et supposons $g(x) > x$. Entre deux réels distincts, il y a toujours un rationnel : on peut prendre une valeur décimale approchée de $g(x)$ assez précise. Soit donc $r$ rationnel avec $x < r < g(x)$. Comme $g$ est croissante, $g(r) > g(x)$, c'est-à-dire $r > g(x)$, ce qui est faux. De même, $g(x) < x$ est impossible, avec un rationnel $r$ tel que $g(x) < r < x$.

Donc $g(x) = x$ pour tout $x > 0$, et $f(x) = \frac{x}{a}$.

**Étape 11. Vérification.**

Soit $a > 0$, $P(X) = aX$ et $f(x) = \frac{x}{a}$. La fonction $f$ va bien de $\mathbb{R}_+^*$ dans $\mathbb{R}_+^*$. Pour $x, y > 0$, on a $x + P(x) f(y) = x + ax \cdot \frac{y}{a} = x(1 + y)$, donc $f(x + P(x) f(y)) = \frac{x(1 + y)}{a} = (y + 1) f(x)$.

**Conclusion : le degré de $P$ est au plus $1$, et les solutions sont exactement les couples $P(X) = aX$, $f(x) = \frac{x}{a}$, où $a$ est un réel strictement positif.**
