---
id: "7610"
title: "Une racine double en 1"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [polynome, factorisation, identification-des-coefficients, racine-double]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de mi-parcours"
  reference: "stage_ete_2013.pdf, chapitre IV « Test de mi-parcours », groupe C, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trouver tous les nombres réels $a$ et $b$ tels que le polynôme $(x - 1)^2$ divise le polynôme

$$a x^4 + b x^3 + 1 .$$

*Rappel : dire que $(x-1)^2$ divise $P(x)$, c'est dire qu'il existe un polynôme $Q(x)$ tel que $P(x) = (x-1)^2 \, Q(x)$ pour tout réel $x$.*

## Hints

1. Si $ax^4 + bx^3 + 1 = (x-1)^2 Q(x)$, quel est le degré de $Q$ ? Et quel est son coefficient dominant ?
2. Écrivez donc $Q(x) = a x^2 + u x + v$ avec deux inconnues $u$ et $v$, développez, et identifiez les coefficients des deux côtés.
3. Attention : le polynôme de gauche n'a **pas** de terme en $x^2$ ni de terme en $x$. Cela vous donne deux équations.
4. Une fois $a$ et $b$ trouvés, n'oubliez pas de vérifier que ces valeurs conviennent vraiment.

## Solution

**Mise en place.**

Le polynôme $ax^4 + bx^3 + 1$ n'est pas nul (son terme constant vaut $1$). S'il est divisible par $(x-1)^2$, qui est de degré $2$, le quotient est de degré $2$ également, et son coefficient dominant doit être $a$. Écrivons donc

$$a x^4 + b x^3 + 1 = (x-1)^2 \left(a x^2 + u x + v\right)$$

avec $u$ et $v$ deux réels à déterminer.

**Développement.**

$$(x^2 - 2x + 1)(a x^2 + u x + v) = a x^4 + u x^3 + v x^2 - 2a x^3 - 2u x^2 - 2v x + a x^2 + u x + v$$

En regroupant par degré :

$$= a x^4 + (u - 2a)\,x^3 + (v - 2u + a)\,x^2 + (u - 2v)\,x + v .$$

**Identification.**

Deux polynômes sont égaux si et seulement si leurs coefficients coïncident degré par degré. À gauche, les coefficients sont $a$, $b$, $0$, $0$ et $1$. Donc

$$a = a, \qquad u - 2a = b, \qquad v - 2u + a = 0, \qquad u - 2v = 0, \qquad v = 1 .$$

On résout de la fin vers le début :

- $v = 1$ ;
- $u - 2v = 0$ donne $u = 2$ ;
- $v - 2u + a = 0$ donne $1 - 4 + a = 0$, donc $a = 3$ ;
- $u - 2a = b$ donne $b = 2 - 6 = -4$.

**Vérification.**

Avec $a = 3$, $u = 2$, $v = 1$, on a bien

$$(x-1)^2 (3x^2 + 2x + 1) = 3x^4 + 2x^3 + x^2 - 6x^3 - 4x^2 - 2x + 3x^2 + 2x + 1 = 3x^4 - 4x^3 + 1 .$$

**Conclusion.** Le seul couple qui convient est

$$a = 3 \qquad \text{et} \qquad b = -4 .$$

## Going further

**Une seconde méthode, plus rapide, avec la dérivée.** Si $P(x) = (x-1)^2 Q(x)$, alors $P(1) = 0$, et en dérivant,

$$P'(x) = 2(x-1)\,Q(x) + (x-1)^2 Q'(x) ,$$

donc $P'(1) = 0$ aussi. Ici $P(x) = ax^4 + bx^3 + 1$ et $P'(x) = 4ax^3 + 3bx^2$, d'où le système

$$a + b + 1 = 0 \qquad \text{et} \qquad 4a + 3b = 0 ,$$

qui redonne $a = 3$ et $b = -4$ en deux lignes. La réciproque demande une petite vérification, ou bien le théorème général : *$1$ est racine double de $P$ si et seulement si $P(1) = P'(1) = 0$.*

**Une troisième méthode :** faire la division euclidienne de $ax^4 + bx^3 + 1$ par $(x-1)^2$ et écrire que le reste, qui est de degré au plus $1$, est le polynôme nul.
