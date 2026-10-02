---
id: "11077"
title: "Racine cubique ou 2x + 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [invariant, puissances-de-deux, cubes, processus, valuation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Seniors, exercice 15 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Alice trouve un entier $N > 1$ écrit au tableau. Ensuite, chaque jour, elle efface l'entier $x$
écrit au tableau et le remplace :

- par $\sqrt[3]{x}$ si ce nombre est un entier ;
- par $2x + 1$ sinon.

Montrer que si Alice vit assez longtemps, elle finira par écrire un entier supérieur à
$2025^{2025}$.

## Hints

1. Montre d'abord que le nombre au tableau reste toujours au moins égal à $2$, et qu'Alice ne peut
   pas prendre la racine cubique tous les jours à partir d'un certain moment.
2. Ne regarde pas $x$, mais $x + 1$. Que devient $x + 1$ quand Alice remplace $x$ par $2x + 1$ ?
3. Si $x = y^3$, vérifie que $x + 1 = (y + 1)(y^2 - y + 1)$. Le second facteur est-il pair ou
   impair ?
4. Suis la plus grande puissance de $2$ qui divise $x + 1$.

## Solution

**Étape 1 : le nombre reste au moins égal à $2$, et Alice double une infinité de fois.**

Si $x \geqslant 2$, alors $2x + 1 \geqslant 5$. Et si $x \geqslant 2$ est un cube $y^3$, alors
$y \neq 1$ (sinon $x = 1$), donc $y \geqslant 2$. Comme $N \geqslant 2$, le nombre au tableau reste
donc toujours au moins égal à $2$.

Quand Alice prend la racine cubique d'un entier $x = y^3$ avec $y \geqslant 2$, le nombre diminue
strictement, car $y < y^3$. Une suite d'entiers positifs ne peut pas diminuer strictement
indéfiniment. Donc Alice ne peut pas prendre la racine cubique tous les jours à partir d'un certain
moment : elle utilise l'opération $x \mapsto 2x + 1$ une infinité de fois.

**Étape 2 : on suit la puissance de $2$ dans $x + 1$.**

Pour un entier $m \geqslant 1$, notons $v(m)$ l'exposant de la plus grande puissance de $2$ qui
divise $m$. Par exemple $v(24) = 3$ car $24 = 2^3 \times 3$. Regardons ce que devient $v(x + 1)$
chaque jour.

- *Si Alice écrit $2x + 1$* : le nouveau nombre plus $1$ vaut $2x + 2 = 2(x + 1)$, donc $v$
  augmente exactement de $1$.
- *Si Alice écrit $y = \sqrt[3]{x}$* : on vérifie en développant que
  $$x + 1 = y^3 + 1 = (y + 1)(y^2 - y + 1).$$
  Or $y^2 - y = y(y - 1)$ est le produit de deux entiers consécutifs, donc il est pair, et
  $y^2 - y + 1$ est impair. Ce facteur impair n'apporte aucun facteur $2$, donc
  $v(x + 1) = v(y + 1)$ : $v$ ne change pas.

Ainsi $v(x + 1)$ ne diminue jamais, et il augmente de $1$ chaque fois qu'Alice double. D'après
l'étape 1, cela arrive une infinité de fois, donc $v(x + 1)$ finit par dépasser n'importe quel
entier fixé.

**Étape 3 : conclusion.**

Comme $2025 < 2048 = 2^{11}$, on a $2025^{2025} < 2^{11 \times 2025} = 2^{22275}$.

D'après l'étape 2, il arrive un jour où $v(x + 1) \geqslant 22276$. Ce jour-là, $2^{22276}$ divise
$x + 1$, donc $x + 1 \geqslant 2^{22276}$ et
$$x \geqslant 2^{22276} - 1 > 2^{22275} > 2025^{2025}.$$

Alice finit donc bien par écrire un entier supérieur à $2025^{2025}$.

## Going further

Montrer qu'en fait, à partir d'un certain jour, Alice ne prend plus jamais de racine cubique.

*Réponse* : écrivons $x + 1 = 2^{v} \times w$ avec $w$ impair, et suivons $w$, la partie impaire
de $x + 1$. Quand Alice double, $x + 1$ est multiplié par $2$ et $w$ ne change pas. Quand elle
prend la racine cubique, $x + 1 = (y + 1)(y^2 - y + 1)$ et le second facteur est impair, donc la
partie impaire de $x + 1$ vaut celle de $y + 1$ multipliée par $y^2 - y + 1$. Comme $y \geqslant 2$,
ce facteur vaut au moins $3$ : la partie impaire est divisée par au moins $3$. Ainsi $w$ ne
grandit jamais et diminue strictement à chaque racine cubique. Comme $w$ est un entier
strictement positif, il ne peut diminuer qu'un nombre fini de fois, et Alice ne prend qu'un
nombre fini de racines cubiques.
