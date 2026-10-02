---
id: "8612"
title: "La somme de la moitié égale le produit de l'autre moitié"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation, echange-de-deux-termes, parite, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023"
  reference: "valbonne-2023.pdf, Coupe Animath de printemps 2023, exercices lycéens, exercice 14"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n$ un entier strictement positif. Aline veut écrire $2n$ nombres réels au tableau de sorte que :

- les $2n$ nombres écrits ne sont pas tous égaux ;
- quels que soient les $n$ nombres qu'on entoure parmi eux, la somme des $n$ nombres entourés est égale au produit des $n$ nombres qui ne le sont pas.

Pour quelles valeurs de $n$ Aline peut-elle réussir ?

## Hints

1. Fais le cas $n = 1$ à la main : il n'y a que deux nombres et un seul choix d'entourage intéressant.
2. Cherche un exemple pour $n = 2$. Tu dois trouver quatre nombres ; essaie d'en prendre trois égaux.
3. L'hypothèse porte sur **tous** les choix possibles. La façon la plus rentable de l'exploiter est de comparer deux choix qui ne diffèrent que d'un seul nombre.
4. Prends $x_u \neq x_v$, et deux entourages identiques sauf que l'un prend $x_u$ et l'autre $x_v$. Soustrais les deux égalités obtenues.
5. Tu devrais tomber sur : tout produit de $n-1$ des nombres restants vaut $-1$. Deux tels produits qui ne diffèrent que d'un facteur te disent que ces deux facteurs sont égaux.
6. Un réel $A$ tel que $A^{n-1} = -1$, cela donne à la fois la valeur de $A$ **et** une condition sur $n$.

## Solution

Notons $x_1, x_2, \ldots, x_{2n}$ les nombres écrits. La condition dit que pour toute partie $X$ de $n$ indices,

$$\sum_{i \in X} x_i \;=\; \prod_{i \notin X} x_i .$$

**La réponse : Aline réussit exactement quand $n$ est pair**, et dans ce cas les nombres sont forcément $n, -1, -1, \ldots, -1$ (un $n$ et $2n-1$ fois $-1$).

### Le cas $n = 1$

Il y a deux nombres, et on en entoure un. En entourant $x_1$, la condition donne $x_1 = x_2$ : les deux nombres sont égaux, ce que l'énoncé interdit. Donc $n = 1$ est impossible. On suppose désormais $n \geqslant 2$.

### L'outil : échanger un seul nombre

**Affirmation.** Soient $u \neq v$ deux indices tels que $x_u \neq x_v$. Alors tout produit de $n-1$ nombres choisis parmi les $2n-2$ nombres d'indices différents de $u$ et de $v$ vaut $-1$.

*Démonstration.* Soit $Y$ un tel ensemble de $n-1$ indices. Posons

$$\overline{X} = Y \cup \{v\} \quad (n \text{ indices}), \qquad X = \text{le complémentaire de } \overline{X} \quad (n \text{ indices, contenant } u).$$

Fabriquons un second entourage $X'$ en remplaçant $u$ par $v$ dans $X$ : son complémentaire $\overline{X'}$ est $Y \cup \{u\}$. Notons $Q = \prod_{i \in Y} x_i$. Les deux conditions s'écrivent

$$S(X) = x_v \cdot Q \qquad \text{et} \qquad S(X') = x_u \cdot Q ,$$

où $S$ désigne la somme. Or $X$ et $X'$ ne diffèrent que par un élément, donc $S(X) - S(X') = x_u - x_v$. En soustrayant,

$$x_u - x_v = x_v Q - x_u Q = -Q\,(x_u - x_v) .$$

Comme $x_u \neq x_v$, on peut diviser par $x_u - x_v$ et il vient $Q = -1$. $\square$

### Tous les nombres sauf un valent $-1$

Les $2n$ nombres ne sont pas tous égaux : quitte à les renuméroter, supposons $x_1 \neq x_2$.

