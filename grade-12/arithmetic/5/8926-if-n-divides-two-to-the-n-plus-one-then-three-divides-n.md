---
id: "8926"
title: "Si n divise 2ⁿ + 1, alors 3 divise n"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [ordre-multiplicatif, petit-theoreme-de-fermat, plus-petit-facteur-premier, congruences]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », entraînement de fin de parcours, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Soit $n \geq 2$ un entier. On suppose que $n$ divise $2^n + 1$.

Montrer que $3$ divise $n$.

## Hints

1. Vérifiez d'abord que de tels $n$ existent : testez $n = 3$, puis $n = 9$.
2. Pour attraper un diviseur de $n$, le réflexe est de regarder **le plus petit facteur premier** de $n$. Appelez-le $p$ et travaillez modulo $p$.
3. Montrez d'abord que $p$ est impair.
4. De $2^n \equiv -1 \pmod p$, déduisez une puissance de $2$ qui vaut $1$ modulo $p$.
5. Introduisez l'**ordre** de $2$ modulo $p$ : le plus petit entier $\omega > 0$ tel que $2^{\omega} \equiv 1 \pmod p$. Démontrez que $\omega$ divise tout exposant $e$ tel que $2^e \equiv 1 \pmod p$ (division euclidienne de $e$ par $\omega$).
6. Vous obtiendrez $\omega \mid 2n$ et, par le petit théorème de Fermat, $\omega \mid p-1$. Pourquoi $n$ et $p-1$ sont-ils premiers entre eux ?

## Solution

**Des exemples d'abord.** Pour $n = 3$ : $2^3 + 1 = 9$, et $3 \mid 9$. Pour $n = 9$ : $2^9 + 1 = 513 = 9 \times 57$, et $9 \mid 513$. Ces entiers sont bien multiples de $3$, comme annoncé.

### L'outil : l'ordre de 2 modulo p

> **Définition.** Soit $p$ un nombre premier impair. Le petit théorème de Fermat donne $2^{\,p-1} \equiv 1 \pmod p$ : il existe donc des exposants $e > 0$ tels que $2^e \equiv 1 \pmod p$. On appelle **ordre de $2$ modulo $p$**, noté $\omega$, le plus petit d'entre eux.
>
> **Propriété.** Si $2^e \equiv 1 \pmod p$ pour un entier $e > 0$, alors $\omega$ divise $e$.
>
> *Démonstration.* Faisons la division euclidienne : $e = q\omega + r$ avec $0 \leq r < \omega$. Alors
> $$1 \equiv 2^e = \left(2^{\omega}\right)^{q} \times 2^{r} \equiv 1^{q} \times 2^{r} = 2^{r} \pmod p.$$
> Si $r$ était strictement positif, on aurait trouvé un exposant plus petit que $\omega$ convenant, ce qui contredirait la minimalité de $\omega$. Donc $r = 0$ et $\omega \mid e$. $\square$

En particulier, $\omega$ divise $p-1$.

### Étape 1 : on prend le plus petit facteur premier de n

Comme $n \geq 2$, l'entier $n$ possède au moins un facteur premier. Notons $p$ **le plus petit** d'entre eux.

Le nombre $2^n + 1$ est impair, et $n$ le divise, donc $n$ est impair, donc $p$ aussi : $p \neq 2$.

### Étape 2 : une puissance de 2 qui vaut 1

Comme $p$ divise $n$ et que $n$ divise $2^n+1$, on a $p \mid 2^n + 1$, c'est-à-dire

$$2^{n} \equiv -1 \pmod p.$$

En élevant au carré :

$$2^{2n} \equiv 1 \pmod p.$$

Notons $\omega$ l'ordre de $2$ modulo $p$. D'après la propriété ci-dessus,

$$\omega \mid 2n \qquad \text{et} \qquad \omega \mid p-1.$$

### Étape 3 : n et p − 1 sont premiers entre eux

C'est ici que le choix « plus petit facteur premier » sert.

Supposons qu'un nombre premier $q$ divise à la fois $n$ et $p-1$. Comme $q \mid n$, $q$ est un facteur premier de $n$, donc $q \geq p$ par minimalité de $p$. Mais comme $q \mid p-1$ et $p - 1 \geq 1$, on a $q \leq p-1 < p$. Contradiction.

Donc $n$ et $p-1$ n'ont aucun facteur premier commun :

$$\mathrm{PGCD}(n,\ p-1) = 1.$$

### Étape 4 : l'ordre vaut 1 ou 2

Le nombre $\omega$ divise $p-1$ ; donc tout facteur premier commun à $\omega$ et à $n$ diviserait $p-1$ et $n$, ce qui est exclu par l'étape 3. Donc

$$\mathrm{PGCD}(\omega,\ n) = 1.$$

Or $\omega$ divise $2n$. Comme $\omega$ est premier avec $n$, le théorème de Gauss donne

$$\omega \mid 2.$$

Il reste deux cas.

- **Si $\omega = 1$** : alors $2^1 \equiv 1 \pmod p$, donc $p \mid 1$. Impossible.
- **Si $\omega = 2$** : alors $2^2 \equiv 1 \pmod p$, donc $p \mid 4 - 1 = 3$. Comme $p$ est premier, $p = 3$.

### Conclusion

Le plus petit facteur premier de $n$ vaut donc $3$, et en particulier $3$ divise $n$.

$$\boxed{3 \mid n.}$$

## Going further

1. Trouvez tous les $n \leq 100$ tels que $n \mid 2^n+1$. (Il y en a peu, et ils se ressemblent.)
2. Reprenez la démonstration en remplaçant $2^n+1$ par $2^n - 1$ : que peut-on dire d'un entier $n \geq 2$ tel que $n \mid 2^n - 1$ ?
