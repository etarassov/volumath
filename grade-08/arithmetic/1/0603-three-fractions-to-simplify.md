---
id: "0603"
title: "Trois fractions à simplifier"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [fractions, simplification, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 26"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Simplifier les fractions

$$\frac{125}{1000}, \qquad \frac{64}{256}, \qquad \frac{77}{121}.$$

Une fraction est simplifiée quand son numérateur et son dénominateur n'ont plus aucun
diviseur commun autre que $1$.

## Hints

1. Cherche un nombre qui divise à la fois le numérateur et le dénominateur, et divise les deux par ce nombre. Recommence tant que c'est possible.
2. Pour la première, $1000 = 8 \times 125$. Pour la deuxième, $64$ et $256$ sont des puissances de $2$.
3. Pour la troisième, $77$ et $121$ ne sont pas pairs et ne finissent pas par $0$ ou $5$ : essaie $7$, puis $11$.

## Solution

**Première fraction.** $1000 = 8 \times 125$, donc

$$\frac{125}{1000} = \frac{125 \times 1}{125 \times 8} = \frac{1}{8}.$$

**Deuxième fraction.** $64 = 2^6$ et $256 = 2^8 = 64 \times 4$, donc

$$\frac{64}{256} = \frac{64 \times 1}{64 \times 4} = \frac{1}{4}.$$

**Troisième fraction.** $77 = 7 \times 11$ et $121 = 11 \times 11$, donc

$$\frac{77}{121} = \frac{11 \times 7}{11 \times 11} = \frac{7}{11}.$$

Comme $7$ et $11$ sont premiers et différents, on ne peut pas aller plus loin.

Réponses : $\dfrac{1}{8}$, $\dfrac{1}{4}$ et $\dfrac{7}{11}$.
