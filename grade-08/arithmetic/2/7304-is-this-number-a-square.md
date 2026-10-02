---
id: "7304"
title: "56 241 242 est-il un carré ?"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [carre, divisibilite, dernier-chiffre, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, arithmétique, exercice 22"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

On pose $N = 56\,241\,242$.

**a)** Le nombre $N$ est-il le carré d'un entier ?

**b)** Le nombre $N$ est-il divisible par $7$ ?

On demande une réponse justifiée, et sans calculatrice.

## Hints

1. Pour la question a), il est inutile de chercher la racine carrée. Il suffit de trouver une propriété que possèdent tous les carrés et que $N$ ne possède pas.
2. Écris les carrés $1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, \ldots$ et regarde leur **dernier chiffre**. Lesquels apparaissent ? Lesquels n'apparaissent jamais ?
3. Le dernier chiffre de $N$ est $2$. Est-ce que $2$ figure dans ta liste ?
4. Pour la question b), on ne connaît pas de critère simple de divisibilité par $7$ : on divise. Mais on peut alléger le calcul en coupant $N$ en morceaux commodes.
5. Par exemple $56\,241\,242 = 56\,000\,000 + 241\,242$, et $56$ est un multiple de $7$.

## Solution

**a) $N$ n'est pas un carré.**

Regardons le dernier chiffre des carrés. Le dernier chiffre de $n^2$ ne dépend que du dernier chiffre de $n$ :

| dernier chiffre de $n$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|---|---|---|---|---|
| dernier chiffre de $n^2$ | 0 | 1 | 4 | 9 | 6 | 5 | 6 | 9 | 4 | 1 |

Un carré se termine donc toujours par $0$, $1$, $4$, $5$, $6$ ou $9$. Jamais par $2$, $3$, $7$ ou $8$.

Or $N$ se termine par $2$. Donc **$N$ n'est pas un carré**.

**b) $N$ n'est pas divisible par $7$.**

Coupons $N$ en deux morceaux :
$$N = 56\,000\,000 + 241\,242 .$$

Le premier morceau vaut $56 \times 10^6$, et $56 = 7 \times 8$ : il est donc divisible par $7$. Tout revient à savoir si $241\,242$ l'est.

Continuons de la même façon :
$$241\,242 = 210\,000 + 31\,242 ,$$
et $210\,000 = 7 \times 30\,000$ est divisible par $7$. Reste $31\,242$.

$$31\,242 = 28\,000 + 3\,242 , \qquad 28\,000 = 7 \times 4\,000 .$$

$$3\,242 = 2\,800 + 442 , \qquad 2\,800 = 7 \times 400 .$$

$$442 = 420 + 22 , \qquad 420 = 7 \times 60 .$$

Il ne reste que $22$, et $22 = 7 \times 3 + 1$.

À chaque étape on a retiré un multiple de $7$, donc le reste de $N$ dans la division par $7$ est le même que celui de $22$, c'est-à-dire $1$.

**Conclusion.** $N$ n'est pas un carré, et $N$ n'est pas divisible par $7$ : il laisse le reste $1$.

## Going further

1. Le raisonnement du a) marche-t-il pour montrer que $56\,241\,243$ n'est pas un carré ? Et $56\,241\,244$ ?
2. Un carré est toujours de la forme $4k$ ou $4k+1$. Vérifie-le, puis sers-t'en pour retrouver la réponse du a) en regardant les **deux** derniers chiffres de $N$.
3. Invente un nombre à huit chiffres qui se termine par $4$ et qui n'est pourtant pas un carré. Quelle propriété utiliser pour le prouver ?
