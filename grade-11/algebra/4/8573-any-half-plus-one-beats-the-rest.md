---
id: "8573"
title: "Toute moitié plus une dépasse l'autre"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalites, principe-de-lextremum, rangement, somme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Inégalités » du Groupe B, exercice sur 2n+1 réels"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soit $n$ un entier strictement positif. On donne $2n + 1$ nombres réels tels que, **pour tout
choix** de $n + 1$ d'entre eux, la somme des $n+1$ nombres choisis soit supérieure ou égale à
la somme des $n$ autres.

Démontrer que tous ces nombres sont positifs ou nuls.

## Hints

1. L'hypothèse porte sur tous les choix possibles, mais il suffit d'en utiliser un seul, bien choisi. Lequel donnera le plus d'information ?
2. Range d'abord les nombres dans l'ordre croissant : $a_1 \leqslant a_2 \leqslant \cdots \leqslant a_{2n+1}$. Quel nombre faut-il montrer positif pour les avoir tous ?
3. Applique l'hypothèse au choix le plus défavorable : les $n+1$ **plus petits**.
4. Dans l'inégalité obtenue, mets $a_1$ d'un côté, puis regroupe les $2n$ autres nombres en $n$ paires bien choisies, chacune formée d'un des petits et d'un des grands.

## Solution

### On range

Notons $a_1 \leqslant a_2 \leqslant \cdots \leqslant a_{2n+1}$ les $2n+1$ nombres, rangés dans
l'ordre croissant. Il suffit de montrer que

$$a_1 \geqslant 0 ,$$

puisque tous les autres sont supérieurs ou égaux à $a_1$.

### Le choix le plus défavorable

Appliquons l'hypothèse au choix des $n+1$ **plus petits** nombres, c'est-à-dire
$a_1, a_2, \ldots, a_{n+1}$. Les $n$ autres sont $a_{n+2}, \ldots, a_{2n+1}$. L'hypothèse
donne

$$a_1 + a_2 + \cdots + a_{n+1} \;\geqslant\; a_{n+2} + a_{n+3} + \cdots + a_{2n+1} .$$

### On regroupe par paires

Isolons $a_1$ et faisons passer tout le reste à droite :

$$a_1 \;\geqslant\; \left(a_{n+2} + a_{n+3} + \cdots + a_{2n+1}\right)
- \left(a_2 + a_3 + \cdots + a_{n+1}\right) .$$

À gauche de la soustraction il y a $n$ nombres, à droite aussi. Apparions-les ainsi : pour
$k$ allant de $1$ à $n$, la paire

$$\left(a_{n+1+k} \; , \; a_{n+2-k}\right) .$$

Pour $k = 1$ on obtient $(a_{n+2}, a_{n+1})$, pour $k = 2$ on obtient $(a_{n+3}, a_n)$, et
ainsi de suite jusqu'à $k = n$ qui donne $(a_{2n+1}, a_2)$. Chaque nombre apparaît dans
exactement une paire. L'inégalité s'écrit donc

$$a_1 \;\geqslant\; \sum_{k=1}^{n} \left(a_{n+1+k} - a_{n+2-k}\right) .$$

### Chaque paire est positive

Pour $k \geqslant 1$, on a $2k \geqslant 2$, donc $1 \leqslant 2k - 1$, donc

$$n + 2 - k \;\leqslant\; n + 1 + k .$$

Les nombres étant rangés dans l'ordre croissant, cela donne
$a_{n+2-k} \leqslant a_{n+1+k}$, c'est-à-dire

$$a_{n+1+k} - a_{n+2-k} \;\geqslant\; 0 .$$

Chaque terme de la somme est donc positif ou nul, et la somme aussi.

### Conclusion

On obtient $a_1 \geqslant 0$. Comme $a_1$ est le plus petit des $2n+1$ nombres, tous sont
positifs ou nuls.
