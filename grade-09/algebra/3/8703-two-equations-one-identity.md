---
id: "8703"
title: "Deux équations, une identité"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [identites-remarquables, systeme, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, Coupe Animath de printemps 2024, exercices lycéens, exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois nombres qui vérifient les deux égalités

$$4a + 3b = c \qquad \text{et} \qquad 3a - 4b = 7c .$$

Montrer qu'alors

$$a^2 + b^2 = 2c^2 .$$

## Hints

1. Le résultat à démontrer contient des carrés, alors que les données n'en contiennent pas. Il va donc falloir élever quelque chose au carré.
2. Élève les deux égalités au carré et développe. Regarde ce que deviennent les termes en $ab$.
3. Les coefficients $4$ et $3$ ne sont pas là par hasard : $4^2 + 3^2 = 25$.
4. Autre route, tout aussi valable : le système a deux équations et deux inconnues $a$ et $b$, avec $c$ qui joue le rôle d'un nombre connu. Résous-le.

## Solution

### Première méthode : élever au carré et additionner

L'énoncé demande une égalité entre carrés, alors que les données sont des égalités entre expressions du premier degré. L'idée est donc d'élever les deux égalités au carré.

**Premier carré.**

$$(4a + 3b)^2 = 16a^2 + 24ab + 9b^2 .$$

Comme $4a + 3b = c$, ce carré vaut $c^2$.

**Deuxième carré.**

$$(3a - 4b)^2 = 9a^2 - 24ab + 16b^2 .$$

Comme $3a - 4b = 7c$, ce carré vaut $(7c)^2 = 49c^2$.

**On additionne.** C'est ici que tout se joue : les deux termes en $ab$ sont $+24ab$ et $-24ab$, ils disparaissent.

$$c^2 + 49c^2 = (16a^2 + 24ab + 9b^2) + (9a^2 - 24ab + 16b^2) = 25a^2 + 25b^2 .$$

À gauche, $c^2 + 49c^2 = 50c^2$. Donc

$$50c^2 = 25a^2 + 25b^2 = 25(a^2 + b^2) .$$

En divisant les deux membres par $25$ :

$$a^2 + b^2 = 2c^2 .$$

C'est bien ce qu'il fallait démontrer.

### Deuxième méthode : résoudre le système

On peut aussi considérer $c$ comme un nombre connu et chercher $a$ et $b$.

*Pour trouver $a$*, on multiplie la première égalité par $4$, la seconde par $3$, et on additionne :

$$16a + 12b = 4c \qquad \text{et} \qquad 9a - 12b = 21c .$$

En additionnant, les termes en $b$ disparaissent :

$$25a = 25c, \qquad \text{donc} \qquad a = c .$$

*Pour trouver $b$*, on multiplie la première égalité par $3$, la seconde par $4$, et on soustrait :

$$12a + 9b = 3c \qquad \text{et} \qquad 12a - 16b = 28c .$$

En soustrayant, les termes en $a$ disparaissent :

$$25b = -25c, \qquad \text{donc} \qquad b = -c .$$

Il ne reste plus qu'à conclure :

$$a^2 + b^2 = c^2 + (-c)^2 = 2c^2 .$$

**Conclusion.** Dans les deux méthodes, on aboutit à $a^2 + b^2 = 2c^2$. La seconde méthode donne même davantage : les seuls triplets possibles sont $(c, -c, c)$.

## Going further

La première méthode marche parce que $4^2 + 3^2 = 25$ et que les produits croisés s'annulent. Ce n'est pas un hasard : c'est l'**identité de Brahmagupta-Fibonacci**,

$$(4a + 3b)^2 + (3a - 4b)^2 = (4^2 + 3^2)(a^2 + b^2) .$$

Vérifie-la en développant les deux membres. Elle dit qu'un produit de deux sommes de deux carrés est encore une somme de deux carrés, ce qui sert beaucoup en arithmétique.
