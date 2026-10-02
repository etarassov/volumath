---
id: "8719"
title: "Trois nombres entre 0 et 1, et leurs inverses"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, signe-d-un-produit, developpement, symetrie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Inégalités 1 » (Maena), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois réels tels que $0 < a \leqslant 1$, $0 < b \leqslant 1$ et $0 < c \leqslant 1$.

Montrer que

$$a + b + c + \frac{1}{abc} \;\geqslant\; \frac{1}{a} + \frac{1}{b} + \frac{1}{c} + abc .$$

## Hints

1. Les deux membres contiennent des fractions. Multiplier tout par $abc$, qui est strictement positif, ne changera pas le sens de l'inégalité et fera disparaître les dénominateurs. Regarde à quoi ressemble alors l'inégalité à démontrer.
2. Les produits $ab$, $bc$, $ca$ sont tous inférieurs ou égaux à $1$. Que peux-tu dire du signe de $ab-1$ ?
3. Considère le produit $(ab-1)(bc-1)(ca-1)$ et détermine son signe.
4. Développe ce produit, et compare avec ce que tu cherches à démontrer.

## Solution

### L'idée : un produit dont on connaît le signe

Puisque $0 < a \leqslant 1$ et $0 < b \leqslant 1$, on a $0 < ab \leqslant 1$, donc

$$ab - 1 \;\leqslant\; 0 .$$

De même $bc - 1 \leqslant 0$ et $ca - 1 \leqslant 0$.

Le produit de **trois** nombres négatifs ou nuls est négatif ou nul. Donc

$$(ab-1)(bc-1)(ca-1) \;\leqslant\; 0 . \qquad (\star)$$

### On développe

Calculons d'abord le produit des deux premiers facteurs :

$$(ab-1)(bc-1) = ab^2c - ab - bc + 1 .$$

Multiplions maintenant par $(ca-1)$ :

$$(ab^2c - ab - bc + 1)(ca-1) = a^2b^2c^2 - a^2bc - abc^2 + ca - ab^2c + ab + bc - 1 .$$

En rangeant, l'inégalité $(\star)$ s'écrit donc

$$a^2b^2c^2 + ab + bc + ca - ab^2c - a^2bc - abc^2 - 1 \;\leqslant\; 0 ,$$

c'est-à-dire

$$a^2b^2c^2 + ab + bc + ca \;\leqslant\; ab^2c + a^2bc + abc^2 + 1 . \qquad (\star\star)$$

### On divise par $abc$

Le nombre $abc$ est strictement positif, donc diviser par lui ne change pas le sens de l'inégalité. Terme à terme :

$$\frac{a^2b^2c^2}{abc} = abc, \qquad \frac{ab}{abc} = \frac{1}{c}, \qquad \frac{bc}{abc} = \frac{1}{a}, \qquad \frac{ca}{abc} = \frac{1}{b} ,$$

$$\frac{ab^2c}{abc} = b, \qquad \frac{a^2bc}{abc} = a, \qquad \frac{abc^2}{abc} = c, \qquad \frac{1}{abc} = \frac{1}{abc} .$$

L'inégalité $(\star\star)$ devient donc

$$abc + \frac{1}{a} + \frac{1}{b} + \frac{1}{c} \;\leqslant\; a + b + c + \frac{1}{abc} ,$$

ce qui est exactement l'inégalité demandée.

$$\boxed{\ a + b + c + \frac{1}{abc} \;\geqslant\; \frac{1}{a} + \frac{1}{b} + \frac{1}{c} + abc \ }$$

*Ce qu'il faut retenir.* L'inégalité de départ paraît impossible à attaquer de front. La clé est de deviner un **produit dont le signe est évident**, puis de le développer et de constater que c'est exactement ce qu'on cherchait, à une division près. C'est une technique très courante pour les inégalités symétriques : on cherche un produit de facteurs du type « quelque chose $-\,1$ » dont chaque terme a un signe connu.

## Going further

1. Dans quel cas y a-t-il égalité ? Le produit $(ab-1)(bc-1)(ca-1)$ doit être nul : que cela impose-t-il à $a$, $b$, $c$ ?

2. La même idée avec deux variables : pour $0 < a \leqslant 1$ et $0 < b \leqslant 1$, que donne le signe de $(a-1)(b-1)$ ? Écris l'inégalité que tu obtiens.

3. Et si on avait $a$, $b$, $c$ tous **supérieurs ou égaux** à $1$ ? Chaque facteur $ab-1$ devient positif, donc le produit aussi. Quelle inégalité obtiens-tu alors, et comment se compare-t-elle à celle de l'énoncé ?
