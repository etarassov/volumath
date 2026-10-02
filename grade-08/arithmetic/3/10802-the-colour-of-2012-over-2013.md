---
id: "10802"
title: "La couleur de 2012/2013"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [fractions, coloriage, parite]
adapted_from: null
see_also: ["10806"]
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2012-2013-envoi3.pdf, Exercices Juniors, exercice 2 ; corrigé 2017-10_ofm-2012-2013-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi3.pdf"
---

## Statement

Chaque fraction strictement positive (chaque nombre rationnel $x > 0$) est coloriée soit en rouge, soit en noir, en respectant trois règles :

- pour tout $x$, les nombres $x$ et $x + 1$ sont de couleurs **différentes** ;
- pour tout $x$, les nombres $x$ et $\dfrac{1}{x}$ sont de la **même** couleur ;
- le nombre $1$ est rouge.

Quelle est la couleur de $\dfrac{2012}{2013}$ ?

*On admet qu'un tel coloriage existe : on ne demande pas de le démontrer.*

## Hints

1. Commence par les entiers. Quelle est la couleur de $2$ ? de $3$ ? de $4$ ? Qu'est-ce qui se passe en général ?
2. D'après la deuxième règle, $\dfrac{2012}{2013}$ a la même couleur que $\dfrac{2013}{2012}$. Peux-tu écrire ce nombre sous la forme $1 + \text{quelque chose}$ ?
3. $\dfrac{2013}{2012} = 1 + \dfrac{1}{2012}$. Quelle est la couleur de $\dfrac{1}{2012}$ ?

## Solution

**Réponse : $\dfrac{2012}{2013}$ est rouge.**

**Les entiers.** Le nombre $1$ est rouge. D'après la première règle, $2 = 1 + 1$ a l'autre couleur : il est noir. Puis $3 = 2 + 1$ est rouge, $4$ est noir, et ainsi de suite : la couleur change à chaque fois qu'on ajoute $1$. Les entiers impairs sont donc rouges et les entiers pairs sont noirs.

En particulier, $2012$ est pair, donc **$2012$ est noir**.

**Le nombre $\dfrac{1}{2012}$.** D'après la deuxième règle, il a la même couleur que $2012$ : **il est noir**.

**Le nombre $\dfrac{2013}{2012}$.** On écrit
$$\frac{2013}{2012} = \frac{2012 + 1}{2012} = 1 + \frac{1}{2012} .$$
Le nombre $\dfrac{1}{2012}$ est noir, donc, d'après la première règle, $\dfrac{1}{2012} + 1$ est de l'autre couleur : **$\dfrac{2013}{2012}$ est rouge**.

**Le nombre $\dfrac{2012}{2013}$.** C'est l'inverse de $\dfrac{2013}{2012}$. D'après la deuxième règle, il a la même couleur.

**Conclusion.** Le nombre $\dfrac{2012}{2013}$ est **rouge**.

## Going further

1. Quelle est la couleur de $\dfrac{3}{5}$ ? *Indication : $\dfrac{5}{3} = 1 + \dfrac{2}{3}$, puis $\dfrac{3}{2} = 1 + \dfrac{1}{2}$.*
2. On a admis que le coloriage existe. Démontrer qu'il existe, et qu'il n'y en a qu'un seul, est nettement plus difficile : c'est l'exercice 10806.
