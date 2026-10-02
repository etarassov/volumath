---
id: "7633"
title: "Trois nombres en ronde"
grade: 12
theme: algebra
difficulty: 4
duration_min: 45
tags: [systeme, elimination, factorisation, equation-du-second-degre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 61 (sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trois nombres réels non nuls $x$, $y$, $z$, **qui ne sont pas tous égaux**, vérifient

$$x + \frac{1}{y} \ = \ y + \frac{1}{z} \ = \ z + \frac{1}{x} \ = \ k .$$

Trouver toutes les valeurs possibles de $k$.

## Hints

1. Commencez par montrer que $x$, $y$ et $z$ sont deux à deux **distincts**. Que se passerait-il si deux d'entre eux étaient égaux ?
2. Exprimez tout en fonction de $y$ et de $k$ : la première égalité donne $x$, la deuxième donne $z$.
3. Reportez dans la troisième égalité. Vous obtiendrez une équation en $y$ et $k$ seulement : développez-la et essayez de la factoriser.
4. Vous devriez tomber sur un produit de deux facteurs égal à zéro. Le second facteur, s'il s'annule, vous ramène au cas interdit.
5. N'oubliez pas de vérifier que les valeurs de $k$ trouvées sont réellement atteintes : exhibez un triplet.

## Solution

**Réponse : $k = 1$ et $k = -1$, et ces deux valeurs sont réellement atteintes.**

**Étape 1 : les trois nombres sont deux à deux distincts.**

Supposons $x = y$. La première égalité donne $x + \dfrac1y = y + \dfrac1z$, donc $\dfrac1y = \dfrac1z$, donc $y = z$. On aurait alors $x = y = z$, ce que l'énoncé interdit.

Le même raisonnement, appliqué aux deux autres égalités, montre que $y \neq z$ et $z \neq x$. Retenons en particulier :

$$x \neq y .$$

**Étape 2 : tout exprimer en fonction de $y$.**

De $x + \dfrac1y = k$ on tire

$$x = k - \frac1y = \frac{ky - 1}{y} .$$

De $y + \dfrac1z = k$ on tire $\dfrac1z = k - y$. Comme $z \neq 0$, on a $k - y \neq 0$, et

$$z = \frac{1}{k - y} .$$

**Étape 3 : reporter dans la troisième égalité.**

La troisième égalité $z + \dfrac1x = k$ s'écrit $\dfrac1x = k - z$, c'est-à-dire $x\,(k - z) = 1$. Or

$$k - z = k - \frac{1}{k-y} = \frac{k(k-y) - 1}{k - y} = \frac{k^2 - ky - 1}{k - y} .$$

L'égalité $x(k-z) = 1$ devient donc

$$\frac{ky - 1}{y} \times \frac{k^2 - ky - 1}{k - y} = 1 ,$$

c'est-à-dire

$$(ky - 1)\left(k^2 - ky - 1\right) = y\,(k - y) .$$

**Étape 4 : développer et factoriser.**

Développons le membre de gauche :

$$(ky-1)(k^2 - ky - 1) = k^3 y - k^2y^2 - ky - k^2 + ky + 1 = k^3 y - k^2 y^2 - k^2 + 1 .$$

Le membre de droite vaut $ky - y^2$. L'équation s'écrit donc

$$k^3 y - k^2 y^2 - k^2 + 1 = ky - y^2 ,$$

puis, en tout ramenant à gauche,

$$y^2\left(1 - k^2\right) - ky\left(1 - k^2\right) + \left(1 - k^2\right) = 0 ,$$

c'est-à-dire

$$\left(1 - k^2\right)\left(y^2 - ky + 1\right) = 0 .$$

**Étape 5 : éliminer le mauvais facteur.**

Supposons $y^2 - ky + 1 = 0$. Comme $y \neq 0$, divisons par $y$ :

$$y - k + \frac1y = 0 , \qquad \text{donc} \qquad k = y + \frac1y .$$

Mais alors

$$x = k - \frac1y = y + \frac1y - \frac1y = y ,$$

ce qui contredit l'étape 1.

Il reste donc la seule possibilité

$$1 - k^2 = 0 , \qquad \text{c'est-à-dire} \qquad k = 1 \quad \text{ou} \quad k = -1 .$$

**Étape 6 : les deux valeurs sont atteintes.**

- Pour $k = 1$, prenons $y = 2$. Alors $x = 1 - \dfrac12 = \dfrac12$ et $z = \dfrac{1}{1-2} = -1$. Vérifions :
$$x + \frac1y = \frac12 + \frac12 = 1, \qquad y + \frac1z = 2 - 1 = 1, \qquad z + \frac1x = -1 + 2 = 1 . \ ✔$$
Les trois nombres $\dfrac12$, $2$, $-1$ ne sont pas tous égaux.
- Pour $k = -1$, il suffit de changer tous les signes : $\left(-\dfrac12,\ -2,\ 1\right)$ convient, et donne $k = -1$.

**Conclusion.** Les valeurs possibles de $k$ sont exactement $1$ et $-1$.

## Going further

**Une jolie remarque au passage.** En soustrayant les égalités deux à deux, on obtient

$$x - y = \frac1z - \frac1y = \frac{y - z}{yz}, \qquad y - z = \frac{z - x}{zx}, \qquad z - x = \frac{x - y}{xy} .$$

En multipliant les trois lignes entre elles, et en simplifiant par $(x-y)(y-z)(z-x)$, qui n'est pas nul d'après l'étape 1 :

$$1 = \frac{1}{x^2y^2z^2} , \qquad \text{donc} \qquad (xyz)^2 = 1 , \qquad \text{donc} \qquad xyz = 1 \ \text{ou} \ xyz = -1 .$$

C'est très rapide, et c'est une information supplémentaire sur les solutions. Sur l'exemple $\left(\tfrac12, 2, -1\right)$ : le produit vaut bien $-1$.

**Et si les trois nombres étaient égaux ?** Alors $x = y = z$ et la condition devient $x + \dfrac1x = k$, qui a une solution pour tout $k$ avec $|k| \geqslant 2$. C'est exactement pour écarter cette famille sans intérêt que l'énoncé exige que les trois nombres ne soient pas tous égaux.
