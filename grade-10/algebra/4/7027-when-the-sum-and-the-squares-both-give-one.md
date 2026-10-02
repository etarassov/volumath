---
id: "7027"
title: "Quand la somme et les carrés valent tous les deux 1"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [identites-remarquables, expressions-symetriques, systeme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, jeudi 28 octobre (algèbre), cours du matin, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

**a)** Soient $a$ et $b$ deux nombres tels que
$$a + b = 1 \qquad \text{et} \qquad a^2 + b^2 = 1 .$$
Montrer que $ab = 0$.

**b)** Soient $a$, $b$, $c$ trois nombres tels que
$$a + b + c = 1, \qquad a^2 + b^2 + c^2 = 1 \qquad \text{et} \qquad a^3 + b^3 + c^3 = 1 .$$
Montrer que $abc = 0$.

## Hints

1. Pour a), développe $(a+b)^2$.
2. Pour b), commence pareil : développe $(a+b+c)^2$. Qu'obtiens-tu sur $ab+bc+ca$ ?
3. Il reste à faire apparaître $abc$. Essaie de développer le produit
   $\left(a^2+b^2+c^2\right)(a+b+c)$ et compare-le à $a^3+b^3+c^3$.
4. Le produit $(ab+bc+ca)(a+b+c)$ contient lui aussi des termes en $abc$. Compte-les bien.

## Solution

**a) Le cas de deux nombres.**

L'identité remarquable donne
$$(a+b)^2 = a^2 + 2ab + b^2 .$$
Avec les hypothèses $a+b = 1$ et $a^2 + b^2 = 1$ :
$$1 = 1 + 2ab, \qquad \text{donc} \qquad ab = 0 . \qquad \blacksquare$$

*(Au passage, cela veut dire que $a$ ou $b$ est nul, et l'autre vaut alors $1$.)*

**b) Le cas de trois nombres.**

*Première étape : la quantité $ab+bc+ca$.*

L'identité remarquable à trois termes s'écrit
$$(a+b+c)^2 = a^2 + b^2 + c^2 + 2(ab+bc+ca) .$$
Avec les hypothèses :
$$1 = 1 + 2(ab+bc+ca), \qquad \text{donc} \qquad ab+bc+ca = 0 . \qquad (\star)$$

*Deuxième étape : faire apparaître $abc$.*

Développons le produit $\left(a^2+b^2+c^2\right)(a+b+c)$ :
$$\left(a^2+b^2+c^2\right)(a+b+c) = a^3+b^3+c^3 + \left(a^2 b + a^2 c + b^2 a + b^2 c + c^2 a + c^2 b\right) .$$

Développons maintenant $(ab+bc+ca)(a+b+c)$ :
$$(ab+bc+ca)(a+b+c) = \left(a^2b + abc + a^2 c\right) + \left(ab^2 + b^2 c + abc\right) + \left(abc + bc^2 + ac^2\right) ,$$
c'est-à-dire
$$(ab+bc+ca)(a+b+c) = \left(a^2 b + a^2 c + b^2 a + b^2 c + c^2 a + c^2 b\right) + 3abc .$$

Les six termes entre parenthèses sont exactement les mêmes dans les deux développements. En
les éliminant entre les deux égalités, on obtient
$$\left(a^2+b^2+c^2\right)(a+b+c) = a^3+b^3+c^3 + (ab+bc+ca)(a+b+c) - 3abc .$$

*Troisième étape : conclure.*

Remplaçons par les valeurs connues : $a^2+b^2+c^2 = 1$, $a+b+c = 1$, $a^3+b^3+c^3 = 1$, et
$ab+bc+ca = 0$ d'après $(\star)$. Il vient
$$1 \times 1 = 1 + 0 \times 1 - 3abc,$$
c'est-à-dire $1 = 1 - 3abc$, donc
$$abc = 0 . \qquad \blacksquare$$

## Going further

Sais-tu quels sont les triplets qui vérifient les trois hypothèses ? Avec
$$a+b+c = 1, \qquad ab+bc+ca = 0, \qquad abc = 0,$$
les nombres $a$, $b$, $c$ sont les racines de
$$x^3 - x^2 + 0\,x - 0 = x^2(x-1) .$$
Ce sont donc $0$, $0$ et $1$, dans un ordre quelconque : il n'y a que ce triplet-là.

Le même phénomène vaut pour $n$ nombres : si les $n$ premières sommes de puissances valent
toutes $1$, alors les nombres sont $1, 0, 0, \ldots, 0$.
