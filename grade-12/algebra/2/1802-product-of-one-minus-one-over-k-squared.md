---
id: "1802"
title: "Un produit qui fond à chaque étape"
grade: 12
theme: algebra
difficulty: 2
duration_min: 25
tags: [recurrence, produit, fractions, identite-remarquable]
adapted_from: null
see_also: ["0406"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction in Algebra"
  reference: "Handout-1486-1439.pdf, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1486-1439.pdf"
---

## Statement

Démontrer que, pour tout entier $n \ge 2$,

$$\left(1 - \frac{1}{4}\right)\left(1 - \frac{1}{9}\right)\left(1 - \frac{1}{16}\right) \cdots \left(1 - \frac{1}{n^2}\right) = \frac{n+1}{2n}.$$

Le produit porte sur tous les facteurs $1 - \dfrac{1}{k^2}$ pour $k$ allant de $2$ à $n$.

## Hints

1. Calcule le produit à la main pour $n = 2$, puis $n = 3$, puis $n = 4$, et compare à $\dfrac{n+1}{2n}$.
2. Une récurrence convient bien : ici, passer de $n$ à $n+1$ revient à **multiplier** par un facteur de plus, et non à ajouter un terme.
3. Le facteur ajouté est $1 - \dfrac{1}{(n+1)^2}$. Réduis-le au même dénominateur avant de l'utiliser.
4. $(n+1)^2 - 1$ se factorise avec une identité remarquable, ou simplement en développant : $n^2 + 2n = n(n+2)$.
5. Après simplification par $n$ puis par $n+1$, il doit rester $\dfrac{n+2}{2(n+1)}$.

## Solution

Notons, pour $n \ge 2$,

$$P_n = \left(1 - \frac{1}{4}\right)\left(1 - \frac{1}{9}\right) \cdots \left(1 - \frac{1}{n^2}\right),$$

et appelons $H(n)$ la propriété « $P_n = \dfrac{n+1}{2n}$ ».

**Initialisation.**

Pour $n = 2$, le produit n'a qu'un seul facteur : $P_2 = 1 - \dfrac{1}{4} = \dfrac{3}{4}$. Et la formule annonce $\dfrac{2+1}{2 \times 2} = \dfrac{3}{4}$. Donc $H(2)$ est vraie.

**Hérédité.**

Soit $n \ge 2$ tel que $H(n)$ soit vraie, c'est-à-dire $P_n = \dfrac{n+1}{2n}$.

Pour passer au rang $n+1$, on multiplie par un facteur de plus :

$$P_{n+1} = P_n \times \left(1 - \frac{1}{(n+1)^2}\right).$$

Occupons-nous d'abord de ce nouveau facteur :

$$1 - \frac{1}{(n+1)^2} = \frac{(n+1)^2 - 1}{(n+1)^2} = \frac{n^2 + 2n}{(n+1)^2} = \frac{n(n+2)}{(n+1)^2}.$$

Donc

$$P_{n+1} = \frac{n+1}{2n} \times \frac{n(n+2)}{(n+1)^2}.$$

Le facteur $n$ se simplifie, et un facteur $n+1$ aussi :

$$P_{n+1} = \frac{n+2}{2(n+1)}.$$

C'est exactement ce que la formule annonce au rang $n+1$, puisque $\dfrac{(n+1)+1}{2(n+1)} = \dfrac{n+2}{2(n+1)}$. Donc $H(n+1)$ est vraie.

**Conclusion.**

Par récurrence, pour tout entier $n \ge 2$,

$$\left(1 - \frac{1}{4}\right)\left(1 - \frac{1}{9}\right) \cdots \left(1 - \frac{1}{n^2}\right) = \frac{n+1}{2n}.$$

En particulier ce produit reste toujours compris entre $\dfrac{1}{2}$ et $\dfrac{3}{4}$ :
il se rapproche de $\dfrac{1}{2}$ quand $n$ devient grand, sans jamais l'atteindre.

**Vérification.** Pour $n = 4$ : $\dfrac{3}{4} \times \dfrac{8}{9} \times \dfrac{15}{16} = \dfrac{360}{576} = \dfrac{5}{8}$, et $\dfrac{4+1}{2 \times 4} = \dfrac{5}{8}$.

## Going further

On peut aussi se passer de la récurrence. Écris chaque facteur sous la forme

$$1 - \frac{1}{k^2} = \frac{k^2-1}{k^2} = \frac{(k-1)(k+1)}{k \times k} = \frac{k-1}{k} \times \frac{k+1}{k},$$

puis sépare le produit en deux : celui des $\dfrac{k-1}{k}$ et celui des $\dfrac{k+1}{k}$. Chacun se télescope. Que trouves-tu ?
