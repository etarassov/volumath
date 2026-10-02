---
id: "12059"
title: "Le même plus grand facteur premier pour n⁴ + n² + 1 et son suivant"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [nombres premiers, plus grand facteur premier, factorisation, diviseurs communs, suites d'entiers, raisonnement par l'absurde, principe extremal]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de sélection pour l'OIM 2014, premier jour (13 mai 2014)"
  reference: "2017-10_ofm-2013-2014-test-mai-1.pdf, exercice 3 (c'est le problème N3 de la liste courte de l'OIM 2013) ; corrigé 2017-10_ofm-2013-2014-test-mai-corrige.pdf, exercice 3 ; le calcul du PGCD est fait ici sans le lemme de Gauss ; propriétés vérifiées par ordinateur jusqu'à n = 3000"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-mai-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-mai-1.pdf"
---

## Statement

Montrer qu'il existe une infinité d'entiers $n \geqslant 1$ tels que le plus grand facteur premier de $n^4 + n^2 + 1$ soit égal au plus grand facteur premier de $(n + 1)^4 + (n + 1)^2 + 1$.

## Hints

1. Calculez les deux nombres pour $n = 3$. Puis factorisez $n^4 + n^2 + 1$ en produit de deux polynômes de degré $2$, en partant de $n^4 + 2n^2 + 1 - n^2$.
2. Notez $q_n$ le plus grand facteur premier de $n^2 + n + 1$. Vérifiez que $n^2 - n + 1 = (n - 1)^2 + (n - 1) + 1$. Exprimez le plus grand facteur premier de $n^4 + n^2 + 1$ à l'aide de $q_n$ et de $q_{n-1}$.
3. Montrez que $n^2 + n + 1$ et $n^2 - n + 1$ n'ont aucun diviseur commun autre que $1$. Que peut-on en déduire sur $q_n$ et $q_{n-1}$ ?
4. Il suffit de trouver une infinité d'entiers $t$ tels que $q_{t-1} < q_t$ et $q_t > q_{t+1}$. Remarquez aussi que $n^4 + n^2 + 1 = (n^2)^2 + n^2 + 1$ : que vaut $q_{n^2}$ ?

## Solution

Pour tout entier $n \geqslant 1$, notons $p_n$ le plus grand facteur premier de $n^4 + n^2 + 1$, et $q_n$ le plus grand facteur premier de $n^2 + n + 1$. Ces nombres existent, car $n^4 + n^2 + 1$ et $n^2 + n + 1$ sont au moins égaux à $3$.

On cherche une infinité d'entiers $n$ tels que $p_n = p_{n+1}$. Par exemple, $3^4 + 3^2 + 1 = 91 = 7 \times 13$ et $4^4 + 4^2 + 1 = 273 = 3 \times 7 \times 13$, donc $p_3 = p_4 = 13$.

**Étape 1 : une factorisation.** On a

$$n^4 + n^2 + 1 = (n^2 + 1)^2 - n^2 = (n^2 + n + 1)(n^2 - n + 1) .$$

De plus, $n^2 - n + 1 = (n - 1)^2 + (n - 1) + 1$. Pour $n \geqslant 2$, le second facteur a donc pour plus grand facteur premier $q_{n-1}$.

Un nombre premier divise un produit de deux entiers seulement s'il divise l'un des deux. Les facteurs premiers de $n^4 + n^2 + 1$ sont donc ceux de $n^2 + n + 1$ et ceux de $n^2 - n + 1$. Pour tout $n \geqslant 2$,

$$p_n = \max(q_n, q_{n-1}) . \qquad (1)$$

Enfin, $n^4 + n^2 + 1 = (n^2)^2 + n^2 + 1$ : c'est le nombre $m^2 + m + 1$ pour $m = n^2$. Donc

$$p_n = q_{n^2} . \qquad (2)$$

