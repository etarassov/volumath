---
id: "7620"
title: "35 divise 3⁶ⁿ − 2⁶ⁿ"
grade: 10
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, puissances, factorisation, identite-an-moins-bn]
adapted_from: null
see_also: []
same_as: ["7510"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 7 (solution chapitre XI, résolue par Baptiste Collet)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Démontrer que, pour tout entier $n \geqslant 1$, le nombre

$$3^{6n} - 2^{6n}$$

est divisible par $35$.

## Hints

1. Ne voyez pas $3^{6n}$ comme « $3$ à la puissance $6n$ », mais comme « quelque chose à la puissance $n$ ». Que vaut ce quelque chose ?
2. Rappel : pour tous nombres $A$ et $B$ et tout entier $n \geqslant 1$, $$A^n - B^n = (A - B)\left(A^{n-1} + A^{n-2}B + \cdots + AB^{n-2} + B^{n-1}\right).$$
3. Calculez $3^6$ et $2^6$, puis leur différence.

## Solution

**L'idée : regrouper les exposants.**

Pour tout entier $n \geqslant 1$,

$$3^{6n} = \left(3^6\right)^n = 729^n \qquad \text{et} \qquad 2^{6n} = \left(2^6\right)^n = 64^n .$$

Il s'agit donc de montrer que $729^n - 64^n$ est divisible par $35$.

**La factorisation.**

On utilise l'identité, valable pour tous nombres $A$ et $B$ et tout entier $n \geqslant 1$ :

$$A^n - B^n = (A - B)\left(A^{n-1} + A^{n-2}B + \cdots + AB^{n-2} + B^{n-1}\right) .$$

Avec $A = 729$ et $B = 64$ :

$$729^n - 64^n = (729 - 64) \times \left(729^{n-1} + 729^{n-2}\times 64 + \cdots + 64^{n-1}\right) .$$

Le second facteur est un entier : c'est une somme de produits d'entiers. Donc $729^n - 64^n$ est un multiple de $729 - 64$.

**La conclusion.**

$$729 - 64 = 665 = 35 \times 19 .$$

Ainsi $3^{6n} - 2^{6n}$ est un multiple de $665$, donc en particulier un multiple de $35$.

**Vérification** pour $n = 1$ : $3^6 - 2^6 = 729 - 64 = 665 = 35 \times 19$. ✔

## Going further

On a démontré au passage un résultat plus fort : $3^{6n} - 2^{6n}$ est divisible par $665$, et pas seulement par $35$.

L'identité utilisée mérite d'être en mémoire sous sa forme courte : **$A - B$ divise toujours $A^n - B^n$.** Elle permet de traiter d'un coup une famille entière d'exercices. Par exemple :

- $11^n - 4^n$ est divisible par $7$ ;
- $2^{4n} - 1 = 16^n - 1^n$ est divisible par $15$ ;
- $10^n - 1$ est divisible par $9$, ce qui est exactement le critère de divisibilité par $9$.

Une variante à essayer : montrer que $A + B$ divise $A^n + B^n$ lorsque $n$ est **impair**, puis en déduire que $3^{6n+3} + 2^{6n+3}$ est divisible par $35$.
