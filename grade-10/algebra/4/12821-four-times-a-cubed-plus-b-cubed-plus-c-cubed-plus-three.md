---
id: "12821"
title: "4(a³ + b³ + c³ + 3) ≥ 3(a + 1)(b + 1)(c + 1)"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, factorisation, identites-remarquables, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection d'avril 2023"
  reference: "2023-09_Enonce-Test-4.pdf, test junior, exercice 2 ; corrigé 2023-09_Corrige-Test-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-4.pdf"
---

## Statement

Soit $a$, $b$ et $c$ trois réels strictement positifs. Démontrer que

$$4\left(a^3 + b^3 + c^3 + 3\right) \geq 3(a + 1)(b + 1)(c + 1).$$

## Hints

1. Pour quelles valeurs de $a$, $b$, $c$ les deux membres sont-ils égaux ? Essayez $a = b = c$.
2. À gauche, les trois lettres sont séparées ; à droite, elles sont multipliées. Posez $x = a + 1$, $y = b + 1$, $z = c + 1$. Le membre de droite devient $3xyz$.
3. Montrez que $4(a^3 + 1) \geq (a + 1)^3$ pour tout $a > 0$. Développez, puis factorisez la différence : $a = 1$ en est une racine.
4. Il reste à montrer que $x^3 + y^3 + z^3 \geq 3xyz$ pour $x, y, z > 0$. Développez $(x + y + z)\left(x^2 + y^2 + z^2 - xy - yz - zx\right)$.

## Solution

On commence par chercher les cas d'égalité. Pour $a = b = c = 1$, le membre de gauche vaut $4 \times 6 = 24$ et celui de droite $3 \times 2 \times 2 \times 2 = 24$. Chaque inégalité intermédiaire que l'on utilisera devra donc être une égalité pour $a = b = c = 1$, sinon on perdrait trop en route.

Posons $x = a + 1$, $y = b + 1$, $z = c + 1$. Ce sont des réels strictement positifs, et le membre de droite vaut $3xyz$. On va montrer deux inégalités :

$$4\left(a^3 + b^3 + c^3 + 3\right) \;\geq\; x^3 + y^3 + z^3 \;\geq\; 3xyz.$$

### Étape 1 : une inégalité pour une seule lettre

Montrons que $4(a^3 + 1) \geq (a + 1)^3$ pour tout réel $a > 0$. On développe $(a + 1)^3 = a^3 + 3a^2 + 3a + 1$, donc

$$4(a^3 + 1) - (a + 1)^3 = 3a^3 - 3a^2 - 3a + 3 = 3\left[a^2(a - 1) - (a - 1)\right] = 3(a - 1)(a^2 - 1) = 3(a - 1)^2(a + 1).$$

Un carré est positif ou nul, et $a + 1 > 0$ : cette différence est positive ou nulle. Donc $4(a^3 + 1) \geq (a + 1)^3$, avec égalité seulement pour $a = 1$.

On écrit la même inégalité pour $b$ et pour $c$, puis on additionne les trois :

$$4\left(a^3 + b^3 + c^3 + 3\right) = 4(a^3 + 1) + 4(b^3 + 1) + 4(c^3 + 1) \geq x^3 + y^3 + z^3.$$

### Étape 2 : une somme de trois cubes et leur produit

Montrons que $x^3 + y^3 + z^3 \geq 3xyz$ pour tous réels $x, y, z > 0$. On vérifie en développant l'identité

$$(x + y + z)\left(x^2 + y^2 + z^2 - xy - yz - zx\right) = x^3 + y^3 + z^3 - 3xyz.$$

(En développant le membre de gauche, on obtient $x^3 + y^3 + z^3$, trois fois $-xyz$, et douze termes comme $x^2y$ ou $xy^2$, qui s'annulent deux par deux.)

D'autre part, en développant les trois carrés,

$$x^2 + y^2 + z^2 - xy - yz - zx = \frac{1}{2}\left[(x - y)^2 + (y - z)^2 + (z - x)^2\right] \geq 0.$$

Comme $x + y + z > 0$, le produit est positif ou nul, donc $x^3 + y^3 + z^3 - 3xyz \geq 0$. Il y a égalité seulement quand $x = y = z$.

### Conclusion

En mettant bout à bout les deux étapes,

$$4\left(a^3 + b^3 + c^3 + 3\right) \geq x^3 + y^3 + z^3 \geq 3xyz = 3(a + 1)(b + 1)(c + 1).$$

**L'inégalité est démontrée.** Il y a égalité seulement pour $a = b = c = 1$.

## Going further

1. L'inégalité de l'étape 2 dit que la moyenne de trois nombres positifs $u = x^3$, $v = y^3$, $w = z^3$ est au moins égale à la racine cubique de leur produit. Écrivez la version pour deux nombres, $\frac{u + v}{2} \geq \sqrt{uv}$, et démontrez-la en une ligne.
2. L'inégalité de l'étape 1 est-elle vraie pour $a = -2$ ? Pour quels réels $a$ est-elle vraie ?
