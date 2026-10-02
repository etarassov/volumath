---
id: "7934"
title: "Une équation qui force a = b"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [factorisation, congruences, carres-modulo-4, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, test de fin de parcours"
  reference: "stage_ete_2016.pdf, test de fin de parcours du mercredi 24 août, Groupe B, exercice 1 (énoncé p. 213, solution p. 214)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers naturels vérifiant

$$a^3 + a + 4b^2 = 4ab + b + a^2 b .$$

Montrer que $a = b$.

## Hints

1. Fais passer tout du même côté, puis regroupe les termes par paquets de deux en cherchant à faire apparaître le facteur $a - b$.
2. Trois paquets sortent naturellement : ceux en $a^3$ et $a^2b$, ceux en $a$ et $b$, ceux en $4b^2$ et $4ab$.
3. Tu obtiens un produit nul. Si le second facteur s'annule, que vaut $a^2$ ?
4. Quels sont les restes possibles d'un carré dans la division par $4$ ?

## Solution

**Étape 1 : on factorise.**

Faisons passer tout dans le membre de gauche :

$$a^3 + a + 4b^2 - 4ab - b - a^2 b = 0 .$$

Regroupons les termes trois par trois, en cherchant le facteur $a - b$ :

- $a^3 - a^2 b = a^2(a - b)$ ;
- $a - b = 1 \times (a-b)$ ;
- $4b^2 - 4ab = -4b(a - b)$.

L'équation devient donc

$$a^2(a-b) + (a-b) - 4b(a-b) = 0 , \qquad \text{c'est-à-dire} \qquad (a-b)\left(a^2 + 1 - 4b\right) = 0 .$$

**Étape 2 : le second facteur ne peut pas être nul.**

Un produit est nul si et seulement si l'un de ses facteurs l'est. Supposons donc, par l'absurde, que $a \ne b$. Alors nécessairement

$$a^2 + 1 - 4b = 0 , \qquad \text{c'est-à-dire} \qquad a^2 = 4b - 1 .$$

Regardons cette égalité modulo $4$. Le membre de droite vaut $4b - 1 \equiv -1 \equiv 3 \pmod 4$.

Que peut valoir $a^2$ modulo $4$ ?

- si $a = 2k$ est pair : $a^2 = 4k^2 \equiv 0 \pmod 4$ ;
- si $a = 2k+1$ est impair : $a^2 = 4k^2 + 4k + 1 \equiv 1 \pmod 4$.

> **Un carré est toujours congru à $0$ ou à $1$ modulo $4$**, jamais à $3$.

L'égalité $a^2 = 4b-1$ est donc impossible.

**Conclusion.** L'hypothèse $a \ne b$ mène à une contradiction. Donc $a = b$.

*Réciproquement,* tout couple $(a, a)$ convient : en remplaçant $b$ par $a$, l'équation devient $a^3 + a + 4a^2 = 4a^2 + a + a^3$, ce qui est vrai.

## Going further

Une autre façon de voir : à $a$ fixé, l'équation est du second degré en $b$. En la réécrivant
$$4b^2 - \left(a^2 + 4a + 1\right)b + \left(a^3 + a\right) = 0 ,$$
on constate que $b = a$ en est une racine. La somme des racines vaut $\dfrac{a^2+4a+1}{4}$, donc la seconde racine est $\dfrac{a^2+4a+1}{4} - a = \dfrac{a^2+1}{4}$. Pour qu'elle soit entière il faudrait que $4$ divise $a^2+1$, ce qui ramène exactement à la même contradiction.
