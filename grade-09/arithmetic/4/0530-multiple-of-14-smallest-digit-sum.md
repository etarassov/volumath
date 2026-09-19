---
id: "0530"
title: "Un multiple de 14 à toute petite somme de chiffres"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, chiffres, multiples, puissances]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 6, задача 3 (le manuel donne sa solution sous le numéro 2)"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

On regarde tous les multiples de $14$ strictement positifs, et pour chacun on calcule la somme de ses chiffres.

Quelle est la plus petite somme de chiffres qu'on puisse obtenir, et quel est le plus petit multiple de $14$ qui la réalise ?

## Hints

1. On a $14 = 2 \times 7$. Qu'est-ce que cela impose à un multiple de $14$ ?
2. Commence par la plus petite somme imaginable, $1$. À quoi ressemble un nombre dont la somme des chiffres vaut $1$ ? Un tel nombre peut-il être un multiple de $7$ ?
3. Passe à la somme $2$. Il n'y a que deux formes possibles : un chiffre $2$ suivi de zéros, ou bien deux chiffres $1$ avec des zéros autour. Traite les deux séparément.
4. Pour la seconde forme, regarde les nombres $11$, $101$, $1001$, $10001$, ... L'un d'eux est un multiple de $7$ très connu.

## Solution

**Ce que « multiple de 14 » veut dire.**

On a $14 = 2 \times 7$, et $2$ et $7$ n'ont pas d'autre diviseur commun que $1$. Un nombre est donc multiple de $14$ exactement quand il est **pair** et **multiple de 7**. C'est la condition sur $7$ qui va tout décider.

**La somme des chiffres ne peut pas valoir 1.**

Un entier strictement positif dont la somme des chiffres vaut $1$ s'écrit avec un seul chiffre $1$ et, éventuellement, des zéros derrière. Ce sont exactement les nombres

$$1, \quad 10, \quad 100, \quad 1000, \quad \dots \quad \text{c'est-à-dire } 10^k.$$

Or $10^k = 2^k \times 5^k$ : les seuls nombres premiers qui divisent $10^k$ sont $2$ et $5$. Donc $7$ ne divise aucune puissance de $10$, et aucun de ces nombres n'est multiple de $14$.

**Essayons la somme 2.**

Si la somme des chiffres vaut $2$, il n'y a que deux possibilités :

- un chiffre $2$ et des zéros : le nombre s'écrit $2 \times 10^k$ ;
- deux chiffres $1$ et des zéros : le nombre s'écrit $10^a + 10^b$ avec $a > b \geqslant 0$.

*Première forme.* $2 \times 10^k = 2^{k+1} \times 5^k$. De nouveau, seuls $2$ et $5$ apparaissent : $7$ ne divise pas ce nombre.

*Seconde forme.* Mettons $10^b$ en facteur :

$$10^a + 10^b = 10^b \times \left(10^{\,a-b} + 1\right).$$

Comme $7$ ne divise pas $10^b$, il faut que $7$ divise $10^{\,a-b} + 1$. Posons $n = a - b$ et essayons les premières valeurs :

- $n = 1$ : $10 + 1 = 11$, et $11 = 7 + 4$, ce n'est pas un multiple de $7$ ;
- $n = 2$ : $100 + 1 = 101$, et $101 = 7 \times 14 + 3$, non plus ;
- $n = 3$ : $1000 + 1 = 1001 = 7 \times 143$. **Ça marche.**

Il reste à rendre le nombre pair, c'est-à-dire à le faire finir par un $0$ : il faut donc $b \geqslant 1$. Le plus petit choix est $b = 1$ et $a = 4$, ce qui donne

$$10^4 + 10^1 = 10\,000 + 10 = 10\,010.$$

Vérifions : $10\,010 = 14 \times 715$. En effet $14 \times 700 = 9800$ et $14 \times 15 = 210$, et $9800 + 210 = 10\,010$.

**Conclusion.** La plus petite somme de chiffres possible est $\mathbf{2}$, et le plus petit multiple de $14$ qui l'atteint est $\mathbf{10\,010}$.

**À retenir.** La factorisation

$$1001 = 7 \times 11 \times 13$$

est très utile et mérite d'être connue par cœur. C'est elle qui est derrière les critères de divisibilité par $7$ et par $13$.

## Going further

1. Même question en remplaçant $14$ par $21$. Commence par te demander ce que la divisibilité par $3$ impose à la somme des chiffres.
2. Pour quelles valeurs de $n$ le nombre $10^n + 1$ est-il un multiple de $7$ ? Calcule les restes de $10^n$ dans la division par $7$ pour $n = 1, 2, \dots, 9$ et cherche la régularité.
