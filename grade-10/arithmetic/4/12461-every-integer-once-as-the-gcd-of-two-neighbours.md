---
id: "12461"
title: "Chaque entier est une seule fois le PGCD de deux termes voisins"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [pgcd, nombres-premiers, suites, construction, premiers-entre-eux, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 22 janvier 2020"
  reference: "2020-01_sujet-test-janvier.pdf, exercice 4 (groupe Junior), repris tel quel comme exercice 5 (groupe Senior) ; corrigé 2020-01_corrige-test-janvier.pdf (construction du corrigé, avec les inégalités sur les nombres premiers détaillées)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-01_sujet-test-janvier.pdf"
---

## Statement

Soit $a_0, a_1, a_2, \ldots$ une suite d'entiers naturels non nuls. On définit une deuxième suite
$b_0, b_1, b_2, \ldots$ en posant, pour tout entier $n \geqslant 0$,
$$b_n = \mathrm{PGCD}(a_n, a_{n+1}).$$

Est-il possible de choisir la suite $(a_n)$ de sorte que chaque entier naturel non nul soit égal à
exactement un des termes $b_0, b_1, b_2, \ldots$ ?

## Hints

1. Prends le problème à l'envers : choisis d'abord la suite $(b_n)$, puis cherche une suite $(a_n)$
   qui la donne. Essaie $a_n = b_{n-1}\,b_n$.
2. Avec ce choix, calcule $\mathrm{PGCD}(a_n, a_{n+1})$. Quelle condition sur $b_{n-1}$ et $b_{n+1}$
   faut-il pour qu'il vaille $b_n$ ?
3. Il reste à ranger tous les entiers non nuls dans une suite $(b_n)$ où deux termes séparés par
   un seul autre sont toujours premiers entre eux. Pense à alterner des nombres premiers et des
   nombres qui ne sont pas premiers.
4. Si $p$ est premier et si $q < 2p$ n'est pas premier, alors $p$ ne divise pas $q$.

## Solution

**La réponse est oui.**

### Étape 1 : il suffit de construire la suite $(b_n)$

On utilise la décomposition en facteurs premiers. Pour un nombre premier $p$ et un entier
$N \geqslant 1$, notons $v_p(N)$ l'exposant de $p$ dans la décomposition de $N$. Le PGCD de deux
entiers $M$ et $N$ est le nombre dont l'exposant de chaque $p$ est le plus petit des deux exposants
$v_p(M)$ et $v_p(N)$.

**Lemme.** Soit $(b_n)$ une suite d'entiers naturels non nuls telle que, pour tout $n$, les
entiers $b_n$ et $b_{n+2}$ soient premiers entre eux. Posons $a_0 = b_0$ et $a_n = b_{n-1}\,b_n$
pour $n \geqslant 1$. Alors $\mathrm{PGCD}(a_n, a_{n+1}) = b_n$ pour tout $n \geqslant 0$.

*Preuve.* Pour $n = 0$, $\mathrm{PGCD}(b_0, b_0 b_1) = b_0$ car $b_0$ divise $b_0 b_1$. Pour
$n \geqslant 1$, prenons un nombre premier $p$. Les exposants de $p$ dans $a_n = b_{n-1}b_n$ et dans
$a_{n+1} = b_n b_{n+1}$ sont
$$v_p(b_{n-1}) + v_p(b_n) \qquad \text{et} \qquad v_p(b_n) + v_p(b_{n+1}).$$
Comme $b_{n-1}$ et $b_{n+1}$ sont premiers entre eux, $p$ ne divise pas les deux, donc l'un des
nombres $v_p(b_{n-1})$ et $v_p(b_{n+1})$ est nul. Le plus petit des deux exposants ci-dessus est
donc $v_p(b_n)$. Ceci vaut pour tout $p$, donc $\mathrm{PGCD}(a_n, a_{n+1}) = b_n$.

Il suffit donc de construire une suite $(b_n)$ dans laquelle **chaque entier non nul apparaît
exactement une fois**, et telle que **$b_n$ et $b_{n+2}$ soient premiers entre eux pour tout $n$**.

### Étape 2 : deux listes et deux inégalités

Il y a une infinité de nombres premiers. Notons-les $p_1 < p_2 < p_3 < \cdots$, donc $p_1 = 2$,
$p_2 = 3$, $p_3 = 5$, etc. Notons $q_1 < q_2 < q_3 < \cdots$ les entiers non nuls qui **ne sont pas**
premiers : $q_1 = 1$, $q_2 = 4$, $q_3 = 6$, $q_4 = 8$, $q_5 = 9$, etc. Chaque entier non nul est
dans exactement une des deux listes.

- **On a $p_m \geqslant 2m - 1$.** C'est vrai pour $m = 1$. Pour $m \geqslant 2$, les nombres
  $p_2, p_3, \ldots, p_m$ sont $m - 1$ nombres impairs distincts, au moins égaux à $3$, donc le plus
  grand vérifie $p_m \geqslant 3 + 2(m - 2) = 2m - 1$.
- **On a $q_m \leqslant 2m$.** Parmi les entiers de $1$ à $2m$, les nombres $1, 4, 6, 8, \ldots, 2m$
  ne sont pas premiers, et il y en a $1 + (m - 1) = m$. Le $m$-ième entier non premier est donc au
  plus $2m$.

Ainsi $q_m \leqslant 2m \leqslant p_m + 1 < 2p_m$.

**Conséquence.** Soit $p$ un nombre premier au moins égal à $p_m$. Alors $q_m < 2p_m \leqslant 2p$.
Le seul multiple de $p$ compris entre $1$ et $2p - 1$ est $p$ lui-même, qui est premier, alors que
$q_m$ ne l'est pas. Donc $p$ ne divise pas $q_m$, et comme $p$ est premier, **$q_m$ et $p$ sont
premiers entre eux**. C'est le cas en particulier pour $p = p_m$ et pour $p = p_{m+2}$.

### Étape 3 : la suite $(b_n)$

On range les nombres par paquets de quatre, deux premiers puis deux non premiers :
$$p_1, \ p_2, \ q_1, \ q_2, \ p_3, \ p_4, \ q_3, \ q_4, \ p_5, \ p_6, \ q_5, \ q_6, \ \ldots$$
Autrement dit, pour tout $k \geqslant 0$,
$$b_{4k} = p_{2k+1}, \qquad b_{4k+1} = p_{2k+2}, \qquad b_{4k+2} = q_{2k+1}, \qquad b_{4k+3} = q_{2k+2}.$$
Les débuts de la suite sont $2, 3, 1, 4, 5, 7, 6, 8, 11, 13, 9, 10, \ldots$

Chaque nombre premier et chaque entier non premier apparaît exactement une fois, donc **chaque
entier non nul apparaît exactement une fois**.

Vérifions que deux termes séparés par un seul autre sont premiers entre eux. En regardant la liste,
un tel couple est toujours formé d'un $p$ et d'un $q$ :
$$(b_{4k}, b_{4k+2}) = (p_{2k+1}, q_{2k+1}), \qquad (b_{4k+1}, b_{4k+3}) = (p_{2k+2}, q_{2k+2}),$$
$$(b_{4k+2}, b_{4k+4}) = (q_{2k+1}, p_{2k+3}), \qquad (b_{4k+3}, b_{4k+5}) = (q_{2k+2}, p_{2k+4}).$$
Chaque fois, c'est un couple $(q_m, p_m)$ ou $(q_m, p_{m+2})$, et la conséquence de l'étape 2 dit
qu'il est formé de deux nombres premiers entre eux.

### Conclusion

La suite $(b_n)$ de l'étape 3 vérifie les conditions du lemme. La suite définie par $a_0 = b_0$ et
$a_n = b_{n-1}b_n$, qui commence par $2, 6, 3, 4, 20, 35, 42, 48, 88, \ldots$, donne exactement cette
suite $(b_n)$ de PGCD. **Il est donc possible que chaque entier non nul soit égal à exactement un
des termes $b_n$.**

## Going further

1. Montrer que le lemme de l'étape 1 devient faux sans l'hypothèse sur $b_n$ et $b_{n+2}$ : trouver
   trois entiers $b_0$, $b_1$, $b_2$ tels que $\mathrm{PGCD}(b_0 b_1, b_1 b_2) \neq b_1$.
2. Les élèves ont souvent construit la suite $(b_n)$ « au fur et à mesure » : à chaque étape, on
   prend le plus petit entier pas encore utilisé qui est premier avec le terme situé deux places
   avant. Montrer qu'on peut toujours choisir un tel entier, puis que chaque entier finit par être
   choisi.
