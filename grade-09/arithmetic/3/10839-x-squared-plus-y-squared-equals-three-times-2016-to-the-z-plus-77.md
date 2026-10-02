---
id: "10839"
title: "x² + y² = 3 × 2016ᶻ + 77"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [equation-diophantienne, restes, carre-parfait, divisibilite, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2016-2017-envoi-1.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2016-2017-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-1.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ d'entiers positifs ou nuls tels que

$$x^2 + y^2 = 3 \times 2016^z + 77 .$$

## Hints

1. Commence par $z = 0$ : l'équation devient $x^2 + y^2 = 80$.
2. Pour $z \geqslant 1$, remarque que $2016$ et $77$ sont des multiples de $7$.
3. Fais la liste des restes possibles d'un carré dans la division par $7$. Quand la somme de deux de ces restes est-elle un multiple de $7$ ?
4. Tu dois trouver que $x$ et $y$ sont des multiples de $7$. Alors $49$ divise le membre de droite : que peut valoir $z$ ?

## Solution

**Réponse : il y a six triplets,**
$$(4, 8, 0), \quad (8, 4, 0), \quad (14, 77, 1), \quad (77, 14, 1), \quad (35, 70, 1), \quad (70, 35, 1) .$$

### Étape 1 : le cas $z = 0$

L'équation devient $x^2 + y^2 = 3 + 77 = 80$. Alors $x^2 \leqslant 80$, donc $x \leqslant 8$. On essaie les neuf valeurs :

| $x$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|---|
| $80 - x^2$ | $80$ | $79$ | $76$ | $71$ | $64$ | $55$ | $44$ | $31$ | $16$ |

Les seuls carrés de la deuxième ligne sont $64 = 8^2$ et $16 = 4^2$. **Pour $z = 0$, les solutions sont $(4, 8, 0)$ et $(8, 4, 0)$.**

### Étape 2 : si $z \geqslant 1$, alors $x$ et $y$ sont des multiples de $7$

On a $2016 = 7 \times 288$ et $77 = 7 \times 11$. Pour $z \geqslant 1$, le membre de droite est donc un multiple de $7$, et **$7$ divise $x^2 + y^2$.**

*Les restes des carrés dans la division par $7$.* Écrivons $x = 7q + r$ avec $r$ entre $0$ et $6$. Alors $x^2 = 49q^2 + 14qr + r^2 = 7\left(7q^2 + 2qr\right) + r^2$ : le reste de $x^2$ est celui de $r^2$.

| $r$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| $r^2$ | $0$ | $1$ | $4$ | $9$ | $16$ | $25$ | $36$ |
| reste de $r^2$ | $0$ | $1$ | $4$ | $2$ | $2$ | $4$ | $1$ |

Le reste d'un carré est donc $0$, $1$, $2$ ou $4$, et il vaut $0$ seulement quand le nombre est un multiple de $7$.

*La somme de deux carrés.* Le reste de $x^2 + y^2$ est celui de la somme des deux restes. En ajoutant deux nombres pris parmi $0$, $1$, $2$, $4$, on obtient un multiple de $7$ seulement avec $0 + 0$ : les autres sommes possibles sont $1, 2, 3, 4, 5, 6, 8$. Donc les deux restes valent $0$, et **$x$ et $y$ sont des multiples de $7$.**

### Étape 3 : alors $z = 1$

Écrivons $x = 7a$ et $y = 7b$. Alors $x^2 + y^2 = 49\left(a^2 + b^2\right)$, donc $49$ divise $3 \times 2016^z + 77$.

Si $z \geqslant 2$, le nombre $2016^z$ est un multiple de $2016^2 = 49 \times 288^2$. Alors $49$ diviserait aussi $\left(3 \times 2016^z + 77\right) - 3 \times 2016^z = 77$, ce qui est faux. **Donc $z = 1$.**

### Étape 4 : le cas $z = 1$

On a $3 \times 2016 + 77 = 6048 + 77 = 6125 = 49 \times 125$. L'équation devient
$$a^2 + b^2 = 125 .$$
Alors $a \leqslant 11$, car $12^2 = 144 > 125$. On essaie les douze valeurs :

| $a$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $125 - a^2$ | $125$ | $124$ | $121$ | $116$ | $109$ | $100$ | $89$ | $76$ | $61$ | $44$ | $25$ | $4$ |

Les carrés de la deuxième ligne sont $121 = 11^2$, $100 = 10^2$, $25 = 5^2$ et $4 = 2^2$. Les couples $(a, b)$ sont donc $(2, 11)$, $(5, 10)$, $(10, 5)$ et $(11, 2)$, ce qui donne $(x, y) = (14, 77)$, $(35, 70)$, $(70, 35)$ et $(77, 14)$.

### Conclusion

En réunissant les cas $z = 0$ et $z = 1$, on trouve exactement les **six triplets $(4, 8, 0)$, $(8, 4, 0)$, $(14, 77, 1)$, $(77, 14, 1)$, $(35, 70, 1)$ et $(70, 35, 1)$**. Ce sont bien des solutions : par exemple $35^2 + 70^2 = 1225 + 4900 = 6125$.

## Going further

1. Trouve tous les triplets $(x, y, z)$ d'entiers positifs ou nuls tels que $x^2 + y^2 = 2016^z + 3$. *Indication : regarde les restes dans la division par $4$.*
2. Pourquoi ne peut-on pas faire le même raisonnement avec $5$ à la place de $7$ ? Trouve deux entiers $x$ et $y$, non multiples de $5$, tels que $5$ divise $x^2 + y^2$.
