---
id: "7941"
title: "3^2n − 2^n est un multiple de 7"
grade: 10
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, puissances, congruences]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 1, niveau 1 (énoncé p. 279, solution p. 294, résolu par Matthias Schuller)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Montrer que pour tout entier $n \ge 1$, le nombre

$$3^{2n} - 2^{n}$$

est divisible par $7$.

## Hints

1. Vérifie sur les premières valeurs : $n = 1$, $n = 2$, $n = 3$. Les nombres obtenus sont-ils bien des multiples de $7$ ?
2. Le premier terme a un exposant deux fois plus grand que le second. Essaie de le récrire pour que les deux exposants soient les mêmes.
3. Une fois que tu as $9^n - 2^n$, deux chemins s'offrent à toi : les congruences, ou la factorisation de $a^n - b^n$.

## Solution

**Étape 1 : on égalise les exposants.**

$$3^{2n} = \left(3^2\right)^n = 9^n .$$

Il s'agit donc de montrer que $7$ divise $9^n - 2^n$.

**Première méthode : les congruences.**

On a $9 = 7 + 2$, donc

$$9 \equiv 2 \pmod 7 .$$

En élevant à la puissance $n$ (ce qui est licite : on peut multiplier des congruences entre elles) :

$$9^n \equiv 2^n \pmod 7 ,$$

c'est-à-dire que $9^n - 2^n$ est un multiple de $7$.

**Deuxième méthode : la factorisation.**

Pour tous nombres $a$ et $b$ et tout entier $n \ge 1$, on a l'identité

$$a^n - b^n = (a - b)\left(a^{n-1} + a^{n-2}b + \cdots + ab^{n-2} + b^{n-1}\right) .$$

Avec $a = 9$ et $b = 2$, le premier facteur vaut $9 - 2 = 7$. Donc

$$9^n - 2^n = 7 \times \left(9^{n-1} + 9^{n-2}\times 2 + \cdots + 2^{n-1}\right) ,$$

et le second facteur est un entier. Le produit est bien un multiple de $7$.

**Conclusion.** Pour tout entier $n \ge 1$, le nombre $3^{2n} - 2^n$ est divisible par $7$.

*Contrôle :* pour $n = 1$, $9 - 2 = 7$ ; pour $n = 2$, $81 - 4 = 77 = 7 \times 11$ ; pour $n = 3$, $729 - 8 = 721 = 7 \times 103$. ✓
