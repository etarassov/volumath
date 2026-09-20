---
id: "6002"
title: "Dix centimes, de combien de façons ?"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [denombrement, monnaie, cas, methode]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Recruiting Change for a Dollar »"
  reference: "2019-Spring-MTCircular.pdf, p. 6-7 (atelier du Western Kentucky MTC ; la revue compte les façons de rendre la monnaie sur un dollar, adapté ici à l'euro)"
  url: "https://mathcircles.org/activity/recruiting-change-for-a-dollar/"
  original_language: "en"
  local_copy: "sources/originals/namc/2019-Spring-MTCircular.pdf"
---

## Statement

Dans sa tirelire, Lina a beaucoup de pièces de $1$ centime, beaucoup de pièces de $2$ centimes et beaucoup de pièces de $5$ centimes.

Elle veut poser sur la table exactement $10$ centimes.

De combien de façons différentes peut-elle le faire ? Deux façons sont les mêmes si elles utilisent les mêmes pièces : seul compte le nombre de pièces de chaque sorte, pas l'ordre dans lequel on les pose.

## Hints

1. Essayer au hasard donne vite l'impression de tourner en rond. Il faut une méthode qui garantit de ne rien oublier et de ne rien compter deux fois.
2. Une bonne méthode : ranger les façons selon le nombre de pièces de $5$ centimes utilisées. Combien y en a-t-il au maximum ?
3. Une fois le nombre de pièces de $5$ fixé, il reste une somme à faire avec des pièces de $1$ et de $2$ seulement. Ranger alors selon le nombre de pièces de $2$.
4. Pour faire $5$ centimes avec des pièces de $1$ et de $2$, combien de pièces de $2$ peut-on mettre ?

## Solution

On range les façons selon le nombre de pièces de $5$ centimes. Comme $3 \times 5 = 15 > 10$, ce nombre vaut $0$, $1$ ou $2$.

**Deux pièces de $5$.** Elles font déjà $10$ centimes, il ne reste rien à compléter.
$$5 + 5.$$
Cela fait **1 façon**.

**Une pièce de $5$.** Il reste $5$ centimes à faire avec des pièces de $1$ et de $2$. Le nombre de pièces de $2$ peut valoir $0$, $1$ ou $2$ (avec trois pièces de $2$ on dépasserait déjà $5$), et les pièces de $1$ complètent :

| pièces de 2 | pièces de 1 | somme |
|---|---|---|
| $0$ | $5$ | $5$ |
| $1$ | $3$ | $5$ |
| $2$ | $1$ | $5$ |

Cela fait **3 façons**.

**Aucune pièce de $5$.** Il reste $10$ centimes à faire avec des pièces de $1$ et de $2$. Le nombre de pièces de $2$ peut aller de $0$ à $5$, et les pièces de $1$ complètent :

| pièces de 2 | pièces de 1 | somme |
|---|---|---|
| $0$ | $10$ | $10$ |
| $1$ | $8$ | $10$ |
| $2$ | $6$ | $10$ |
| $3$ | $4$ | $10$ |
| $4$ | $2$ | $10$ |
| $5$ | $0$ | $10$ |

Cela fait **6 façons**.

**Total.** Les trois cas n'ont aucune façon en commun, puisqu'ils se distinguent par le nombre de pièces de $5$. On additionne :
$$1 + 3 + 6 = 10.$$

Il y a donc $\boxed{10}$ façons de faire $10$ centimes avec des pièces de $1$, $2$ et $5$ centimes.

**Ce qu'il faut retenir.** Chaque fois qu'on fixe la plus grosse pièce, le problème restant est plus petit et de la même forme. Ranger les cas du plus gros au plus petit, c'est ce qui évite les oublis.

## Going further

1. Reprendre la question avec $20$ centimes et des pièces de $1$, $2$, $5$ et $10$ centimes. (Réponse : $40$ façons. Ranger d'abord selon le nombre de pièces de $10$.)
2. Combien de façons y a-t-il de faire $50$ centimes avec des pièces de $1$, $2$, $5$, $10$ et $20$ centimes ? On n'y arrive plus à la main sans une organisation très soignée : il y en a $450$.
3. Une surprise : le nombre de façons ne suit aucune règle simple quand la somme grandit. Faire $1$ € avec des pièces de $1$, $2$, $5$, $10$, $20$ et $50$ centimes se fait de $4562$ façons.
