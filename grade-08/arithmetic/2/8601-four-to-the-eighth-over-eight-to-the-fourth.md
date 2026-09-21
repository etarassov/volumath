---
id: "8601"
title: "4⁸ divisé par 8⁴"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [puissances, base deux, calcul]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023"
  reference: "valbonne-2023.pdf, Coupe Animath de printemps 2023, exercices collégiens, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Calculer

$$\frac{4^8}{8^4} .$$

On demande seulement le résultat, mais essaie de le trouver sans poser la moindre multiplication.

## Hints

1. $4^8$ et $8^4$ sont de très grands nombres. Les calculer un par un est long et on se trompe. Y a-t-il un point commun entre $4$ et $8$ ?
2. $4 = 2 \times 2$ et $8 = 2 \times 2 \times 2$. Écris les deux nombres avec des $2$.
3. Rappelle-toi la règle $(a^b)^c = a^{b \times c}$ : une puissance de puissance se calcule en multipliant les exposants.
4. Une fois le haut et le bas écrits comme des puissances de $2$, la fraction se simplifie d'un coup.

## Solution

**L'idée.** $4$ et $8$ sont tous les deux des puissances de $2$ :

$$4 = 2^2 \qquad \text{et} \qquad 8 = 2^3 .$$

On récrit donc les deux étages de la fraction en base $2$.

**Le numérateur.**

$$4^8 = (2^2)^8 = 2^{2 \times 8} = 2^{16} .$$

**Le dénominateur.**

$$8^4 = (2^3)^4 = 2^{3 \times 4} = 2^{12} .$$

**La division.** Diviser deux puissances de $2$ revient à soustraire les exposants :

$$\frac{4^8}{8^4} = \frac{2^{16}}{2^{12}} = 2^{16-12} = 2^4 = 16 .$$

**Conclusion.** La fraction vaut $\boxed{16}$.

*(Pour se convaincre que le raccourci était utile : $4^8 = 65\,536$ et $8^4 = 4096$. On retrouve bien $65\,536 \div 4096 = 16$, mais le chemin est nettement plus pénible.)*

## Going further

La même méthode marche avec des nombres qu'on ne peut plus calculer du tout. Que vaut

$$\frac{9^{50}}{27^{33}} \; ?$$

*Indication : $9 = 3^2$ et $27 = 3^3$.*
