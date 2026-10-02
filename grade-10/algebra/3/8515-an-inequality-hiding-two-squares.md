---
id: "8515"
title: "Une inégalité qui cache deux carrés"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, identites-remarquables, cas-degalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Inégalités 2 » (Théo), exercice 13"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Démontrer que, pour tous nombres réels $x$ et $y$,

$$5x^2 + y^2 + 1 \geqslant 4xy + 2x .$$

Pour quels couples $(x, y)$ y a-t-il égalité ?

## Hints

1. Une inégalité entre deux expressions se prouve souvent en montrant que leur différence est positive. Écris donc $5x^2 + y^2 + 1 - 4xy - 2x$ et cherche à la reconnaître.
2. Le terme $-4xy$ ne peut venir que du développement de $(\alpha x - y)^2$. Quelle valeur de $\alpha$ donne exactement $-4xy$ ?
3. Une fois $(2x - y)^2$ mis de côté, regarde ce qu'il reste. Il ne doit rester que des $x$ et des constantes.

## Solution

**On passe tout du même côté.** L'inégalité à démontrer équivaut à

$$5x^2 + y^2 + 1 - 4xy - 2x \geqslant 0 .$$

**On reconnaît deux carrés.** Le terme en $xy$ ne peut venir que de $(2x - y)^2 = 4x^2 - 4xy + y^2$.
Mettons-le de côté :

$$5x^2 + y^2 + 1 - 4xy - 2x = \underbrace{\left(4x^2 - 4xy + y^2\right)}_{= (2x-y)^2}
+ \underbrace{\left(x^2 - 2x + 1\right)}_{= (x-1)^2} .$$

On vérifie que tout y est : $4x^2 + x^2 = 5x^2$, il y a bien un $y^2$, un $-4xy$, un $-2x$ et
un $+1$. Donc

$$5x^2 + y^2 + 1 - 4xy - 2x = (2x - y)^2 + (x - 1)^2 .$$

**Conclusion.** Une somme de deux carrés est toujours positive ou nulle, donc

$$5x^2 + y^2 + 1 - 4xy - 2x \geqslant 0 ,$$

ce qui est exactement l'inégalité demandée.

**Le cas d'égalité.** Il y a égalité lorsque $(2x-y)^2 + (x-1)^2 = 0$. Une somme de deux
carrés est nulle seulement si les deux carrés le sont, donc

$$x - 1 = 0 \qquad \text{et} \qquad 2x - y = 0 ,$$

c'est-à-dire $x = 1$ et $y = 2$.

Réciproquement, pour $(x, y) = (1, 2)$ :
$5 \times 1 + 4 + 1 = 10$ et $4 \times 1 \times 2 + 2 \times 1 = 10$. L'égalité a bien lieu.

Le seul couple d'égalité est donc $(x, y) = (1, 2)$.
