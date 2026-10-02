---
id: "12480"
title: "Remplacer n par kn/10, en partant de 20!"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [jeu, strategie-gagnante, factorielle, decomposition-en-facteurs-premiers, parite, invariant]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 mai 2020"
  reference: "2020-11_Enonce-Test-Mai-2020.pdf, exercice 2 (groupe Junior) ; corrigé 2020-05_Corrige-Web-05-2020.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Mai-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Mai-2020.pdf"
---

## Statement

Dans le train, Clara et Edwige jouent au jeu suivant. Au départ, l'entier
$$n = 1 \times 2 \times 3 \times \cdots \times 20$$
est écrit sur une feuille. Chacune à son tour, en commençant par Clara, les joueuses remplacent le
nombre $n$ écrit sur la feuille par le nombre
$$\frac{kn}{10},$$
où $k$ est un entier qu'elles
choisissent entre $1$ et $9$ inclus. La première joueuse qui écrit un nombre qui n'est pas entier a
perdu, et son adversaire a gagné.

Clara et Edwige jouent toutes les deux le mieux possible. Laquelle des deux va gagner ?

## Hints

1. Seuls les facteurs $2$ et $5$ de $n$ comptent. Écris $n = 2^x \times 5^y \times m$, où $m$ n'est
   divisible ni par $2$ ni par $5$.
2. Que deviennent $x$ et $y$ quand on remplace $n$ par $kn/10$, pour chaque valeur de $k$ ?
3. Regarde la parité de $x$ et de $y$. Une joueuse qui reçoit un nombre où $x$ et $y$ sont tous les
   deux pairs est mal partie. Pourquoi ?
4. Calcule $x$ et $y$ pour $1 \times 2 \times \cdots \times 20$.

## Solution

Nous allons montrer que **c'est Edwige qui gagne**.

### Les exposants de $2$ et de $5$

Tout entier $n \geqslant 1$ s'écrit $n = 2^x \times 5^y \times m$, où $x$ et $y$ sont des entiers
naturels et où $m$ n'est divisible ni par $2$ ni par $5$. On dit que $n$ est **équilibré** si $x$ et
$y$ sont tous les deux pairs.

Pour un entier $k$ entre $1$ et $9$, notons $u$ l'exposant de $2$ dans $k$ et $v$ celui de $5$ :

| $k$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|
| $u$ | $0$ | $1$ | $0$ | $2$ | $0$ | $1$ | $0$ | $3$ | $0$ |
| $v$ | $0$ | $0$ | $0$ | $0$ | $1$ | $0$ | $0$ | $0$ | $0$ |

Écrivons $k = 2^u \times 5^v \times r$. Alors
$$kn = 2^{x+u} \times 5^{y+v} \times rm,$$
où $rm$ n'est divisible ni par $2$ ni par $5$. Le nombre $kn/10$ est un entier exactement quand $kn$
est divisible par $2$ et par $5$, c'est-à-dire quand $x + u \geqslant 1$ et $y + v \geqslant 1$.
Dans ce cas, $kn/10 = 2^{x+u-1} \times 5^{y+v-1} \times rm$ : ses exposants de $2$ et de $5$ sont
$x + u - 1$ et $y + v - 1$.

### Le jeu se termine

Comme $k \leqslant 9$, on a $kn/10 < n$. Tant qu'on écrit des entiers, ce sont des entiers
naturels non nuls de plus en plus petits, ce qui ne peut pas durer indéfiniment. Au bout d'un nombre
fini de coups, une joueuse doit écrire un nombre qui n'est pas entier, et la partie s'arrête.

### Depuis un nombre équilibré, on ne peut aller que vers un nombre non équilibré

Supposons $x$ et $y$ pairs, et qu'une joueuse écrive un entier $kn/10$. Pour que cet entier
soit équilibré, il faudrait que $x + u - 1$ et $y + v - 1$ soient pairs, donc que $u$ et $v$ soient
impairs. Le tableau montre qu'aucun $k$ entre $1$ et $9$ ne vérifie $v$ impair et $u$ impair en même
temps (il faudrait que $k$ soit un multiple de $10$). L'entier obtenu n'est donc **pas équilibré**.

### Depuis un nombre non équilibré, on peut aller vers un nombre équilibré

Supposons que $x$ et $y$ ne soient pas tous les deux pairs.

- Si $x$ et $y$ sont impairs, alors $x \geqslant 1$ et $y \geqslant 1$. Avec $k = 1$, on écrit
  $2^{x-1} \times 5^{y-1} \times m$, qui est un entier équilibré.
- Si $x$ est pair et $y$ impair, alors $y \geqslant 1$. Avec $k = 2$, on écrit
  $2n/10 = 2^{x} \times 5^{y-1} \times m$, qui est un entier équilibré.
- Si $x$ est impair et $y$ pair, alors $x \geqslant 1$. Avec $k = 5$, on écrit
  $5n/10 = 2^{x-1} \times 5^{y} \times m$, qui est un entier équilibré.

### La stratégie gagnante

Une joueuse qui reçoit un entier non équilibré a la stratégie suivante : à chaque fois, elle écrit un
entier équilibré, ce qui est possible d'après le paragraphe précédent. Son adversaire reçoit alors
toujours un entier équilibré, et ne peut écrire qu'un nombre non entier, auquel cas elle perd, ou un
entier non équilibré, et la joueuse peut recommencer. La joueuse qui suit cette stratégie n'écrit
jamais de nombre non entier. Comme la partie se termine, c'est son adversaire qui perd.

Ainsi, **la joueuse qui reçoit un entier non équilibré gagne, et celle qui reçoit un entier équilibré
perd** (si son adversaire joue bien).

### Le nombre de départ

Comptons les facteurs $2$ dans $1 \times 2 \times \cdots \times 20$. Seuls les nombres pairs en
apportent : $2$, $6$, $10$, $14$ et $18$ en apportent un chacun, $4$, $12$ et $20$ en apportent
deux, $8 = 2^3$ en apporte trois et $16 = 2^4$ en apporte quatre. Au total,
$$x = 5 \times 1 + 3 \times 2 + 3 + 4 = 18.$$ Les facteurs $5$ viennent de $5$, $10$, $15$ et $20$, chacun en apportant un :
$y = 4$. Les deux exposants sont pairs, donc le nombre de départ est équilibré.

### Conclusion

Clara reçoit un nombre équilibré : **c'est Edwige qui gagne**, en écrivant à chaque fois un entier
équilibré.

## Going further

Voici une autre stratégie gagnante pour Edwige, très simple à énoncer : elle choisit à chaque fois le
même entier $k$ que Clara vient de choisir. Montrer qu'elle n'écrit ainsi jamais de nombre non
entier. (On pourra écrire le nombre de départ sous la forme $w^2 \times 11 \times 13 \times 17 \times 19$
avec $w$ entier.)