**Étape 2 : deux termes voisins de la suite $(q_n)$ sont toujours différents.** Soit $d$ un diviseur positif commun à $n^2 + n + 1$ et à $n^2 - n + 1$. Il divise leur différence $2n$, donc aussi $(n + 1) \times 2n = 2n^2 + 2n$. Il divise aussi $2(n^2 + n + 1) = 2n^2 + 2n + 2$. Il divise donc la différence de ces deux nombres, qui vaut $2$. Ainsi $d = 1$ ou $d = 2$.

Or $n^2 + n + 1 = n(n + 1) + 1$ est impair, car $n(n + 1)$ est le produit de deux entiers consécutifs, donc pair. Ainsi $d = 1$ : les deux nombres n'ont aucun facteur premier commun. En particulier, pour tout $n \geqslant 2$,

$$q_n \neq q_{n-1} .$$

**Étape 3 : ce qu'il suffit de trouver.** Appelons *sommet* un entier $t \geqslant 2$ tel que $q_{t-1} < q_t$ et $q_t > q_{t+1}$. Pour un sommet $t$, la relation $(1)$ donne

$$p_t = \max(q_t, q_{t-1}) = q_t \qquad \text{et} \qquad p_{t+1} = \max(q_{t+1}, q_t) = q_t ,$$

donc $p_t = p_{t+1}$. Il suffit donc de montrer qu'il y a une infinité de sommets, c'est-à-dire que pour tout entier $m \geqslant 1$, il existe un sommet strictement plus grand que $m$.

**Étape 4 : il y a toujours un sommet plus loin.** Fixons un entier $m \geqslant 1$.

*La suite finit par monter.* Si l'on avait $q_n > q_{n+1}$ pour tout $n \geqslant m$, les entiers $q_m > q_{m+1} > q_{m+2} > \cdots$ formeraient une suite strictement décroissante d'entiers positifs, ce qui est impossible : chaque pas fait baisser la valeur d'au moins $1$, donc après $q_m$ pas la valeur serait négative. Il existe donc un entier $k \geqslant m$ tel que $q_k \leqslant q_{k+1}$, et même $q_k < q_{k+1}$ d'après l'étape 2.

*La suite ne peut pas monter pour toujours à partir de $k$.* En effet, d'après $(2)$ puis $(1)$ appliquée à $n = k + 1$,

$$q_{(k+1)^2} = p_{k+1} = \max(q_{k+1}, q_k) = q_{k+1} .$$

Or $(k + 1)^2 > k + 1$. Si la suite était strictement croissante à partir du rang $k$, on aurait $q_{(k+1)^2} > q_{k+1}$, ce qui est faux.

Il existe donc des entiers $j \geqslant k + 1$ tels que $q_j > q_{j+1}$. Notons $t$ le plus petit d'entre eux. Pour tous les entiers $j$ tels que $k \leqslant j \leqslant t - 1$, on a alors $q_j < q_{j+1}$ : pour $j = k$ c'est le choix de $k$, et pour $k + 1 \leqslant j \leqslant t - 1$ c'est la minimalité de $t$, avec l'étape 2. En particulier, pour $j = t - 1$, on obtient $q_{t-1} < q_t$.

Ainsi $q_{t-1} < q_t$ et $q_t > q_{t+1}$ : l'entier $t$ est un sommet, et $t \geqslant k + 1 > m$.

**Conclusion.** Pour tout entier $m$, il existe un sommet $t > m$, et pour chaque sommet $t$, les nombres $t^4 + t^2 + 1$ et $(t + 1)^4 + (t + 1)^2 + 1$ ont le même plus grand facteur premier. Il existe donc une infinité d'entiers $n$ qui conviennent.

## Going further

1. Vérifier que $n = 6$ et $n = 8$ conviennent aussi.
2. Calculer $q_n$ pour $n$ allant de $1$ à $10$, et repérer les sommets.
3. Montrer que si $q_{n-1} < q_n < q_{n+1}$, alors $p_n \neq p_{n+1}$.
