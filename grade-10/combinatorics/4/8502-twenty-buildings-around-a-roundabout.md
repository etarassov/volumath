---
id: "8502"
title: "Vingt immeubles autour d'un rond-point"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [minimum, disposition-circulaire, entiers-distincts, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, Coupe Animath de printemps 2022"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre II, exercice 3 (sujet collégiens) et exercice 10 (sujet lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Vingt immeubles sont construits tout autour d'un rond-point. Chaque immeuble a un nombre
entier d'étages compris entre $1$ et $20$, et deux immeubles n'ont jamais le même nombre
d'étages.

Un immeuble est dit **intéressant** lorsqu'il a plus d'étages que l'un de ses deux voisins et
moins d'étages que l'autre.

On suppose que, dans la disposition choisie, il y a exactement six immeubles intéressants.

1. Démontrer que la somme des nombres d'étages des six immeubles intéressants vaut au
   moins $27$.
2. Donner une disposition des vingt immeubles où il y a exactement six immeubles
   intéressants et où cette somme vaut exactement $27$.

## Hints

1. Les vingt nombres d'étages sont vingt entiers distincts entre $1$ et $20$ : chaque valeur de $1$ à $20$ est donc utilisée exactement une fois.
2. Regarde l'immeuble d'un seul étage. Peut-il être intéressant ?
3. Les six nombres d'étages des immeubles intéressants sont six entiers, tous différents, et aucun ne vaut $1$. Quelle est la plus petite somme possible pour six tels entiers ?
4. Pour la question 2, il faut une disposition où les six immeubles intéressants sont exactement ceux à $2, 3, 4, 5, 6$ et $7$ étages. Essaie de ranger les grands nombres par paires « en zigzag » pour qu'ils ne soient jamais intéressants, et de laisser les petits se suivre dans l'ordre croissant.

## Solution

### 1. La somme vaut au moins 27

Il y a vingt immeubles, vingt valeurs possibles entre $1$ et $20$, et deux immeubles n'ont
jamais le même nombre d'étages. Donc chaque entier de $1$ à $20$ est le nombre d'étages
d'exactement un immeuble.

**L'immeuble d'un étage n'est pas intéressant.** C'est celui qui a le moins d'étages de tous,
donc il en a moins que chacun de ses deux voisins. Il n'est donc pas coincé entre un plus
grand et un plus petit : il n'est pas intéressant.

Les six immeubles intéressants ont donc six nombres d'étages **distincts**, tous **supérieurs
ou égaux à $2$**. Rangeons-les dans l'ordre croissant : $n_1 < n_2 < \dots < n_6$. Comme ce
sont des entiers distincts et que $n_1 \geqslant 2$, on a

$$n_1 \geqslant 2, \quad n_2 \geqslant 3, \quad n_3 \geqslant 4, \quad n_4 \geqslant 5,
\quad n_5 \geqslant 6, \quad n_6 \geqslant 7 .$$

En additionnant :

$$n_1 + n_2 + \dots + n_6 \geqslant 2 + 3 + 4 + 5 + 6 + 7 = 27 .$$

La somme vaut donc toujours au moins $27$.

### 2. Une disposition qui atteint 27

Plaçons les immeubles dans cet ordre en faisant le tour du rond-point :

$$1,\; 20,\; 18,\; 19,\; 16,\; 17,\; 14,\; 15,\; 12,\; 13,\; 10,\; 11,\; 8,\; 9,\; 7,\; 6,\;
5,\; 4,\; 3,\; 2$$

puis on revient à l'immeuble de $1$ étage.

Vérifions. Regardons d'abord la partie « en zigzag », de $20$ jusqu'à $9$ : les nombres y vont
alternativement vers le bas puis vers le haut, par exemple $20$, puis $18$, puis $19$, puis
$16$, puis $17$… Chacun de ces immeubles est soit plus grand que ses deux voisins (c'est le
cas de $20, 19, 17, 15, 13, 11, 9$), soit plus petit que ses deux voisins (c'est le cas de
$18, 16, 14, 12, 10, 8$). Aucun n'est donc intéressant.

L'immeuble de $1$ étage a pour voisins $2$ et $20$ : il est plus petit que les deux, il n'est
pas intéressant.

Restent les six immeubles $7, 6, 5, 4, 3, 2$, qui se suivent dans l'ordre décroissant. Chacun
a un voisin plus grand et un voisin plus petit :

- $7$ est entre $9$ et $6$ ;
- $6$ est entre $7$ et $5$ ;
- $5$ est entre $6$ et $4$ ;
- $4$ est entre $5$ et $3$ ;
- $3$ est entre $4$ et $2$ ;
- $2$ est entre $3$ et $1$.

Ces six-là sont donc intéressants, et ce sont les seuls. Leur somme vaut

$$2 + 3 + 4 + 5 + 6 + 7 = 27 .$$

**Conclusion.** La somme des nombres d'étages des immeubles intéressants est toujours au
moins $27$, et la valeur $27$ est bien atteinte.

## Going further

Les deux questions sont les deux moitiés obligatoires d'un problème de minimum : la
première montre qu'on ne peut pas descendre en dessous de $27$, la seconde montre que $27$
est vraiment atteint. Une seule des deux ne prouve rien. En particulier, bricoler des
exemples jusqu'à tomber sur $27$ ne démontre pas que $27$ est le minimum.
