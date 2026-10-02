---
id: "0157"
title: "Des plus et des moins dans le triangle de Pascal"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [triangle-de-pascal, symetrie, somme, parite, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (7 класс, II полугодие)"
  reference: "Ast2017b.pdf, листок 18, задача 4"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Le triangle de Pascal se construit ainsi : au sommet et le long des deux côtés on écrit des $1$, chaque ligne contient un nombre de plus que la précédente, et tout autre nombre est la somme des deux nombres placés juste au-dessus de lui.

```
             1
           1   1
         1   2   1
       1   3   3   1
     1   4   6   4   1
   1   5  10  10   5   1
           . . .
```

On appelle **première ligne** celle qui est formée de deux $1$ ; le $1$ tout seul du sommet ne compte pas.

Choisissons une ligne et écrivons ses nombres les uns après les autres en glissant entre eux, en alternance, les signes $-$ et $+$ : un $-$ entre le premier et le deuxième nombre, un $+$ entre le deuxième et le troisième, un $-$ entre le troisième et le quatrième, et ainsi de suite. Pour la quatrième ligne, par exemple, on obtient le calcul

$$1 - 4 + 6 - 4 + 1$$

a) Montrer que pour la $99^\text{e}$ ligne, le résultat de ce calcul vaut $0$.

b) Montrer que c'est encore vrai pour la $100^\text{e}$ ligne.

## Hints

1. Commence par les petites lignes : $1 - 1$, puis $1 - 2 + 1$, puis $1 - 3 + 3 - 1$, puis $1 - 4 + 6 - 4 + 1$. Que trouves-tu à chaque fois ?
2. Combien de nombres y a-t-il dans la $99^\text{e}$ ligne ? Et dans la $100^\text{e}$ ? Souviens-toi que la première ligne en contient deux.
3. Pour la $99^\text{e}$ ligne, sers-toi de la symétrie du triangle : regroupe le premier nombre avec le dernier, le deuxième avec l'avant-dernier, et ainsi de suite. Quels signes portent les deux nombres d'un même groupe ?
4. Pour la $100^\text{e}$ ligne ce regroupement ne marche plus, et il faut une autre idée. Remplace chaque nombre par la somme des deux nombres de la ligne d'au-dessus, puis regarde ce que devient un nombre donné de la $99^\text{e}$ ligne dans le calcul.

## Solution

### Combien de nombres par ligne, et quels signes ?

La première ligne contient $2$ nombres, la deuxième $3$, la troisième $4$… La ligne $n$ contient donc $n+1$ nombres.

- La $99^\text{e}$ ligne contient $100$ nombres : un nombre **pair** de nombres.
- La $100^\text{e}$ ligne contient $101$ nombres : un nombre **impair** de nombres.

Les signes alternent en commençant par $+$ : le nombre de rang $1$ porte un $+$, celui de rang $2$ un $-$, celui de rang $3$ un $+$… Autrement dit, le nombre de rang $k$ porte un $+$ si $k$ est impair et un $-$ si $k$ est pair.

### a) La 99e ligne : on se sert de la symétrie

*D'abord, pourquoi le triangle est-il symétrique ?* La première ligne, $1$ et $1$, se lit pareil dans les deux sens. Et si une ligne se lit pareil dans les deux sens, la suivante aussi : chacun de ses nombres est la somme de deux nombres voisins de la ligne du dessus, et en lisant la ligne à l'envers on additionne les mêmes paires, dans l'ordre inverse. De proche en proche, **toutes** les lignes sont symétriques.

Dans la $99^\text{e}$ ligne, le nombre de rang $k$ est donc égal au nombre de rang $101 - k$ : le premier est égal au centième, le deuxième au quatre-vingt-dix-neuvième, etc.

Comme la ligne compte $100$ nombres, on peut les regrouper deux par deux, sans reste : le $1^\text{er}$ avec le $100^\text{e}$, le $2^\text{e}$ avec le $99^\text{e}$, … , le $50^\text{e}$ avec le $51^\text{e}$.

*L'idée : dans chaque paire, les deux nombres sont égaux et les deux signes sont opposés.*

Regardons la paire formée des rangs $k$ et $101-k$. La somme de ces deux rangs vaut $101$, un nombre impair. Donc l'un des deux rangs est pair et l'autre impair : l'un des deux nombres porte un $+$ et l'autre un $-$.

Chaque paire apporte donc $x - x = 0$ au calcul. Les $50$ paires apportent $0$, et le résultat total vaut $0$.

### b) La 100e ligne : il faut une autre idée

La $100^\text{e}$ ligne contient $101$ nombres, un nombre impair : le nombre du milieu n'a pas de partenaire, et le regroupement précédent ne marche plus.

*L'idée : remplacer chaque nombre par la somme de ses deux « parents » de la ligne du dessus.*

Chaque nombre de la $100^\text{e}$ ligne est la somme des deux nombres de la $99^\text{e}$ ligne placés juste au-dessus de lui, à condition d'imaginer des $0$ tout autour du triangle (c'est ce qui donne les $1$ des bords).

Prenons maintenant un nombre $x$ de la $99^\text{e}$ ligne, et demandons-nous où il intervient. Il sert exactement deux fois : pour le nombre de la $100^\text{e}$ ligne situé juste en dessous à gauche, et pour celui situé juste en dessous à droite. Or ces deux nombres sont **voisins** dans la $100^\text{e}$ ligne, donc ils portent des signes opposés.

Dans le calcul développé, $x$ apparaît donc une fois précédé d'un $+$ et une fois précédé d'un $-$ : les deux s'annulent. C'est vrai pour chaque nombre de la $99^\text{e}$ ligne, donc tout se simplifie et le résultat vaut $0$.

Vérifions la méthode sur la quatrième ligne, fabriquée à partir de la troisième ($1,\ 3,\ 3,\ 1$) :

$$1 - 4 + 6 - 4 + 1 = 1 - (1+3) + (3+3) - (3+1) + 1 = 1 - 1 - 3 + 3 + 3 - 3 - 1 + 1 = 0$$

Chaque nombre de la troisième ligne apparaît bien une fois en $+$ et une fois en $-$.

**Conclusion.** Dans les deux cas, le calcul donne $0$.

## Going further

Relis la solution de la question b) : à aucun moment on ne s'est servi du nombre $100$. Le raisonnement marche pour n'importe quelle ligne du triangle. La somme alternée d'une ligne du triangle de Pascal vaut donc toujours $0$.

Seul le $1$ tout seul du sommet fait exception : il n'est fabriqué à partir d'aucune ligne, et son « calcul alterné » se réduit à $1$.
