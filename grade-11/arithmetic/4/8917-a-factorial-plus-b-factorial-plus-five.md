---
id: "8917"
title: "a! + b! + 5 est un carré"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [factorielle, carres, congruences, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe A"
  reference: "Poly-Valbonne-2026.pdf, chapitre III « Groupe A », entraînement de fin de parcours, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

On rappelle que $n! = 1 \times 2 \times 3 \times \cdots \times n$.

Déterminer tous les triplets $(a, b, x)$ d'entiers strictement positifs tels que

$$a! + b! + 5 = x^2.$$

## Hints

1. Cherchez d'abord une solution à la main, avec de tout petits $a$ et $b$.
2. Il y a un carré dans l'équation. Quels sont les restes possibles d'un carré dans la division par $3$ ? Et par $4$ ?
3. Que devient $a!$ modulo $3$ lorsque $a \geq 3$ ? Et modulo $4$ lorsque $a \geq 4$ ?
4. Si $a$ et $b$ sont tous les deux au moins égaux à $3$, regardez l'équation modulo $3$. Vous éliminerez ce cas d'un coup.
5. Il ne restera qu'à traiter $a = 1$ et $a = 2$ (l'équation est symétrique en $a$ et $b$). Dans chacun, servez-vous cette fois de $4$.

## Solution

**Une solution qui saute aux yeux.** Avec $a = b = 2$ : $2 + 2 + 5 = 9 = 3^2$. Le triplet $(2,2,3)$ convient. Montrons que c'est le seul.

### Les restes des carrés

Un carré parfait $x^2$ ne peut pas prendre n'importe quel reste.

- **Modulo $3$** : si $x \equiv 0$ alors $x^2 \equiv 0$ ; si $x \equiv 1$ alors $x^2 \equiv 1$ ; si $x \equiv 2$ alors $x^2 \equiv 4 \equiv 1$. Un carré vaut donc $0$ ou $1$ modulo $3$, **jamais $2$**.
- **Modulo $4$** : si $x$ est pair, $x = 2k$ et $x^2 = 4k^2 \equiv 0$ ; si $x$ est impair, $x = 2k+1$ et $x^2 = 4k(k+1)+1 \equiv 1$. Un carré vaut donc $0$ ou $1$ modulo $4$, **jamais $2$ ni $3$**.

### Étape 1 : $a$ ou $b$ est plus petit que $3$

Supposons que $a \geq 3$ et $b \geq 3$. Alors $a!$ contient le facteur $3$, donc $3 \mid a!$, et de même $3 \mid b!$. L'équation devient, modulo $3$,

$$x^2 \equiv 0 + 0 + 5 \equiv 2 \pmod 3,$$

ce qui est impossible d'après ce qui précède.

L'un des deux nombres $a$, $b$ est donc égal à $1$ ou à $2$. L'équation étant symétrique en $a$ et $b$, on peut supposer que c'est $a$, quitte à échanger les deux à la fin.

### Étape 2 : le cas $a = 1$

L'équation devient $1 + b! + 5 = x^2$, c'est-à-dire

$$b! + 6 = x^2.$$

- Si $b \geq 4$, alors $b!$ contient les facteurs $2$ et $4$, donc $4 \mid b!$, et modulo $4$ l'équation donne $x^2 \equiv 6 \equiv 2 \pmod 4$ : impossible.
- Il reste $b \in \{1, 2, 3\}$, donc $b! \in \{1, 2, 6\}$, et $x^2 \in \{7, 8, 12\}$. Aucun de ces trois nombres n'est un carré.

Le cas $a = 1$ ne donne aucune solution.

### Étape 3 : le cas $a = 2$

L'équation devient $2 + b! + 5 = x^2$, c'est-à-dire

$$b! + 7 = x^2.$$

- Si $b \geq 4$, alors $4 \mid b!$ et modulo $4$ on obtient $x^2 \equiv 7 \equiv 3 \pmod 4$ : impossible.
- Il reste $b \in \{1,2,3\}$, donc $x^2 \in \{8, 9, 13\}$. Parmi ces trois nombres, seul $9$ est un carré, et il correspond à $b! = 2$, donc $b = 2$, et $x = 3$.

### Conclusion

La seule possibilité est $a = b = 2$ et $x = 3$ (l'échange de $a$ et $b$ redonne le même triplet).

$$\boxed{(a, b, x) = (2, 2, 3).}$$

## Going further

1. Remplacez le $5$ par un $4$. Le raisonnement modulo $3$ tient-il encore ? Cherchez des solutions à la main : vous en trouverez une, et vous verrez que l'exercice devient nettement plus dur.
2. Pourquoi $3$ et $4$ sont-ils les bons modules ici ? Qu'est-ce qui rend $5$ gênant modulo $3$, et $6$ et $7$ gênants modulo $4$ ?
