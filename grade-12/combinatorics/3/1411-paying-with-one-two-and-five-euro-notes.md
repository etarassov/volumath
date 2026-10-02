---
id: "1411"
title: "Payer avec des billets de 1, 2 et 5 euros"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [suites, relation-de-recurrence, denombrement, composition]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, Recurrences and Generating Functions"
  reference: "Handout-3823-3441.pdf, problème 2, partie 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3823-3441.pdf"
---

## Statement

On dispose d'un nombre illimité de billets de $1$ €, de $2$ € et de $5$ €. On paie un article coûtant $n$ euros en posant les billets un par un sur le comptoir, sans jamais rendre la monnaie.

Deux paiements sont considérés comme différents dès que la **suite** des billets posés diffère. Par exemple, pour payer $3$ €, les paiements $1\!+\!1\!+\!1$, $1\!+\!2$ et $2\!+\!1$ sont trois paiements différents.

On note $u_n$ le nombre de paiements possibles pour un article à $n$ euros, avec la convention $u_0 = 1$ (il n'y a qu'une façon de ne rien payer : ne poser aucun billet).

1. Calculer $u_1$, $u_2$, $u_3$ et $u_4$ à la main.
2. Établir une relation de récurrence exprimant $u_n$ en fonction de termes précédents, pour $n \geqslant 5$.
3. En déduire $u_{10}$.

## Hints

1. Pour la question 1, écrire simplement toutes les suites de billets possibles, il y en a peu.
2. Pour la question 2, regarder le **dernier** billet posé (ou le premier, au choix). Quelles sont les possibilités ?
3. Si le dernier billet vaut $2$ €, que reste-t-il à payer avant, et de combien de façons ?
4. Les trois cas « dernier billet à $1$ € », « dernier billet à $2$ € », « dernier billet à $5$ € » se recouvrent-ils ? Recouvrent-ils tous les paiements ?
5. Une fois la relation écrite, dresser un tableau de $u_0$ à $u_{10}$.

## Solution

**1. Les premiers termes.**

- $n = 1$ : un seul paiement, $1$. Donc $u_1 = 1$.
- $n = 2$ : les paiements $1+1$ et $2$. Donc $u_2 = 2$.
- $n = 3$ : $1+1+1$, $1+2$, $2+1$. Donc $u_3 = 3$.
- $n = 4$ : $1+1+1+1$, $1+1+2$, $1+2+1$, $2+1+1$, $2+2$. Donc $u_4 = 5$.

(On peut aussi noter $u_5 = 9$ : les $8$ paiements ne comportant que des $1$ et des $2$, plus le paiement $5$ à lui seul.)

**2. La relation de récurrence.**

Soit $n \geqslant 5$. Considérons un paiement de $n$ euros et regardons le **dernier billet posé**. Trois cas se présentent, et ils sont deux à deux incompatibles :

- *le dernier billet vaut $1$ €.* Les billets précédents forment alors un paiement de $n - 1$ euros, et réciproquement, tout paiement de $n-1$ euros suivi d'un billet de $1$ € donne un paiement de $n$ euros. Il y a donc $u_{n-1}$ paiements de ce type.
- *le dernier billet vaut $2$ €.* De même, il y en a $u_{n-2}$.
- *le dernier billet vaut $5$ €.* De même, il y en a $u_{n-5}$.

Tout paiement d'un montant $n \geqslant 1$ comporte au moins un billet, donc entre dans l'un de ces trois cas exactement. D'où

$$u_n = u_{n-1} + u_{n-2} + u_{n-5} \qquad \text{pour tout } n \geqslant 5 .$$

**3. Calcul de $u_{10}$.**

On part de $u_0 = 1$, $u_1 = 1$, $u_2 = 2$, $u_3 = 3$, $u_4 = 5$, puis on applique la relation.

| $n$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| $u_n$ | 1 | 1 | 2 | 3 | 5 | 9 | 15 | 26 | 44 | 75 | 128 |

Le détail des cinq derniers calculs :

$$u_5 = u_4 + u_3 + u_0 = 5 + 3 + 1 = 9,$$
$$u_6 = u_5 + u_4 + u_1 = 9 + 5 + 1 = 15,$$
$$u_7 = u_6 + u_5 + u_2 = 15 + 9 + 2 = 26,$$
$$u_8 = u_7 + u_6 + u_3 = 26 + 15 + 3 = 44,$$
$$u_9 = u_8 + u_7 + u_4 = 44 + 26 + 5 = 75,$$
$$u_{10} = u_9 + u_8 + u_5 = 75 + 44 + 9 = 128 .$$

**Conclusion.** Il y a $\boxed{128}$ façons de payer un article à $10$ €.

**Une remarque.** Si l'on ne disposait que de billets de $1$ € et de $2$ €, la relation deviendrait $u_n = u_{n-1} + u_{n-2}$ : on retrouverait exactement la suite de Fibonacci. Les billets de $5$ € ajoutent le terme $u_{n-5}$, qui accélère nettement la croissance.

## Going further

1. Reprendre la question si l'ordre des billets **ne compte pas** : combien y a-t-il alors de façons de payer $10$ € ? (Cette fois la récurrence ci-dessus ne convient plus. Compter directement selon le nombre de billets de $5$ € puis de $2$ €.)
2. Montrer que $u_n$ est toujours supérieur ou égal au $n$-ième terme de la suite de Fibonacci.
3. Avec des billets de $1$, $2$ et $5$ euros, combien de paiements de $10$ € utilisent exactement $4$ billets ?
