---
id: "40085"
title: "Les triplets tels que 4xy + z² = p : une suite qui revient à son départ"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [somme-de-deux-carres, nombres-premiers, restes, parite, iteration, principe-des-tiroirs, injectivite]
adapted_from: null
see_also: ["40081", "40082", "40083", "40084", "40086", "40087", "5010"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2004, mathématiques, série S"
  reference: "cg-2004-s-sujet.pdf, problème unique, partie V « nombre premier somme de deux carrés », questions 1 à 3. « Congru à 1 modulo 4 » est écrit ici « de reste 1 dans la division par 4 »."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2004.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2004-s-sujet.pdf"
---

## Statement

On cherche quels nombres premiers peuvent s'écrire comme somme des carrés de deux entiers naturels.
On dira plus simplement qu'un tel nombre est « somme de deux carrés ».

1. a) Montrer que si un entier naturel impair est somme de deux carrés, alors le reste de sa
   division par $4$ est égal à $1$.

   b) Écrire $2$ et $5$ comme sommes de deux carrés.

Dans toute la suite, $p$ est un nombre premier strictement supérieur à $5$ dont le reste dans la
division par $4$ est $1$. On l'écrit $p = 4m + 1$, avec $m$ entier, $m \geq 3$. On note $S$
l'ensemble des triplets $(x, y, z)$ où $x$ et $y$ sont des entiers naturels et $z$ un entier
relatif, tels que
$$4xy + z^2 = p .$$

2. a) Montrer que $S$ est un ensemble fini non vide, et qu'aucun triplet de $S$ ne vérifie
   $x = y + z$.

   b) À tout triplet $(x, y, z)$ de $S$, on associe le triplet $(x', y', z')$ défini ainsi :
   - si $x > y + z$, alors $(x', y', z') = (x - y - z,\ y,\ 2y + z)$ ;
   - si $x < y + z$, alors $(x', y', z') = (y + z - x,\ x,\ 2x - z)$.

   Montrer que $(x', y', z')$ est encore un élément de $S$.

On construit alors une suite de triplets de $S$ : on part de $(x_0, y_0, z_0) = (m, 1, 1)$, et
chaque triplet $(x_{k+1}, y_{k+1}, z_{k+1})$ est le triplet associé à $(x_k, y_k, z_k)$ par la
règle de la question 2 b). On note $X_k = (x_k, y_k, z_k)$.

3. a) Dans cette question seulement, $m = 10$, c'est-à-dire $p = 41$. Calculer les triplets
   $X_k$ pour $0 \leq k \leq 11$.

   b) Soit $k \geq 2$ et $(a, b, c) = X_k$. Montrer que le triplet précédent $X_{k-1}$ est
   - $(a - b + c,\ b,\ c - 2b)$ si $a - 4b + 2c > 0$ ;
   - $(b,\ a - b + c,\ 2b - c)$ si $a - 4b + 2c < 0$.

   Montrer que ce résultat est encore vrai pour $k = 1$.

   c) Montrer qu'il existe deux entiers distincts $k$ et $\ell$ tels que $X_k = X_\ell$. En
   déduire qu'il existe un entier $n \geq 1$ tel que $X_n = (m, 1, 1)$.

## Hints

1. **Question 1 a).** Si $a^2 + b^2$ est impair, l'un des deux nombres $a$, $b$ est pair et l'autre
   impair. Développer $(2c)^2$ et $(2d + 1)^2$.
2. **Question 2 a).** Pourquoi $x$ et $y$ ne peuvent-ils pas être nuls ? Ensuite, majorer $\lvert z \rvert$,
   $x$ et $y$.
3. **Question 2 a).** Si $x = y + z$, que vaut $4xy + z^2$ ? Reconnaître un carré.
4. **Question 2 b).** Calculer $4x'y' + z'^2$ dans chacun des deux cas, et vérifier que $x'$ et $y'$
   sont bien des entiers naturels.
5. **Question 3 b).** Soit $(x, y, z) = X_{k-1}$. Dans chacun des deux cas de la règle, exprimer
   $x$, $y$, $z$ à l'aide de $a$, $b$, $c$, puis calculer $a - 4b + 2c$ en fonction de $x$, $y$,
   $z$.
