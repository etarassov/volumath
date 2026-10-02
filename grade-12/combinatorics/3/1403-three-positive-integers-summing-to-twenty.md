---
id: "1403"
title: "Combien de triplets de somme 20 ?"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, combinaisons, separateurs, equation-en-entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 3 « Combinatorics », problème 3 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Combien y a-t-il de triplets $(x, y, z)$ d'entiers **strictement positifs** tels que

$$x + y + z = 20 \;?$$

Deux triplets qui ne diffèrent que par l'ordre, comme $(1, 2, 17)$ et $(2, 1, 17)$, comptent pour deux.

## Hints

1. Représenter $20$ par une file de $20$ jetons alignés.
2. Pour découper cette file en trois paquets non vides, il suffit de choisir où l'on coupe.
3. Combien y a-t-il d'endroits où l'on peut couper, c'est-à-dire d'espaces entre deux jetons consécutifs ? Combien de coupes faut-il faire ?
4. Attention : deux coupes au même endroit donneraient un paquet vide, ce qui est interdit ici. Les deux coupes sont donc à des endroits distincts.

## Solution

**L'idée : couper une file de jetons.**

Alignons $20$ jetons :

$$\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet\;\bullet$$

Se donner un triplet $(x, y, z)$ d'entiers strictement positifs de somme $20$, c'est exactement se donner un découpage de cette file en trois paquets consécutifs et non vides : le premier paquet contient $x$ jetons, le deuxième $y$, le troisième $z$.

Pour découper la file en trois paquets, il faut placer **deux coupes** dans les espaces qui séparent deux jetons voisins. Il y a $19$ tels espaces (un entre le $1^{\text{er}}$ et le $2^{\text{e}}$ jeton, un entre le $2^{\text{e}}$ et le $3^{\text{e}}$, ..., un entre le $19^{\text{e}}$ et le $20^{\text{e}}$).

Comme aucun paquet ne doit être vide, les deux coupes sont dans **deux espaces différents**, et l'ordre dans lequel on les place n'a aucune importance : ce qui compte, c'est la paire d'espaces choisis.

Réciproquement, à chaque paire d'espaces correspond un et un seul triplet. Le compte cherché est donc le nombre de façons de choisir $2$ espaces parmi $19$ :

$$\binom{19}{2} = \frac{19 \times 18}{2} = 171 .$$

**Conclusion.** Il y a exactement $\boxed{171}$ triplets.

**Une vérification directe.** On peut aussi compter en fixant $x$. Si $x = k$ avec $1 \leqslant k \leqslant 18$, il reste $y + z = 20 - k$ avec $y \geqslant 1$ et $z \geqslant 1$, ce qui laisse $19 - k$ choix pour $y$ (de $1$ à $19-k$). Le total vaut

$$\sum_{k=1}^{18} (19 - k) = 18 + 17 + \cdots + 1 = \frac{18 \times 19}{2} = 171 .$$

Les deux méthodes donnent bien le même résultat.

## Going further

1. Combien y a-t-il de triplets $(x, y, z)$ d'entiers **positifs ou nuls** de somme $20$ ? (Poser $x' = x+1$, $y' = y+1$, $z' = z+1$.)
2. Combien y a-t-il de quadruplets $(x, y, z, t)$ d'entiers strictement positifs de somme $20$ ?
3. Combien y a-t-il de triplets d'entiers strictement positifs de somme $20$ **si l'on ne tient plus compte de l'ordre** ? (Ici le calcul direct est plus simple que la formule.)
