---
id: "7822"
title: "(1 + a)(2 + b) ≥ 6"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, moyenne arithmetico geometrique, factorisation, cas d egalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », évaluation initiale, section algèbre (inégalité arithmético-géométrique)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels strictement positifs tels que
$$a^3 b^2 = 1 .$$

Montrer que
$$(1 + a)(2 + b) \geq 6 .$$

## Hints

1. Cherche d'abord le cas d'égalité : essaie $a = b = 1$. La contrainte est-elle vérifiée ? Que
   vaut alors $(1+a)(2+b)$ ? C'est le signe que $6$ est exactement le minimum.
2. Minore séparément chacun des deux facteurs. Pour le premier : montre que
   $1 + a \geq 2\sqrt{a}$. Un carré bien choisi suffit.
3. Pour le second, écris $2 + b = 1 + 1 + b$ et devine la minoration analogue : trois termes
   au lieu de deux devraient donner $3$ fois la racine **cubique**.
4. Pour démontrer $2 + b \geq 3\sqrt[3]{b}$, pose $b = t^3$ avec $t > 0$ : il s'agit alors de
   montrer que $t^3 - 3t + 2 \geq 0$. Ce polynôme a une racine évidente, et même une racine
   double.
5. Multiplie les deux minorations. Le produit $\sqrt{a}\,\sqrt[3]{b}$ qui apparaît est
   exactement ce que la contrainte $a^3b^2 = 1$ contrôle : élève-le à la puissance $6$.

## Solution

**Étape 1 : une minoration du premier facteur.**

Pour tout réel $a > 0$,
$$\left(\sqrt{a} - 1\right)^2 \geq 0 ,$$
c'est-à-dire $a - 2\sqrt a + 1 \geq 0$, donc
$$1 + a \geq 2\sqrt{a} . \qquad (1)$$

L'égalité a lieu exactement quand $\sqrt a = 1$, c'est-à-dire $a = 1$.

**Étape 2 : une minoration du second facteur.**

Montrons que pour tout réel $b > 0$,
$$2 + b \geq 3\sqrt[3]{b} . \qquad (2)$$

Posons $t = \sqrt[3]{b}$, donc $t > 0$ et $b = t^3$. L'inégalité à démontrer devient
$$t^3 + 2 \geq 3t, \qquad \text{c'est-à-dire} \qquad t^3 - 3t + 2 \geq 0 .$$

Le nombre $t = 1$ est racine évidente de ce polynôme. En factorisant :
$$t^3 - 3t + 2 = (t - 1)\left(t^2 + t - 2\right) = (t-1)(t-1)(t+2) = (t-1)^2 (t+2) .$$

Comme $t > 0$, on a $t + 2 > 0$, et $(t-1)^2 \geq 0$. Le produit est donc positif ou nul, ce qui
prouve $(2)$. L'égalité a lieu exactement quand $t = 1$, c'est-à-dire $b = 1$.

**Étape 3 : on multiplie.**

Les deux membres de $(1)$ et de $(2)$ sont strictement positifs, donc on peut multiplier les
deux inégalités :
$$(1 + a)(2 + b) \geq 2\sqrt{a} \times 3\sqrt[3]{b} = 6\,\sqrt{a}\,\sqrt[3]{b} .$$

**Étape 4 : la contrainte fixe le produit $\sqrt{a}\,\sqrt[3]{b}$.**

Posons $K = \sqrt{a}\,\sqrt[3]{b}$, qui est strictement positif. Élevons-le à la puissance $6$ :
$$K^6 = \left(\sqrt{a}\right)^6 \times \left(\sqrt[3]{b}\right)^6 = a^3 \times b^2 = 1 .$$

Un réel strictement positif dont la puissance sixième vaut $1$ vaut $1$ (la fonction
$x \mapsto x^6$ est strictement croissante sur $[0, +\infty[$). Donc $K = 1$.

**Conclusion.**

$$(1 + a)(2 + b) \geq 6 \times 1 = 6 .$$

**Cas d'égalité.** Il faut l'égalité dans $(1)$ et dans $(2)$, donc $a = 1$ et $b = 1$. Ce couple
vérifie bien $a^3b^2 = 1$, et $(1+1)(2+1) = 6$. Le minimum $6$ est donc atteint.

## Going further

Les inégalités $(1)$ et $(2)$ sont deux cas particuliers de l'**inégalité arithmético-
géométrique** : pour $n$ réels positifs $x_1, \ldots, x_n$,
$$\frac{x_1 + \cdots + x_n}{n} \geq \sqrt[n]{x_1 \cdots x_n} .$$
Ici on l'a appliquée à $(1, a)$ puis à $(1, 1, b)$. Le découpage $2 = 1 + 1$ n'est pas un hasard :
c'est lui qui fait apparaître les exposants $3$ et $2$ de la contrainte.
