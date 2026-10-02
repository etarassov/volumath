---
id: "6102"
title: "Tout entier s'écrit en base moins quatre, et d'une seule façon"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [bases-de-numeration, division-euclidienne, existence-et-unicite, recurrence, entiers-relatifs]
adapted_from: null
see_also: ["6101"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular Winter 2012, rubrique « Problem Circle »"
  reference: "MTCircularWinter2012.pdf, « Problem Circle: Number Bases », par Joshua Zucker d'après Harold Reiter ; le magazine demande en c) « comment sais-tu que ce procédé ne produira que les chiffres 0, 1, 2, 3 ? » et ne publie aucune solution."
  url: "https://mathteacherscircle.org/newsletter"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularWinter2012.pdf"
---

## Statement

Écrire un nombre **en base $-4$**, c'est lui donner une suite finie de chiffres $d_k d_{k-1} \ldots d_1 d_0$, tous pris dans $\{0, 1, 2, 3\}$, telle que

$$n = d_k \times (-4)^k + d_{k-1} \times (-4)^{k-1} + \cdots + d_1 \times (-4) + d_0 .$$

Aucun signe moins n'est autorisé. Par exemple $132$ représente $1 \times 16 + 3 \times (-4) + 2 = 6$, et $11$ représente $-4 + 1 = -3$.

Démontrer que **tout** entier relatif $n$, positif, négatif ou nul, possède une telle écriture, et qu'il n'en possède qu'une seule si l'on interdit les zéros inutiles devant.

## Hints

1. Pour l'existence, cherche d'abord le chiffre des unités $d_0$. Toutes les autres positions sont des multiples de $4$ : que peut donc être $d_0$ ?
2. La division euclidienne de $n$ par $4$ donne $n = 4q + r$ avec $0 \leqslant r < 4$, et cela marche aussi quand $n$ est négatif : par exemple $-25 = 4 \times (-7) + 3$.
3. Réécris $n = 4q + r$ sous la forme $n = (-4) \times (-q) + r$. Tu as trouvé $d_0 = r$, et il te reste à écrire le nombre $-q$. Pose $n' = -q$.
4. Pour que le procédé s'arrête, il faut que $n'$ soit « plus petit » que $n$. Compare $|n'|$ et $|n|$ : montre que $|n'| \leqslant \dfrac{|n| + 3}{4}$, puis que cela oblige $|n'| < |n|$ dès que $|n| \geqslant 2$.
5. Pour l'unicité, regarde encore le chiffre des unités : si deux écritures représentent le même $n$, que peut-on dire de leurs deux chiffres des unités modulo $4$ ?

## Solution

**Le chiffre des unités est imposé.**

Supposons $n = d_k (-4)^k + \cdots + d_1 (-4) + d_0$. Tous les termes sauf le dernier sont des multiples de $4$. Donc $n$ et $d_0$ ont le même reste dans la division par $4$. Comme $d_0$ est l'un des nombres $0$, $1$, $2$, $3$, c'est **exactement** le reste de la division euclidienne de $n$ par $4$. Ce reste existe et est unique, y compris pour $n$ négatif : par exemple $-25 = 4 \times (-7) + 3$, de reste $3$.

Cette seule remarque va donner à la fois l'existence et l'unicité.

**Existence.**

Partons de $n$ et construisons les chiffres un par un. Écrivons la division euclidienne

$$n = 4q + r, \qquad r \in \{0, 1, 2, 3\}.$$

Comme $4q = (-4) \times (-q)$, on a

$$n = (-4) \times (-q) + r .$$

Posons $n' = -q$. Si l'on sait écrire $n'$ en base $-4$ avec les chiffres $d_k \ldots d_1$, alors $n$ s'écrit $d_k \ldots d_1 r$ : il suffit d'ajouter $r$ au bout. On répète donc l'opération avec $n'$, puis avec le suivant, et ainsi de suite.

Reste à montrer que **le procédé s'arrête**, c'est-à-dire qu'on finit par tomber sur $0$.

Comme $q = \dfrac{n - r}{4}$, on a $n' = \dfrac{r - n}{4}$, donc

$$|n'| = \frac{|r - n|}{4} \leqslant \frac{|n| + 3}{4} .$$

Supposons $|n| \geqslant 2$. Alors

$$\frac{|n| + 3}{4} < |n| \iff |n| + 3 < 4|n| \iff 3 < 3|n| \iff |n| > 1,$$

ce qui est vrai. Donc $|n'| < |n|$ dès que $|n| \geqslant 2$.

Tant que la valeur absolue est au moins $2$, elle diminue strictement ; comme c'est une suite d'entiers positifs, on arrive forcément à un nombre de valeur absolue $0$ ou $1$. Il reste trois cas à regarder :

- $n = 0$ : c'est fini, il n'y a plus de chiffre à écrire.
- $n = 1$ : alors $r = 1$ et $n' = 0$, c'est fini. L'écriture est $1$.
- $n = -1$ : alors $-1 = 4 \times (-1) + 3$, donc $r = 3$ et $n' = 1$, puis $1$ donne $n' = 0$. L'écriture est $13$, et en effet $1 \times (-4) + 3 = -1$.

Dans tous les cas le procédé s'arrête, et il fournit une écriture de $n$ en base $-4$. L'existence est démontrée.

**Unicité.**

Montrons par récurrence sur $|n|$ que $n$ n'a qu'une écriture (sans zéros inutiles devant).

Pour $n = 0$, l'écriture vide, ou le seul chiffre $0$, est la seule possible : dès qu'un chiffre non nul apparaît en tête, le nombre représenté n'est pas nul, comme le montre le point suivant.

Soit $n$ quelconque, et supposons deux écritures de $n$ :

$$n = d_k (-4)^k + \cdots + d_0 = e_m (-4)^m + \cdots + e_0 .$$

D'après la remarque du début, $d_0$ et $e_0$ sont tous deux égaux au reste de la division de $n$ par $4$, donc $d_0 = e_0$. En les retranchant puis en divisant par $-4$, on obtient deux écritures du **même** nombre

$$n' = \frac{n - d_0}{-4},$$

à savoir $d_k \ldots d_1$ et $e_m \ldots e_1$. Or on a vu que $|n'| < |n|$ dès que $|n| \geqslant 2$, et que $n'$ vaut $0$ ou $1$ dans les petits cas. L'hypothèse de récurrence s'applique donc à $n'$ : ses deux écritures coïncident. En recollant le chiffre $d_0 = e_0$, les deux écritures de $n$ coïncident aussi.

**Conclusion.** Tout entier relatif s'écrit en base $-4$ avec les seuls chiffres $0$, $1$, $2$, $3$ et sans signe, et d'une seule façon.

## Going further

Le même raisonnement marche en base $-b$ pour n'importe quel entier $b \geqslant 2$, avec les chiffres $0, 1, \ldots, b-1$ : la seule chose utilisée est que toutes les positions sauf celle des unités sont des multiples de $b$, et que $|r - n| / b$ devient strictement plus petit que $|n|$.

On peut aussi observer où se cache le signe : le nombre est positif quand son écriture a un nombre impair de chiffres, et négatif quand elle en a un nombre pair (en excluant l'écriture de $0$ et les zéros inutiles devant). C'est ce qui remplace le signe moins.
