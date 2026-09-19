---
id: "4619"
title: "Trois dés qui totalisent 10"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, des, enumeration, ordre]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners 2, Sticks and Stones Part II"
  reference: "Handout-2392-2096.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2392-2096.pdf"
---

## Statement

On lance trois dés à six faces : un rouge, un bleu et un vert. On gagne quand la somme des trois
résultats vaut exactement $10$.

Par exemple, rouge $1$, bleu $3$, vert $6$ est un tirage gagnant. Rouge $4$, bleu $4$, vert $5$
n'en est pas un.

Combien y a-t-il de tirages gagnants ? Deux tirages sont différents dès que l'un des trois dés ne
donne pas le même résultat.

## Hints

1. Les dés ont des couleurs différentes : rouge $1$, bleu $3$, vert $6$ et rouge $3$, bleu $1$,
   vert $6$ sont deux tirages différents. Cela change le compte.
2. Commence par chercher les groupes de trois nombres, sans tenir compte de l'ordre, dont la
   somme vaut $10$. Pour ne rien oublier, range-les par valeur croissante.
3. Tu devrais trouver six groupes. Vérifie qu'il n'en manque aucun en balayant la plus petite
   valeur : $1$, puis $2$, puis $3$…
4. Chaque groupe donne ensuite plusieurs tirages colorés. Combien, selon qu'il contient trois
   nombres différents ou seulement deux nombres différents ?

## Solution

**Étape 1 : la liste des groupes, sans tenir compte de l'ordre.**

Cherchons tous les triplets $a \leqslant b \leqslant c$ de nombres compris entre $1$ et $6$ tels
que $a + b + c = 10$. Balayons selon la plus petite valeur $a$.

- $a = 1$ : il reste $b + c = 9$ avec $1 \leqslant b \leqslant c \leqslant 6$. Donc $b \geqslant 3$
  (sinon $c > 6$) et $b \leqslant 4$ (sinon $b > c$). D'où $(1,3,6)$ et $(1,4,5)$.
- $a = 2$ : il reste $b + c = 8$ avec $2 \leqslant b \leqslant c \leqslant 6$. Donc
  $2 \leqslant b \leqslant 4$. D'où $(2,2,6)$, $(2,3,5)$ et $(2,4,4)$.
- $a = 3$ : il reste $b + c = 7$ avec $3 \leqslant b \leqslant c \leqslant 6$. Donc $b = 3$.
  D'où $(3,3,4)$.
- $a = 4$ : il reste $b + c = 6$ avec $4 \leqslant b \leqslant c$, donc $b + c \geqslant 8$.
  Impossible. Et c'est encore pire pour $a \geqslant 5$.

Il y a donc exactement six groupes :
$$(1,3,6), \quad (1,4,5), \quad (2,2,6), \quad (2,3,5), \quad (2,4,4), \quad (3,3,4).$$

**Étape 2 : de chaque groupe aux tirages colorés.**

Les trois dés sont de couleurs différentes : il faut compter les façons de répartir les valeurs
d'un groupe entre le rouge, le bleu et le vert.

- Si le groupe contient **trois valeurs différentes**, il y a $3$ choix pour la valeur du dé
  rouge, puis $2$ pour le bleu, puis $1$ pour le vert, soit $3 \times 2 \times 1 = 6$ tirages.
- Si le groupe contient une valeur **répétée deux fois**, il suffit de choisir quel dé porte la
  valeur isolée : $3$ tirages.

Appliquons :

| Groupe | Type | Nombre de tirages |
|---|---|---|
| $(1,3,6)$ | trois valeurs différentes | $6$ |
| $(1,4,5)$ | trois valeurs différentes | $6$ |
| $(2,2,6)$ | une valeur répétée | $3$ |
| $(2,3,5)$ | trois valeurs différentes | $6$ |
| $(2,4,4)$ | une valeur répétée | $3$ |
| $(3,3,4)$ | une valeur répétée | $3$ |

**Étape 3 : le total.**

$$6 + 6 + 3 + 6 + 3 + 3 = 27 .$$

**Conclusion.** Il y a **$27$** tirages gagnants.

Comme il y a $6 \times 6 \times 6 = 216$ tirages possibles en tout, la probabilité de gagner vaut
$\dfrac{27}{216} = \dfrac{1}{8}$.

## Going further

Le piège de cet exercice est d'oublier les couleurs et de répondre $6$, ou bien de traiter tous
les groupes de la même façon et de répondre $6 \times 6 = 36$. Les groupes qui contiennent une
valeur répétée donnent moitié moins de tirages que les autres.

Remarque aussi que $10$ et $11$ jouent un rôle symétrique : en remplaçant chaque résultat $x$ par
$7 - x$, un tirage de somme $10$ devient un tirage de somme $21 - 10 = 11$, et réciproquement. Il
y a donc exactement $27$ tirages de somme $11$ également, et ce sont les deux sommes les plus
probables avec trois dés.
