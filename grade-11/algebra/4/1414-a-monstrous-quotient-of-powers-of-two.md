---
id: "1414"
title: "Une division monstrueuse de puissances de 2"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [identites-remarquables, puissances, factorisation, calcul-astucieux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 2 « Algebra », problème 3 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Simplifier la fraction

$$\frac{2^{62} + 1}{2^{31} + 2^{16} + 1}.$$

Autrement dit : montrer que cette fraction est un entier, et donner cet entier sous une forme courte.

## Hints

1. Une calculatrice ordinaire ne suffit pas : $2^{62}$ a $19$ chiffres. Il faut factoriser le numérateur.
2. Poser $a = 2^{31}$. Alors le numérateur vaut $a^2 + 1$ et le dénominateur $a + 2^{16} + 1$. Que vaut $2^{16}$ en fonction de $a$ ? Remarquer que $\left(2^{16}\right)^2 = 2^{32} = 2a$.
3. On cherche donc à faire apparaître $a^2 + 1$ à partir de $a + b + 1$, où $b = 2^{16}$ vérifie $b^2 = 2a$.
4. Essayer de multiplier $a + b + 1$ par $a - b + 1$. Regrouper les termes en $(a+1)$ et utiliser l'identité $(a+1)^2 - b^2$.

## Solution

**Poser les bonnes lettres.**

Posons

$$a = 2^{31} \qquad \text{et} \qquad b = 2^{16}.$$

Ces deux nombres sont liés : $b^2 = \left(2^{16}\right)^2 = 2^{32} = 2 \times 2^{31} = 2a$. Retenons cette relation

$$b^2 = 2a .$$

La fraction s'écrit alors

$$\frac{a^2 + 1}{a + b + 1}.$$

**L'astuce : multiplier par le conjugué.**

Calculons le produit $(a + b + 1)(a - b + 1)$. En regroupant $a + 1$ d'un côté, on reconnaît une différence de deux carrés :

$$(a + b + 1)(a - b + 1) = \bigl((a+1) + b\bigr)\bigl((a+1) - b\bigr) = (a+1)^2 - b^2 .$$

Or $(a+1)^2 = a^2 + 2a + 1$ et $b^2 = 2a$, donc

$$(a + b + 1)(a - b + 1) = a^2 + 2a + 1 - 2a = a^2 + 1 .$$

C'est exactement le numérateur.

**Conclure.**

$$\frac{a^2+1}{a+b+1} = \frac{(a+b+1)(a-b+1)}{a+b+1} = a - b + 1 .$$

En revenant aux puissances de $2$ :

$$\frac{2^{62} + 1}{2^{31} + 2^{16} + 1} = 2^{31} - 2^{16} + 1 .$$

**Conclusion.** La fraction vaut $\boxed{2^{31} - 2^{16} + 1}$, c'est-à-dire $2\,147\,483\,648 - 65\,536 + 1 = 2\,147\,418\,113$.

**Où est le truc ?** Tout repose sur le fait que l'exposant $16$ est exactement la moitié de $32 = 31 + 1$. C'est ce qui donne $b^2 = 2a$ et fait disparaître le terme $2a$ de $(a+1)^2$. Sans cette coïncidence, la division ne tomberait pas juste.

## Going further

1. Vérifier l'identité de Sophie Germain $x^4 + 4y^4 = (x^2 + 2y^2 + 2xy)(x^2 + 2y^2 - 2xy)$, puis l'appliquer avec $x = 1$ et $y = 2^{15}$ : on retrouve la factorisation de $2^{62} + 1$.
2. Sur le même modèle, simplifier $\dfrac{2^{126} + 1}{2^{63} + 2^{32} + 1}$.
3. Le nombre $2^{62} + 1$ est-il premier ? Que vient-on de montrer à son sujet ?
