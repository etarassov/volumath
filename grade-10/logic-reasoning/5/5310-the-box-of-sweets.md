---
id: "5310"
title: "La boîte de bonbons"
grade: 10
theme: logic-reasoning
difficulty: 5
duration_min: 50
tags: [jeu, strategie gagnante, puissances de deux, divisibilite, recurrence]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Games, par Tatiana Shubin (San José State University)"
  reference: "TShubinmathgames.pdf, jeu 14 (a) à (d) ; le document ne donne aucune solution"
  url: "https://mathcircles.org/activity/mathematical-games/"
  original_language: "en"
  local_copy: "sources/originals/namc/TShubinmathgames.pdf"
---

## Statement

Une boîte contient des bonbons. Alice et Bob y puisent à tour de rôle, Alice la première. À chaque tour, un joueur prend le nombre de bonbons qu'il veut, avec deux règles :

- au tout premier coup, Alice n'a pas le droit de prendre **tous** les bonbons ;
- ensuite, un joueur ne peut jamais prendre **plus** de bonbons que son adversaire vient d'en prendre.

Chacun doit prendre au moins un bonbon. Celui qui prend le **dernier** bonbon a gagné.

Lequel des deux joueurs a une stratégie gagnante si la boîte contient au départ

1. $57$ bonbons ?
2. $50$ bonbons ?
3. $1000$ bonbons ?
4. $N$ bonbons, avec $N > 1$ ?

## Hints

1. Jouer les toutes petites parties : $N = 2$, $3$, $4$, $5$, $6$. Noter qui gagne. Une surprise apparaît déjà.
2. Si Alice prend un seul bonbon, plus personne ne peut en prendre plus d'un jusqu'à la fin : la partie est alors entièrement décidée par la parité de $N$. Que fait donc Alice si $N$ est impair ?
3. Pour $N$ pair, tout dépend de ce qu'Alice prend. Essayer $N = 6$ : Alice prend $2$. Vérifier qu'elle gagne quoi que fasse Bob. Puis essayer $N = 8$ : montrer que rien ne marche.
4. Dans une position, deux nombres comptent : le nombre $n$ de bonbons restants et le nombre maximal $L$ que l'on a le droit de prendre. Comparer la plus grande puissance de $2$ qui divise $n$ avec $L$.

## Solution

**Réponse : le joueur qui commence gagne, sauf si le nombre de bonbons de départ est une puissance de $2$.**

Donc : $57$ (impair) : **Alice gagne**. $50 = 2 \times 25$ : **Alice gagne**. $1000 = 8 \times 125$ : **Alice gagne**. Et pour $N = 2, 4, 8, 16, 32, 64, \ldots$ : c'est **Bob** qui gagne.

### La quantité qui commande tout

Pour un entier $n \geqslant 1$, notons $p(n)$ **la plus grande puissance de $2$ qui divise $n$**. Autrement dit, $n = p(n) \times m$ avec $m$ impair. Par exemple
$$p(57) = 1, \qquad p(50) = 2, \qquad p(1000) = 8, \qquad p(64) = 64 .$$

Une position de jeu est décrite par deux nombres : le nombre $n$ de bonbons restants et le nombre maximal $L$ de bonbons que le joueur dont c'est le tour a le droit de prendre (c'est ce que son adversaire vient de prendre). On note cette position $(n ; L)$.

**Affirmation. Dans la position $(n ; L)$, le joueur dont c'est le tour perd si et seulement si $p(n) > L$.**

### Deux petits calculs préparatoires

**Calcul 1.** Si $p(n) = 2^a$ et que l'on retire $2^a$ bonbons, alors $p(n - 2^a) \geqslant 2^{a+1}$, dès que $n - 2^a > 0$.

En effet $n = 2^a m$ avec $m$ impair, donc
$$n - 2^a = 2^a (m - 1),$$
et $m - 1$ est pair : $n - 2^a$ est bien divisible par $2^{a+1}$.

**Calcul 2.** Si $p(k) < p(n)$, alors $p(n - k) = p(k)$.

En effet, posons $p(k) = 2^i$ et écrivons $k = 2^i u$ avec $u$ impair. Comme $2^{i+1}$ divise $n$ (puisque $p(n) > 2^i$), on peut écrire $n = 2^i v$ avec $v$ **pair**. Alors
$$n - k = 2^i (v - u),$$
et $v - u$ est impair, comme différence d'un nombre pair et d'un nombre impair. Donc la plus grande puissance de $2$ qui divise $n-k$ est bien $2^i$.

