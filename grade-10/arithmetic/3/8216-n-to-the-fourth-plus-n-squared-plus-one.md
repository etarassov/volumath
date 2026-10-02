---
id: "8216"
title: "n⁴ + n² + 1 n'est jamais premier"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, factorisation, identites-remarquables]
adapted_from: null
see_also: ["8313"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, « TD manipulations algébriques, récurrence » (Yohann D'Anello), exercice 12"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $n$ un entier avec $n \ge 2$.

Montrer que $n^4 + n^2 + 1$ n'est pas un nombre premier.

## Hints

1. Calcule les premières valeurs : $n = 2$, $n = 3$, $n = 4$. Factorise chaque résultat. Vois-tu apparaître une régularité ?
2. Pour montrer qu'un nombre n'est pas premier, la bonne méthode est de le **factoriser** une fois pour toutes, avec une identité valable pour tout $n$.
3. L'expression ressemble presque à un carré. Que vaut $(n^2+1)^2$ ? Compare avec $n^4 + n^2 + 1$.
4. Tu obtiens une différence de deux carrés. Applique $A^2 - B^2 = (A-B)(A+B)$.
5. Une factorisation ne suffit pas à conclure : il faut encore vérifier qu'aucun des deux facteurs ne vaut $1$. C'est là que l'hypothèse $n \ge 2$ sert.

## Solution

**Quelques valeurs pour se mettre en confiance.**

| $n$ | $n^4 + n^2 + 1$ | factorisation |
|---|---|---|
| $2$ | $21$ | $3 \times 7$ |
| $3$ | $91$ | $7 \times 13$ |
| $4$ | $273$ | $13 \times 21$ |
| $5$ | $651$ | $21 \times 31$ |

Le premier facteur de chaque ligne est le second de la ligne précédente : $3, 7, 13, 21, 31, \ldots$ Ce sont les valeurs de $n^2 - n + 1$ et de $n^2 + n + 1$. Cela donne la factorisation à chercher.

**La factorisation.**

Le terme $n^4$ invite à comparer l'expression à un carré. Développons :

$$(n^2 + 1)^2 = n^4 + 2n^2 + 1 .$$

C'est presque notre expression : il y a juste $2n^2$ au lieu de $n^2$. Donc

$$n^4 + n^2 + 1 = (n^2 + 1)^2 - n^2 .$$

C'est une différence de deux carrés ! En appliquant $A^2 - B^2 = (A - B)(A + B)$ avec $A = n^2 + 1$ et $B = n$ :

$$n^4 + n^2 + 1 = \left(n^2 + 1 - n\right)\left(n^2 + 1 + n\right) = \left(n^2 - n + 1\right)\left(n^2 + n + 1\right) .$$

Cette identité est vraie pour **tout** entier $n$ (et même tout réel).

**Les deux facteurs sont strictement plus grands que 1.**

Un nombre est premier quand ses seuls diviseurs positifs sont $1$ et lui-même. Une factorisation ne prouve donc rien tant qu'on n'a pas vérifié qu'aucun facteur ne vaut $1$.

Supposons $n \ge 2$.

- $n^2 + n + 1 \ge 4 + 2 + 1 = 7 > 1$.
- $n^2 - n + 1 = n(n-1) + 1 \ge 2 \times 1 + 1 = 3 > 1$.

*(Le second facteur est le plus délicat, car $-n$ pourrait faire peur. L'écriture $n(n-1)+1$ règle la question : pour $n \ge 2$, le produit $n(n-1)$ vaut au moins $2$.)*

**Conclusion.**

Pour $n \ge 2$, le nombre $n^4 + n^2 + 1$ s'écrit comme le produit de deux entiers tous deux strictement supérieurs à $1$ :

$$\boxed{n^4 + n^2 + 1 = (n^2 - n + 1)(n^2 + n + 1) \text{ n'est pas premier.}}$$

**Et pour les petites valeurs ?** Pour $n = 1$, la factorisation donne $1 \times 3 = 3$, qui est premier : le premier facteur vaut $1$, et l'argument tombe. Pour $n = 0$, on obtient $1 \times 1 = 1$, qui n'est ni premier ni composé. L'hypothèse $n \ge 2$ est donc réellement nécessaire.

## Going further

Montrer de la même façon que $n^4 + 4$ n'est pas premier pour $n \ge 2$. *Indication : cette fois il faut ajouter et retrancher $4n^2$ pour faire apparaître un carré.*
