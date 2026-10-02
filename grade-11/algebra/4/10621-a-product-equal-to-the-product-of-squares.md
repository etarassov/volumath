---
id: "10621"
title: "Un produit égal au produit des carrés"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [inegalite, produit, cas-d-egalite, racine-carree]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 2 (algèbre)"
  reference: "2020-11_Sujet-envoi-2.pdf, Exercices Seniors, exercice 15 ; corrigé 2021-01_Corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-11_Sujet-envoi-2.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Trouver tous les $n$-uplets $(x_1, x_2, \ldots, x_n)$ de réels strictement positifs tels que

$$\left(x_1 + \frac{1}{x_2}\right)\left(x_2 + \frac{1}{x_3}\right) \cdots \left(x_n + \frac{1}{x_1}\right) = \left(x_1^2 + \frac{1}{x_2^2}\right)\left(x_2^2 + \frac{1}{x_3^2}\right) \cdots \left(x_n^2 + \frac{1}{x_1^2}\right)$$

## Hints

1. Commence par $n = 1$ : l'équation est $x_1 + \frac{1}{x_1} = x_1^2 + \frac{1}{x_1^2}$.
2. Pour comparer une somme et la somme des carrés, utilise $u^2 + v^2 \geqslant \frac{(u + v)^2}{2}$. Pour minorer une somme $u + v$ de deux nombres positifs, utilise $u + v \geqslant 2\sqrt{uv}$.
3. Note $A$ le produit de gauche. Montre que l'équation force $A \leqslant 2^n$, et que l'on a toujours $A \geqslant 2^n$.
4. Il y a donc égalité partout. Que dit le cas d'égalité de $u + v \geqslant 2\sqrt{uv}$ ? Distingue ensuite $n$ pair et $n$ impair.

## Solution

Pour simplifier l'écriture, on pose $x_{n+1} = x_1$, et pour $i = 1, \ldots, n$ :

$$p_i = x_i + \frac{1}{x_{i+1}} \qquad \text{et} \qquad q_i = x_i^2 + \frac{1}{x_{i+1}^2}$$

Ce sont des nombres strictement positifs. On note $A = p_1 p_2 \cdots p_n$ et $B = q_1 q_2 \cdots q_n$ ; l'équation s'écrit $A = B$.

**Étape 1. Deux outils.** Soient $u$ et $v$ deux réels strictement positifs.

- $(u - v)^2 \geqslant 0$ donne $2u^2 + 2v^2 \geqslant u^2 + 2uv + v^2$, c'est-à-dire $u^2 + v^2 \geqslant \frac{(u + v)^2}{2}$.
- $\left(\sqrt{u} - \sqrt{v}\right)^2 \geqslant 0$ donne $u + v \geqslant 2\sqrt{uv}$, avec égalité seulement si $u = v$.

**Étape 2. L'équation force $A \leqslant 2^n$.**

Avec $u = x_i$ et $v = \frac{1}{x_{i+1}}$, le premier outil donne $q_i \geqslant \frac{p_i^2}{2}$. On multiplie ces $n$ inégalités entre nombres positifs :

$$B \geqslant \frac{p_1^2 p_2^2 \cdots p_n^2}{2^n} = \frac{A^2}{2^n}$$

Comme $A = B$, on obtient $A \geqslant \frac{A^2}{2^n}$, et en divisant par $A > 0$ : $A \leqslant 2^n$.

**Étape 3. On a toujours $A \geqslant 2^n$.**

Le second outil donne $p_i \geqslant 2\sqrt{\frac{x_i}{x_{i+1}}}$. En multipliant :

$$A \geqslant 2^n \sqrt{\frac{x_1}{x_2} \times \frac{x_2}{x_3} \times \cdots \times \frac{x_n}{x_1}} = 2^n \sqrt{1} = 2^n$$

car tout se simplifie dans le produit des quotients.

**Étape 4. Égalité partout.**

On a donc $A = 2^n$, et le produit des inégalités $p_i \geqslant 2\sqrt{\frac{x_i}{x_{i+1}}}$ est une égalité. Si l'une d'elles était stricte, le produit le serait aussi, puisque tous les nombres sont positifs. Donc chacune est une égalité, ce qui veut dire $x_i = \frac{1}{x_{i+1}}$, c'est-à-dire

$$x_i \, x_{i+1} = 1 \qquad \text{pour } i = 1, \ldots, n \quad (\text{avec } x_{n+1} = x_1)$$

**Étape 5. Les $n$-uplets possibles.**

De $x_i x_{i+1} = 1$ et $x_{i+1} x_{i+2} = 1$, on tire $x_{i+2} = x_i$. Posons $a = x_1$ : les termes d'indice impair valent $a$ et ceux d'indice pair valent $\frac{1}{a}$.

- **Si $n$ est pair**, $x_n = \frac{1}{a}$ et la dernière condition $x_n x_1 = 1$ est vraie. On obtient $(a, \frac{1}{a}, a, \frac{1}{a}, \ldots, a, \frac{1}{a})$ avec $a > 0$.
- **Si $n$ est impair**, $x_n = a$ et la dernière condition donne $a^2 = 1$, donc $a = 1$. On obtient $(1, 1, \ldots, 1)$. Cela vaut aussi pour $n = 1$, où la condition s'écrit $x_1^2 = 1$.

**Étape 6. Vérification.**

Si $x_i x_{i+1} = 1$ pour tout $i$, alors $\frac{1}{x_{i+1}} = x_i$, donc $p_i = 2x_i$ et $q_i = 2x_i^2$. D'où $A = 2^n (x_1 \cdots x_n)$ et $B = 2^n (x_1 \cdots x_n)^2$. Dans les deux cas de l'étape 5, le produit $x_1 x_2 \cdots x_n$ vaut $1$, donc $A = B = 2^n$.

**Conclusion : si $n$ est impair, la seule solution est $(1, 1, \ldots, 1)$ ; si $n$ est pair, les solutions sont les $n$-uplets $(a, \frac{1}{a}, a, \frac{1}{a}, \ldots, a, \frac{1}{a})$, où $a$ est un réel strictement positif quelconque.**
