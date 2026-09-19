---
id: "0302"
title: "Le plus grand diviseur vaut 55"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [diviseurs, nombres-premiers, denombrement]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов"
  reference: "AU.pdf, листок 8 «Просто о простых», задача 8 (с. 51)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Combien existe-t-il d'entiers naturels dont le plus grand diviseur, en dehors du nombre lui-même, est égal à $55$ ?

Les trouver tous.

## Hints

1. Commencer par un exemple : quel est le plus grand diviseur de $12$, en dehors de $12$ ? Et celui de $15$ ? Et celui de $49$ ? Comment l'obtient-on à chaque fois ?
2. Si $d$ est un diviseur de $n$, alors $n \div d$ en est un aussi. Quand $d$ est le plus **grand** diviseur possible (à part $n$), que peut-on dire de $n \div d$ ?
3. Le plus grand diviseur de $n$ autre que $n$ vaut $n$ divisé par le **plus petit facteur premier** de $n$. Si ce plus grand diviseur vaut $55$, à quoi ressemble $n$ ?

## Solution

**L'idée : le plus grand diviseur et le plus petit facteur premier vont ensemble.**

Soit $n$ un entier naturel, $n > 1$, et soit $p$ son plus petit facteur premier.

*Affirmation :* le plus grand diviseur de $n$ autre que $n$ est exactement $\dfrac{n}{p}$.

En effet, soit $d$ un diviseur de $n$ avec $d < n$. Posons $m = \dfrac{n}{d}$. Comme $d < n$, on a $m > 1$, et $m$ divise $n$. Tout entier $m > 1$ possède un facteur premier $q$ ; ce $q$ divise aussi $n$, donc $q \geqslant p$ puisque $p$ est le plus petit facteur premier de $n$. On en tire
$$m \geqslant q \geqslant p, \qquad \text{donc} \qquad d = \frac{n}{m} \leqslant \frac{n}{p}.$$
Et comme $\dfrac{n}{p}$ est bien un diviseur de $n$ différent de $n$, c'est le plus grand.

**On applique cela à notre problème.**

On cherche les $n$ tels que $\dfrac{n}{p} = 55$, c'est-à-dire
$$n = 55p = 5 \times 11 \times p,$$
où $p$ doit être le plus petit facteur premier de $n$.

Regardons les facteurs premiers de $n = 5 \times 11 \times p$ : ce sont $5$, $11$ et $p$. Pour que $p$ soit le plus petit d'entre eux, il faut $p \leqslant 5$. Les nombres premiers concernés sont donc $p = 2$, $p = 3$ et $p = 5$.

**Les trois nombres.**

- $p = 2$ : $n = 110 = 2 \times 5 \times 11$. Son plus petit facteur premier est bien $2$, et $110 \div 2 = 55$. Ce nombre convient.
- $p = 3$ : $n = 165 = 3 \times 5 \times 11$. Son plus petit facteur premier est bien $3$, et $165 \div 3 = 55$. Ce nombre convient.
- $p = 5$ : $n = 275 = 5^2 \times 11$. Son plus petit facteur premier est bien $5$, et $275 \div 5 = 55$. Ce nombre convient.

**Pourquoi il n'y en a pas d'autres.** Si l'on prenait $p = 7$, on obtiendrait $n = 385 = 5 \times 7 \times 11$, dont le plus petit facteur premier est $5$ et non $7$ : son plus grand diviseur autre que lui-même vaut $385 \div 5 = 77$, et pas $55$. Le même problème se pose pour tout premier $p > 5$.

**Conclusion.** Il y a exactement **trois** nombres qui conviennent : $110$, $165$ et $275$.

## Going further

1. Mêmes questions si le plus grand diviseur (autre que le nombre lui-même) vaut $30$ ; puis $49$ ; puis $91$.
2. Trouver un nombre $D$ tel qu'aucun entier naturel n'admette $D$ comme plus grand diviseur autre que lui-même. (Regarder ce qui se passe quand $D$ est premier et grand.)
