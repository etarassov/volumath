---
id: "2425"
title: "Deviner un polynôme en deux questions"
grade: 12
theme: logic-reasoning
difficulty: 5
duration_min: 45
tags: [strategie, information, ecriture-en-base, polynome, entiers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Number Bases"
  reference: "Handout-418-516.pdf, exercice 9 (indication dans Handout-419-516.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-418-516.pdf"
---

## Statement

Quelqu'un a choisi un polynôme

$$P(x) = a_d x^{d} + a_{d-1}x^{d-1} + \cdots + a_1 x + a_0$$

dont vous ne savez rien, sinon que **son degré $d$ est un entier naturel quelconque** et que **tous ses coefficients $a_0, a_1, \ldots, a_d$ sont des entiers positifs ou nuls**.

Vous disposez d'une machine à qui vous pouvez donner un entier $n$ : elle répond en affichant $P(n)$. Chaque utilisation coûte très cher.

Montrer que **deux utilisations de la machine suffisent** pour retrouver le polynôme $P$ tout entier : son degré et tous ses coefficients.

## Hints

1. Vous ne connaissez même pas le degré, donc vous ne pouvez pas espérer résoudre un système : le nombre d'inconnues est inconnu.
2. Que vaut $P(1)$ ? C'est un nombre qui, à lui seul, donne un renseignement très fort sur chaque coefficient, puisque ceux-ci sont positifs.
3. Une fois $P(1)$ connu, chaque coefficient est un entier compris entre $0$ et $P(1)$. Cela vous rappelle-t-il l'écriture d'un nombre dans une base ?
4. Choisissez pour seconde question un entier $b$ strictement plus grand que tous les coefficients, et regardez ce qu'est $P(b)$.

## Solution

### Première question : $P(1)$

Demandons d'abord $P(1)$ et notons $S$ la réponse :

$$S = P(1) = a_d + a_{d-1} + \cdots + a_1 + a_0 .$$

C'est la somme de tous les coefficients.

*Cas particulier.* Si $S = 0$, alors tous les $a_i$ sont nuls, puisqu'ils sont positifs ou nuls et de somme nulle : $P$ est le polynôme nul, et une seule question a suffi.

*Cas général.* Supposons $S \ge 1$. Tous les coefficients étant positifs ou nuls, chacun est majoré par la somme :

$$0 \le a_i \le S \qquad \text{pour tout } i .$$

### Deuxième question : $P(b)$ avec $b = S+1$

Posons $b = S + 1$. Alors $b \ge 2$, et d'après ce qui précède

$$0 \le a_i \le S < b \qquad \text{pour tout } i .$$

Demandons à la machine la valeur $N = P(b)$, c'est-à-dire

$$N = a_d\,b^{d} + a_{d-1}\,b^{d-1} + \cdots + a_1\,b + a_0 .$$

Cette écriture est exactement l'**écriture de $N$ en base $b$** : c'est une somme de puissances de $b$ affectées de coefficients entiers compris entre $0$ et $b-1$. Or une telle écriture est unique.

Il suffit donc d'écrire $N$ en base $b$, par divisions euclidiennes successives par $b$ : le premier reste donne $a_0$, le suivant $a_1$, et ainsi de suite. Le nombre de chiffres obtenus donne le degré $d$.

**Conclusion.** Deux questions suffisent : $P(1)$, puis $P(P(1)+1)$.

### Un exemple

Supposons que la machine réponde $P(1) = 5$. On pose $b = 6$ et on demande $P(6)$ ; supposons qu'elle réponde $N = 115$.

Écrivons $115$ en base $6$ par divisions successives :

$$115 = 19 \times 6 + 1, \qquad 19 = 3\times 6 + 1, \qquad 3 = 0\times 6 + 3 ,$$

donc $115 = 311_{\,6}$, c'est-à-dire $115 = 3\times 36 + 1\times 6 + 1$. Le polynôme est

$$P(x) = 3x^{2} + x + 1 .$$

Vérification : $P(1) = 3+1+1 = 5$, ce qui est bien la première réponse, et $P(6) = 108+6+1 = 115$.

### Pourquoi l'hypothèse sur les coefficients est indispensable

Tout repose sur le fait que les coefficients sont des **entiers positifs ou nuls**.

* S'ils pouvaient être négatifs, $P(1)$ ne les majorerait plus : par exemple $P(x) = 100x - 99$ donne $P(1) = 1$, et rien ne permettrait de choisir une base assez grande.
* S'ils n'étaient pas entiers, l'écriture en base $b$ n'aurait plus de sens.

## Going further

1. Montrer qu'une seule question ne suffit jamais, même en choisissant $n$ très grand. *(Deux polynômes différents à coefficients entiers positifs peuvent-ils prendre la même valeur en un même entier $n$ ?)*
2. La machine répond $P(1) = 9$ puis $P(10) = 2052$. Quel est le polynôme ?
3. On sait maintenant, en plus, que le degré est au plus $3$. Combien de questions faut-il alors, si l'on autorise des coefficients entiers relatifs quelconques ?
