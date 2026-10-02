---
id: "7429"
title: "Une suite qui cache une formule très simple"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [suites, recurrence, conjecture, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 30 (résolu par Nathanaël Courant)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On définit une suite de nombres $x_0, x_1, x_2, \ldots$ par
$$x_0 = 3, \qquad x_1 = 4,$$
puis, pour tout entier $n \geq 1$,
$$x_{n+1} = x_{n-1}^2 - n\,x_n.$$

Calculer $x_{2011}$.

## Hints

1. Calcule à la main $x_2$, $x_3$, $x_4$, $x_5$. Écris-les les uns sous les autres à côté de leur
   indice.
2. Tu devrais voir une formule très simple apparaître. Formule-la clairement.
3. Il reste à la démontrer. Une récurrence sur $n$ convient : suppose la formule vraie pour les
   indices $n-1$ et $n$, et déduis-la pour $n+1$.

## Solution

**On calcule les premiers termes.**

$$x_2 = x_0^2 - 1 \times x_1 = 3^2 - 4 = 9 - 4 = 5,$$
$$x_3 = x_1^2 - 2 \times x_2 = 4^2 - 2 \times 5 = 16 - 10 = 6,$$
$$x_4 = x_2^2 - 3 \times x_3 = 5^2 - 3 \times 6 = 25 - 18 = 7,$$
$$x_5 = x_3^2 - 4 \times x_4 = 6^2 - 4 \times 7 = 36 - 28 = 8.$$

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|---|
| $x_n$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |

**La conjecture.** Il semble que $x_n = n + 3$ pour tout $n \geq 0$.

**La démonstration, par récurrence.**

*Ce qu'on démontre.* Pour tout entier $n \geq 0$, notons $P(n)$ la propriété « $x_n = n+3$ ».

*Initialisation.* $x_0 = 3 = 0 + 3$ et $x_1 = 4 = 1 + 3$ : $P(0)$ et $P(1)$ sont vraies.

*Hérédité.* Soit $n \geq 1$. Supposons $P(n-1)$ et $P(n)$ vraies, c'est-à-dire
$$x_{n-1} = n + 2 \quad \text{et} \quad x_n = n + 3.$$

Alors
$$x_{n+1} = x_{n-1}^2 - n\,x_n = (n+2)^2 - n(n+3).$$

Développons :
$$(n+2)^2 = n^2 + 4n + 4, \qquad n(n+3) = n^2 + 3n,$$
donc
$$x_{n+1} = (n^2 + 4n + 4) - (n^2 + 3n) = n + 4 = (n+1) + 3.$$

C'est exactement $P(n+1)$.

*Conclusion de la récurrence.* Comme $P(0)$ et $P(1)$ sont vraies, et que $P(n-1)$ et $P(n)$
entraînent $P(n+1)$, la propriété $P(n)$ est vraie pour tout entier $n \geq 0$.

**Réponse.**
$$x_{2011} = 2011 + 3 = \boxed{2014}.$$

## Going further

Même question avec $x_0 = 3$, $x_1 = 4$ et $x_{n+1} = x_{n-1}^2 - n\,x_n - 1$. La suite reste-t-elle
aussi simple ? Calcule les premiers termes avant de conjecturer quoi que ce soit.
