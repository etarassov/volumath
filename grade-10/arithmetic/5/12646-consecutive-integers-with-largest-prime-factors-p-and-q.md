---
id: "12646"
title: "Deux entiers consécutifs et leurs plus grands facteurs premiers"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [nombres-premiers, plus-grand-facteur-premier, restes, division-euclidienne, principe-des-tiroirs, entiers-consecutifs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 23 et du 24 février 2022"
  reference: "2022-08_Enonce-Web-Test-3.pdf, exercice 4 (junior) ; corrigé 2022-03_Corrige-Web-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-3.pdf"
---

## Statement

Soit $p$ et $q$ deux nombres premiers distincts tels que
$$p < 2q \qquad \text{et} \qquad q < 2p.$$
Démontrer qu'il existe deux entiers consécutifs tels que le plus grand facteur premier de l'un soit $p$, et le plus grand facteur premier de l'autre soit $q$.

## Hints

1. Essaie des petits cas. Pour $p = 5$ et $q = 7$, les entiers $14 = 2 \times 7$ et $15 = 3 \times 5$ conviennent. Trouve deux entiers qui conviennent pour $p = 7$ et $q = 11$.
2. On cherche un multiple $ap$ de $p$ et un multiple $bq$ de $q$ qui se suivent. Pour que le plus grand facteur premier de $ap$ soit $p$, il suffit que $a$ soit plus petit que $p$. Que faut-il pour $b$ ?
3. On peut supposer $p < q$. Regarde les restes de la division par $q$ des nombres $p, 2p, 3p, \ldots, (q-1)p$. Montre qu'ils sont tous différents. Quels restes obtient-on ?
4. L'un de ces nombres a pour reste $1$, un autre a pour reste $q - 1$. Ajoute-les. L'un des deux multiplicateurs est plus petit que $q/2$.

## Solution

On utilise deux faits sur les nombres premiers, qui viennent de l'unicité de la décomposition d'un entier en produit de facteurs premiers.

- *Si un nombre premier $r$ divise un produit $u \times v$, alors $r$ divise $u$ ou $r$ divise $v$.* En effet, la décomposition de $uv$ s'obtient en mettant bout à bout celles de $u$ et de $v$, et $r$ doit y figurer.
- *Les facteurs premiers de $u \times v$ sont ceux de $u$ et ceux de $v$.* Pour la même raison.

**On ordonne.** Les rôles de $p$ et $q$ sont symétriques : on suppose $p < q$. Alors $q \geqslant 3$, donc $q$ est impair, et l'hypothèse $q < 2p$ donne
$$\frac{q}{2} < p < q.$$

**Étape 1 : les restes des multiples de $p$.** On regarde les $q - 1$ nombres
$$p, \quad 2p, \quad 3p, \quad \ldots, \quad (q-1)p.$$

*Aucun n'est divisible par $q$.* Si $q$ divisait $ip$ avec $1 \leqslant i \leqslant q - 1$, alors $q$ diviserait $i$ ou $p$. Or $q$ ne divise pas $i$, qui est entre $1$ et $q - 1$, et ne divise pas $p$, qui est un nombre premier différent de $q$.

*Leurs restes dans la division par $q$ sont deux à deux différents.* Si $ip$ et $jp$ avaient le même reste, avec $1 \leqslant j < i \leqslant q - 1$, leur différence $(i - j)p$ serait divisible par $q$. Mais $i - j$ est entre $1$ et $q - 1$, ce qui est impossible d'après le point précédent.

On a donc $q - 1$ restes différents, qui sont tous parmi les $q - 1$ valeurs $1, 2, \ldots, q - 1$. Chacune de ces valeurs est donc atteinte exactement une fois. En particulier :

- il existe $i$ entre $1$ et $q - 1$ tel que $ip$ ait pour reste $1$ : $q$ divise $ip - 1$ ;
- il existe $j$ entre $1$ et $q - 1$ tel que $jp$ ait pour reste $q - 1$ : $q$ divise $jp + 1$.

**Étape 2 : un petit multiplicateur.** Le nombre $(i + j)p = (ip - 1) + (jp + 1)$ est divisible par $q$. Comme $q$ ne divise pas $p$, il divise $i + j$. Or $2 \leqslant i + j \leqslant 2q - 2 < 2q$, donc $i + j = q$.

Comme $q$ est impair, $i \neq j$, et le plus petit des deux, que l'on note $a$, vérifie $a < q/2$. On a donc trouvé un entier $a$ tel que
$$1 \leqslant a < \frac{q}{2} \qquad \text{et} \qquad q \text{ divise } ap - 1 \text{ ou } ap + 1.$$

**Étape 3 : les deux entiers consécutifs.** On pose $n = ap$, et on appelle $m$ celui des deux nombres $ap - 1$ et $ap + 1$ qui est divisible par $q$. Les entiers $n$ et $m$ sont consécutifs, et $m \geqslant p - 1 \geqslant 1$.

*Le plus grand facteur premier de $n$ est $p$.* On a $a < q/2 < p$, donc tous les facteurs premiers de $a$ sont plus petits que $p$. Les facteurs premiers de $n = ap$ sont ceux de $a$ et $p$ lui-même : le plus grand est $p$.

*Le plus grand facteur premier de $m$ est $q$.* On écrit $m = bq$, avec $b \geqslant 1$. Comme $a \leqslant (q-1)/2$ et $p \leqslant q - 1$,
$$bq = m \leqslant ap + 1 \leqslant \frac{(q-1)^2}{2} + 1 < q^2,$$
donc $b < q$. Tous les facteurs premiers de $b$ sont plus petits que $q$, et les facteurs premiers de $m = bq$ sont ceux de $b$ et $q$ : le plus grand est $q$.

**Conclusion.** **Les entiers consécutifs $n = ap$ et $m = ap \pm 1$ ont pour plus grands facteurs premiers $p$ et $q$.**

**Un exemple.** Pour $p = 7$ et $q = 13$ : les restes de $7, 14, 21, \ldots$ dans la division par $13$ sont $7, 1, \ldots$ On a déjà $14 = 13 + 1$ avec $a = 2 < 13/2$. Les entiers $13$ et $14 = 2 \times 7$ conviennent.

## Going further

- L'hypothèse $q < 2p$ sert à un seul endroit : pour être sûr que le multiplicateur $a$, plus petit que $q/2$, est aussi plus petit que $p$.
- Le corrigé officiel utilise le théorème de Bézout, vu en terminale (maths expertes) : il existe des entiers $u$ et $v$ tels que $up + vq = 1$. L'étape 1 en est une démonstration dans ce cas particulier : on a trouvé $i$ et un entier $v$ tels que $ip - vq = 1$.
- Le corrigé note que seuls deux élèves ont résolu ce problème. Beaucoup ont regardé quelques cas, comme $p = 2$ et $q = 3$, ou $p = 3$ et $q = 5$, sans passer au cas général. Regarder des petits cas est une excellente chose, mais ce n'est que le début.
