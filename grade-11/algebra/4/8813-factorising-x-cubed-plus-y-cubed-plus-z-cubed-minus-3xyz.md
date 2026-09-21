---
id: "8813"
title: "Factoriser x³ + y³ + z³ − 3xyz"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [factorisation, polynome, racine evidente, identites remarquables]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Algèbre : Découverte » (Melvil), exercice 4, p. 46"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Factoriser l'expression
$$E = x^3 + y^3 + z^3 - 3xyz .$$

Autrement dit, écrire $E$ comme un produit de deux expressions plus simples, valable pour tous les nombres $x$, $y$, $z$.

## Hints

1. Commence par essayer des valeurs. Que vaut $E$ lorsque $x = y = z$ ? Et lorsque $x + y + z = 0$ ? Teste par exemple $(x,y,z) = (1, 1, -2)$.
2. L'expression semble s'annuler dès que $x + y + z = 0$. Si c'est vrai en général, cela suggère très fortement que $x+y+z$ est l'un des deux facteurs.
3. Pour le prouver proprement : regarde $E$ comme un polynôme **en la seule variable $x$**, les lettres $y$ et $z$ jouant le rôle de constantes. Calcule $E$ pour $x = -(y+z)$.
4. Il reste alors à effectuer la division, ou à deviner le second facteur : il doit être de degré $2$ et symétrique en $x$, $y$, $z$.

## Solution

### L'observation de départ

Essayons quelques valeurs.

- Si $x = y = z = 1$ : $E = 1 + 1 + 1 - 3 = 0$.
- Si $(x, y, z) = (1, 1, -2)$ : $E = 1 + 1 - 8 - 3 \times 1 \times 1 \times (-2) = -6 + 6 = 0$.
- Si $(x, y, z) = (2, -1, -1)$ : $E = 8 - 1 - 1 - 3 \times 2 \times (-1)\times(-1) = 6 - 6 = 0$.

Dans ces trois cas, $x + y + z = 0$. Cela donne une piste très forte : **$x+y+z$ devrait être un facteur de $E$**.

### On le démontre

Regardons $E$ comme un polynôme de la variable $x$, en traitant $y$ et $z$ comme des constantes :
$$E(x) = x^3 - 3yz \cdot x + (y^3 + z^3).$$

Calculons sa valeur en $x = -(y+z)$ :
$$E\big(-(y+z)\big) = -(y+z)^3 + 3yz(y+z) + y^3 + z^3 .$$

Développons $(y+z)^3 = y^3 + 3y^2z + 3yz^2 + z^3$ et $3yz(y+z) = 3y^2z + 3yz^2$ :
$$E\big(-(y+z)\big) = -y^3 - 3y^2z - 3yz^2 - z^3 + 3y^2z + 3yz^2 + y^3 + z^3 = 0 .$$

Donc $x = -(y+z)$ est racine du polynôme $E(x)$, ce qui signifie que $x + y + z$ divise $E$.

### On effectue la division

Le quotient est de degré $2$ en $x$. Divisons $x^3 - 3yz\,x + (y^3+z^3)$ par $x + (y+z)$ :

$$x^3 - 3yz\,x + y^3 + z^3 \; = \; \big(x + y + z\big)\Big(x^2 - (y+z)\,x + \big(y^2 - yz + z^2\big)\Big).$$

On peut vérifier ce résultat en développant le membre de droite :
$$x^3 - (y+z)x^2 + (y^2-yz+z^2)x + (y+z)x^2 - (y+z)^2 x + (y+z)(y^2-yz+z^2).$$
Les termes en $x^2$ se détruisent. Le coefficient de $x$ vaut
$$(y^2 - yz + z^2) - (y+z)^2 = y^2 - yz + z^2 - y^2 - 2yz - z^2 = -3yz ,$$
et le terme constant est $(y+z)(y^2-yz+z^2) = y^3 + z^3$, une identité remarquable connue. Tout correspond.

### Le résultat

En réécrivant le second facteur de façon symétrique, $x^2 - (y+z)x + y^2 - yz + z^2 = x^2+y^2+z^2 - xy - yz - zx$ :

$$\boxed{\,x^3 + y^3 + z^3 - 3xyz \; = \; (x+y+z)\left(x^2 + y^2 + z^2 - xy - yz - zx\right)\,}$$

### Une conséquence utile

Le second facteur se réécrit
$$x^2+y^2+z^2-xy-yz-zx = \frac{1}{2}\Big( (x-y)^2 + (y-z)^2 + (z-x)^2 \Big),$$
comme on le vérifie en développant. Il est donc toujours positif ou nul, et nul uniquement quand $x = y = z$. On en déduit par exemple que, pour des réels positifs,
$$x^3+y^3+z^3 \geqslant 3xyz ,$$
avec égalité exactement lorsque $x = y = z$. C'est l'inégalité entre moyenne arithmétique et moyenne géométrique pour trois nombres, appliquée à $x^3$, $y^3$, $z^3$.

## Going further

En déduire que si $x+y+z = 0$, alors $x^3 + y^3 + z^3 = 3xyz$. Utiliser cela pour calculer
$$\frac{(a-b)^3 + (b-c)^3 + (c-a)^3}{(a-b)(b-c)(c-a)} .$$