6. **Question 3 b).** On trouve $a - 4b + 2c = x - y + z$ dans le premier cas et
   $-(x - y + z)$ dans le second. Montrer que $x' - y' + z' > 0$ pour tout triplet associé
   $(x', y', z')$ ; que dire alors de $X_{k-1}$ quand $k \geq 2$ ?
7. **Question 3 c).** L'ensemble $S$ est fini, la suite est infinie. Pour la seconde partie, prendre
   le plus petit indice $k$ tel que $X_k$ réapparaisse plus loin dans la suite, et montrer que
   $k = 0$ à l'aide de la question 3 b).

## Solution

**1. a)** Soit $N = a^2 + b^2$ impair. Si $a$ et $b$ étaient de même parité, $a^2$ et $b^2$ le
seraient aussi et $N$ serait pair. Donc l'un est pair, disons $a = 2c$, et l'autre impair,
$b = 2d + 1$. Alors
$$N = 4c^2 + 4d^2 + 4d + 1 = 4(c^2 + d^2 + d) + 1 .$$

**Conclusion :** le reste de la division de $N$ par $4$ est $1$.

**1. b)** $2 = 1^2 + 1^2$ et $5 = 1^2 + 2^2$.

**2. a)** *Non vide.* Le triplet $(m, 1, 1)$ est dans $S$, puisque $4m + 1 = p$.

*$x$ et $y$ sont non nuls.* Si $x = 0$ ou $y = 0$, alors $z^2 = p$. C'est impossible : un nombre
premier n'est pas un carré (si $p = c^2$, alors $c \geq 2$ et $c$ serait un diviseur de $p$
différent de $1$ et de $p$).

*Fini.* Pour un triplet de $S$, on a $x \geq 1$ et $y \geq 1$, donc $4x \leq 4xy \leq p$ et de même
pour $y$ : $1 \leq x \leq \frac{p}{4}$ et $1 \leq y \leq \frac{p}{4}$. Et $z^2 \leq p$, donc
$-p \leq z \leq p$. Il n'y a qu'un nombre fini de triplets d'entiers dans ces bornes.

*Jamais $x = y + z$.* Si $x = y + z$, alors
$$4xy + z^2 = 4y^2 + 4yz + z^2 = (2y + z)^2,$$
et $p$ serait un carré, ce qui est impossible.

**Conclusion :** $S$ est fini, non vide, et pour tout triplet de $S$, ou bien $x > y + z$, ou bien
$x < y + z$.

**2. b)** *Premier cas, $x > y + z$.* Alors $x' = x - y - z$ est un entier au moins égal à $1$,
$y' = y \geq 1$, et $z' = 2y + z$ est un entier relatif. De plus
$$4x'y' + z'^2 = 4xy - 4y^2 - 4yz + 4y^2 + 4yz + z^2 = 4xy + z^2 = p .$$

*Second cas, $x < y + z$.* Alors $x' = y + z - x \geq 1$, $y' = x \geq 1$, et
$$4x'y' + z'^2 = 4xy + 4xz - 4x^2 + 4x^2 - 4xz + z^2 = 4xy + z^2 = p .$$

**Conclusion :** dans les deux cas, $(x', y', z')$ est dans $S$. D'après 2 a), l'un des deux cas
se produit toujours, donc la suite $(X_k)$ est bien définie.

**3. a)** On applique la règle pas à pas, en comparant $x$ et $y + z$ :

| $k$ | $X_k$ | comparaison | règle |
|---|---|---|---|
| $0$ | $(10, 1, 1)$ | $10 > 2$ | première |
| $1$ | $(8, 1, 3)$ | $8 > 4$ | première |
| $2$ | $(4, 1, 5)$ | $4 < 6$ | seconde |
| $3$ | $(2, 4, 3)$ | $2 < 7$ | seconde |
| $4$ | $(5, 2, 1)$ | $5 > 3$ | première |
| $5$ | $(2, 2, 5)$ | $2 < 7$ | seconde |
| $6$ | $(5, 2, -1)$ | $5 > 1$ | première |
| $7$ | $(4, 2, 3)$ | $4 < 5$ | seconde |
| $8$ | $(1, 4, 5)$ | $1 < 9$ | seconde |
| $9$ | $(8, 1, -3)$ | $8 > -2$ | première |
| $10$ | $(10, 1, -1)$ | $10 > 0$ | première |
| $11$ | $(10, 1, 1)$ | | |