### Démonstration de l'affirmation

On raisonne par récurrence sur $n$ : on suppose l'affirmation vraie pour tous les nombres de bonbons strictement inférieurs à $n$.

**Premier cas : $p(n) \leqslant L$.** Le joueur prend exactement $k = p(n)$ bonbons, ce qui est autorisé puisque $k \leqslant L$.

- Si $n = p(n)$, il vient de prendre tous les bonbons restants : il a gagné.
- Sinon, d'après le calcul 1, il reste $n' = n - p(n)$ bonbons avec $p(n') \geqslant 2 \, p(n) > p(n) = L'$, où $L' = p(n)$ est la nouvelle limite. Par récurrence, l'adversaire est dans une position perdante.

Dans les deux cas, le joueur gagne.

**Second cas : $p(n) > L$.** Le joueur prend $k$ bonbons, avec $1 \leqslant k \leqslant L$. Alors
$$p(k) \leqslant k \leqslant L < p(n),$$
donc le calcul 2 s'applique : il reste $n' = n - k$ bonbons avec
$$p(n') = p(k) \leqslant k = L' .$$
L'adversaire se retrouve dans le premier cas, donc il gagne. Comme cela vaut pour **tous** les coups possibles, le joueur perd.

Remarquons au passage que $n - k > 0$ dans ce second cas : si l'on avait $k = n$, alors $p(k) = p(n) > L \geqslant k = n \geqslant p(n)$, ce qui est absurde. On ne peut donc jamais rafler le tas d'un coup depuis une position perdante.

### Le premier coup

Alice a le droit de prendre $k$ bonbons avec $1 \leqslant k \leqslant N-1$, et elle laisse à Bob la position $(N-k ; k)$.

**Si $N$ est une puissance de $2$**, disons $N = 2^a$ : pour tout coup $k \leqslant N-1$ on a $p(k) \leqslant k < N = p(N)$, donc, par le calcul 2, $p(N-k) = p(k) \leqslant k$. Bob se retrouve toujours dans le premier cas et gagne. **Alice est perdante quoi qu'elle fasse.**

**Si $N$ n'est pas une puissance de $2$**, écrivons $N = 2^a m$ avec $m$ impair, $m \geqslant 3$. Alice prend
$$k = 2^a = p(N),$$
ce qui est autorisé car $2^a \leqslant N/3 < N$. Il reste $N - 2^a$ bonbons, avec $p(N - 2^a) \geqslant 2^{a+1} > 2^a = $ la nouvelle limite : **Bob est perdant**, et Alice n'a plus qu'à appliquer le premier cas à chacun de ses tours.

### Les trois cas demandés

- $57 = 1 \times 57$ est impair, donc $p(57) = 1$ : **Alice prend $1$ bonbon** et gagne. (Ensuite personne ne peut plus prendre qu'un bonbon à la fois, et il en reste $56$, un nombre pair : Alice prendra bien le dernier.)
- $50 = 2 \times 25$, donc $p(50) = 2$ : **Alice prend $2$ bonbons** et gagne.
- $1000 = 8 \times 125$, donc $p(1000) = 8$ : **Alice prend $8$ bonbons** et gagne.

### Et pour comprendre pourquoi $8$ résiste

Avec $N = 8$, essayons tous les premiers coups d'Alice :

- elle prend $1$ : plus personne ne peut prendre plus d'un bonbon, il en reste $7$, donc $7$ coups encore, joués par Bob, Alice, Bob, … : le dernier est pour Bob ;
- elle prend $2$ : il reste $6$ bonbons et Bob peut en prendre $2$ ; il en prend $2$, il reste $4$ avec la limite $2$, et Alice est coincée ;
- elle prend $3$ : Bob prend $1$, il reste $4$ avec la limite $1$, donc $4$ coups encore, le dernier pour Bob ;
- elle prend $4$, $5$, $6$ ou $7$ : Bob rafle tout ce qui reste d'un seul coup.

## Going further

1. On enlève la première règle : Alice a maintenant le droit de tout prendre au premier coup. Qui gagne ?
2. On change la seconde règle : un joueur ne peut jamais prendre plus du **double** de ce que son adversaire vient de prendre. Pour quelles valeurs de $N$ le premier joueur gagne-t-il ? (Les nombres de Fibonacci ne sont pas loin.)
