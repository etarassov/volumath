---
id: "8167"
title: "Le polynôme des chiffres d'un nombre premier"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [polynome, racine-entiere, nombres-premiers, chiffres, majoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 95 (trois étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $p$ un nombre premier, écrit en base $10$ :

$$p = \overline{a_k a_{k-1} \ldots a_1 a_0} ,$$

c'est-à-dire $p = a_k 10^k + a_{k-1}10^{k-1} + \cdots + a_1 \times 10 + a_0$, où les $a_i$ sont les chiffres de $p$, avec $a_k \neq 0$.

On lui associe le polynôme dont les coefficients sont ces chiffres :

$$Q_p(x) = a_k x^k + a_{k-1}x^{k-1} + \cdots + a_1 x + a_0 .$$

Montrer que $Q_p$ n'a **aucune racine entière**, sauf pour quatre valeurs de $p$, que l'on déterminera.

## Hints

1. Tous les coefficients de $Q_p$ sont positifs ou nuls, et le premier est non nul. Que vaut $Q_p(x)$ pour $x > 0$ ?
2. La racine entière $r$ est donc négative ou nulle. Le cas $r = 0$ se règle en une ligne : que dirait-il du dernier chiffre de $p$ ?
3. Écris $r = -s$ avec $s \geqslant 1$. Comme $r$ est racine, $x + s$ divise $Q_p(x)$ dans les polynômes à coefficients entiers. Évalue cette factorisation en $x = 10$ : que vaut $Q_p(10)$ ?
4. Le nombre $p$ est premier et $10 + s \geqslant 11$. Il n'y a qu'une possibilité : laquelle ?
5. Il reste à borner $s$. Dans $a_k s^k = \left|a_{k-1}(-s)^{k-1} + \cdots + a_0\right|$, majore le membre de droite en utilisant $a_i \leqslant 9$ et la somme d'une suite géométrique.

## Solution

**Étape 1 : la racine est strictement négative.**

Tous les chiffres $a_i$ sont positifs ou nuls, et $a_k \geqslant 1$. Donc, pour tout $x > 0$,

$$Q_p(x) \geqslant a_k x^k > 0 .$$

Une racine entière $r$ vérifie donc $r \leqslant 0$.

Si $r = 0$, alors $Q_p(0) = a_0 = 0$, c'est-à-dire que $p$ se termine par le chiffre $0$ : $p$ serait un multiple de $10$, donc non premier. Impossible.

Donc $r < 0$ ; posons $r = -s$ avec $s$ entier, $s \geqslant 1$.

**Étape 2 : $s = p - 10$.**

Comme $-s$ est racine de $Q_p$ et que $Q_p$ est à coefficients entiers, la division euclidienne par le polynôme unitaire $x + s$ donne

$$Q_p(x) = (x+s)\,R(x) ,$$

où $R$ est un polynôme à coefficients entiers (le reste est une constante, nulle puisque $Q_p(-s) = 0$).

Évaluons en $x = 10$. Par définition, $Q_p(10) = p$, donc

$$p = (10+s)\,R(10) .$$

Comme $s \geqslant 1$, on a $10 + s \geqslant 11$, donc ce facteur n'est ni $1$ ni $-1$. Or $p$ est premier et $10+s > 0$ : la seule possibilité est

$$10 + s = p \qquad \text{et} \qquad R(10) = 1 .$$

En particulier $p = 10 + s > 10$ : le nombre premier $p$ a au moins deux chiffres.

**Étape 3 : $s \leqslant 10$.**

Écrivons $Q_p(-s) = 0$ sous la forme

$$a_k (-s)^k = -\left(a_{k-1}(-s)^{k-1} + \cdots + a_1(-s) + a_0\right) ,$$

puis passons aux valeurs absolues :

$$a_k s^k = \left|a_{k-1}(-s)^{k-1} + \cdots + a_0\right| \ \leqslant\ a_{k-1}s^{k-1} + \cdots + a_1 s + a_0 \ \leqslant\ 9\left(s^{k-1} + \cdots + s + 1\right) .$$

Comme $a_k \geqslant 1$, on a donc

$$s^k \ \leqslant\ 9\left(s^{k-1} + \cdots + s + 1\right) .$$

Supposons $s \geqslant 2$. La somme géométrique vaut $\dfrac{s^k - 1}{s-1} < \dfrac{s^k}{s-1}$, donc

$$s^k < \frac{9\,s^k}{s-1}, \qquad \text{d'où} \qquad s - 1 < 9, \qquad \text{donc} \qquad s \leqslant 9 .$$

Et si $s = 1$, on a bien sûr $s \leqslant 10$. Dans tous les cas $s \leqslant 10$, donc

$$p = 10 + s \leqslant 20 .$$

**Étape 4 : les quatre nombres premiers.**

Les nombres premiers strictement compris entre $10$ et $20$ sont $11$, $13$, $17$ et $19$. Vérifions-les un par un ; chacun a deux chiffres, donc $Q_p(x) = a_1 x + a_0$ avec $a_1 = 1$ :

| $p$ | $Q_p(x)$ | racine | $s = p - 10$ |
|---|---|---|---|
| $11$ | $x + 1$ | $-1$ | $1$ |
| $13$ | $x + 3$ | $-3$ | $3$ |
| $17$ | $x + 7$ | $-7$ | $7$ |
| $19$ | $x + 9$ | $-9$ | $9$ |

Dans les quatre cas la racine est bien entière, et l'on retrouve bien $s = p - 10$.

$$\boxed{\ Q_p \text{ a une racine entière exactement pour } p \in \{11,\ 13,\ 17,\ 19\}.\ }$$

## Going further

L'étape 2 est la plus jolie : c'est le fait que $Q_p(10) = p$ qui relie le polynôme au nombre premier et bloque toute factorisation autre que la triviale. C'est aussi ce qui explique un résultat célèbre dans le même esprit, le critère de Cohn : si $Q_p(10)$ est premier, alors le polynôme $Q_p$ lui-même est irréductible sur les entiers.

Une version plus facile de l'exercice consiste à demander seulement : montrer qu'aucun nombre premier de trois chiffres ou plus ne convient.