On revient au triplet de départ : $X_{11} = X_0$. On peut contrôler chaque ligne : par exemple
$4 \times 2 \times 4 + 3^2 = 41$ pour $X_3$.

**3. b)** Soit $(x, y, z) = X_{k-1}$, de sorte que $(a, b, c) = X_k$ est son triplet associé.

*Premier cas, $x > y + z$.* On a $a = x - y - z$, $b = y$, $c = 2y + z$. Donc $y = b$,
$z = c - 2b$ et $x = a + y + z = a - b + c$ : on retrouve $X_{k-1} = (a - b + c, b, c - 2b)$. De
plus,
$$a - 4b + 2c = (x - y - z) - 4y + 2(2y + z) = x - y + z .$$

*Second cas, $x < y + z$.* On a $a = y + z - x$, $b = x$, $c = 2x - z$. Donc $x = b$,
$z = 2b - c$ et $y = a + x - z = a - b + c$ : on retrouve $X_{k-1} = (b, a - b + c, 2b - c)$. De
plus,
$$a - 4b + 2c = (y + z - x) - 4x + 2(2x - z) = -(x - y + z) .$$

Si l'on sait que $x - y + z > 0$, le signe de $a - 4b + 2c$ dit donc dans quel cas on est : positif
dans le premier, négatif dans le second, et les formules ci-dessus donnent $X_{k-1}$.

*Le nombre $x - y + z$ est positif.* Pour tout triplet associé $(x', y', z')$ :

- dans le premier cas, $x' - y' + z' = (x - y - z) - y + (2y + z) = x > 0$ ;
- dans le second cas, $x' - y' + z' = (y + z - x) - x + (2x - z) = y > 0$.

Si $k \geq 2$, le triplet $X_{k-1}$ est le triplet associé à $X_{k-2}$, donc
$x - y + z > 0$. Si $k = 1$, $X_0 = (m, 1, 1)$ et $x - y + z = m > 0$.

**Conclusion :** pour tout $k \geq 1$, le triplet $X_{k-1}$ se calcule à partir de $X_k$ par les
formules de l'énoncé, selon le signe de $a - 4b + 2c$, qui n'est jamais nul.

**3. c)** *Deux triplets égaux.* Soit $N$ le nombre d'éléments de $S$. Les $N + 1$ triplets
$X_0$, $X_1$, …, $X_N$ sont dans $S$, donc deux d'entre eux sont égaux (principe des tiroirs) :
il existe $k \neq \ell$ avec $X_k = X_\ell$.

*Retour au départ.* Parmi tous les couples d'indices $k < \ell$ tels que $X_k = X_\ell$, choisissons
celui dont le $k$ est le plus petit possible. Supposons $k \geq 1$. Alors $\ell > k \geq 1$, et
d'après 3 b), $X_{k-1}$ et $X_{\ell-1}$ se calculent par la même formule à partir du même triplet
$X_k = X_\ell$. Donc $X_{k-1} = X_{\ell-1}$, avec $k - 1 < \ell - 1$ : cela contredit le choix de
$k$. Donc $k = 0$, et $X_\ell = X_0 = (m, 1, 1)$.

**Conclusion :** il existe un entier $n = \ell \geq 1$ tel que $X_n = (m, 1, 1)$.

**Bilan.** Un nombre premier impair somme de deux carrés a pour reste $1$ dans la division par $4$.
Ensuite, pour tout nombre premier $p = 4m + 1$ plus grand que $5$, la règle de la question 2 b) fait passer d'un triplet de
$S$ à un autre, et le long de la suite partie de $(m, 1, 1)$ on peut toujours revenir en arrière
d'un pas. Comme $S$ est fini, la suite finit par repasser par son point de départ : elle est
périodique.

## Going further

- Dans le tableau de la question 3 a), on voit $X_5 = (2, 2, 5)$, avec $x = y$. Que donne alors
  l'égalité $4xy + z^2 = 41$ ? Dans la suite du sujet (exercice 40086), on montrait qu'un tel
  triplet apparaît toujours, au milieu de la période, et donc que **tout** nombre premier de reste
  $1$ dans la division par $4$ est somme de deux carrés.
- Refaire le calcul pour $p = 13$ et pour $p = 29$. Quelle est la période, et le triplet avec
  $x = y$ ?
