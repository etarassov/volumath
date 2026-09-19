---
id: "3206"
title: "Une équation qui cache un produit"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [equation, entiers, factorisation, diviseurs, carres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Algebra review"
  reference: "Handout-4789-4966.pdf, section 2.2, exercice 8, d'après AIME 1987, problème 5 (réponse dans Handout-4792-4966.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4789-4966.pdf"
---

## Statement

Les entiers relatifs $x$ et $y$ vérifient

$$y^2 + 3x^2y^2 = 30x^2 + 517 .$$

Combien vaut $3x^2y^2$ ?

## Hints

1. Rassemble d'un côté tout ce qui dépend de $x$ et de $y$, et laisse le nombre $517$ tout seul de l'autre.
2. Tu obtiens $3x^2y^2 + y^2 - 30x^2 = 517$. Les deux premiers termes ont $y^2$ en commun. Que vaut $3x^2 + 1$ multiplié par $y^2$ ?
3. Après avoir écrit $y^2(3x^2+1) - 30x^2 = 517$, cherche à faire apparaître $3x^2+1$ une seconde fois. Combien vaut $10 \times (3x^2 + 1)$ ?
4. Tu arrives à $(3x^2+1)(y^2-10) = 507$. Décompose $507$ en facteurs premiers, puis passe en revue les valeurs possibles de $3x^2+1$.
5. Un nombre de la forme $3x^2+1$ ne peut jamais être un multiple de $3$. Cela élimine des candidats d'un coup.

## Solution

**Tout regrouper d'un côté.**

$$y^2 + 3x^2y^2 = 30x^2 + 517 \quad \Longleftrightarrow \quad 3x^2y^2 + y^2 - 30x^2 = 517 .$$

**Faire apparaître un produit.**

Les deux premiers termes se factorisent par $y^2$ :

$$y^2\left(3x^2 + 1\right) - 30x^2 = 517 .$$

On aimerait que le terme $-30x^2$ contienne lui aussi le facteur $3x^2+1$. Or

$$10\left(3x^2+1\right) = 30x^2 + 10, \qquad \text{donc} \qquad -30x^2 = -10\left(3x^2+1\right) + 10 .$$

En reportant :

$$y^2\left(3x^2+1\right) - 10\left(3x^2+1\right) + 10 = 517,$$

c'est-à-dire, en retranchant $10$ des deux côtés et en mettant $3x^2+1$ en facteur,

$$\left(3x^2 + 1\right)\left(y^2 - 10\right) = 507 .$$

**On décompose $507$.**

$$507 = 3 \times 169 = 3 \times 13^2 .$$

Ses diviseurs positifs sont $1,\ 3,\ 13,\ 39,\ 169,\ 507$.

Comme $x$ est entier, $3x^2 + 1 \ge 1$ est un **diviseur positif** de $507$, et alors $y^2 - 10 = \dfrac{507}{3x^2+1}$ est positif lui aussi.

**On élimine les candidats.**

- $3x^2 + 1$ laisse toujours le reste $1$ dans la division par $3$. Donc $3x^2+1$ n'est ni $3$, ni $39$, ni $507$ (qui sont des multiples de $3$).
- $3x^2 + 1 = 1$ donnerait $x = 0$, puis $y^2 - 10 = 507$, soit $y^2 = 517$. Or $22^2 = 484$ et $23^2 = 529$ : $517$ n'est pas un carré. Impossible.
- $3x^2 + 1 = 169$ donnerait $3x^2 = 168$, soit $x^2 = 56$, qui n'est pas un carré. Impossible.
- $3x^2 + 1 = 13$ donne $3x^2 = 12$, soit $x^2 = 4$ et $x = \pm 2$. Alors $y^2 - 10 = \dfrac{507}{13} = 39$, donc $y^2 = 49$ et $y = \pm 7$. **Cela marche.**

**Vérification.** Avec $x = 2$ et $y = 7$ :

$$y^2 + 3x^2y^2 = 49 + 3 \times 4 \times 49 = 49 + 588 = 637,$$
$$30x^2 + 517 = 120 + 517 = 637 .$$

Les deux membres sont égaux.

**Conclusion.** Les solutions sont $x = \pm 2$ et $y = \pm 7$, et dans tous les cas

$$3x^2y^2 = 3 \times 4 \times 49 = 588 .$$

## Going further

1. Résoudre en entiers $x^2y^2 + x^2 + y^2 = 4$ en utilisant la même idée.
2. Dans la solution, on a affirmé que $3x^2+1$ n'est jamais divisible par $3$. Le démontrer proprement.
3. Que se passerait-il si l'énoncé remplaçait $517$ par $518$ ? Montrer qu'il n'y a alors plus aucune solution entière.
