---
id: "10441"
title: "f(f(y) − x)² + f(x)² + f(y)² = f(y)(1 + 2f(f(y)))"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, carres, raisonnement-par-l-absurde, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 2 (algèbre)"
  reference: "2017-10_ofm-2016-2017-envoi-2.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2016-2017-envoi-2-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-2.pdf"
---

## Statement

On considère l'équation

$$f(f(y) - x)^2 + f(x)^2 + f(y)^2 = f(y)\,(1 + 2f(f(y))) ,$$

où $f(t)^2$ désigne le carré du nombre $f(t)$.

a) Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs dans $\mathbb{Z}$, qui vérifient cette équation pour tous réels $x$ et $y$.

b) Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs dans $\mathbb{R}$, qui vérifient cette équation pour tous réels $x$ et $y$.

## Hints

1. Cherche d'abord les fonctions constantes qui conviennent.
2. Pose $c = f(0)$ et prends $x = 0$. Montre que $f(y) = c^2 + (f(f(y)) - f(y))^2$ pour tout $y$. Qu'en déduis-tu sur le signe de $f(y) - c^2$ ?
3. Avec $y = 0$, montre que $0 \leqslant c \leqslant 1$. Dans la question a), cela laisse deux valeurs. Prends ensuite $y = 0$ et $x$ quelconque.
4. Pour la question b), suppose $0 < c < 1$. Calcule $d = f(c)$, puis $f(d)$, en te servant du fait que $\sqrt{u} > u$ pour $0 < u < 1$. Prends enfin $x = d$ et $y = 0$.

## Solution

Notons $E(x, y)$ l'égalité de l'énoncé pour les réels $x$ et $y$, et posons $c = f(0)$.

**Les solutions.** La fonction nulle convient : les deux membres valent $0$. La fonction constante égale à $1$ convient aussi : le membre de gauche vaut $1 + 1 + 1 = 3$ et celui de droite $1 \times (1 + 2) = 3$. Montrons que ce sont les seules, dans a) comme dans b).

**Étape 1 : une égalité pour chaque valeur de $f$.** Soit $y$ un réel, et notons $v = f(y)$. L'égalité $E(0, y)$ s'écrit $f(v)^2 + c^2 + v^2 = v + 2v\,f(v)$, c'est-à-dire

$$v = c^2 + f(v)^2 - 2v\,f(v) + v^2 = c^2 + (f(v) - v)^2 .$$

On en tire deux conséquences, valables pour toute valeur $v$ prise par $f$ :

$$v \geqslant c^2 \qquad (1) \qquad\qquad \text{et} \qquad\qquad f(v) = v + \sqrt{v - c^2} \quad \text{ou} \quad f(v) = v - \sqrt{v - c^2} . \qquad (2)$$

L'inégalité $(1)$ dit que $f(t) \geqslant c^2 \geqslant 0$ pour tout réel $t$.

**Étape 2 : $0 \leqslant c \leqslant 1$.** Le nombre $c = f(0)$ est une valeur de $f$, donc $(1)$ donne $c \geqslant c^2$, soit $c(1 - c) \geqslant 0$. Comme $c \geqslant 0$, on obtient $0 \leqslant c \leqslant 1$.

**Étape 3 : le cas $c = 0$ ou $c = 1$.** Supposons $c \in \{0, 1\}$. Alors $c^2 = c$, et l'égalité de l'étape 1 avec $v = c$ donne $c = c^2 + (f(c) - c)^2$, donc $(f(c) - c)^2 = 0$ et $f(c) = c$. L'égalité $E(x, 0)$ s'écrit alors, pour tout réel $x$,

$$f(c - x)^2 + f(x)^2 + c^2 = c\,(1 + 2c) .$$

