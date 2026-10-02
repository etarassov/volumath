---
id: "7076"
title: "Toujours un entier"
grade: 12
theme: algebra
difficulty: 4
duration_min: 30
tags: [recurrence-forte, suite-recurrente, entiers]
adapted_from: null
see_also: []
same_as: ["8210"]
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, mardi : combinatoire, récurrence, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Soit $x$ un nombre réel non nul tel que $x + \dfrac1x$ soit un **entier**.

Montrer que pour tout entier $n > 0$, le nombre
$$x^n + \frac{1}{x^n}$$
est lui aussi un entier.

## Hints

1. Donne un nom à la quantité étudiée : pose $u_n = x^n + \dfrac{1}{x^n}$.
2. Calcule $u_1 \times u_n$ en développant. Tu obtiendras quatre termes.
3. Regroupe-les : tu devrais reconnaître $u_{n+1}$ et $u_{n-1}$.
4. Cela te donne une relation de récurrence qui exprime $u_{n+1}$ à partir de $u_n$ et
   $u_{n-1}$. Conclus par récurrence.
5. Attention : une récurrence qui remonte de **deux** crans a besoin de **deux** cas de base.

## Solution

**Poser la suite.**

Pour tout entier $n \geq 0$, posons
$$u_n = x^n + \frac{1}{x^n} .$$

C'est bien défini puisque $x \neq 0$. Notons $a = u_1 = x + \dfrac1x$, qui est un entier par
hypothèse.

**Une relation de récurrence.**

Calculons le produit $u_1 \times u_n$ :
$$\left(x + \frac1x\right)\left(x^n + \frac{1}{x^n}\right)
= x^{n+1} + \frac{x}{x^n} + \frac{x^n}{x} + \frac{1}{x^{n+1}}
= x^{n+1} + \frac{1}{x^{n+1}} + x^{n-1} + \frac{1}{x^{n-1}} .$$

Autrement dit, pour tout $n \geq 1$,
$$a \times u_n = u_{n+1} + u_{n-1} , \qquad \text{c'est-à-dire} \qquad
u_{n+1} = a\,u_n - u_{n-1} .$$

**La récurrence.**

Montrons par récurrence forte que $u_n$ est un entier pour tout $n \geq 0$.

*Cas de base.* On a
$$u_0 = x^0 + \frac{1}{x^0} = 1 + 1 = 2 , \qquad u_1 = a .$$
Ce sont deux entiers.

*Hérédité.* Soit $n \geq 1$. Supposons que $u_{n-1}$ et $u_n$ soient des entiers. Alors
$$u_{n+1} = a\,u_n - u_{n-1}$$
est une combinaison d'entiers par des entiers : c'est un entier.

Par récurrence, $u_n$ est un entier pour tout $n \geq 0$. $\blacksquare$

## Going further

Calculons les premiers termes en fonction de $a$ :
$$u_0 = 2, \quad u_1 = a, \quad u_2 = a^2 - 2, \quad u_3 = a^3 - 3a, \quad
u_4 = a^4 - 4a^2 + 2 .$$

On voit apparaître des polynômes en $a$ à coefficients entiers. Ce sont, à un changement de
variable près, les **polynômes de Tchebychev**. Le lien : si l'on pose
$x = \mathrm e^{\,i\theta}$, alors $u_n = 2\cos(n\theta)$, et la relation de récurrence
$u_{n+1} = u_1 u_n - u_{n-1}$ devient la formule
$$\cos((n+1)\theta) = 2\cos\theta\,\cos(n\theta) - \cos((n-1)\theta) ,$$
qui n'est autre qu'une identité de trigonométrie bien connue.

Remarque enfin que l'énoncé serait faux si l'on remplaçait « entier » par « rationnel avec un
dénominateur donné » : par exemple $x + \dfrac1x = \dfrac52$ donne $x = 2$ ou
$x = \dfrac12$, et $u_2 = \dfrac{17}{4}$, dont le dénominateur a grossi.
