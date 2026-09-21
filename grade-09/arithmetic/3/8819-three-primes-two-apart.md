---
id: "8819"
title: "p, p + 2 et p + 4 tous premiers"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres premiers, divisibilite par 3, disjonction de cas, restes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Arithmétique : Nombres premiers » (Anatole et Martin), exercice 18, p. 58"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Trouver tous les entiers naturels $p$ tels que les trois nombres
$$p, \qquad p+2, \qquad p+4$$
soient **tous les trois** des nombres premiers.

## Hints

1. Essaie les petites valeurs : $p = 2, 3, 5, 7, 11, 13$. Tu trouveras vite une solution, et l'impression qu'il n'y en a pas d'autre.
2. Pour les nombres premiers, l'argument « un sur deux est pair » est classique. Ici il faut plutôt un argument « un sur trois est divisible par $3$ ».
3. Parmi trois entiers consécutifs $p$, $p+1$, $p+2$, exactement un est divisible par $3$. Or $p+1$ et $p+4$ ont le même reste dans la division par $3$. Qu'en déduis-tu sur $p$, $p+2$, $p+4$ ?
4. L'un de tes trois nombres est donc divisible par $3$. S'il est premier, que vaut-il ?

## Solution

### L'idée : regarder les restes dans la division par $3$

Considérons les trois entiers consécutifs $p$, $p+1$, $p+2$. Parmi trois entiers consécutifs, il y en a exactement un qui est divisible par $3$.

Or $p+4 = (p+1) + 3$, donc $p+4$ et $p+1$ ont le même reste dans la division par $3$ : $p+1$ est divisible par $3$ si et seulement si $p+4$ l'est.

On peut donc remplacer $p+1$ par $p+4$ dans la liste : parmi les trois nombres
$$p, \qquad p+2, \qquad p+4$$
il y en a **exactement un** qui est divisible par $3$.

### On conclut

Appelons $N$ celui des trois qui est divisible par $3$. Par hypothèse $N$ est premier. Un nombre premier divisible par $3$ ne peut être que $3$ lui-même, car ses seuls diviseurs sont $1$ et lui-même. Donc
$$N = 3 .$$

Trois cas.

- **$p = 3$ :** alors les trois nombres sont $3$, $5$, $7$, tous premiers. Cela convient.
- **$p + 2 = 3$ :** alors $p = 1$, qui n'est pas premier. Exclu.
- **$p + 4 = 3$ :** alors $p = -1$, qui n'est pas un entier naturel. Exclu.

**Conclusion.** Le seul entier naturel $p$ qui convient est
$$\boxed{p = 3}, \qquad \text{donnant le triplet } (3, 5, 7).$$

### Le même raisonnement ailleurs

C'est exactement la structure de l'argument classique « le seul nombre premier pair est $2$ », mais avec $3$ à la place de $2$. Dès qu'une famille de nombres est construite de telle sorte que l'un d'eux est forcément divisible par un petit nombre premier $q$, on obtient de fortes contraintes.

## Going further

1. Trouver tous les entiers naturels $p$ tels que $p$, $p+4$ et $p+8$ soient tous premiers.
2. Trouver tous les entiers naturels $p$ tels que $p$, $p+2$, $p+6$ et $p+8$ soient tous premiers. (Ici l'argument par $3$ ne suffit plus ; il y a plusieurs solutions.)
