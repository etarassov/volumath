---
id: "7857"
title: "600 fois le chiffre 6, puis des zéros"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [carres parfaits, valuation, decomposition en facteurs premiers, ecriture decimale]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, quatrième période, groupe A « arithmétique », lundi 24 après-midi (Vincent Bouis), exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soit $A$ le nombre formé de $600$ fois le chiffre $6$, suivi d'un certain nombre de zéros :
$$A = \underbrace{66\cdots6}_{600 \text{ chiffres}}\underbrace{00\cdots0}_{n \text{ zéros}} ,$$
où $n$ est un entier naturel quelconque.

Le nombre $A$ peut-il être un carré parfait ?

## Hints

1. Commence par isoler les zéros : écris $A = B \times 10^n$ où $B$ est le nombre formé des
   $600$ chiffres $6$.
2. Un carré parfait se reconnaît à sa décomposition en facteurs premiers : **tous les exposants
   sont pairs**. C'est ce critère qu'il faut utiliser.
3. Sépare d'abord un $6$ de $B$ : combien vaut $B$ divisé par $6$, et ce quotient est-il pair ?
4. Combien de fois le facteur $2$ apparaît-il dans $B$ ? Et dans $10^n$ ? Additionne, et regarde
   la parité du total.

## Solution

**Étape 1 : on sépare les zéros.**

Notons $B$ le nombre formé de $600$ chiffres $6$. Alors
$$A = B \times 10^n .$$

**Étape 2 : on décompose $B$.**

Le nombre $B$ vaut six fois le **répunit** de $600$ chiffres :
$$B = 6 \times \underbrace{11\cdots1}_{600 \text{ chiffres}} .$$

Notons $R$ ce répunit. Le nombre $R$ se termine par le chiffre $1$, donc il est **impair**.

Comme $6 = 2 \times 3$, on obtient
$$B = 2 \times 3 \times R ,$$
où $3 \times R$ est impair (produit de deux nombres impairs).

**Le facteur $2$ apparaît donc exactement une fois dans $B$.**

**Étape 3 : on compte les facteurs $2$ de $A$.**

Le nombre $10^n = 2^n \times 5^n$ apporte exactement $n$ facteurs $2$. Donc, dans la
décomposition de $A$ en facteurs premiers, l'exposant de $2$ vaut
$$1 + n .$$

**Étape 4 : on compte les facteurs $5$ de $A$.**

Le nombre $B = 2 \times 3 \times R$ n'est pas divisible par $5$ : en effet $R$ se termine par
$1$, donc $B$ se termine par $6$. Le facteur $10^n$ apporte exactement $n$ facteurs $5$.

Donc l'exposant de $5$ dans $A$ vaut exactement $n$.

**Étape 5 : on conclut.**

Un entier est un carré parfait si et seulement si, dans sa décomposition en facteurs premiers,
**tous** les exposants sont pairs.

Ici il faudrait que $n$ (exposant de $5$) et $n + 1$ (exposant de $2$) soient tous les deux
pairs. Or ce sont deux entiers consécutifs : l'un est pair, l'autre est impair. C'est
impossible.

**Conclusion.** Non, le nombre $A$ n'est $\boxed{\text{jamais}}$ un carré parfait, quel que soit
le nombre de zéros ajoutés.

*Remarque.* L'argument n'utilise absolument pas le nombre $600$ : il marche pour n'importe quel
nombre de chiffres $6$. Ce qui compte, c'est que $\underbrace{6\cdots6}_{k}$ contienne un seul
facteur $2$ et aucun facteur $5$.
