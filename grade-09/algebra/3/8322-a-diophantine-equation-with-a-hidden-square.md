---
id: "8322"
title: "Une équation où se cache une identité remarquable"
grade: 9
theme: algebra
difficulty: 3
duration_min: 30
tags: [identite-remarquable, equation-diophantienne, diviseurs, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Trouver tous les triplets d'entiers naturels $(x, y, z)$ tels que

$$x^2 + y^2 = 9 + z^2 - 2xy .$$

*On rappelle qu'un entier naturel est un entier supérieur ou égal à $0$.*

## Hints

1. Range l'équation : mets tout ce qui concerne $x$ et $y$ d'un côté, et le reste de l'autre.
2. Tu obtiens $x^2 + 2xy + y^2 - z^2 = 9$. Les trois premiers termes forment une identité remarquable.
3. $(x+y)^2 - z^2 = 9$. Encore une identité remarquable !
4. Tu arrives à $(x+y-z)(x+y+z) = 9$. Les deux facteurs sont des entiers dont le produit vaut $9$. Peux-tu dire leur signe ?
5. Comme $x$, $y$, $z$ sont des entiers naturels, $x+y+z \geqslant 0$. Il ne reste que trois possibilités pour $x+y+z$. Traite-les une par une.

## Solution

**On range et on factorise.**

L'équation $x^2 + y^2 = 9 + z^2 - 2xy$ se réécrit

$$x^2 + 2xy + y^2 - z^2 = 9 ,$$

puis, avec $(x+y)^2 = x^2 + 2xy + y^2$,

$$(x+y)^2 - z^2 = 9 ,$$

et enfin, avec $a^2 - b^2 = (a-b)(a+b)$,

$$(x + y - z)(x + y + z) = 9 .$$

**Les deux facteurs sont positifs.**

Comme $x$, $y$, $z$ sont des entiers naturels, $x + y + z \geqslant 0$. Le produit valant $9 > 0$,
le facteur $x+y+z$ n'est pas nul, donc $x + y + z > 0$ ; et alors $x+y-z$ est positif lui aussi.

De plus $x+y+z \geqslant x+y-z$, puisque $z \geqslant 0$.

Donc $x+y+z$ est un diviseur positif de $9$ au moins égal à l'autre facteur : il vaut $9$, $3$
ou $1$.

**Cas $x + y + z = 9$.**

Alors $x + y - z = 1$. En additionnant les deux équations :

$$2(x+y) = 10 , \qquad \text{donc} \qquad x + y = 5 \qquad \text{et} \qquad z = 9 - 5 = 4 .$$

Les couples d'entiers naturels de somme $5$ sont $(0,5)$, $(1,4)$, $(2,3)$, $(3,2)$, $(4,1)$,
$(5,0)$. Cela donne six solutions :

$$(0,5,4), \; (1,4,4), \; (2,3,4), \; (3,2,4), \; (4,1,4), \; (5,0,4) .$$

**Cas $x + y + z = 3$.**

Alors $x + y - z = 3$. En additionnant :

$$2(x+y) = 6 , \qquad \text{donc} \qquad x+y = 3 \qquad \text{et} \qquad z = 3 - 3 = 0 .$$

Les couples de somme $3$ sont $(0,3)$, $(1,2)$, $(2,1)$, $(3,0)$, d'où quatre solutions :

$$(0,3,0), \; (1,2,0), \; (2,1,0), \; (3,0,0) .$$

**Cas $x + y + z = 1$.**

Alors $x + y - z = 9$. Mais $x+y-z \leqslant x+y+z = 1 < 9$ : c'est impossible.

**Vérification.**

Il faut vérifier, car on a raisonné par implications. Prenons $(2,3,4)$ :
$x^2 + y^2 = 4 + 9 = 13$ et $9 + z^2 - 2xy = 9 + 16 - 12 = 13$. C'est bien égal. On vérifie de
même que toutes les autres conviennent, ce qui est automatique puisque chaque étape du calcul
est réversible.

**Conclusion.** Il y a exactement **dix** solutions :

$$(0,5,4), \; (1,4,4), \; (2,3,4), \; (3,2,4), \; (4,1,4), \; (5,0,4),$$
$$(0,3,0), \; (1,2,0), \; (2,1,0), \; (3,0,0) .$$

## Going further

Toute la difficulté était cachée dans la mise en forme : le terme $-2xy$ du mauvais côté de
l'égalité empêchait de voir l'identité remarquable. Quand une équation contient un double
produit, le réflexe est de regrouper pour faire apparaître un carré.

Que se passerait-il si $9$ était remplacé par $8$ ? Le produit $(x+y-z)(x+y+z)$ vaudrait alors
$8$, et il faudrait tenir compte d'une contrainte supplémentaire de parité, comme dans beaucoup
d'équations de ce type.
