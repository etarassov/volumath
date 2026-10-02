---
id: "12819"
title: "Chaque élément est la somme de k autres"
grade: 10
theme: algebra
difficulty: 5
duration_min: 50
tags: [construction, ordre, inegalite, sommes, extremal]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2023"
  reference: "2023-09_Enonce-Test-3.pdf, test EGMO, exercice 10 ; corrigé 2023-09_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-3.pdf"
---

## Statement

Soit $k \geq 2$ un entier. Trouver le plus petit entier $n \geq k + 1$ pour lequel il existe un ensemble $E$ de $n$ réels deux à deux distincts ayant la propriété suivante : chaque élément de $E$ peut s'écrire comme la somme de $k$ **autres** éléments de $E$, deux à deux distincts.

## Hints

1. Rangez les éléments dans l'ordre croissant : $x_1 < x_2 < \cdots < x_n$. Le plus petit, $x_1$, est une somme de $k$ autres éléments : comparez-le à $x_2 + x_3 + \cdots + x_{k+1}$. Faites de même pour le plus grand, $x_n$.
2. Notez $s$ la somme de tous les éléments, et déduisez-en une majoration et une minoration de $s$. Qu'obtenez-vous quand $n = k + 1$, $k + 2$ ou $k + 3$ ?
3. Pour la construction, choisissez un ensemble $E$ de somme nulle à $k + 4$ éléments. Montrez qu'alors $x$ est la somme de $k$ autres éléments dès que trois éléments différents de $x$ ont pour somme $-2x$.
4. Essayez $E = \{\pm 1, \pm 2, \ldots\}$, et ajoutez $0$ si $k$ est impair.

## Solution

La réponse : $n = k + 4$.

### Il faut au moins k + 4 éléments

Soit $E$ un ensemble qui convient, à $n$ éléments rangés dans l'ordre croissant $x_1 < x_2 < \cdots < x_n$, et soit $s$ leur somme.

**Le plus petit élément.** $x_1$ est la somme de $k$ éléments distincts pris parmi $x_2, \ldots, x_n$. Une telle somme est au moins égale à la somme des $k$ plus petits d'entre eux. Donc

$$x_1 \geq x_2 + x_3 + \cdots + x_{k+1}.$$

En ajoutant $x_1 + x_{k+2} + \cdots + x_n$ des deux côtés, on obtient

$$s \leq 2x_1 + \left(x_{k+2} + \cdots + x_n\right). \qquad (1)$$

**Le plus grand élément.** De même, $x_n$ est au plus égal à la somme des $k$ plus grands éléments parmi $x_1, \ldots, x_{n-1}$ :

$$x_n \leq x_{n-k} + \cdots + x_{n-1}, \qquad \text{donc} \qquad s \geq \left(x_1 + \cdots + x_{n-k-1}\right) + 2x_n. \qquad (2)$$

Les deux parenthèses de $(1)$ et de $(2)$ contiennent chacune $n - k - 1$ termes. En comparant $(1)$ et $(2)$ :

$$\left(x_1 + \cdots + x_{n-k-1}\right) + 2x_n \leq 2x_1 + \left(x_{k+2} + \cdots + x_n\right). \qquad (3)$$

- **Si $n = k + 1$**, les parenthèses sont vides et $(3)$ s'écrit $2x_n \leq 2x_1$. C'est faux, car $x_n > x_1$.
- **Si $n = k + 2$**, les parenthèses contiennent un terme, $x_1$ à gauche et $x_n$ à droite : $x_1 + 2x_n \leq 2x_1 + x_n$, donc $x_n \leq x_1$. C'est faux.
- **Si $n = k + 3$**, les parenthèses contiennent deux termes : $x_1 + x_2 + 2x_n \leq 2x_1 + x_{n-1} + x_n$, donc $x_2 + x_n \leq x_1 + x_{n-1}$. C'est faux, car $x_2 > x_1$ et $x_n > x_{n-1}$.

Donc $n \geq k + 4$.

### Un ensemble à k + 4 éléments

**Une remarque.** Supposons que $E$ ait $k + 4$ éléments et une somme nulle. Soit $x \in E$, et supposons qu'il existe trois éléments distincts $u$, $v$, $w$ de $E$, différents de $x$, tels que $u + v + w = -2x$. Les $k$ éléments restants, ceux de $E$ autres que $x$, $u$, $v$, $w$, sont distincts, différents de $x$, et leur somme vaut

$$0 - x - (u + v + w) = -x + 2x = x.$$

Donc $x$ est bien la somme de $k$ autres éléments distincts. Il suffit de trouver un tel « triplet » pour chaque $x$.

**Si $k$ est pair**, $k = 2\ell$ avec $\ell \geq 1$. Posons $L = \ell + 2 \geq 3$ et

$$E = \{-L, \ldots, -2, -1, 1, 2, \ldots, L\}.$$

Il a $2L = k + 4$ éléments, et sa somme est nulle. Pour $x > 0$ :

- si $x \geq 3$, on prend $-x$, $1 - x$, $-1$, qui sont dans $E$, distincts, négatifs (donc différents de $x$), et dont la somme vaut $-2x$ ;
- si $x = 1$, on prend $-3$, $-1$, $2$, de somme $-2$ ;
- si $x = 2$, on prend $-3$, $-2$, $1$, de somme $-4$.

Pour $x < 0$, on prend les opposés des trois nombres choisis pour $-x$. Ces trois nombres avaient pour somme $-2 \times (-x) = 2x$, donc leurs opposés ont pour somme $-2x$. Ils sont distincts et différents de $x$, car les trois nombres choisis pour $-x$ étaient différents de $-x$.

**Si $k$ est impair**, $k = 2\ell + 1$ avec $\ell \geq 1$. Posons encore $L = \ell + 2 \geq 3$, et ajoutons $0$ :

$$E = \{-L, \ldots, -1, 0, 1, \ldots, L\},$$

qui a $2L + 1 = k + 4$ éléments et une somme nulle. Pour $x \neq 0$, les triplets ci-dessus conviennent encore (ils n'utilisent pas $0$). Pour $x = 0$, on prend $-2$, $-1$, $3$, de somme $0 = -2 \times 0$.

*Exemple.* Pour $k = 2$, $E = \{-3, -2, -1, 1, 2, 3\}$ convient : par exemple $3 = 1 + 2$, $1 = 3 + (-2)$ et $2 = 3 + (-1)$, et de même pour les négatifs.

### Conclusion

**Le plus petit entier cherché est $n = k + 4$.**
