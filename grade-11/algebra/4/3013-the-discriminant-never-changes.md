---
id: "3013"
title: "Deux transformations qui ne changent rien"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [discriminant, invariant, second-degre, raisonnement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads 2, Combinatorics Problems"
  reference: "Handout-2233-1983.pdf, exercice 4"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2233-1983.pdf"
---

## Statement

On part d'un trinôme $ax^2 + bx + c$ et on s'autorise, autant de fois que l'on veut, l'une
ou l'autre des deux opérations suivantes :

- **(a)** échanger $a$ et $c$, ce qui donne $cx^2 + bx + a$ ;
- **(b)** remplacer $x$ par $x + t$, où $t$ est un réel quelconque, puis développer.

En partant de

$$x^2 - x - 2,$$

peut-on obtenir

$$x^2 - x - 1 \; ?$$

## Hints

1. Essaie quelques coups au hasard et calcule à chaque fois quelque chose de simple : les coefficients, leur somme, leur produit, le discriminant…
2. Le discriminant d'un trinôme $ax^2+bx+c$ vaut $\Delta = b^2 - 4ac$. Que devient-il après l'opération (a) ?
3. Pour l'opération (b), développe $a(x+t)^2 + b(x+t) + c$ et lis les trois nouveaux coefficients, puis calcule le nouveau discriminant.
4. Si une quantité ne change jamais, il suffit de la calculer au départ et à l'arrivée.

## Solution

**Chercher ce qui ne bouge pas.**

Le discriminant d'un trinôme $ax^2 + bx + c$ est $\Delta = b^2 - 4ac$. Regardons ce qu'il
devient après chaque opération.

**Opération (a).** Le nouveau trinôme est $cx^2 + bx + a$, de discriminant

$$b^2 - 4 \times c \times a = b^2 - 4ac = \Delta.$$

Le discriminant est inchangé.

**Opération (b).** On développe :

$$a(x+t)^2 + b(x+t) + c = ax^2 + (2at + b)x + \left(at^2 + bt + c\right).$$

Les nouveaux coefficients sont $a' = a$, $b' = 2at + b$ et $c' = at^2 + bt + c$. Le nouveau
discriminant vaut

$$b'^2 - 4a'c' = (2at+b)^2 - 4a\left(at^2 + bt + c\right)$$
$$= 4a^2t^2 + 4abt + b^2 - 4a^2t^2 - 4abt - 4ac$$
$$= b^2 - 4ac = \Delta.$$

Le discriminant est encore inchangé.

**Conclusion.**

Le discriminant est un **invariant** : quelle que soit la suite d'opérations effectuées, il
garde la même valeur qu'au départ.

Or le discriminant du trinôme de départ vaut

$$(-1)^2 - 4 \times 1 \times (-2) = 1 + 8 = 9,$$

et celui du trinôme d'arrivée vaut

$$(-1)^2 - 4 \times 1 \times (-1) = 1 + 4 = 5.$$

Comme $9 \neq 5$, il est **impossible** de transformer $x^2 - x - 2$ en $x^2 - x - 1$.

## Going further

La raison profonde : le discriminant mesure l'écart entre les deux racines. Si $x_1$ et
$x_2$ sont les racines de $ax^2+bx+c$, alors

$$\Delta = a^2(x_1 - x_2)^2.$$

L'opération (b) translate les deux racines de la même quantité $-t$ : leur écart ne change
pas, et $a$ non plus. L'opération (a) remplace les racines par leurs inverses, ce qui
multiplie l'écart par $\dfrac{1}{|x_1 x_2|}$ et compense exactement le changement de $a$.
