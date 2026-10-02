---
id: "2022"
title: "Un remplacement qui conserve quelque chose"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [invariant, identites-remarquables, carres, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Invariants II"
  reference: "Handout-1027-1074.pdf, exercice 9 (réponse dans Handout-1035-1074.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1027-1074.pdf"
---

## Statement

On écrit au tableau les trois nombres

$$1, \qquad 2, \qquad 4 .$$

Une opération consiste à choisir deux des trois nombres écrits, disons $a$ et $b$, à les effacer, et à écrire à la place les deux nombres

$$\text{0,6}\,a + \text{0,8}\,b \qquad \text{et} \qquad \text{0,8}\,a - \text{0,6}\,b .$$

Le troisième nombre reste inchangé. On peut répéter cette opération autant de fois qu'on veut.

Peut-on obtenir au tableau les trois nombres $2$, $3$, $3$ ?

## Hints

1. Essayez quelques opérations pour sentir ce qui se passe. Les nombres deviennent vite compliqués : ce n'est sûrement pas en calculant qu'on s'en sortira.
2. Cherchez une quantité qui ne change **jamais**, quelle que soit l'opération effectuée. On appelle cela un invariant.
3. Les coefficients $\text{0,6}$ et $\text{0,8}$ ne sont pas choisis au hasard : $\text{0,6}^2 + \text{0,8}^2 = 1$. Cela suggère de regarder des carrés.
4. Calculez $\big(\text{0,6}\,a + \text{0,8}\,b\big)^2 + \big(\text{0,8}\,a - \text{0,6}\,b\big)^2$.

## Solution

**L'invariant : la somme des carrés.**

Développons la somme des carrés des deux nouveaux nombres :

$$\big(\text{0,6}\,a + \text{0,8}\,b\big)^2 = \text{0,36}\,a^2 + \text{0,96}\,ab + \text{0,64}\,b^2 ,$$
$$\big(\text{0,8}\,a - \text{0,6}\,b\big)^2 = \text{0,64}\,a^2 - \text{0,96}\,ab + \text{0,36}\,b^2 .$$

En additionnant, les doubles produits se détruisent :

$$\big(\text{0,6}\,a + \text{0,8}\,b\big)^2 + \big(\text{0,8}\,a - \text{0,6}\,b\big)^2 = (\text{0,36} + \text{0,64})\,a^2 + (\text{0,64} + \text{0,36})\,b^2 = a^2 + b^2 .$$

Les deux nombres effacés avaient pour somme de carrés $a^2 + b^2$ ; les deux nouveaux ont exactement la même. Le troisième nombre n'a pas bougé. Donc :

> **La somme des carrés des trois nombres écrits au tableau ne change jamais.**

**Le calcul décisif.**

Au départ, cette somme vaut

$$1^2 + 2^2 + 4^2 = 1 + 4 + 16 = 21 .$$

Pour les nombres $2$, $3$, $3$, elle vaudrait

$$2^2 + 3^2 + 3^2 = 4 + 9 + 9 = 22 .$$

Or $21 \neq 22$, et la somme des carrés ne peut pas changer.

**Conclusion.** Non, il est impossible d'obtenir les nombres $2$, $3$, $3$ au tableau, quel que soit le nombre d'opérations effectuées.

## Going further

D'où sort cet invariant ? Voyons les trois nombres comme les coordonnées d'un point de l'espace. L'opération remplace deux coordonnées $(a\,;b)$ par

$$(\text{0,6}\,a + \text{0,8}\,b \ ; \ \text{0,8}\,a - \text{0,6}\,b),$$

ce qui est exactement une **symétrie par rapport à une droite** dans le plan de ces deux coordonnées. Une symétrie conserve les distances, donc la distance à l'origine, donc la somme des carrés. Rien ne bouge en dehors de la sphère de rayon $\sqrt{21}$ : les points $(1\,;2\,;4)$ et $(2\,;3\,;3)$ ne sont pas sur la même sphère, on ne peut donc pas passer de l'un à l'autre.

Le couple $(\text{0,6}\,;\text{0,8})$ vient du triangle rectangle $3$, $4$, $5$ : $\text{0,6} = \frac35$ et $\text{0,8} = \frac45$, et $3^2 + 4^2 = 5^2$.
