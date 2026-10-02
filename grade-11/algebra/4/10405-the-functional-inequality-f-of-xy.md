---
id: "10405"
title: "L'inéquation fonctionnelle f(xy) ⩽ x f(y)"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [equation-fonctionnelle, inegalite, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 4 (algèbre)"
  reference: "2017-10_ofm-2012-2013-envoi4.pdf, Exercices Communs, exercice 5 ; corrigé 2017-10_ofm-2012-2013-envoi4-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi4.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(xy) \leqslant x\,f(y) .$$

## Hints

1. Commence par $f(0)$. Essaie $x = 0$, puis $y = 0$ avec une valeur de $x$ bien choisie.
2. Prends $x$ et $y$ strictement positifs. Écris $x = \frac{x}{y} \times y$ et applique l'inégalité. Divise ensuite par $x$. Que peut-on dire de $\frac{f(x)}{x}$ et de $\frac{f(y)}{y}$ ? Échange les rôles de $x$ et $y$.
3. Fais de même pour $x$ et $y$ strictement négatifs. Attention au sens de l'inégalité quand on divise par un nombre négatif.
4. Tu dois trouver que $f$ est linéaire sur $]0, +\infty[$ et sur $]-\infty, 0[$, mais pas forcément avec le même coefficient. Quelle condition relie les deux coefficients ? Essaie $x = y = -1$.
5. N'oublie pas de vérifier, dans tous les cas de signes, que les fonctions trouvées conviennent.

## Solution

Soit $f$ une fonction qui vérifie la condition.

**Étape 1 : la valeur en $0$.** Avec $x = 0$ et $y = 0$, on obtient $f(0) \leqslant 0$. Avec $x = 2$ et $y = 0$, on obtient $f(0) \leqslant 2 f(0)$, c'est-à-dire $f(0) \geqslant 0$. Donc $f(0) = 0$.

**Étape 2 : les nombres strictement positifs.** Soient $x > 0$ et $y > 0$. Appliquons la condition au couple $\left(\frac{x}{y},\, y\right)$ :

$$f(x) = f\!\left(\frac{x}{y} \times y\right) \leqslant \frac{x}{y}\, f(y) .$$

Divisons par $x > 0$ : $\dfrac{f(x)}{x} \leqslant \dfrac{f(y)}{y}$. Cela vaut pour tous $x, y > 0$. En échangeant les rôles de $x$ et $y$, on obtient aussi $\dfrac{f(y)}{y} \leqslant \dfrac{f(x)}{x}$. Donc $\dfrac{f(x)}{x} = \dfrac{f(y)}{y}$.

Le quotient $\frac{f(x)}{x}$ est donc le même pour tous les $x > 0$. Prenons $y = 1$ et notons $\alpha = f(1)$ : pour tout $x > 0$, $f(x) = \alpha x$.

**Étape 3 : les nombres strictement négatifs.** Soient $x < 0$ et $y < 0$. Le quotient $\frac{x}{y}$ est strictement positif, et comme à l'étape 2,

$$f(x) \leqslant \frac{x}{y}\, f(y) .$$

Divisons maintenant par $x$, qui est **négatif** : le sens de l'inégalité change, et $\dfrac{f(x)}{x} \geqslant \dfrac{f(y)}{y}$. En échangeant $x$ et $y$, on obtient l'inégalité inverse, donc l'égalité. Le quotient $\frac{f(x)}{x}$ est le même pour tous les $x < 0$. Avec $y = -1$, il vaut $\frac{f(-1)}{-1}$. Notons $\beta = -f(-1)$ : pour tout $x < 0$, $f(x) = \beta x$.

**Étape 4 : une condition sur $\alpha$ et $\beta$.** Avec $x = y = -1$, la condition donne $f(1) \leqslant -f(-1)$, c'est-à-dire $\alpha \leqslant \beta$.

Toute solution est donc de la forme

$$f(x) = \alpha x \text{ si } x > 0, \qquad f(0) = 0, \qquad f(x) = \beta x \text{ si } x < 0, \qquad \text{avec } \alpha \leqslant \beta .$$

**Étape 5 : réciproque.** Soient $\alpha \leqslant \beta$ et $f$ la fonction ci-dessus. Vérifions $f(xy) \leqslant x f(y)$ selon les signes de $x$ et $y$.

- Si $x = 0$ ou $y = 0$ : les deux membres sont nuls.
- Si $x > 0$ et $y > 0$ : $xy > 0$, donc $f(xy) = \alpha xy$ et $x f(y) = x \cdot \alpha y$. Il y a égalité.
- Si $x > 0$ et $y < 0$ : $xy < 0$, donc $f(xy) = \beta xy$ et $x f(y) = x \cdot \beta y$. Il y a égalité.
- Si $x < 0$ et $y > 0$ : $xy < 0$, donc $f(xy) = \beta xy$ et $x f(y) = \alpha xy$. Comme $xy < 0$ et $\beta \geqslant \alpha$, on a $\beta xy \leqslant \alpha xy$. C'est bon.
- Si $x < 0$ et $y < 0$ : $xy > 0$, donc $f(xy) = \alpha xy$ et $x f(y) = \beta xy$. Comme $xy > 0$ et $\alpha \leqslant \beta$, on a $\alpha xy \leqslant \beta xy$. C'est bon.

**Conclusion.** Les solutions sont exactement les fonctions

$$f(x) = \alpha x \text{ pour } x \geqslant 0, \qquad f(x) = \beta x \text{ pour } x < 0,$$

où $\alpha$ et $\beta$ sont deux réels tels que $\alpha \leqslant \beta$. Par exemple $f(x) = x$, $f(x) = -3x$, ou encore $f(x) = -|x|$ (qui correspond à $\alpha = -1$, $\beta = 1$), conviennent.

## Going further

1. Dessiner l'allure de la courbe d'une solution. Que signifie géométriquement la condition $\alpha \leqslant \beta$ ?
2. Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que $f(xy) = x f(y)$ pour tous réels $x$ et $y$.