L'affirmation, appliquée à $u = 1$ et $v = 2$, dit que **tout** produit de $n-1$ nombres pris parmi $x_3, x_4, \ldots, x_{2n}$ vaut $-1$. En particulier aucun de ces nombres n'est nul.

Prenons alors deux tels produits qui ne diffèrent que par un facteur : l'un contenant $x_3$ et pas $x_4$, l'autre contenant $x_4$ et pas $x_3$, les $n-2$ autres facteurs étant les mêmes. C'est possible car il y a $2n-2 \geqslant n$ nombres disponibles. Les deux produits valent $-1$, donc ils sont égaux, et en simplifiant par le facteur commun (non nul) on obtient $x_3 = x_4$.

Le même argument fonctionne pour n'importe quelle paire d'indices dans $\{3, \ldots, 2n\}$ : tous ces nombres sont égaux. Notons $A$ leur valeur commune. Un produit de $n-1$ d'entre eux vaut $A^{n-1}$, donc

$$A^{n-1} = -1 .$$

Un réel dont une puissance vaut $-1$ est négatif, et $|A|^{n-1} = 1$ force $|A| = 1$ : donc $A = -1$. Et $(-1)^{n-1} = -1$ impose que $n - 1$ soit impair, c'est-à-dire que **$n$ soit pair**.

### Il ne reste qu'un nombre à déterminer

On a $x_3 = x_4 = \cdots = x_{2n} = -1$, et $x_1 \neq x_2$ : l'un au moins de ces deux nombres est différent de $-1$. Quitte à les échanger, disons $x_1 \neq -1$.

Alors $x_1 \neq x_3$, et l'affirmation appliquée à la paire $(1, 3)$ dit que tout produit de $n-1$ nombres pris parmi $x_2, x_4, x_5, \ldots, x_{2n}$ vaut $-1$. Prenons-en un qui contienne $x_2$ et $n-2$ des $(-1)$ :

$$x_2 \times (-1)^{n-2} = -1 .$$

Comme $n$ est pair, $(-1)^{n-2} = 1$, donc $x_2 = -1$.

Il ne reste plus qu'à trouver $x_1$. Entourons $n$ nombres choisis parmi $x_2, \ldots, x_{2n}$, qui valent tous $-1$ : leur somme vaut $-n$. Le complémentaire contient $x_1$ et $n-1$ nombres égaux à $-1$, donc son produit vaut $x_1 \times (-1)^{n-1} = -x_1$. La condition donne

$$-n = -x_1, \qquad \text{donc} \qquad x_1 = n .$$

### Vérification

Supposons $n$ pair, et posons $x_1 = n$, $x_2 = \cdots = x_{2n} = -1$. Ces nombres ne sont pas tous égaux car $n \geqslant 2 \neq -1$. Vérifions la condition selon que $x_1$ est entouré ou non.

- **Si $x_1$ est entouré**, la somme vaut $n + (n-1) \times (-1) = 1$, et le complémentaire est fait de $n$ nombres égaux à $-1$, de produit $(-1)^n = 1$. Égalité ✓
- **Si $x_1$ n'est pas entouré**, la somme vaut $-n$, et le complémentaire contient $x_1 = n$ et $n-1$ fois $-1$, de produit $n \times (-1)^{n-1} = -n$. Égalité ✓

**Conclusion.** Aline réussit exactement pour les valeurs **paires** de $n$, en écrivant le nombre $n$ et $2n-1$ fois le nombre $-1$.

## Going further

Pour $n = 2$ les quatre nombres sont $2, -1, -1, -1$. Vérifie à la main les deux cas : $2 + (-1) = 1$ et $(-1)\times(-1) = 1$ ; puis $(-1) + (-1) = -2$ et $2 \times (-1) = -2$.

La technique qui fait tout le travail mérite d'être retenue : quand une hypothèse porte sur **tous** les choix d'un certain type, comparer deux choix qui ne diffèrent que d'un seul élément transforme une information massive mais informe en une équation exploitable.