- Si $c = 0$, elle devient $f(-x)^2 + f(x)^2 = 0$. Une somme de deux carrés nulle force $f(x) = 0$. Donc $f$ est la fonction nulle.
- Si $c = 1$, elle devient $f(1 - x)^2 + f(x)^2 = 2$. D'après $(1)$, $f(x) \geqslant 1$ et $f(1 - x) \geqslant 1$, donc chacun des deux carrés vaut au moins $1$. Leur somme vaut $2$, donc ils valent exactement $1$, et comme $f(x) > 0$, on obtient $f(x) = 1$. Donc $f$ est la fonction constante égale à $1$.

**Réponse à la question a).** Si $f$ est à valeurs entières, $c$ est un entier compris entre $0$ et $1$, donc $c = 0$ ou $c = 1$, et l'étape 3 conclut : les solutions sont la fonction nulle et la fonction constante égale à $1$.

**Question b) : le cas $0 < c < 1$ est impossible.** Supposons, par l'absurde, que $0 < c < 1$. On utilise deux faits simples.

- Si $0 < u < 1$, alors $u < \sqrt{u}$, car $u = \sqrt{u} \times \sqrt{u}$ et $\sqrt{u} < 1$.
- Le nombre $s = c - c^2$ vérifie $0 < s \leqslant \frac{1}{4}$, car $\frac{1}{4} - s = (c - \frac{1}{2})^2 \geqslant 0$.

*Calcul de $d = f(c)$.* D'après $(2)$ avec $v = c$, on a $d = c \pm \sqrt{s}$. Avec le signe moins, on aurait $d - c^2 = s - \sqrt{s} < 0$, ce qui contredit $(1)$. Donc

$$d = c + \sqrt{s}, \qquad d - c^2 = s + \sqrt{s} .$$

En particulier $0 < d - c^2 \leqslant \frac{1}{4} + \frac{1}{2} = \frac{3}{4} < 1$.

*Calcul de $f(d)$.* Le nombre $d$ est une valeur de $f$. Notons $t = \sqrt{d - c^2} > 0$. D'après $(2)$, $f(d) = d \pm t$. Avec le signe moins, on aurait $f(d) - c^2 = t^2 - t < 0$, car $0 < t^2 < 1$ donne $t^2 < t$. C'est exclu par $(1)$. Donc $f(d) = d + t$, et

$$f(d)^2 = d^2 + 2dt + t^2 = d^2 + 2dt + d - c^2 .$$

*La contradiction.* L'égalité $E(d, 0)$ s'écrit $f(c - d)^2 + f(d)^2 + c^2 = c\,(1 + 2d)$. Notons $A$ la différence entre son membre de gauche et son membre de droite, qui vaut donc $0$ :

$$A = f(c - d)^2 + d^2 + 2dt + d - c^2 + c^2 - c - 2cd .$$

En regroupant $d^2 - 2cd = (d - c)^2 - c^2$, et en utilisant $d - c = \sqrt{s}$, on obtient

$$A = f(c - d)^2 + 2dt + s - c^2 + \sqrt{s} .$$

Minorons chaque morceau : $f(c - d)^2 \geqslant c^4$ d'après $(1)$, $2dt > 0$ car $d > 0$ et $t > 0$, et $\sqrt{s} > s$ car $0 < s < 1$. Donc

$$A > c^4 + 2s - c^2 = c^4 - 3c^2 + 2c = c\,(c - 1)^2\,(c + 2) .$$

Ce dernier produit est strictement positif pour $0 < c < 1$. On obtient $A > 0$, alors que $A = 0$. C'est une contradiction.

**Réponse à la question b).** D'après l'étape 2 et ce qui précède, $c = 0$ ou $c = 1$, et l'étape 3 conclut comme dans a).

**Conclusion.** Dans les deux questions, les solutions sont exactement la fonction nulle et la fonction constante égale à $1$.

## Going further

1. Vérifier l'identité $c^4 - 3c^2 + 2c = c\,(c - 1)^2\,(c + 2)$ en développant le membre de droite.
2. Pour quelles constantes réelles $k$ la fonction constante égale à $k$ est-elle solution ? Retrouver ainsi les deux solutions sans l'étude générale.
