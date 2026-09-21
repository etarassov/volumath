---
id: "8505"
title: "Trois équations qui tournent en rond"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [systeme, factorisation, identite-remarquable, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, Coupe Animath de printemps 2022"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre II, exercice 6 (sujet collégiens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trouver tous les triplets de nombres réels $(a, b, c)$ qui vérifient en même temps les trois
égalités

$$a^2 + b = c^2, \qquad b^2 + c = a^2, \qquad c^2 + a = b^2 .$$

## Hints

1. Les trois équations se ressemblent beaucoup. Que se passe-t-il si tu les additionnes toutes les trois ?
2. Tu devrais obtenir $a + b + c = 0$. Garde cette égalité de côté, elle va servir tout le temps.
3. Reprends une des équations, par exemple $c^2 + a = b^2$, et isole $a$ : il apparaît une différence de deux carrés, donc un produit.
4. Tu arrives à une équation de la forme $a \times (\text{quelque chose}) = 0$. Un produit est nul quand l'un de ses facteurs l'est : deux cas à traiter.
5. N'oublie pas de vérifier à la fin que les triplets trouvés sont bien solutions : le raisonnement ne va que dans un sens.

## Solution

### Une première conséquence : $a + b + c = 0$

Additionnons les trois équations membre à membre :

$$(a^2 + b) + (b^2 + c) + (c^2 + a) = c^2 + a^2 + b^2 .$$

À gauche comme à droite on trouve $a^2 + b^2 + c^2$ ; en simplifiant il reste

$$a + b + c = 0 . \qquad (\star)$$

### Une factorisation

Reprenons la troisième équation, $c^2 + a = b^2$, et isolons $a$ :

$$a = b^2 - c^2 = (b - c)(b + c) .$$

D'après $(\star)$, $b + c = -a$. Donc

$$a = -a(b - c), \qquad \text{c'est-à-dire} \qquad a\,(b - c + 1) = 0 .$$

Un produit de deux nombres est nul seulement si l'un des deux l'est, donc

$$a = 0 \qquad \text{ou} \qquad b = c - 1 .$$

Les trois équations jouent exactement le même rôle à une permutation près : en partant de la
première on obtient de même $b = 0$ ou $c = a - 1$, et en partant de la deuxième, $c = 0$ ou
$a = b - 1$.

### Premier cas : aucun des trois n'est nul

Alors les trois deuxièmes possibilités sont forcées :

$$b = c - 1, \qquad c = a - 1, \qquad a = b - 1 .$$

En enchaînant : $a = b - 1 = (c - 1) - 1 = c - 2 = (a - 1) - 2 = a - 3$. On obtiendrait
$0 = -3$, ce qui est faux. Ce cas est impossible.

### Deuxième cas : l'un des trois est nul

Supposons $a = 0$ (les deux autres se traitent de la même façon, en échangeant les rôles).

La troisième équation $c^2 + a = b^2$ devient $c^2 = b^2$, donc $b = c$ ou $b = -c$.

- **Si $b = c$**, alors $(\star)$ donne $0 = a + b + c = 2b$, donc $b = c = 0$. On trouve le
  triplet $(0, 0, 0)$.
- **Si $b = -c$**, alors la première équation $a^2 + b = c^2$ devient $-c = c^2$, donc
  $c(c+1) = 0$, donc $c = 0$ ou $c = -1$.
  - $c = 0$ ramène à $b = 0$ et redonne $(0,0,0)$ ;
  - $c = -1$ donne $b = 1$, d'où le triplet $(0, 1, -1)$.

En recommençant avec $b = 0$, puis avec $c = 0$, on obtient de la même manière les triplets
$(-1, 0, 1)$ et $(1, -1, 0)$.

### Vérification

Il reste à vérifier que ces quatre triplets conviennent vraiment.

- $(0,0,0)$ : les trois équations deviennent $0 = 0$. C'est bon.
- $(0, 1, -1)$ : $a^2 + b = 0 + 1 = 1$ et $c^2 = 1$ ; $b^2 + c = 1 - 1 = 0$ et $a^2 = 0$ ;
  $c^2 + a = 1 + 0 = 1$ et $b^2 = 1$. C'est bon.
- $(-1, 0, 1)$ et $(1, -1, 0)$ : mêmes calculs, décalés d'un cran. C'est bon.

### Conclusion

Les solutions sont exactement

$$(0,0,0), \qquad (0, 1, -1), \qquad (-1, 0, 1), \qquad (1, -1, 0) .$$
