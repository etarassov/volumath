---
id: "8303"
title: "Le 2020ᵉ nombre affiché"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [suites, calcul, periodicite, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 4 (collège)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Un nombre s'affiche sur un écran d'ordinateur. La machine obéit à une règle unique : si le
nombre $x$ est affiché, le nombre affiché juste après est

$$x^2 - 2x + 1 .$$

Le premier nombre affiché est $2$.

Quel est le $2020^{\text{e}}$ nombre affiché ?

## Hints

1. Ne cherche pas de formule tout de suite. Calcule simplement les premiers nombres affichés, l'un après l'autre.
2. Fais un tableau à deux lignes : le rang ($1$, $2$, $3$, ...) et le nombre affiché. Cela évite de se tromper d'un cran.
3. Au bout de trois ou quatre calculs, quelque chose se répète. Décris précisément ce qui se répète.
4. Explique pourquoi cela se répète **pour toujours** : que donne la règle appliquée à $0$ ? Et appliquée à $1$ ?
5. Attention au décalage : le premier nombre est au rang $1$, pas au rang $0$.

## Solution

**On calcule les premiers termes.**

| Rang | Nombre affiché |
|---|---|
| $1$ | $2$ |
| $2$ | $2^2 - 2 \times 2 + 1 = 4 - 4 + 1 = 1$ |
| $3$ | $1^2 - 2 \times 1 + 1 = 1 - 2 + 1 = 0$ |
| $4$ | $0^2 - 2 \times 0 + 1 = 0 - 0 + 1 = 1$ |
| $5$ | $1^2 - 2 \times 1 + 1 = 0$ |
| $6$ | $0^2 - 2 \times 0 + 1 = 1$ |

La suite des nombres affichés commence donc par

$$2, \; 1, \; 0, \; 1, \; 0, \; 1, \; 0, \; \ldots$$

**Pourquoi l'alternance ne s'arrête jamais.**

Deux calculs suffisent à le garantir :

- après un $1$, la machine affiche $1^2 - 2 \times 1 + 1 = 0$ ;
- après un $0$, la machine affiche $0^2 - 2 \times 0 + 1 = 1$.

Donc dès que $1$ est apparu, la suite alterne $1, 0, 1, 0, \ldots$ indéfiniment. Et $1$ apparaît
bien, au rang $2$.

**On repère les rangs.**

À partir du rang $2$ :

- les rangs **pairs** $2, 4, 6, 8, \ldots$ portent le nombre $1$ ;
- les rangs **impairs** $3, 5, 7, \ldots$ portent le nombre $0$.

Comme $2020$ est pair, le $2020^{\text{e}}$ nombre affiché vaut

$$\boxed{1} .$$

## Going further

La règle s'écrit bien plus simplement avec une identité remarquable :

$$x^2 - 2x + 1 = (x - 1)^2 .$$

La machine calcule donc « on enlève $1$, puis on met au carré ». Partant de $2$ : $(2-1)^2 = 1$,
puis $(1-1)^2 = 0$, puis $(0-1)^2 = 1$, et ainsi de suite. Sous cette forme, on voit tout de suite
que $0$ et $1$ s'échangent.

Essaie de partir d'autres nombres. Que se passe-t-il si le premier nombre est $3$ ? Et $\tfrac{1}{2}$ ?
