---
id: "40086"
title: "Tout nombre premier 4m + 1 est somme de deux carrés"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [somme-de-deux-carres, nombres-premiers, recurrence, iteration, algorithme, symetrie, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["40081", "40082", "40083", "40084", "40085", "40087"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2004, mathématiques, série S"
  reference: "cg-2004-s-sujet.pdf, problème unique, partie V « nombre premier somme de deux carrés », questions 4 et 5 ; les résultats des questions 2 et 3 sont rappelés et admis"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2004.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2004-s-sujet.pdf"
---

## Statement

On dit qu'un entier est « somme de deux carrés » s'il est la somme des carrés de deux entiers
naturels. Soit $p$ un nombre premier strictement supérieur à $5$ dont le reste dans la division par
$4$ est $1$ : $p = 4m + 1$, avec $m \geq 3$. On note $S$ l'ensemble des triplets $(x, y, z)$ où $x$
et $y$ sont des entiers naturels et $z$ un entier relatif, tels que $4xy + z^2 = p$.

À tout triplet $(x, y, z)$ de $S$, on associe le triplet $(x', y', z')$ défini par :

- si $x > y + z$, alors $(x', y', z') = (x - y - z,\ y,\ 2y + z)$ ;
- si $x < y + z$, alors $(x', y', z') = (y + z - x,\ x,\ 2x - z)$.

On part de $X_0 = (m, 1, 1)$ et, pour tout $k \geq 0$, on note $X_{k+1} = (x_{k+1}, y_{k+1}, z_{k+1})$
le triplet associé à $X_k = (x_k, y_k, z_k)$.

On admet les résultats suivants, démontrés dans une partie précédente (exercice 40085).

- **(R1)** Pour tout triplet de $S$, $x \geq 1$, $y \geq 1$ et $x \neq y + z$. Le triplet associé à
  un triplet de $S$ est dans $S$.
- **(R2)** Pour tout $k \geq 1$, si $(a, b, c) = X_k$, alors $a - 4b + 2c \neq 0$ et le triplet
  précédent $X_{k-1}$ est $(a - b + c,\ b,\ c - 2b)$ si $a - 4b + 2c > 0$, et
  $(b,\ a - b + c,\ 2b - c)$ si $a - 4b + 2c < 0$.
- **(R3)** Il existe un entier $n \geq 1$ tel que $X_n = (m, 1, 1)$.

On note désormais $n$ le plus petit entier $n \geq 1$ tel que $X_n = (m, 1, 1)$.

1. Calculer $X_{n-1}$ et $X_{n-2}$.
2. Montrer que, pour tout entier $j$ tel que $1 \leq j \leq n$ :
   - si $x_{j-1} > y_{j-1} + z_{j-1}$, alors $X_{j-1} = (x_{n-j},\ y_{n-j},\ -z_{n-j})$ ;
   - si $x_{j-1} < y_{j-1} + z_{j-1}$, alors $X_{j-1} = (y_{n-j},\ x_{n-j},\ z_{n-j})$.
3. Montrer que $n$ est impair. On pose désormais $n = 2r + 1$.
4. Montrer que $x_r = y_r$. En déduire que $p$ est somme de deux carrés.
5. a) Déduire de ce qui précède un algorithme qui écrit $p$ comme somme de deux carrés.

   b) Donner le plus petit nombre premier supérieur à $40$ qui est somme de deux carrés, et en
   trouver une décomposition à l'aide de cet algorithme, en indiquant les triplets calculés.

## Hints

1. **Question 1.** Appliquer (R2) à $X_n = (m, 1, 1)$, puis au triplet obtenu. Le signe de
   $a - 4b + 2c$ dépend de $m$ à la seconde étape : séparer les cas.
2. **Question 2.** Raisonner par récurrence sur $j$. Pour passer de $j$ à $j + 1$, on connaît
   $X_j$, triplet associé à $X_{j-1}$, et $X_{n-j-1}$, qui se déduit de $X_{n-j}$ par (R2).
3. **Question 2.** Dans le cas $x_{j-1} > y_{j-1} + z_{j-1}$, poser $(x, y, z) = X_{j-1}$ et
   $(a, b, c) = X_{n-j} = (x, y, -z)$. Comparer $a - 4b + 2c$ et $x_j - y_j - z_j$.
4. **Question 3.** Si $n = 2r'$, appliquer la question 2 avec $j = r'$ : elle relie $X_{r'-1}$ et
   $X_{r'}$, qui se suivent dans la suite. En déduire $X_{r'-1}$, puis $X_{r'}$.
5. **Question 3.** On peut utiliser que $p$ est premier : si $p = y(4x + y)$, alors $y = 1$.
6. **Question 4.** Appliquer la question 2 avec $j = r + 1$. Pourquoi $z_r$ ne peut-il pas être
   nul ?

## Solution

**1.** On applique (R2) à $X_n = (m, 1, 1)$ (ici $n \geq 1$) : $a - 4b + 2c = m - 2 > 0$, donc
$$X_{n-1} = (m - 1 + 1,\ 1,\ 1 - 2) = (m, 1, -1).$$
Le triplet suivant $X_0$ est $X_1 = (m - 2, 1, 3)$, puisque $m > 1 + 1$ ; il est différent de
$(m, 1, 1)$, donc $n \geq 2$, et l'on peut appliquer (R2) à $X_{n-1} = (m, 1, -1)$ :
$a - 4b + 2c = m - 6$. Ce nombre n'est pas nul, car $m = 6$ donnerait $p = 25$, qui n'est pas
premier.

**Conclusion :** $X_{n-1} = (m, 1, -1)$ ; si $m > 6$, $X_{n-2} = (m - 2, 1, -3)$ ; si $m < 6$
(c'est-à-dire $p = 13$ ou $p = 17$), $X_{n-2} = (1, m - 2, 3)$.

**2.** On raisonne par récurrence sur $j$, de $1$ à $n$.

*Initialisation, $j = 1$.* On a $X_0 = (m, 1, 1)$ et $m > 1 + 1$ : on est dans le premier cas, et
il faut vérifier $X_0 = (x_{n-1}, y_{n-1}, -z_{n-1})$. C'est vrai d'après la question 1.

*Hérédité.* Supposons la propriété vraie pour un $j$ tel que $1 \leq j \leq n - 1$, et montrons-la
pour $j + 1$, c'est-à-dire pour le couple $X_j$ et $X_{n-j-1}$. Notons $(x, y, z) = X_{j-1}$ et
$(a, b, c) = X_{n-j}$. Comme $n - j \geq 1$, (R2) calcule $X_{n-j-1}$ à partir de $(a, b, c)$.
Notons aussi $(x', y', z') = X_j$, le triplet associé à $(x, y, z)$.

*Premier cas : $x > y + z$.* L'hypothèse de récurrence donne $(x, y, z) = (a, b, -c)$, soit $a = x$,
$b = y$, $c = -z$. On a $(x', y', z') = (x - y - z, y, 2y + z)$, et
$$a - 4b + 2c = x - 4y - 2z = (x - y - z) - (y + 2y + z) = x' - (y' + z').$$

- Si ce nombre est positif, alors $x' > y' + z'$, et (R2) donne
  $X_{n-j-1} = (a - b + c,\ b,\ c - 2b) = (x - y - z,\ y,\ -z - 2y) = (x', y', -z')$. Donc
  $X_j = (x_{n-j-1}, y_{n-j-1}, -z_{n-j-1})$, comme annoncé.
- S'il est négatif, alors $x' < y' + z'$, et (R2) donne
  $X_{n-j-1} = (b,\ a - b + c,\ 2b - c) = (y,\ x - y - z,\ 2y + z) = (y', x', z')$. Donc
  $X_j = (y_{n-j-1}, x_{n-j-1}, z_{n-j-1})$, comme annoncé.

*Second cas : $x < y + z$.* L'hypothèse de récurrence donne $(x, y, z) = (b, a, c)$, soit $a = y$,
$b = x$, $c = z$. On a $(x', y', z') = (y + z - x, x, 2x - z)$, et
$$a - 4b + 2c = y - 4x + 2z = (y + z - x) - (x + 2x - z) = x' - (y' + z').$$

- Si ce nombre est positif, $x' > y' + z'$ et
  $X_{n-j-1} = (a - b + c,\ b,\ c - 2b) = (y - x + z,\ x,\ z - 2x) = (x', y', -z')$.
- S'il est négatif, $x' < y' + z'$ et
  $X_{n-j-1} = (b,\ a - b + c,\ 2b - c) = (x,\ y - x + z,\ 2x - z) = (y', x', z')$.

Dans tous les cas, la propriété est vraie pour $j + 1$.

**Conclusion :** la relation annoncée est vraie pour tout $j$ de $1$ à $n$. Autrement dit, la
période se lit aussi à l'envers : $X_{j-1}$ et $X_{n-j}$ se correspondent, soit en changeant le signe
de $z$, soit en échangeant $x$ et $y$.

**3.** Supposons $n$ pair, $n = 2r'$ avec $r' \geq 1$. Appliquons la question 2 avec $j = r'$ : comme
$n - r' = r'$, elle relie $X_{r'-1} = (x, y, z)$ et $X_{r'}$, qui est son triplet associé.

- Si $x > y + z$, alors $X_{r'} = (x - y - z, y, 2y + z)$ et la question 2 donne
  $(x, y, z) = (x - y - z,\ y,\ -2y - z)$. D'où $y + z = 0$, c'est-à-dire $z = -y$. Alors
  $p = 4xy + y^2 = y(4x + y)$ ; comme $p$ est premier et $4x + y \geq 5$, on a $y = 1$, puis
  $z = -1$ et $4x = p - 1$, $x = m$. Ainsi $X_{r'-1} = (m, 1, -1)$ et
  $X_{r'} = (m - 0,\ 1,\ 2 - 1) = (m, 1, 1)$.
- Si $x < y + z$, alors $X_{r'} = (y + z - x, x, 2x - z)$ et la question 2 donne
  $(x, y, z) = (x,\ y + z - x,\ 2x - z)$. D'où $z = x$. Alors $p = 4xy + x^2 = x(4y + x)$, donc
  $x = 1$, $z = 1$ et $y = m$. Ainsi $X_{r'-1} = (1, m, 1)$ et
  $X_{r'} = (m + 1 - 1,\ 1,\ 2 - 1) = (m, 1, 1)$.

Dans les deux cas $X_{r'} = (m, 1, 1)$ avec $1 \leq r' < n$, ce qui contredit le choix de $n$
comme plus petit indice possible.

**Conclusion :** $n$ est impair.

**4.** Avec $n = 2r + 1$, appliquons la question 2 avec $j = r + 1$ : on a $n - j = r$, donc la
question 2 relie $X_r$ à lui-même.

- Si l'on avait $x_r > y_r + z_r$, on aurait $X_r = (x_r, y_r, -z_r)$, donc $z_r = 0$ et
  $p = 4x_ry_r$ serait pair : impossible.
- Donc $x_r < y_r + z_r$, et $X_r = (y_r, x_r, z_r)$ : $x_r = y_r$.

Alors $p = 4x_r^2 + z_r^2 = (2x_r)^2 + z_r^2$.

**Conclusion :** $p$ est somme de deux carrés, les carrés de $2x_r$ et de $\lvert z_r \rvert$.

**5. a)** *Algorithme.* Calculer $m = \frac{p - 1}{4}$ et partir du triplet $(x, y, z) = (m, 1, 1)$.
Tant que $x \neq y$, remplacer $(x, y, z)$ par son triplet associé. Quand $x = y$, renvoyer
$p = (2x)^2 + z^2$.

L'algorithme s'arrête : d'après la question 4, le triplet $X_r$ vérifie $x_r = y_r$, donc la boucle
s'arrête au plus tard après $r$ étapes. Et tout triplet de $S$ avec $x = y$ donne bien
$p = 4x^2 + z^2 = (2x)^2 + z^2$.

**5. b)** Le nombre $41$ est premier, et $41 = 4 \times 10 + 1$ : c'est le plus petit nombre premier
supérieur à $40$, et il est somme de deux carrés d'après la question 4. Avec $m = 10$ :

| étape | triplet | comparaison de $x$ et $y + z$ |
|---|---|---|
| $0$ | $(10, 1, 1)$ | $10 > 2$ |
| $1$ | $(8, 1, 3)$ | $8 > 4$ |
| $2$ | $(4, 1, 5)$ | $4 < 6$ |
| $3$ | $(2, 4, 3)$ | $2 < 7$ |
| $4$ | $(5, 2, 1)$ | $5 > 3$ |
| $5$ | $(2, 2, 5)$ | arrêt : $x = y$ |

**Conclusion :** $41 = (2 \times 2)^2 + 5^2 = 4^2 + 5^2$. (En continuant, on revient à
$(10, 1, 1)$ à l'étape $11$ : $n = 11$ et $r = 5$.)

**Bilan.** La suite des triplets parcourt un cycle qui se lit de la même façon dans les deux sens,
à un changement de signe ou à un échange près. Ce cycle a une longueur impaire, et son triplet du
milieu vérifie $x = y$, ce qui écrit $p$ comme somme de deux carrés. Avec $2 = 1^2 + 1^2$,
$5 = 1^2 + 2^2$, et le fait qu'un impair somme de deux carrés a pour reste $1$ dans la division
par $4$, on obtient le théorème des deux carrés de Fermat : un nombre premier impair est somme de
deux carrés si et seulement si son reste dans la division par $4$ est $1$.

## Going further

- Programmer l'algorithme (en Python par exemple) et l'essayer sur $p = 10009$.
- Le même ensemble de triplets $4xy + z^2 = p$ est au cœur de deux démonstrations célèbres de ce
  théorème, celle de Roger Heath-Brown (1984) et celle de Don Zagier (1990), qui tient en une seule
  phrase.
- Dans la dernière partie du sujet (exercice 40087), on utilisait ce théorème pour montrer que tout
  nombre premier qui divise un nombre de la forme $N^2 + 1$ est somme de deux carrés.
