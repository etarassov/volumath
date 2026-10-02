---
id: "5121"
title: "La fonction d'Ackermann"
grade: 12
theme: logic-reasoning
difficulty: 4
duration_min: 50
tags: [recurrence, suites, fonction-recursive, puissances, croissance]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Big Numbers », Tom Davis"
  reference: "bignumbers.pdf, section 6"
  url: "https://mathcircles.org/activity/big-numbers/"
  original_language: "en"
  local_copy: "sources/originals/namc/bignumbers.pdf"
---

## Statement

On définit une fonction $A$ de deux variables entières naturelles par les trois règles suivantes :

$$A(0, n) = n + 1 \quad \text{pour tout } n \geqslant 0$$
$$A(m, 0) = A(m-1,\, 1) \quad \text{pour tout } m \geqslant 1$$
$$A(m, n) = A(m-1,\, A(m,\, n-1)) \quad \text{pour tous } m \geqslant 1 \text{ et } n \geqslant 1$$

À première vue ces règles tournent en rond. En fait non : le calcul de $A(m,n)$ ne fait appel qu'à des valeurs $A(m', n')$ où, ou bien $m' < m$, ou bien $m' = m$ et $n' < n$. Le calcul s'arrête donc toujours.

1. Calculer $A(1,0)$, $A(1,1)$, $A(1,2)$, $A(1,3)$. Conjecturer une formule pour $A(1,n)$ et la démontrer.
2. Faire de même pour $A(2,n)$.
3. Faire de même pour $A(3,n)$.
4. En déduire $A(4,0)$ et $A(4,1)$.

## Hints

1. Applique les règles à la lettre, sans chercher à deviner : $A(1,0) = A(0,1)$, et $A(0,1)$ se calcule avec la première règle.
2. Pour $A(1,n)$ avec $n \geqslant 1$, la troisième règle donne $A(1,n) = A(0,\, A(1,n-1))$. Or la première règle dit ce que fait $A(0, \cdot)$ : elle ajoute $1$. Que devient alors la relation ?
3. Tu obtiens une relation de récurrence sur la suite $n \mapsto A(1,n)$. De quel type de suite s'agit-il ?
4. Pour la ligne $m = 2$, refais exactement le même travail en remplaçant « $A(0, \cdot)$ ajoute $1$ » par « $A(1, \cdot)$ ajoute $2$ ».
5. Pour la ligne $m = 3$, tu obtiendras une suite de la forme $u_{n} = 2u_{n-1} + 3$. Pose $v_{n} = u_{n} + 3$.

## Solution

### Question 1 : la ligne $m = 1$

*Le premier terme.* Par la deuxième règle puis la première :

$$A(1,0) = A(0,1) = 2$$

*La récurrence.* Pour $n \geqslant 1$, la troisième règle donne

$$A(1,n) = A(0,\, A(1,n-1))$$

et la première règle dit que $A(0,x) = x+1$. Donc

$$A(1,n) = A(1,n-1) + 1$$

*On reconnaît.* La suite $n \mapsto A(1,n)$ est arithmétique de raison $1$ et de premier terme $A(1,0) = 2$. Donc

$$\boxed{A(1,n) = n + 2}$$

Vérification : $A(1,1) = 3$, $A(1,2) = 4$, $A(1,3) = 5$.

### Question 2 : la ligne $m = 2$

*Le premier terme.* $A(2,0) = A(1,1) = 1 + 2 = 3$.

*La récurrence.* Pour $n \geqslant 1$ :

$$A(2,n) = A(1,\, A(2,n-1)) = A(2,n-1) + 2$$

en utilisant la formule de la question 1.

*On reconnaît.* Suite arithmétique de raison $2$, de premier terme $3$ :

$$\boxed{A(2,n) = 2n + 3}$$

Vérification : $A(2,0) = 3$, $A(2,1) = 5$, $A(2,2) = 7$, $A(2,3) = 9$.

### Question 3 : la ligne $m = 3$

*Le premier terme.* $A(3,0) = A(2,1) = 2 \times 1 + 3 = 5$.

*La récurrence.* Pour $n \geqslant 1$ :

$$A(3,n) = A(2,\, A(3,n-1)) = 2\,A(3,n-1) + 3$$

*On résout.* Posons $u_{n} = A(3,n)$ et $v_{n} = u_{n} + 3$. Alors

$$v_{n} = u_{n} + 3 = 2u_{n-1} + 3 + 3 = 2\,(u_{n-1} + 3) = 2\,v_{n-1}$$

La suite $(v_n)$ est géométrique de raison $2$, de premier terme $v_{0} = u_{0} + 3 = 5 + 3 = 8 = 2^{3}$. Donc $v_{n} = 2^{n+3}$, et

$$\boxed{A(3,n) = 2^{\,n+3} - 3}$$

Vérification : $A(3,0) = 8 - 3 = 5$, $A(3,1) = 16 - 3 = 13$, $A(3,2) = 32 - 3 = 29$, $A(3,3) = 64 - 3 = 61$, $A(3,4) = 128 - 3 = 125$.

### Question 4 : la ligne $m = 4$ commence

$$A(4,0) = A(3,1) = 2^{4} - 3 = 13$$

$$A(4,1) = A(3,\, A(4,0)) = A(3,13) = 2^{16} - 3 = 65\,536 - 3 = 65\,533$$

**Le tableau des premières valeurs.**

| $A(m,n)$ | $n = 0$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|---|
| $m = 0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
| $m = 1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
| $m = 2$ | $3$ | $5$ | $7$ | $9$ | $11$ | $13$ |
| $m = 3$ | $5$ | $13$ | $29$ | $61$ | $125$ | $253$ |
| $m = 4$ | $13$ | $65\,533$ | $2^{65\,536} - 3$ | | | |

## Going further

Regardons ce que fait chaque ligne : la ligne $0$ ajoute $1$, la ligne $1$ ajoute $2$, la ligne $2$ multiplie par $2$ (à des constantes près), la ligne $3$ élève $2$ à une puissance. La ligne $4$ fait donc des **tours de puissances de $2$** :

$$A(4,2) = A(3,\, 65\,533) = 2^{65\,536} - 3$$

Ce nombre a déjà près de $20\,000$ chiffres. Et

$$A(4,3) = 2^{2^{65\,536}} - 3$$

Chaque fois que $n$ augmente de $1$, la hauteur de la tour augmente de $1$. À la ligne $5$, c'est la hauteur elle-même qui se met à croître comme la ligne $4$, et ainsi de suite.

Wilhelm Ackermann a construit cette fonction en 1928 pour répondre à une question de logique : il voulait un exemple de fonction que l'on peut calculer mécaniquement, mais qui croît plus vite que toutes les fonctions d'une certaine classe simple, appelée classe des fonctions récursives primitives. La fonction $A$ est le premier exemple connu.
