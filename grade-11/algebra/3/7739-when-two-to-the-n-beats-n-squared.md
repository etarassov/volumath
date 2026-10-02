---
id: "7739"
title: "Quand 2ⁿ dépasse n²"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [recurrence, inegalite, puissances, exception]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mercredi 20 matin (Alix Deleporte), exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ pour lesquels

$$2^n \geqslant n^2 .$$

## Hints

1. Fais un tableau des valeurs de $2^n$ et de $n^2$ pour $n$ allant de $0$ à $6$. Il y a une seule surprise : repère-la.
2. Tu vas donc démontrer que l'inégalité est vraie pour tout $n \geqslant 4$. Initialise la récurrence en $n = 4$.
3. Pour l'hérédité, pars de $2^n \geqslant n^2$ et multiplie par $2$. Que faut-il encore comparer ?
4. Il reste à montrer que $2n^2 \geqslant (n+1)^2$ pour $n \geqslant 4$. Développe et regarde le signe de $n^2 - 2n - 1$.

## Solution

**Les entiers qui conviennent sont tous les entiers naturels sauf $n = 3$.**

**Les petites valeurs.**

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|---|
| $2^n$ | $1$ | $2$ | $4$ | $8$ | $16$ | $32$ |
| $n^2$ | $0$ | $1$ | $4$ | $9$ | $16$ | $25$ |
| $2^n \geqslant n^2$ ? | oui | oui | oui | **non** | oui | oui |

Le seul entier $n \leqslant 5$ qui ne convient pas est $n = 3$. Montrons que l'inégalité est vraie pour tout $n \geqslant 4$.

**La récurrence.** Pour $n \geqslant 4$, notons $P_n$ la propriété « $2^n \geqslant n^2$ ».

*Initialisation.* Pour $n = 4$ : $2^4 = 16$ et $4^2 = 16$, donc $P_4$ est vraie.

*Hérédité.* Supposons $P_n$ vraie pour un entier $n \geqslant 4$, c'est-à-dire $2^n \geqslant n^2$. En multipliant par $2$ :

$$2^{n+1} \geqslant 2n^2 .$$

Il suffit donc de montrer que $2n^2 \geqslant (n+1)^2$. Or

$$2n^2 - (n+1)^2 = 2n^2 - n^2 - 2n - 1 = n^2 - 2n - 1 = (n-1)^2 - 2 .$$

Comme $n \geqslant 4$, on a $(n-1)^2 \geqslant 9 > 2$, donc $n^2 - 2n - 1 > 0$ et

$$2n^2 > (n+1)^2 .$$

En enchaînant,

$$2^{n+1} \geqslant 2n^2 > (n+1)^2 ,$$

donc $P_{n+1}$ est vraie.

*Conclusion de la récurrence.* $P_n$ est vraie pour tout entier $n \geqslant 4$.

**Conclusion : l'inégalité $2^n \geqslant n^2$ est vraie pour $n = 0$, $n = 1$, $n = 2$ et pour tout $n \geqslant 4$. Elle est fausse uniquement pour $n = 3$.**

## Going further

L'exception $n = 3$ n'est pas un accident de calcul : c'est le moment où la fonction exponentielle est en train de dépasser la fonction carrée. Les deux courbes $y = 2^x$ et $y = x^2$ se croisent trois fois, une fois pour un $x$ négatif (environ $-\text{0,77}$), une fois en $x = 2$ et une fois en $x = 4$. Entre $2$ et $4$, la parabole est au-dessus, et c'est là que tombe l'entier $3$.

Ensuite l'exponentielle l'emporte définitivement, et même largement : pour $n = 20$, on a $2^{20} = 1\,048\,576$ contre $400$.
