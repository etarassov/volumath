---
id: "12866"
title: "Quatre entiers de somme s et une égalité de fractions"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [nombres-premiers, decomposition-en-facteurs-premiers, divisibilite, carre-parfait, fractions, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2024"
  reference: "2025-01_Enonce-Test-5.pdf, test senior, exercice 7 ; corrigé 2025-01_Corrige-Test-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-5.pdf"
---

## Statement

Trouver tous les entiers $s$ pour lesquels il existe des entiers strictement positifs $a$, $b$, $c$ et $d$ tels que $a + b + c + d = s$ et

$$\frac{ab}{a + b} + \frac{cd}{c + d} = \frac{(a + b)(c + d)}{a + b + c + d}.$$

## Hints

1. Cherchez des solutions avec $a = b = c = d$. Quelle valeur de $s$ obtenez-vous ? Essayez ensuite de trouver une solution pour $s = 9$.
2. Essayez de montrer qu'il n'y a pas de solution pour $s = 5$, ou pour $s$ premier. Posez $u = a + b$ et $v = c + d$, et chassez les dénominateurs.
3. Un nombre premier $p$ qui divise $s$ divise $u^2 v^2$. Que peut-on en déduire pour $u$ et $v$ ?
4. La réponse : les entiers $s$ divisibles par un carré parfait plus grand que $1$. Pour la construction, si $s = k\ell^2$, généralisez la solution $(1, 2, 2, 4)$ trouvée pour $s = 9 = 3^2$.

## Solution

La réponse : **les entiers $s$ qui sont divisibles par le carré d'un entier au moins égal à $2$**, c'est-à-dire les entiers $4$, $8$, $9$, $12$, $16$, $18$, $20$, ...

Dans toute la solution, on pose $u = a + b$ et $v = c + d$, de sorte que $s = u + v$.

### Une construction

Soit $s$ un entier de la forme $s = k\ell^2$, avec $k \geq 1$ et $\ell \geq 2$. On choisit

$$a = k(\ell - 1)^2, \qquad b = c = k(\ell - 1), \qquad d = k.$$

Ce sont des entiers strictement positifs, car $\ell - 1 \geq 1$. Vérifions qu'ils conviennent.

- Leur somme : $u = a + b = k(\ell - 1)(\ell - 1 + 1) = k\ell(\ell - 1)$ et $v = c + d = k(\ell - 1 + 1) = k\ell$. Donc $u + v = k\ell(\ell - 1 + 1) = k\ell^2 = s$.
- Le membre de gauche :

$$\frac{ab}{u} = \frac{k^2(\ell - 1)^3}{k\ell(\ell - 1)} = \frac{k(\ell - 1)^2}{\ell} \qquad \text{et} \qquad \frac{cd}{v} = \frac{k^2(\ell - 1)}{k\ell} = \frac{k(\ell - 1)}{\ell}.$$

Leur somme vaut $k(\ell - 1)(\ell - 1 + 1)/\ell = k(\ell - 1)$.

- Le membre de droite :

$$\frac{uv}{s} = \frac{k\ell(\ell - 1) \times k\ell}{k\ell^2} = k(\ell - 1).$$

Les deux membres sont égaux. Par exemple, pour $s = 4$ ($k = 1$, $\ell = 2$) on trouve $(1, 1, 1, 1)$, et pour $s = 9$ ($k = 1$, $\ell = 3$) on trouve $(4, 2, 2, 1)$.

**Tout entier divisible par un carré parfait plus grand que $1$ convient.**

### On chasse les dénominateurs

Réciproquement, soit $s$ un entier qui convient, et soit $a$, $b$, $c$, $d$ des entiers strictement positifs comme dans l'énoncé. On a $s \geq 4$, et $u < s$, $v < s$.

L'égalité de l'énoncé s'écrit $ab/u + cd/v = uv/s$. En multipliant les deux membres par $uvs$, on obtient

$$s\,(ab\,v + cd\,u) = u^2 v^2.$$

### Les facteurs premiers de s divisent u et v

Soit $p$ un nombre premier qui divise $s$. D'après l'égalité ci-dessus, $p$ divise $u^2 v^2 = u \times u \times v \times v$.

Or un nombre premier qui divise un produit d'entiers divise l'un des facteurs. En effet, la décomposition en facteurs premiers d'un produit s'obtient en mettant bout à bout celles des facteurs : si $p$ apparaît dans la décomposition du produit, il apparaît dans celle de l'un des facteurs.

Donc $p$ divise $u$ ou $v$. Comme $p$ divise aussi $u + v = s$, il divise les deux : par exemple, s'il divise $u$, il divise $s - u = v$.

**Tout nombre premier qui divise $s$ divise $u$.**

### Si s n'a pas de facteur carré, c'est impossible

Supposons que $s$ ne soit divisible par aucun carré parfait plus grand que $1$. Alors, dans la décomposition de $s$ en facteurs premiers, chaque nombre premier apparaît une seule fois : $s = p_1 p_2 \cdots p_r$, où $p_1$, ..., $p_r$ sont des nombres premiers distincts.

D'après ce qui précède, chacun des $p_i$ divise $u$, donc apparaît dans la décomposition de $u$ en facteurs premiers. Comme ils sont distincts, leur produit $s$ divise $u$. Mais $u$ est strictement positif et $u < s$ : un multiple strictement positif de $s$ ne peut pas être plus petit que $s$. C'est une contradiction.

**Un entier qui convient est donc divisible par un carré parfait plus grand que $1$.**

### Conclusion

**Les entiers $s$ cherchés sont exactement ceux qui sont divisibles par le carré d'un entier au moins égal à $2$** : $4$, $8$, $9$, $12$, $16$, $18$, ... (il suffit d'ailleurs de regarder les carrés de nombres premiers, puisque si $m^2$ divise $s$, alors $p^2$ divise $s$ pour tout nombre premier $p$ qui divise $m$).

## Going further

1. Pour $s = 25 = 1 \times 5^2$, la construction donne $(16, 4, 4, 1)$. Trouvez une autre solution, qui ne s'obtient pas en échangeant les nombres de celle-ci. (Cherchez avec $a + b = 10$ et $c + d = 15$.)
2. En utilisant $4ab = (a + b)^2 - (a - b)^2$, montrez que l'égalité de l'énoncé équivaut à

$$\frac{(a - b)^2}{a + b} + \frac{(c - d)^2}{c + d} = \frac{(a + b - c - d)^2}{a + b + c + d}.$$
