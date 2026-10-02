---
id: "7325"
title: "n! n'est jamais divisible par 2ⁿ"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [factorielle, puissances-de-deux, comptage, valuation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la première mi-temps », en TD, arithmétique, exercice 40"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Pour un entier $n \geqslant 1$, on note $n! = 1 \times 2 \times 3 \times \cdots \times n$.

Montrer que $n!$ n'est divisible par $2^{n}$ pour **aucun** entier $n > 0$.

## Hints

1. Essaie sur de petites valeurs. Pour $n = 8$ : $8! = 40\,320$. Quelle est la plus grande puissance de $2$ qui divise $8!$ ? Compare avec $2^8 = 256$.
2. Il s'agit de compter combien de fois le facteur $2$ apparaît dans le produit $1 \times 2 \times \cdots \times n$.
3. Chaque nombre pair apporte au moins un facteur $2$. Chaque multiple de $4$ en apporte un **de plus**. Chaque multiple de $8$ encore un de plus. Écris la somme obtenue.
4. Le nombre de multiples de $2^i$ entre $1$ et $n$ vaut $\left\lfloor \dfrac{n}{2^i} \right\rfloor$, qui est au plus $\dfrac{n}{2^i}$.
5. Majore la somme $\dfrac{n}{2} + \dfrac{n}{4} + \dfrac{n}{8} + \cdots$ Qu'obtiens-tu ?

## Solution

**Ce qu'il faut compter.**

Notons $v(n)$ le plus grand entier $v$ tel que $2^{v}$ divise $n!$. Il s'agit de montrer que
$$v(n) < n \qquad \text{pour tout } n \geqslant 1 .$$

**Comment compter les facteurs 2.**

Dans le produit $1 \times 2 \times 3 \times \cdots \times n$, comptons combien de fois on peut extraire le facteur $2$.

- Chaque nombre **pair** du produit apporte au moins un facteur $2$. Il y en a $\left\lfloor \dfrac{n}{2} \right\rfloor$.
- Chaque **multiple de $4$** apporte un facteur $2$ supplémentaire (il contient $2^2$). Il y en a $\left\lfloor \dfrac{n}{4} \right\rfloor$.
- Chaque **multiple de $8$** en apporte encore un de plus, et ainsi de suite.

Au total,
$$v(n) = \left\lfloor \frac{n}{2} \right\rfloor + \left\lfloor \frac{n}{4} \right\rfloor + \left\lfloor \frac{n}{8} \right\rfloor + \cdots$$

Cette somme est finie : dès que $2^{i} > n$, le terme est nul.

*Vérifions sur $n = 8$ :* $v(8) = 4 + 2 + 1 = 7$. En effet $8! = 40\,320 = 2^7 \times 315$, et $2^7 = 128$ divise $8!$ mais pas $2^8 = 256$.

**La majoration.**

Chaque partie entière est au plus égale au quotient exact :
$$\left\lfloor \frac{n}{2^{i}} \right\rfloor \leqslant \frac{n}{2^{i}} .$$

Notons $k$ le plus grand entier tel que $2^{k} \leqslant n$ ; au-delà, tous les termes sont nuls. Donc

$$v(n) \leqslant \frac{n}{2} + \frac{n}{4} + \cdots + \frac{n}{2^{k}} = n\left( \frac{1}{2} + \frac{1}{4} + \cdots + \frac{1}{2^{k}} \right) .$$

Or la somme entre parenthèses est une somme classique :
$$\frac{1}{2} + \frac{1}{4} + \cdots + \frac{1}{2^{k}} = 1 - \frac{1}{2^{k}} .$$

(On peut le voir directement : en partant de $1$, à chaque étape on ajoute la moitié de ce qui reste, sans jamais atteindre $1$.)

Donc
$$v(n) \leqslant n\left(1 - \frac{1}{2^{k}}\right) = n - \frac{n}{2^{k}} < n ,$$
puisque $\dfrac{n}{2^{k}} > 0$.

**Conclusion.**

On a $v(n) < n$, donc $2^{n}$ ne divise pas $n!$, et cela pour tout entier $n > 0$.

**Remarque.** On a même mieux : comme $2^{k} \leqslant n$, on a $\dfrac{n}{2^{k}} \geqslant 1$, donc $v(n) \leqslant n - 1$. Et cette valeur est atteinte : quand $n$ est une puissance de $2$, disons $n = 2^{k}$, on obtient
$$v(n) = 2^{k-1} + 2^{k-2} + \cdots + 2 + 1 = 2^{k} - 1 = n - 1 .$$

C'est exactement ce qu'on a vu pour $n = 8$.

## Going further

1. Montre que $2^{n-1}$ divise $n!$ si et seulement si $n$ est une puissance de $2$.
2. Par combien de zéros se termine $100!$ ? (Compte cette fois les facteurs $5$, qui sont plus rares que les facteurs $2$.)
3. Montre que $v(n) = n - s(n)$, où $s(n)$ est la somme des chiffres de $n$ écrit **en base $2$**. Vérifie sur $n = 8$, puis sur $n = 100$.
