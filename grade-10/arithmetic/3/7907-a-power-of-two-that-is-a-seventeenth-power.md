---
id: "7907"
title: "Une puissance de 2 qui est une puissance dix-septième"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [puissances, divisibilite, congruences, entiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 10 et « Éliminatoires lycéens », exercice 2 (énoncé p. 22, solution p. 26)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Déterminer tous les entiers naturels $a$ tels que

$$\frac{2 \times 16^{95}}{2^{13a}}$$

soit la puissance dix-septième d'un entier, puis calculer la somme de ces entiers $a$.

## Hints

1. $16$ est lui-même une puissance de $2$. Récris le numérateur comme une seule puissance de $2$.
2. La fraction vaut donc $2^k$ pour un certain entier $k$ que tu peux écrire en fonction de $a$. Attention : pour que ce soit un entier, il faut $k \ge 0$.
3. À quelle condition $2^k$ est-il la puissance dix-septième d'un entier ? Regarde $2^{17}$, $2^{34}$, $2^{51}$…
4. Il reste à résoudre : $k$ est un multiple de $17$, avec $0 \le k$. Essaie les restes dans la division par $17$.

## Solution

**La réponse : $a = 11$ et $a = 28$, et la somme vaut $39$.**

**Étape 1 : tout écrire en puissances de $2$.**

On a $16 = 2^4$, donc $16^{95} = 2^{4 \times 95} = 2^{380}$, et le numérateur vaut

$$2 \times 16^{95} = 2^1 \times 2^{380} = 2^{381} .$$

La fraction s'écrit donc

$$\frac{2^{381}}{2^{13a}} = 2^{381 - 13a} .$$

**Étape 2 : quand $2^k$ est-il une puissance dix-septième ?**

Posons $k = 381 - 13a$.

- Si $k$ est un multiple de $17$, disons $k = 17b$ avec $b$ entier positif ou nul, alors $2^k = (2^b)^{17}$ : c'est bien la puissance dix-septième d'un entier.
- Réciproquement, si $2^k = m^{17}$ avec $m$ entier, alors $m$ n'a pas d'autre diviseur premier que $2$ (sinon $2^k$ en aurait un aussi), donc $m = 2^b$ et $k = 17b$.

Il faut de plus que le résultat soit un entier, donc $k \ge 0$.

La condition est donc : **$381 - 13a$ est un multiple de $17$ et $381 - 13a \ge 0$.**

**Étape 3 : les valeurs de $a$.**

D'abord, $381 - 13a \ge 0$ donne $a \le \dfrac{381}{13} = 29{,}3\ldots$, donc $a \le 29$.

Ensuite il faut $13a \equiv 381 \pmod{17}$. Comme $381 = 17 \times 22 + 7$, on a $381 \equiv 7 \pmod{17}$. Et comme $13 \equiv -4 \pmod{17}$, la condition devient

$$-4a \equiv 7 \pmod{17}, \qquad \text{c'est-à-dire} \qquad 4a \equiv -7 \equiv 10 \pmod{17} .$$

En multipliant par $13$ (car $4 \times 13 = 52 = 3 \times 17 + 1 \equiv 1$), on obtient

$$a \equiv 13 \times 10 = 130 \equiv 130 - 119 = 11 \pmod{17} .$$

Les entiers naturels $a \le 29$ congrus à $11$ modulo $17$ sont $a = 11$ et $a = 28$.

**Étape 4 : vérification.**

- Pour $a = 11$ : $381 - 143 = 238 = 17 \times 14$. La fraction vaut $2^{238} = (2^{14})^{17}$. ✓
- Pour $a = 28$ : $381 - 364 = 17$. La fraction vaut $2^{17}$. ✓

**Conclusion.** Les deux valeurs sont $11$ et $28$, et leur somme vaut $11 + 28 = \boxed{39}$.
