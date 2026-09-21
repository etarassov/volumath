---
id: "7951"
title: "n⁴ + 4ⁿ est-il premier ?"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres premiers, factorisation, identite de sophie germain, parite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 20, niveau 1, deux étoiles (énoncé p. 281 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ tels que

$$n^4 + 4^n$$

soit un nombre premier.

## Hints

1. Calcule les premières valeurs : $n = 0, 1, 2, 3, 4$. Laquelle donne un nombre premier ?
2. Traite d'abord le cas $n$ pair : que peut-on dire de la parité de $n^4 + 4^n$ ?
3. Pour $n$ impair, il faut factoriser. Essaie de mettre $n^4 + 4^n$ sous la forme $a^4 + 4b^4$ : que vaut alors $b$ ?
4. Pour factoriser $a^4 + 4b^4$, ajoute et retranche $4a^2b^2$ afin de faire apparaître une différence de deux carrés.

## Solution

**La réponse : le seul entier qui convient est $n = 1$.**

**Étape 1 : les petites valeurs.**

$$n = 0 : \ 0 + 1 = 1 , \quad n = 1 : \ 1 + 4 = 5 , \quad n = 2 : \ 16 + 16 = 32 , \quad n = 3 : \ 81 + 64 = 145 .$$

Le nombre $1$ n'est pas premier. Le nombre $5$ l'est. Le nombre $32$ est pair. Et $145 = 5 \times 29$ n'est pas premier.

**Étape 2 : $n$ pair.**

Si $n$ est pair et $n \ge 2$, alors $n^4$ est pair et $4^n$ est pair, donc $n^4 + 4^n$ est pair. De plus il vaut au moins $16 + 16 = 32 > 2$. Un nombre pair strictement plus grand que $2$ n'est pas premier.

Le cas $n = 0$ a déjà été écarté. Aucun $n$ pair ne convient.

**Étape 3 : l'identité de Sophie Germain.**

> Pour tous nombres $a$ et $b$,
> $$a^4 + 4b^4 = \left(a^2 + 2b^2 - 2ab\right)\left(a^2 + 2b^2 + 2ab\right) .$$

Démonstration : on ajoute puis on retranche $4a^2b^2$ pour faire apparaître un carré,

$$a^4 + 4b^4 = a^4 + 4a^2b^2 + 4b^4 - 4a^2b^2 = \left(a^2 + 2b^2\right)^2 - (2ab)^2 ,$$

et on reconnaît une différence de deux carrés, qui se factorise comme annoncé.

**Étape 4 : $n$ impair, $n \ge 3$.**

Comme $n$ est impair, $n - 1$ est pair et l'on peut poser

$$b = 2^{\frac{n-1}{2}} ,$$

qui est bien un entier. Alors

$$4b^4 = 4 \times 2^{2(n-1)} = 2^2 \times 2^{2n-2} = 2^{2n} = 4^n .$$

Donc, avec $a = n$,

$$n^4 + 4^n = a^4 + 4b^4 = \left(n^2 + 2b^2 - 2nb\right)\left(n^2 + 2b^2 + 2nb\right) .$$

Il reste à voir que les deux facteurs sont strictement plus grands que $1$.

Le second est évidemment grand. Pour le premier, complétons le carré :

$$n^2 + 2b^2 - 2nb = \left(n - b\right)^2 + b^2 \ \ge \ b^2 = 2^{\,n-1} .$$

Pour $n \ge 3$, cela donne $n^2 + 2b^2 - 2nb \ge 4 > 1$.

Le nombre $n^4 + 4^n$ s'écrit donc comme un produit de deux entiers tous deux supérieurs ou égaux à $4$ : il n'est pas premier.

**Conclusion.** Le seul entier naturel $n$ pour lequel $n^4 + 4^n$ est premier est $n = \boxed{1}$, et alors $n^4 + 4^n = 5$.

*Contrôle sur $n = 3$ :* ici $b = 2$, et la factorisation donne $(9 + 8 - 12)(9 + 8 + 12) = 5 \times 29 = 145$. ✓
