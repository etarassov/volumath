---
id: "7538"
title: "Deux nombres qui se suivent"
grade: 11
theme: logic-reasoning
difficulty: 5
duration_min: 45
tags: [information, recurrence, raisonnement, deduction, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 58 (solution p. 248, résolue par Paul Laubie)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Alice et Bob reçoivent chacun un entier naturel, écrit sur un papier que l'autre ne voit pas. On leur annonce à tous les deux, à voix haute, que **leurs deux nombres diffèrent exactement de $1$**.

Ensuite on les interroge à tour de rôle, en commençant par Alice, toujours avec la même question :

> « Connais-tu le nombre de l'autre ? »

Chacun répond honnêtement « oui » ou « non », et tout le monde entend toutes les réponses.

Montrer que, tôt ou tard, l'un des deux répondra « oui ».

## Hints

1. Un entier naturel est positif ou nul. Que se passe-t-il si Alice a reçu le nombre $0$ ?
2. Une réponse « non » n'a l'air de rien apprendre. Pourtant elle apprend quelque chose à l'autre : quoi, exactement, après la première question ?
3. Alice a dit « non ». Bob en déduit que le nombre d'Alice n'est pas $0$. Suppose maintenant que Bob ait le nombre $1$ : peut-il conclure ?
4. Continue : Alice dit « non », puis Bob dit « non », puis Alice… Écris ce que chaque « non » apprend, et cherche la règle.
5. La règle est : si la $k$-ième réponse est « non », alors celui qui vient de répondre a un nombre au moins égal à $k$. Démontre-la par récurrence, puis conclus en remarquant qu'un nombre est fini.

## Solution

Notons $a$ le nombre d'Alice et $b$ celui de Bob. Ce sont deux entiers naturels avec $|a - b| = 1$.

Chacun connaît son propre nombre et sait que celui de l'autre vaut le sien plus $1$ ou moins $1$. Donc **chacun hésite toujours entre exactement deux valeurs**, sauf si l'une des deux est impossible.

Numérotons les questions : la question $1$ est posée à Alice, la question $2$ à Bob, la question $3$ à Alice, et ainsi de suite. Les questions de numéro impair sont pour Alice, celles de numéro pair pour Bob.

**Étape 1. Les deux premières questions, à la main.**

*Question 1, Alice.* Alice sait que $b$ vaut $a-1$ ou $a+1$. Si $a = 0$, la valeur $a - 1 = -1$ n'est pas un entier naturel : il ne reste que $b = 1$, et Alice répond « oui ». Si $a \geqslant 1$, les deux valeurs $a-1$ et $a+1$ sont des entiers naturels et rien ne permet de choisir : Alice répond « non ».

Donc :

$$\text{Alice répond « non » à la question 1} \iff a \geqslant 1 .$$

*Question 2, Bob.* Bob a entendu « non ». Il sait donc maintenant que $a \geqslant 1$. Il hésite entre $a = b-1$ et $a = b+1$. La première est exclue si $b - 1 < 1$, c'est-à-dire si $b \leqslant 1$. Donc si $b \leqslant 1$, Bob conclut $a = b+1$ et répond « oui ». Si $b \geqslant 2$, les deux valeurs $b-1$ et $b+1$ sont $\geqslant 1$ et Bob répond « non ».

Donc :

$$\text{Bob répond « non » à la question 2} \iff b \geqslant 2 .$$

**Étape 2. La règle générale.**

Appelons $x$ le nombre de celui qui répond à la question $k$ (donc $x = a$ si $k$ est impair, $x = b$ si $k$ est pair), et $y$ le nombre de l'autre.

> **Propriété $P_k$.** Si les questions $1$ à $k$ ont toutes reçu la réponse « non », alors le nombre de celui qui a répondu à la question $k$ est supérieur ou égal à $k$.

Les étapes 1 ont montré $P_1$ et $P_2$. Supposons $P_{k-2}$ et $P_{k-1}$ vraies, avec $k \geqslant 3$, et plaçons-nous à la question $k$ après $k-1$ réponses « non ».

Celui qui répond à la question $k$ a le nombre $x$ ; l'autre a le nombre $y$, et $y$ vaut $x-1$ ou $x+1$.

- D'après $P_{k-1}$, il sait que $y \geqslant k-1$.
- D'après $P_{k-2}$, tout le monde sait que $x \geqslant k-2$ (à la question $k-2$, c'est lui qui répondait « non »).

Deux cas.

*Si $x \leqslant k-1$.* Alors $x - 1 \leqslant k-2 < k-1$, donc la valeur $y = x-1$ est exclue par $y \geqslant k-1$. Il ne reste que $y = x+1$ : il répond « oui ».

*Si $x \geqslant k$.* Alors $x - 1 \geqslant k-1$ et $x+1 \geqslant k-1$ : les deux valeurs restent possibles, il ne peut pas trancher et répond « non ».

Donc « non » à la question $k$ entraîne $x \geqslant k$ : c'est $P_k$. La récurrence est établie.

**Étape 3. On conclut.**

Supposons par l'absurde que personne ne réponde jamais « oui ». Alors toutes les réponses sont « non », et la propriété $P_k$ s'applique pour **tout** $k$.

Prenons $k$ impair et très grand, par exemple $k > a$ : la propriété $P_k$ donne $a \geqslant k > a$, ce qui est absurde.

Donc quelqu'un finit par répondre « oui ».

**Combien de temps cela prend-il ?** Notons $n = \min(a, b)$ le plus petit des deux nombres, et regardons celui qui l'a reçu. Dès que son tour arrive avec un numéro de question $k$ vérifiant $k > n$, la règle de l'étape 2 (cas $x \leqslant k-1$) l'oblige à répondre « oui ». Comme son tour revient une question sur deux, cela arrive au plus tard à la question $n+2$.

**Exemple.** Si $a = 3$ et $b = 4$ : Alice « non » (question 1), Bob « non » (2), Alice « non » (3), Bob « non » (4), puis Alice sait que $b \geqslant 4$ et hésitait entre $2$ et $4$ : elle répond « oui » à la question $5$. Ici $n = 3$ et $5 = n+2$.

## Going further

Ce qui fait marcher ce raisonnement n'est pas ce que chacun sait, mais ce que **tout le monde sait que tout le monde sait**. Les logiciens appellent cela la *connaissance commune*. La phrase prononcée au départ, « vos nombres diffèrent de $1$ », ne donne aucune information nouvelle à personne s'ils la savaient déjà chacun de leur côté, et pourtant elle change tout : elle rend ce fait commun.

Le même mécanisme est à l'œuvre dans l'énigme classique des *yeux bleus* : sur une île, des habitants aux yeux bleus qui ne peuvent pas voir leur propre couleur ; un visiteur annonce à voix haute « je vois quelqu'un aux yeux bleus », ce que chacun savait déjà, et au bout d'un certain nombre de jours tous les habitants aux yeux bleus s'en vont.

Une question pour finir : que se passerait-il si les deux nombres pouvaient être des entiers **relatifs** quelconques, et non des entiers naturels ?
