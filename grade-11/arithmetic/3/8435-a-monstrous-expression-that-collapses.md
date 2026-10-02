---
id: "8435"
title: "Une expression monstrueuse qui s'effondre"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [congruences, divisibilite, exposants, simplification]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Modulos & factorisation » (Théo Lenoir et Angela Xue), exercice 1 (la solution imprimée écrit 3y² ≡ 2 au lieu de ≡ 3, mais la somme finale est faite avec 3, et le résultat est correct)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soit $y$ un entier strictement plus grand que $1$. Montrer que $y - 1$ divise

$$y^{\,y^2 - y + 2} \;-\; 4y \;+\; y^{2021} \;+\; 3y^2 \;-\; 1.$$

## Hints

1. Ne cherche surtout pas à calculer quoi que ce soit. L'exposant $y^2 - y + 2$ dépend de $y$ : aucun développement n'est possible.
2. Tout repose sur une seule remarque, très simple : quel est le reste de $y$ dans la division par $y-1$ ?
3. Avec $y \equiv 1 \pmod{y-1}$, que vaut $y^k$ modulo $y-1$, quel que soit l'exposant $k$ ?
4. Remplace chaque morceau de l'expression par sa valeur modulo $y-1$, puis additionne.

## Solution

**Étape 1. La remarque de départ.**

L'entier $y - 1$ divise $y - 1$, autrement dit

$$y \equiv 1 \pmod{y-1}.$$

**Étape 2. Toutes les puissances de $y$ valent $1$.**

Les congruences se multiplient entre elles. Donc, pour **tout** entier $k \geqslant 0$,

$$y^k \equiv 1^k = 1 \pmod{y-1}.$$

C'est vrai quel que soit $k$, et en particulier pour $k = y^2 - y + 2$ et pour $k = 2021$, sans qu'on ait besoin de savoir combien ils valent.

**Étape 3. On remplace chaque morceau.**

$$y^{\,y^2-y+2} \equiv 1, \qquad 4y \equiv 4 \times 1 = 4, \qquad y^{2021} \equiv 1, \qquad 3y^2 \equiv 3 \times 1 = 3,$$

toutes ces congruences étant modulo $y-1$.

**Étape 4. On additionne.**

$$y^{\,y^2-y+2} - 4y + y^{2021} + 3y^2 - 1 \;\equiv\; 1 - 4 + 1 + 3 - 1 \;=\; 0 \pmod{y-1}.$$

L'expression est donc bien divisible par $y - 1$.

## Going further

C'est le genre d'exercice qui paraît effrayant et se règle en quatre lignes. L'énoncé est conçu pour cela : l'exposant $y^2 - y + 2$ est là uniquement pour décourager le calcul, et l'exposant $2021$ pour rappeler l'année.

La leçon est générale. **Modulo $y - 1$, toute puissance de $y$ vaut $1$.** Donc un polynôme en $y$ à coefficients entiers,

$$P(y) = c_k y^k + \cdots + c_1 y + c_0,$$

est divisible par $y-1$ exactement lorsque la somme de ses coefficients $c_k + \cdots + c_1 + c_0$ est nulle.

C'est d'ailleurs le même mécanisme que le critère de divisibilité par $9$ : modulo $9$, on a $10 \equiv 1$, donc un nombre vaut la somme de ses chiffres.

On peut vérifier l'exercice sur un cas : pour $y = 2$, l'expression vaut $2^4 - 8 + 2^{2021} + 12 - 1 = 2^{2021} + 19$, et $y - 1 = 1$ divise bien tout. Pour $y = 3$, il faut croire le raisonnement, le nombre a plus de neuf cents chiffres.
