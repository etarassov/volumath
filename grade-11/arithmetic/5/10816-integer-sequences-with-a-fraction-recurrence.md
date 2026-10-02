---
id: "10816"
title: "Combien de suites d'entiers pour cette récurrence ?"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [suites, suite-recurrente, diviseurs, periodicite, produit, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 4 (arithmétique)"
  reference: "2017-10_ofm-2013-2014-envoi-4.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2013-2014-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-4.pdf"
---

## Statement

Trouver le nombre de suites $(u_n)_{n \geqslant 1}$ d'entiers relatifs telles que $u_n \neq -1$ pour tout entier $n \geqslant 1$, et telles que

$$u_{n+2} = \frac{2014 + u_n}{1 + u_{n+1}} \qquad \text{pour tout entier } n \geqslant 1 .$$

## Hints

1. Cherche d'abord des suites simples : des suites constantes, puis des suites qui alternent deux valeurs, $a, b, a, b, \ldots$
2. Pose $P_n = 2014 - u_n\,u_{n+1}$. Montre que $u_{n+2} - u_n = P_{n+1}$, puis que $(u_{n+2} - u_n)(1 + u_{n+1}) = P_n$.
3. Déduis-en que $P_1 = P_{n+1}\,(1 + u_2)(1 + u_3) \cdots (1 + u_{n+1})$. Si $P_1 \neq 0$, combien de ces facteurs peuvent être différents de $1$ et de $-1$ ?
4. Si, à partir d'un certain rang, tous les termes valent $0$ ou $-2$, que devient la relation de récurrence ?

## Solution

**Réponse : il y a $14$ suites.**

La relation de l'énoncé s'écrit, pour tout $n \geqslant 1$,
$$(R_n) \qquad u_{n+2}\,(1 + u_{n+1}) = 2014 + u_n .$$
Une suite qui convient est entièrement déterminée par ses deux premiers termes $u_1$ et $u_2$. Posons, pour tout $n \geqslant 1$,
$$P_n = 2014 - u_n\,u_{n+1} .$$

### Étape 1 : deux expressions de $P_n$

*Première expression.* En développant $(R_n)$ : $u_{n+2} + u_{n+1} u_{n+2} = 2014 + u_n$, donc
$$u_{n+2} - u_n = 2014 - u_{n+1}u_{n+2} = P_{n+1} .$$

*Deuxième expression.* En utilisant $(R_n)$ pour remplacer $u_{n+2}(1 + u_{n+1})$ :
$$(u_{n+2} - u_n)(1 + u_{n+1}) = (2014 + u_n) - u_n - u_n u_{n+1} = P_n .$$

En combinant les deux :
$$P_n = P_{n+1}\,(1 + u_{n+1}) \qquad \text{pour tout } n \geqslant 1 .$$
En appliquant cette relation pour $n = 1, 2, \ldots$, on obtient de proche en proche
$$P_1 = P_{n+1}\,(1 + u_2)(1 + u_3) \cdots (1 + u_{n+1}) \qquad \text{pour tout } n \geqslant 1 .$$

### Étape 2 : $P_1 = 0$

Supposons par l'absurde que $P_1 \neq 0$. D'après la dernière formule, aucun $P_{n+1}$ n'est nul, donc $|P_{n+1}| \geqslant 1$. Chaque facteur $1 + u_i$ est un entier non nul (car $u_i \neq -1$), donc $|1 + u_i| \geqslant 1$.

Notons $N$ le nombre d'indices $i$ entre $2$ et $n + 1$ tels que $|1 + u_i| \geqslant 2$. Alors
$$|P_1| \geqslant 2^N .$$
Comme $|P_1|$ est un nombre fixé, $N$ ne peut pas dépasser une certaine valeur, quel que soit $n$. Il n'y a donc qu'un nombre fini d'indices $i$ avec $|1 + u_i| \geqslant 2$. **À partir d'un certain rang, on a $|1 + u_i| = 1$, c'est-à-dire $u_i = 0$ ou $u_i = -2$.**

Prenons alors $n$ assez grand pour que $u_n$, $u_{n+1}$ et $u_{n+2}$ valent tous $0$ ou $-2$, et regardons $(R_n)$ :

- à gauche, $u_{n+2} \in \{0, -2\}$ et $1 + u_{n+1} \in \{1, -1\}$, donc $u_{n+2}(1 + u_{n+1})$ vaut $0$, $2$ ou $-2$ ;
- à droite, $2014 + u_n$ vaut $2014$ ou $2012$.

C'est impossible. **Donc $P_1 = 0$.**

### Étape 3 : la suite est de période $2$

Comme $P_1 = 0$ et $P_1 = P_2(1 + u_2)$ avec $1 + u_2 \neq 0$, on a $P_2 = 0$. De même $P_3 = 0$, et ainsi de suite : **$P_n = 0$ pour tout $n$.**

D'après la première expression, $u_{n+2} - u_n = P_{n+1} = 0$ pour tout $n$. La suite est donc
$$a,\ b,\ a,\ b,\ a,\ b,\ \ldots \qquad \text{avec } a = u_1,\ b = u_2,$$
et $P_1 = 0$ donne $ab = 2014$.

### Étape 4 : la réciproque

Soient $a$ et $b$ deux entiers tels que $ab = 2014$, $a \neq -1$ et $b \neq -1$. La suite $a, b, a, b, \ldots$ ne prend jamais la valeur $-1$, et elle vérifie la relation de l'énoncé :

- pour $n$ impair, $u_{n+2}(1 + u_{n+1}) = a(1 + b) = a + ab = a + 2014 = 2014 + u_n$ ;
- pour $n$ pair, de même, $b(1 + a) = b + 2014 = 2014 + u_n$.

### Étape 5 : on compte

Il reste à compter les couples d'entiers relatifs $(a, b)$ tels que $ab = 2014$, avec $a \neq -1$ et $b \neq -1$. Choisir un tel couple revient à choisir $a$, diviseur positif ou négatif de $2014$, puis $b = 2014 / a$.

Comme $2014 = 2 \times 19 \times 53$, le nombre $2014$ a $2 \times 2 \times 2 = 8$ diviseurs positifs, donc $16$ diviseurs positifs ou négatifs. On enlève les deux couples interdits, $(-1, -2014)$ et $(-2014, -1)$. Il reste $16 - 2 = 14$ couples, qui donnent $14$ suites différentes.

**Il y a exactement $14$ suites qui conviennent.**

## Going further

1. Pourquoi aucune des $14$ suites n'est-elle constante ?
2. Même question en remplaçant $2014$ par $2016$. *Vérifie d'abord que le raisonnement de l'étape 2 marche encore.*
