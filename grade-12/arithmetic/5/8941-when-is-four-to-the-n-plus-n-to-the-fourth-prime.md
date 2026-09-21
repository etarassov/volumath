---
id: "8941"
title: "Quand 4ⁿ + n⁴ est-il premier ?"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [nombres-premiers, factorisation, identite-remarquable, parite, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », « Arithmétique : TD de révisions » (Eva), exercice 17"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ tels que

$$4^n + n^4$$

soit un nombre premier.

## Hints

1. Commencez par calculer les premières valeurs, pour $n = 0, 1, 2, 3, 4, 5$. Une seule a l'air d'être un nombre premier.
2. Traitez d'abord le cas où $n$ est pair. Regardez simplement la parité de $4^n + n^4$.
3. Il reste le cas $n$ impair. Écrivez $n = 2k+1$ et essayez de transformer $4^n$ en $4 \times (\text{quelque chose})^4$.
4. Vous cherchez maintenant à factoriser une expression de la forme $a^4 + 4b^4$. Ajoutez et retranchez le bon terme pour faire apparaître une **différence de deux carrés** : $a^4 + 4b^4 = (a^2 + 2b^2)^2 - (\text{quoi})^2$ ?
5. Une factorisation ne suffit pas à prouver qu'un nombre n'est pas premier : il faut encore vérifier que les deux facteurs sont strictement plus grands que $1$. Montrez que le plus petit des deux vaut $(n - 2^k)^2 + 2^{2k}$.

## Solution

### Étape 1 : les petites valeurs

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|---|
| $4^n + n^4$ | $1$ | $5$ | $32$ | $145$ | $512$ | $1649$ |

Le cas $n=0$ donne $1$, qui n'est pas premier. Le cas $n = 1$ donne $5$, qui est premier. Les autres valeurs sont composées : $32 = 2^5$, $145 = 5 \times 29$, $512 = 2^9$, $1649 = 17 \times 97$. Nous allons montrer que $n = 1$ est le seul cas qui marche.

### Étape 2 : $n$ pair

Si $n$ est pair et $n \geqslant 2$, alors $4^n$ est pair et $n^4$ est pair, donc $4^n + n^4$ est pair. Comme $4^n + n^4 \geqslant 4^2 = 16 > 2$, ce nombre est un nombre pair strictement plus grand que $2$ : il n'est pas premier.

Et pour $n = 0$, on obtient $1$, qui n'est pas premier non plus.

### Étape 3 : une factorisation pour $a^4 + 4b^4$

Voici l'identité clé. Pour tous nombres $a$ et $b$,

$$(a^2 + 2b^2)^2 - (2ab)^2 = a^4 + 4a^2b^2 + 4b^4 - 4a^2b^2 = a^4 + 4b^4.$$

Le membre de gauche est une différence de deux carrés, donc il se factorise :

$$a^4 + 4b^4 = \left(a^2 + 2b^2 - 2ab\right)\left(a^2 + 2b^2 + 2ab\right).$$

### Étape 4 : $n$ impair, $n \geqslant 3$

Écrivons $n = 2k + 1$ avec $k \geqslant 1$. Alors

$$4^n = 4^{2k+1} = 4 \times 4^{2k} = 4 \times 16^{k} = 4 \times \left(2^{k}\right)^4 .$$

Donc, en posant $a = n$ et $b = 2^k$,

$$4^n + n^4 = n^4 + 4\left(2^k\right)^4 = \underbrace{\left(n^2 + 2^{2k+1} - n \cdot 2^{k+1}\right)}_{= \ A} \times \underbrace{\left(n^2 + 2^{2k+1} + n \cdot 2^{k+1}\right)}_{= \ B}.$$

(On a utilisé $2b^2 = 2 \cdot 2^{2k} = 2^{2k+1}$ et $2ab = 2 \cdot n \cdot 2^{k} = n \cdot 2^{k+1}$.)

Il reste à montrer que les deux facteurs sont strictement plus grands que $1$.

**Le petit facteur.** Complétons le carré :

$$A = n^2 - n \cdot 2^{k+1} + 2^{2k+1} = \left(n^2 - 2 \cdot n \cdot 2^{k} + 2^{2k}\right) + 2^{2k+1} - 2^{2k} = \left(n - 2^{k}\right)^2 + 2^{2k}.$$

Comme $k \geqslant 1$, on a $2^{2k} \geqslant 4$, et un carré est positif ou nul, donc

$$A \geqslant 4 > 1.$$

**Le grand facteur.** $B = A + 2 \cdot n \cdot 2^{k+1} > A > 1$.

Donc $4^n + n^4 = A \times B$ est le produit de deux entiers tous les deux strictement plus grands que $1$ : ce n'est pas un nombre premier.

### Conclusion

Pour $n = 0$ et pour $n$ pair, $4^n + n^4$ n'est pas premier ; pour $n$ impair avec $n \geqslant 3$, il ne l'est pas non plus. Il ne reste que $n = 1$, qui donne $5$.

$$\boxed{n = 1 \ \text{est le seul entier naturel tel que } 4^n + n^4 \text{ soit premier.}}$$

*Vérification sur un exemple.* Pour $n = 5$, on a $k = 2$, donc $A = (5 - 4)^2 + 16 = 17$ et $B = 25 + 32 + 5 \times 8 = 97$, et en effet $17 \times 97 = 1649 = 4^5 + 5^4$.

## Going further

1. L'identité $a^4 + 4b^4 = (a^2+2b^2-2ab)(a^2+2b^2+2ab)$ porte le nom d'**identité de Sophie Germain**. Servez-vous-en pour montrer que $n^4 + 4$ n'est jamais premier dès que $n > 1$.
2. Montrez que $4^n + n^4$ est divisible par $5$ pour une infinité de valeurs de $n$. (Regardez $4^n$ et $n^4$ modulo $5$ ; les deux sont périodiques en $n$.)
