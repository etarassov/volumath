---
id: "8843"
title: "Colorier les nombres de 2 à 31"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [coloriage, divisibilite, minimum, construction, puissances de deux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 15, p. 117"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On veut colorier tous les entiers de $2$ à $31$, en respectant la règle suivante :

> si $n$ divise $m$ et que $n \neq m$, alors $n$ et $m$ doivent être de couleurs différentes.

Combien faut-il de couleurs au minimum ?

## Hints

1. Comme toujours pour un minimum : une borne inférieure, puis un coloriage explicite qui l'atteint.
2. Pour la borne : trouve une suite de nombres entre $2$ et $31$ dont chacun divise le suivant. Ils doivent tous être de couleurs différentes.
3. Les puissances de $2$ sont un bon candidat. Combien y en a-t-il entre $2$ et $31$ ?
4. Pour le coloriage : deux nombres $a > b$ ne peuvent pas se diviser si $a < 2b$. Peux-tu regrouper les nombres en paquets où ce rapport est respecté ?

## Solution

### Partie 1 : il faut au moins $4$ couleurs

Considérons les quatre nombres
$$2, \quad 4, \quad 8, \quad 16 .$$
Ils sont tous entre $2$ et $31$, et chacun divise (strictement) tous les suivants : $2 \mid 4$, $2 \mid 8$, $2 \mid 16$, $4 \mid 8$, $4 \mid 16$, $8 \mid 16$.

La règle impose donc que ces quatre nombres aient quatre couleurs deux à deux différentes. Il faut au moins $4$ couleurs.

### Partie 2 : $4$ couleurs suffisent

Colorions par « paquets de doublement » :

| Couleur | Nombres |
|---|---|
| couleur 1 | $2, 3$ |
| couleur 2 | $4, 5, 6, 7$ |
| couleur 3 | $8, 9, \dots, 15$ |
| couleur 4 | $16, 17, \dots, 31$ |

Tous les entiers de $2$ à $31$ sont coloriés, et on n'a utilisé que $4$ couleurs.

**Vérifions la règle.** Prenons deux nombres $a > b$ de la même couleur. Dans chaque paquet, le plus grand élément est strictement plus petit que le double du plus petit : $3 < 4$, $7 < 8$, $15 < 16$, $31 < 32$. Donc
$$b \; \leqslant \; a \; < \; 2b, \qquad \text{c'est-à-dire} \qquad 1 \leqslant \frac{a}{b} < 2 .$$

Si $b$ divisait $a$ avec $b \neq a$, le quotient $\dfrac{a}{b}$ serait un entier au moins égal à $2$. C'est impossible ici. Donc deux nombres de même couleur ne se divisent jamais : la règle est respectée.

### Conclusion

$$\boxed{\text{Il faut } 4 \text{ couleurs au minimum.}}$$

### L'idée derrière les deux parties

Les deux parties se répondent : la borne vient d'une **chaîne de divisibilité** aussi longue que possible ($2 \mid 4 \mid 8 \mid 16$, de longueur $4$), et le coloriage vient du fait qu'une telle chaîne ne peut pas être plus longue, puisque chaque pas au moins double le nombre et qu'on part de $2$ pour rester sous $32$.

## Going further

Même question pour les entiers de $2$ à $1000$. Combien de couleurs faut-il ?
