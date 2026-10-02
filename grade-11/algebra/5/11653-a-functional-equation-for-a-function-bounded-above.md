---
id: "11653"
title: "Une équation fonctionnelle pour une fonction majorée"
grade: 11
theme: algebra
difficulty: 5
duration_min: 60
tags: [equations fonctionnelles, fonctions, fonction majoree, signe, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 5 (pot-pourri)"
  reference: "2018-02_pofm-2017-2018-envoi5.pdf, exercices du groupe A, exercice 8 ; corrigé 2018-06_pofm_2017-2018-envoi5-corrige.pdf (deux coquilles dans le corrigé : il écrit f(−1) = 2 au lieu de f(−1) = −2, et « f(x)/x ≠ 0 » au lieu de « f(x)/x ⩽ 0 » pour x > 0 ; la réponse finale est juste)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/02/pofm-2017-2018-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-02_pofm-2017-2018-envoi5.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ qui sont majorées, c'est-à-dire telles qu'il existe un réel $A$ vérifiant $f(x) < A$ pour tout réel $x$, et telles que, pour tous réels $x$ et $y$,

$$f(x\,f(y)) + y\,f(x) = x\,f(y) + f(xy).$$

## Hints

1. Commence par $x = 0$, puis par $y = 1$. Si $f(1) \neq 0$, que vaut $f$ au point $A$ ? On pourra prendre $x = A / f(1)$.
2. Avec $x = 1$, montre que $f(f(y)) = 2f(y)$. Si $f$ prenait une valeur $t > 0$, que dire des nombres $2t$, $4t$, $8t$, … ? En déduire que $f(x) \leqslant 0$ pour tout $x$.
3. On suppose que $f$ n'est pas la fonction nulle. Regarde ce que devient l'équation pour un $y$ tel que $f(y) = 0$, et déduis-en que $f(y) < 0$ pour tout $y < 0$.
4. Pour $x \neq 0$, prends $y = 1/x$, puis échange les rôles de $x$ et de $1/x$, et additionne les deux égalités obtenues.

## Solution

**La fonction nulle est solution** : elle est majorée (par $A = 1$), et les deux membres de l'équation valent $0$. On cherche maintenant les autres solutions. Soit $f$ une solution qui **n'est pas** la fonction nulle, et soit $A$ un réel tel que $f(x) < A$ pour tout $x$.

**Étape 1 : $f(0) = 0$ et $f(1) = 0$.** Avec $x = 0$, l'équation devient $f(0) + y\,f(0) = 0 + f(0)$, donc $y\,f(0) = 0$ pour tout réel $y$. Avec $y = 1$, on obtient $f(0) = 0$.

Avec $y = 1$, l'équation devient $f(x\,f(1)) + f(x) = x\,f(1) + f(x)$, c'est-à-dire

$$f(x\,f(1)) = x\,f(1) \quad \text{pour tout réel } x.$$

Si l'on avait $f(1) \neq 0$, on pourrait prendre $x = A / f(1)$, ce qui donnerait $f(A) = A$. C'est impossible, puisque $f(A) < A$. Donc $f(1) = 0$.

**Étape 2 : $f$ ne prend que des valeurs négatives ou nulles.** Avec $x = 1$, et comme $f(1) = 0$, l'équation devient

$$f(f(y)) = 2f(y) \quad \text{pour tout réel } y.$$

Autrement dit, si $t$ est une valeur prise par $f$, alors $f(t) = 2t$, donc $2t$ est aussi une valeur prise par $f$. En recommençant, $4t$, $8t$, et plus généralement $2^n t$ pour tout entier $n \geqslant 0$, sont des valeurs prises par $f$.

Supposons que $f$ prenne une valeur $t > 0$. Comme $2^n \geqslant n$ pour tout entier $n$, on a $2^n t \geqslant n\,t$, et ce nombre dépasse $A$ dès que $n > A / t$. On aurait donc une valeur de $f$ supérieure à $A$ : c'est impossible. Ainsi,

$$f(x) \leqslant 0 \quad \text{pour tout réel } x.$$

**Étape 3 : $f$ est strictement négative sur les réels négatifs.** Comme $f$ n'est pas la fonction nulle, il existe un réel $x_0$ tel que $f(x_0) \neq 0$, et d'après l'étape 2, $f(x_0) < 0$.

Soit $y$ un réel tel que $f(y) = 0$. L'équation devient $f(0) + y\,f(x) = 0 + f(xy)$, c'est-à-dire

$$f(xy) = y\,f(x) \quad \text{pour tout réel } x. \qquad (\star)$$

Si l'on avait $y < 0$, alors $(\star)$ avec $x = x_0$ donnerait $f(x_0 y) = y\,f(x_0) > 0$, comme produit de deux nombres négatifs. C'est impossible d'après l'étape 2. Donc **$f$ ne s'annule en aucun réel $y < 0$**, et avec l'étape 2, $f(y) < 0$ pour tout $y < 0$.

**Étape 4 : $f$ est nulle sur les réels positifs.** Soit $x \neq 0$. Avec $y = 1/x$, et comme $f(1) = 0$, l'équation donne

$$f\!\left(x\,f\!\left(\tfrac{1}{x}\right)\right) + \frac{f(x)}{x} = x\,f\!\left(\tfrac{1}{x}\right).$$

En remplaçant $x$ par $1/x$ et $y$ par $x$ dans l'équation, on obtient de même

$$f\!\left(\frac{f(x)}{x}\right) + x\,f\!\left(\tfrac{1}{x}\right) = \frac{f(x)}{x}.$$

En additionnant ces deux égalités, il reste

$$f\!\left(x\,f\!\left(\tfrac{1}{x}\right)\right) + f\!\left(\frac{f(x)}{x}\right) = 0.$$

C'est une somme de deux nombres négatifs ou nuls (étape 2) qui vaut $0$, donc chacun des deux est nul. En particulier,

$$f\!\left(\frac{f(x)}{x}\right) = 0 \quad \text{pour tout } x \neq 0.$$

Soit maintenant $x > 0$. On a $f(x) \leqslant 0$, donc $f(x)/x \leqslant 0$. Si l'on avait $f(x)/x < 0$, l'étape 3 donnerait $f(f(x)/x) < 0$, ce qui contredit l'égalité ci-dessus. Donc $f(x)/x = 0$, c'est-à-dire $f(x) = 0$.

**Étape 5 : $f$ est linéaire sur les réels négatifs.** Soit $y > 0$. D'après l'étape 4, $f(y) = 0$, et la relation $(\star)$ s'applique. Avec $x = -1$, elle donne $f(-y) = y\,f(-1)$. Posons $k = -f(-1)$. D'après l'étape 3, $f(-1) < 0$, donc $k > 0$. Pour tout réel $t < 0$, on applique ce qui précède à $y = -t > 0$ :

$$f(t) = (-t)\,f(-1) = k\,t.$$

Il reste à trouver $k$. Prenons $t = -1$. Alors $f(-1) = -k < 0$, donc $f(f(-1)) = f(-k) = k \times (-k) = -k^2$. D'après l'étape 2, $f(f(-1)) = 2f(-1) = -2k$. Donc $k^2 = 2k$, et comme $k \neq 0$, $k = 2$.

**Bilan.** Si $f$ est une solution qui n'est pas nulle, alors

$$f(x) = 2x \ \text{ pour } x < 0, \qquad f(x) = 0 \ \text{ pour } x \geqslant 0.$$

On remarque que $f(t) = 2t$ est aussi vrai pour $t = 0$, donc $f(t) = 2t$ pour tout $t \leqslant 0$.

**Vérification.** Cette fonction est majorée, par exemple par $A = 1$, puisque toutes ses valeurs sont négatives ou nulles. Vérifions l'équation.

- *Si $y \geqslant 0$*, alors $f(y) = 0$, et l'équation à vérifier devient $y\,f(x) = f(xy)$. Si $x < 0$ et $y > 0$, alors $xy < 0$ et $f(xy) = 2xy = y \times 2x = y\,f(x)$. Si $x \geqslant 0$ ou $y = 0$, alors $xy \geqslant 0$ et les deux membres valent $0$.
- *Si $y < 0$ et $x \geqslant 0$*, alors $f(y) = 2y$, $f(x) = 0$, et $xy \leqslant 0$. Le membre de gauche vaut $f(2xy) = 4xy$, et le membre de droite vaut $x \times 2y + f(xy) = 2xy + 2xy = 4xy$.
- *Si $y < 0$ et $x < 0$*, alors $f(y) = 2y$, $f(x) = 2x$, et $xy > 0$. Le membre de gauche vaut $f(2xy) + y \times 2x = 0 + 2xy$, et le membre de droite vaut $x \times 2y + f(xy) = 2xy + 0$.

Dans tous les cas, l'égalité est vraie.

**Conclusion : il y a exactement deux solutions, la fonction nulle et la fonction définie par $f(x) = 2x$ pour $x < 0$ et $f(x) = 0$ pour $x \geqslant 0$.**

## Going further

L'hypothèse « $f$ est majorée » sert deux fois : à l'étape 1 pour obtenir $f(1) = 0$, et à l'étape 2 pour obtenir $f \leqslant 0$. Sans elle, il y a au moins une solution de plus. En effet, si $f(1) \neq 0$, l'égalité $f(x\,f(1)) = x\,f(1)$ de l'étape 1 dit que $f(t) = t$ pour tout réel $t$, puisque $t = x\,f(1)$ peut prendre n'importe quelle valeur. Vérifie que la fonction $f(x) = x$ est bien solution de l'équation.
