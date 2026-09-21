---
id: "8440"
title: "Deux puissances n-ièmes et un produit au moins égal à 4"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, puissance, produit, carre-positif, cas-degalite]
adapted_from: null
see_also: ["8217"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Entraînement de mi-parcours », exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels strictement positifs, et soit $n$ un entier supérieur ou égal à $1$. Montrer que

$$\left(1 + \frac{a}{b}\right)^{\!n} + \left(1 + \frac{b}{a}\right)^{\!n} \;\geqslant\; 2^{\,n+1}.$$

Dans quel cas y a-t-il égalité ?

## Hints

1. Donne un nom aux deux quantités qui apparaissent : pose $u = 1 + \frac{a}{b}$ et $v = 1 + \frac{b}{a}$. Il s'agit de montrer que $u^n + v^n \geqslant 2^{n+1}$.
2. Commence par calculer le **produit** $uv$. C'est beaucoup plus agréable que la somme, car les deux fractions s'y simplifient.
3. Tu devrais trouver $uv = 2 + \left(\frac{a}{b} + \frac{b}{a}\right)$. Que peux-tu dire de $t + \frac{1}{t}$ pour $t > 0$ ?
4. Il te reste à relier la somme $u^n + v^n$ au produit $u^n v^n$. Pour tous réels positifs $p$ et $q$, on a $p + q \geqslant 2\sqrt{pq}$ : pourquoi ?

## Solution

Posons

$$u = 1 + \frac{a}{b} \qquad \text{et} \qquad v = 1 + \frac{b}{a}.$$

Ces deux nombres sont strictement positifs, puisque $a$ et $b$ le sont. Il s'agit de montrer que $u^n + v^n \geqslant 2^{n+1}$.

**Étape 1. Le produit $uv$ vaut au moins $4$.**

$$uv = \left(1 + \frac{a}{b}\right)\left(1 + \frac{b}{a}\right) = 1 + \frac{b}{a} + \frac{a}{b} + \frac{a}{b}\cdot\frac{b}{a} = 2 + \left(\frac{a}{b} + \frac{b}{a}\right).$$

Or, pour tout réel $t > 0$,

$$t + \frac{1}{t} - 2 = \frac{t^2 - 2t + 1}{t} = \frac{(t-1)^2}{t} \geqslant 0,$$

donc $t + \frac{1}{t} \geqslant 2$, avec égalité exactement lorsque $t = 1$.

En appliquant cela à $t = \dfrac{a}{b}$ :

$$uv \geqslant 2 + 2 = 4,$$

avec égalité exactement lorsque $a = b$.

**Étape 2. Relier la somme des puissances à leur produit.**

Pour tous réels positifs $p$ et $q$,

$$p + q - 2\sqrt{pq} = \left(\sqrt{p} - \sqrt{q}\right)^2 \geqslant 0,$$

donc $p + q \geqslant 2\sqrt{pq}$, avec égalité exactement lorsque $p = q$.

Appliquons cela à $p = u^n$ et $q = v^n$, qui sont positifs :

$$u^n + v^n \geqslant 2\sqrt{u^n v^n} = 2\sqrt{(uv)^n} = 2\left(\sqrt{uv}\right)^{n}.$$

**Étape 3. Conclure.**

D'après l'étape 1, $uv \geqslant 4$, donc $\sqrt{uv} \geqslant 2$, donc $\left(\sqrt{uv}\right)^n \geqslant 2^n$.

En reportant :

$$u^n + v^n \geqslant 2 \times 2^n = 2^{\,n+1}.$$

**Étape 4. Le cas d'égalité.**

Pour que l'inégalité finale soit une égalité, il faut que les deux inégalités enchaînées le soient :

- celle de l'étape 2 impose $u^n = v^n$, donc $u = v$ (deux réels positifs ayant la même puissance $n$-ième sont égaux) ;
- celle de l'étape 1 impose $a = b$.

Réciproquement, si $a = b$, alors $u = v = 2$ et

$$u^n + v^n = 2^n + 2^n = 2^{\,n+1}.$$

L'égalité a donc lieu exactement lorsque $a = b$.

## Going further

La stratégie mérite d'être retenue : devant une somme de deux quantités compliquées, **regarder d'abord leur produit**. Ici, $u + v$ ne se simplifie pas du tout, alors que $uv$ se réduit immédiatement, parce que les deux fractions $\frac{a}{b}$ et $\frac{b}{a}$ sont inverses l'une de l'autre.

Une fois le produit maîtrisé, l'inégalité $p + q \geqslant 2\sqrt{pq}$ fait le pont entre le produit et la somme. C'est la version à deux termes de l'inégalité arithmético-géométrique, et elle n'est rien d'autre qu'un carré positif déguisé.
