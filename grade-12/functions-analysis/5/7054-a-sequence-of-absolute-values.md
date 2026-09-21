---
id: "7054"
title: "Une suite pleine de valeurs absolues"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 60
tags: [valeur absolue, suite recurrente, periodicite, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Pierre-lès-Nemours 2009"
  reference: "stage_junior_2009.pdf, « Partie entière et valeur absolue » (François Lo Jacomo), exercice 3. Le polycopié signale que le même problème a été posé au Concours général."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2009.pdf"
---

## Statement

Soit $f$ une fonction définie sur $\mathbb{Z}$, à valeurs réelles, vérifiant pour tout entier
$n$ :
$$f(n+1) = |f(n)| - f(n-1) .$$

1. On suppose $f(1) = 3$ et $f(2) = 2$. Calculer $f(12)$ et $f(0)$.
2. Montrer que pour tout entier $n$, l'une au moins des valeurs $f(n)$, $f(n+2)$ est positive
   ou nulle.
3. Montrer que pour tout entier $n$, l'une au moins des quatre valeurs $f(n)$, $f(n+1)$,
   $f(n+2)$, $f(n+3)$ est négative ou nulle.
4. En déduire qu'il existe un entier $k$ avec $0 \leq k \leq 4$, $f(k) \leq 0$ et
   $f(k+1) \geq 0$.
5. On suppose $f(0) = -a \leq 0$ et $f(1) = b \geq 0$. Calculer $f(2), f(3), \ldots, f(10)$ en
   fonction de $a$ et $b$.
6. En déduire que $f$ est périodique : pour tout entier $n$, $f(n+9) = f(n)$.

## Hints

1. Pour la question 1, avance pas à pas. Pour revenir en arrière, réécris la relation sous la
   forme $f(n-1) = |f(n)| - f(n+1)$.
2. Question 2 : réécris la relation sous la forme $f(n) + f(n+2) = |f(n+1)|$. Que dit le signe
   du membre de droite ?
3. Question 3 : par l'absurde, suppose les quatre valeurs strictement positives, et additionne
   les deux relations $f(n) + f(n+2) = |f(n+1)|$ et $f(n+1) + f(n+3) = |f(n+2)|$.
4. Question 5 : ne cherche pas à connaître le signe de $b - a$. Écris $|b-a|$ et garde-le tel
   quel : il finira par disparaître.
5. Question 6 : deux valeurs consécutives suffisent à reconstruire toute la fonction, dans les
   deux sens.

## Solution

### 1. Un exemple

Partons de $f(1) = 3$, $f(2) = 2$, et appliquons $f(n+1) = |f(n)| - f(n-1)$ :

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ | $12$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $f(n)$ | $1$ | $3$ | $2$ | $-1$ | $-1$ | $2$ | $3$ | $1$ | $-2$ | $1$ | $3$ | $2$ | $-1$ |

Par exemple $f(3) = |2| - 3 = -1$, puis $f(4) = |-1| - 2 = -1$, puis
$f(5) = |-1| - (-1) = 2$, et ainsi de suite. On lit $f(12) = -1$.

Pour $f(0)$, on remonte : la relation équivaut à $f(n-1) = |f(n)| - f(n+1)$, donc
$$f(0) = |f(1)| - f(2) = 3 - 2 = 1 .$$

On remarque déjà que $f(10) = f(1)$ et $f(11) = f(2)$, ce qui annonce la période $9$.

### 2. Parmi $f(n)$ et $f(n+2)$, l'une est positive ou nulle

La relation $f(n+1) = |f(n)| - f(n-1)$, écrite au rang $n+1$, donne
$$f(n+2) = |f(n+1)| - f(n), \qquad \text{c'est-à-dire} \qquad
f(n) + f(n+2) = |f(n+1)| \geq 0 .$$

Si $f(n)$ et $f(n+2)$ étaient toutes deux strictement négatives, leur somme le serait aussi,
ce qui contredirait cette positivité. L'une au moins est donc positive ou nulle.

### 3. Parmi quatre valeurs consécutives, l'une est négative ou nulle

Raisonnons par l'absurde et supposons $f(n)$, $f(n+1)$, $f(n+2)$, $f(n+3)$ toutes strictement
positives.

Écrivons la relation de la question 2 à deux rangs consécutifs :
$$f(n) + f(n+2) = |f(n+1)| \qquad \text{et} \qquad f(n+1) + f(n+3) = |f(n+2)| .$$

Comme $f(n+1) > 0$ et $f(n+2) > 0$, on a $|f(n+1)| = f(n+1)$ et $|f(n+2)| = f(n+2)$.
Additionnons :
$$f(n) + f(n+1) + f(n+2) + f(n+3) = f(n+1) + f(n+2) ,$$
d'où
$$f(n) + f(n+3) = 0 .$$

Mais $f(n) > 0$ et $f(n+3) > 0$, donc leur somme est strictement positive. Contradiction.

### 4. Un rang où le signe bascule

D'après la question 3 appliquée à $n = 0$, l'une des valeurs $f(0)$, $f(1)$, $f(2)$, $f(3)$
est négative ou nulle. Soit $i \in \{0,1,2,3\}$ tel que $f(i) \leq 0$.

D'après la question 2, $f(i) + f(i+2) = |f(i+1)| \geq 0$, donc
$$f(i+2) \geq -f(i) \geq 0 .$$

Deux cas :

- si $f(i+1) \geq 0$, alors $k = i$ convient : $f(k) \leq 0$ et $f(k+1) \geq 0$ ;
- si $f(i+1) < 0$, alors $k = i+1$ convient : $f(k) = f(i+1) < 0$ et
  $f(k+1) = f(i+2) \geq 0$.

Dans les deux cas $k \leq i + 1 \leq 4$.

### 5. Le calcul général

Supposons $f(0) = -a$ avec $a \geq 0$, et $f(1) = b$ avec $b \geq 0$. Déroulons :

| $n$ | calcul | $f(n)$ | signe |
|---|---|---|---|
| $2$ | $\lvert b \rvert - (-a)$ | $a + b$ | $\geq 0$ |
| $3$ | $\lvert a+b \rvert - b$ | $a$ | $\geq 0$ |
| $4$ | $\lvert a \rvert - (a+b)$ | $-b$ | $\leq 0$ |
| $5$ | $\lvert -b \rvert - a$ | $b - a$ | inconnu |
| $6$ | $\lvert b-a \rvert - (-b)$ | $\lvert b-a \rvert + b$ | $\geq 0$ |
| $7$ | $(\lvert b-a \rvert + b) - (b-a)$ | $\lvert b-a \rvert + a$ | $\geq 0$ |
| $8$ | $(\lvert b-a \rvert + a) - (\lvert b-a \rvert + b)$ | $a - b$ | inconnu |
| $9$ | $\lvert a-b \rvert - (\lvert b-a \rvert + a)$ | $-a$ | $\leq 0$ |
| $10$ | $\lvert -a \rvert - (a-b)$ | $b$ | $\geq 0$ |

Détaillons les passages délicats. Aux rangs $3$ et $4$ on utilise $|a| = a$ et $|b| = b$,
vrais car $a$ et $b$ sont positifs. Aux rangs $7$ et $8$, les quantités $|b-a| + b$ et
$|b-a| + a$ sont positives, donc chacune est sa propre valeur absolue. Au rang $9$, on utilise
$|a - b| = |b - a|$ : c'est ce qui fait disparaître le terme inconnu. Au rang $10$, on utilise
$|-a| = a$, encore vrai parce que $a \geq 0$.

**On retrouve $f(9) = -a = f(0)$ et $f(10) = b = f(1)$.**

### 6. La périodicité

La relation $f(n+1) = |f(n)| - f(n-1)$ permet de calculer chaque valeur à partir des deux
précédentes, et la relation équivalente $f(n-1) = |f(n)| - f(n+1)$ permet de la calculer à
partir des deux suivantes. Donc **deux valeurs consécutives déterminent toute la fonction**,
vers la droite comme vers la gauche.

D'après la question 4, il existe $k$ tel que $f(k) \leq 0$ et $f(k+1) \geq 0$. Posons
$a = -f(k) \geq 0$ et $b = f(k+1) \geq 0$, et appliquons la question 5 à la fonction
$n \mapsto f(k+n)$ : on obtient
$$f(k+9) = f(k) \qquad \text{et} \qquad f(k+10) = f(k+1) .$$

Les deux fonctions $n \mapsto f(n)$ et $n \mapsto f(n+9)$ vérifient la même relation de
récurrence et coïncident sur deux rangs consécutifs, $k$ et $k+1$. Elles coïncident donc
partout :
$$f(n+9) = f(n) \qquad \text{pour tout entier } n . \qquad \blacksquare$$

## Going further

La période $9$ ne dépend ni de $a$, ni de $b$ : **toutes** les solutions de cette relation ont
la même période. C'est assez rare pour être remarqué.

Le cœur de la démonstration est le passage par un rang $k$ où le signe bascule. Sans ce
recentrage, le calcul de la question 5 devrait traiter un nombre déraisonnable de cas de
signes.

Le même phénomène se produit pour la relation
$$f(n+2) = \lambda\,|f(n+1)| - f(n) ,$$
avec $\lambda = \dfrac{1 + \sqrt 5}{2}$, le nombre d'or : les solutions sont alors périodiques
de période $25$.
