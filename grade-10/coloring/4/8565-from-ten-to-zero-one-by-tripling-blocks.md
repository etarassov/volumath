---
id: "8565"
title: "De 10 à 01 en triplant des blocs"
grade: 10
theme: coloring
difficulty: 4
duration_min: 45
tags: [coloriage, invariant, modulo, suites-de-chiffres]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Invariants » (Xavier) du Groupe A, exercice 9 (l'argument du corrigé, « le nombre de 1 rouges ne varie que par un multiple de 3 », est faux : insérer 111 au début de 10 le fait varier de 1. L'invariant correct est la différence entre deux couleurs, modulo 3.)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On part de la suite de chiffres

$$1\,0 .$$

À chaque étape, on a le droit de faire l'une des deux opérations suivantes :

- **insérer**, n'importe où dans la suite, un bloc de la forme $XXX$, c'est-à-dire un même
  motif $X$ écrit trois fois de suite ($X$ est une suite quelconque de chiffres $0$ et $1$) ;
- **supprimer** un tel bloc $XXX$ déjà présent dans la suite.

Peut-on arriver à la suite

$$0\,1 \; ?$$

## Hints

1. La réponse est non. Cherche donc une quantité qui ne change pas, ou qui ne change que d'une façon contrôlée.
2. Numérote les positions $1, 2, 3, 4, \ldots$ et colorie-les en rouge, vert, bleu, rouge, vert, bleu, etc.
3. Un bloc $XXX$ a une longueur multiple de $3$ : les chiffres situés après l'endroit de l'insertion gardent donc leur couleur.
4. Note $r$, $v$ et $b$ le nombre de chiffres $1$ placés respectivement sur une position rouge, verte, bleue. Regarde comment ces trois nombres changent, en séparant selon que la longueur de $X$ est, ou n'est pas, un multiple de $3$.

## Solution

**La réponse est non.**

### Le coloriage

Numérotons les positions de la suite $1, 2, 3, \ldots$ en partant de la gauche, et colorions
la position $p$ en

- rouge si $p \equiv 1 \pmod 3$,
- vert si $p \equiv 2 \pmod 3$,
- bleu si $p \equiv 0 \pmod 3$.

Pour une suite donnée, notons $r$, $v$ et $b$ le nombre de chiffres $1$ placés respectivement
sur une position rouge, verte, bleue.

Nous allons montrer que le reste de $r - v$ dans la division par $3$ ne change jamais.

### Les chiffres déjà présents ne changent pas de couleur

Si $X$ a pour longueur $L$, le bloc $XXX$ a pour longueur $3L$, qui est un multiple de $3$.
Les chiffres situés avant l'endroit de l'insertion ne bougent pas ; ceux situés après sont
décalés de $3L$ positions, donc gardent leur couleur.

Seuls les chiffres du bloc inséré comptent donc dans la variation de $r$, $v$ et $b$.

### Ce qu'apporte le bloc inséré

Regardons un chiffre de $X$, situé à la place numéro $j$ à l'intérieur de $X$. Il apparaît
trois fois dans le bloc, aux positions absolues

$$p + j, \qquad p + j + L, \qquad p + j + 2L$$

(où $p$ dépend de l'endroit d'insertion). Deux cas se présentent.

**Cas 1 : $L$ est un multiple de $3$.** Alors $L$ et $2L$ sont des multiples de $3$, donc les
trois positions ont **la même** couleur. Chaque chiffre $1$ de $X$ ajoute donc $3$ à une
seule des trois quantités. Au total, $r$, $v$ et $b$ varient chacun d'un multiple de $3$.

**Cas 2 : $L$ n'est pas un multiple de $3$.** Alors les trois nombres $0$, $L$ et $2L$ ont
trois restes différents modulo $3$. En effet $L$ n'est pas multiple de $3$, $2L$ non plus, et
si $L$ et $2L$ avaient le même reste, leur différence $L$ serait multiple de $3$.

Les trois positions ont donc **trois couleurs différentes**. Chaque chiffre $1$ de $X$ ajoute
donc exactement $1$ à chacune des trois quantités. Si $X$ contient $s$ chiffres $1$, alors
$r$, $v$ et $b$ augmentent tous les trois de $s$.

### L'invariant

Dans le cas 1, $r$ et $v$ varient chacun d'un multiple de $3$ : leur différence $r - v$ aussi.

Dans le cas 2, $r$ et $v$ augmentent de la même quantité $s$ : la différence $r - v$ ne change
pas du tout.

Dans les deux cas, **$r - v$ garde le même reste modulo $3$**. Une suppression étant
l'opération inverse d'une insertion, elle conserve elle aussi ce reste.

### On compare le départ et l'arrivée

Pour la suite $1\,0$ : la position $1$ est rouge et porte un $1$, la position $2$ est verte
et porte un $0$. Donc $r = 1$, $v = 0$, et

$$r - v = 1 .$$

Pour la suite $0\,1$ : la position $1$ est rouge et porte un $0$, la position $2$ est verte et
porte un $1$. Donc $r = 0$, $v = 1$, et

$$r - v = -1 \equiv 2 \pmod 3 .$$

Les restes $1$ et $2$ sont différents.

### Conclusion

L'invariant interdit le passage : on ne peut pas obtenir $0\,1$ à partir de $1\,0$.
