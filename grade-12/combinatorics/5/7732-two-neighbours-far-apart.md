---
id: "7732"
title: "Deux cases voisines très éloignées en valeur"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [principe-de-l-extremum, chemins, inegalite-triangulaire, quadrillage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mercredi 20 matin (Joon Kwon), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On écrit les $n^2$ entiers $1, 2, \ldots, n^2$ dans les cases d'un tableau $n \times n$, un entier par case et sans répétition.

Deux cases sont dites **voisines** si elles ont au moins un point en commun : une case a donc jusqu'à huit voisines, y compris en diagonale.

Montrer qu'il existe forcément deux cases voisines dont les valeurs diffèrent d'au moins $n+1$.

## Hints

1. Repère la case qui contient $1$ et celle qui contient $n^2$. Que vaut leur écart de valeurs ?
2. Un roi d'échecs se déplace exactement d'une case à une case voisine, au sens de l'énoncé. Combien de coups lui faut-il, au maximum, pour aller d'une case à une autre dans un tableau $n \times n$ ?
3. Raisonne par l'absurde : suppose que deux cases voisines ne diffèrent jamais de plus de $n$.
4. Écris l'écart total $n^2 - 1$ comme une somme d'écarts d'une case à la suivante le long du chemin, et majore chaque terme.
5. Combien de termes y a-t-il dans cette somme ? Compare le résultat à $n^2 - 1$.

## Solution

**L'idée : aller de la case qui contient $1$ à celle qui contient $n^2$ en peu de pas, et voir que les écarts ne peuvent pas tous être petits.**

**Un chemin court existe.** Notons $c$ la case contenant $1$ et $c'$ la case contenant $n^2$. Supposons que $c$ soit à la ligne $i$ et à la colonne $j$, et $c'$ à la ligne $i'$ et à la colonne $j'$.

On peut aller de $c$ à $c'$ en se déplaçant à chaque pas vers une case voisine, exactement comme un roi aux échecs : à chaque pas, on corrige d'une unité la ligne (si elle n'est pas encore bonne) et d'une unité la colonne (si elle n'est pas encore bonne), les deux en même temps quand c'est possible. Le nombre de pas nécessaires est donc

$$\max(|i - i'|,\; |j - j'|) .$$

Comme les lignes et les colonnes vont de $1$ à $n$, cet écart est au plus $n-1$. Le chemin comporte donc **au plus $n-1$ pas**, c'est-à-dire qu'il passe par au plus $n$ cases, extrémités comprises.

Notons $a_1, a_2, \ldots, a_k$ les valeurs des cases successives de ce chemin, avec

$$a_1 = 1, \qquad a_k = n^2, \qquad k \leqslant n .$$

Deux cases consécutives du chemin sont voisines, par construction.

**On raisonne par l'absurde.** Supposons que deux cases voisines quelconques du tableau diffèrent toujours de **au plus $n$**, c'est-à-dire

$$|a_{m+1} - a_m| \leqslant n \qquad \text{pour tout } m .$$

Écrivons l'écart total en télescopant :

$$n^2 - 1 = a_k - a_1 = (a_k - a_{k-1}) + (a_{k-1} - a_{k-2}) + \cdots + (a_2 - a_1) .$$

Majorons chaque terme par sa valeur absolue :

$$n^2 - 1 \;\leqslant\; |a_k - a_{k-1}| + \cdots + |a_2 - a_1| \;\leqslant\; \underbrace{n + n + \cdots + n}_{k-1 \text{ termes}} \;=\; (k-1)\,n .$$

Comme $k \leqslant n$, on a $k - 1 \leqslant n-1$, donc

$$n^2 - 1 \;\leqslant\; (n-1) \, n \;=\; n^2 - n .$$

**La contradiction.** En simplifiant par $n^2$ des deux côtés, cette inégalité s'écrit

$$-1 \leqslant -n, \qquad \text{c'est-à-dire} \qquad n \leqslant 1 .$$

Or $n \geqslant 2$. C'est absurde.

**Conclusion : la supposition est fausse. Il existe donc deux cases voisines dont les valeurs diffèrent d'au moins $n+1$.**

## Going further

Pourquoi les voisinages en diagonale comptent-ils ? Parce que c'est ce qui rend le chemin court : avec des déplacements seulement horizontaux et verticaux, il faudrait jusqu'à $2(n-1)$ pas, et le calcul donnerait seulement $n^2 - 1 \leqslant 2(n-1) \times d$, ce qui n'interdit rien d'intéressant.

Le résultat est optimal : on peut remplir le tableau en écrivant $1$ à $n$ sur la première ligne, $n+1$ à $2n$ sur la deuxième, et ainsi de suite. Deux cases voisines diffèrent alors d'au plus $n+1$, valeur atteinte entre une case et sa voisine en diagonale de la ligne suivante.
