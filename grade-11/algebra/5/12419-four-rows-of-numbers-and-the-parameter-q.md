---
id: "12419"
title: "Quatre lignes de nombres et le paramètre q"
grade: 11
theme: algebra
difficulty: 5
duration_min: 60
tags: [identite, polynomes, second-degre, tiroirs, parametre]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 28 mars 2018"
  reference: "juge_Enonce-03-2018.pdf, exercices du groupe A, exercice 6 ; corrigé juge_Corrige-03-2018.pdf (le corrigé obtient la condition nécessaire par un passage à la limite peu détaillé ; elle est démontrée ici avec la première ligne 0, 1, ..., 8, x et un argument de polynôme du second degré)"
  url: "http://igm.univ-mlv.fr/~juge/pofm/doc/%c3%89nonc%c3%a9-03-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/juge_Enonce-03-2018.pdf"
---

## Statement

Soit $q$ un nombre réel. Margot écrit sur une première ligne dix nombres réels, deux à deux
distincts. Elle écrit ensuite trois autres lignes :

- sur la deuxième ligne, tous les nombres de la forme $a - b$, où $a$ et $b$ sont deux nombres
  de la première ligne, pas forcément distincts ;
- sur la troisième ligne, tous les nombres de la forme $q\,ab$, où $a$ et $b$ sont deux nombres
  de la deuxième ligne, pas forcément distincts ;
- sur la quatrième ligne, tous les nombres de la forme $a^2 + b^2 - c^2 - d^2$, où $a$, $b$, $c$
  et $d$ sont quatre nombres de la deuxième ligne, pas forcément distincts.

Trouver tous les réels $q$ tels que, quels que soient les dix nombres de la première ligne, chaque
nombre de la troisième ligne figure aussi sur la quatrième ligne.

## Hints

1. Commence par chercher des valeurs de $q$ qui conviennent. La valeur $q = 0$ est facile. Pour
   $q = 2$, cherche à écrire $2(x - y)(z - t)$ sous la forme $a^2 + b^2 - c^2 - d^2$, où $a$, $b$,
   $c$, $d$ sont des différences de deux des nombres $x$, $y$, $z$, $t$.
2. Pour montrer qu'il n'y a pas d'autre valeur, choisis une première ligne très simple, qui ne
   dépend que d'un seul nombre $x$ : par exemple $0, 1, 2, \ldots, 8$ et $x$.
3. Avec cette première ligne, tout nombre de la deuxième ligne s'écrit $m + nx$ avec des entiers
   $m$ et $n$, et tout nombre de la quatrième ligne s'écrit $\alpha + \beta x + \gamma x^2$, avec
   des entiers $\alpha$, $\beta$, $\gamma$ pris dans une liste finie qui ne dépend pas de $x$. Que
   remarques-tu sur $\beta$ ? Et sur $\gamma$ ?
4. La troisième ligne contient $qx$ et $qx^2$. Fais varier $x$ : un même triplet
   $(\alpha, \beta, \gamma)$ doit servir pour trois valeurs différentes de $x$. Pense à un
   polynôme du second degré qui aurait trois racines.

## Solution

On dit que $q$ est **bon** s'il a la propriété demandée. Nous allons montrer que les bons réels
sont exactement $-2$, $0$ et $2$.

### Étape 1 : les valeurs $-2$, $0$ et $2$ sont bonnes

Remarquons d'abord que $0 = a - a$ est toujours sur la deuxième ligne.

**Le cas $q = 0$.** La troisième ligne ne contient que $0$, et
$0 = 0^2 + 0^2 - 0^2 - 0^2$ est sur la quatrième ligne.

**Le cas $q = 2$.** Un nombre de la troisième ligne s'écrit $2uv$, où $u = x - y$ et $v = z - t$
avec $x$, $y$, $z$, $t$ sur la première ligne. On vérifie en développant l'identité
$$(x - t)^2 + (y - z)^2 - (x - z)^2 - (y - t)^2 = -2xt - 2yz + 2xz + 2yt = 2(x - y)(z - t).$$
Les quatre nombres $x - t$, $y - z$, $x - z$, $y - t$ sont sur la deuxième ligne, donc $2uv$ est
sur la quatrième ligne.

**Le cas $q = -2$.** De même,
$$-2uv = (x - z)^2 + (y - t)^2 - (x - t)^2 - (y - z)^2$$
est sur la quatrième ligne.

### Étape 2 : une première ligne qui dépend d'un seul nombre

Supposons maintenant que $q$ soit bon. Soit $x$ un réel qui n'est pas l'un des entiers
$0, 1, \ldots, 8$. Prenons comme première ligne les dix nombres distincts
$$0,\ 1,\ 2,\ \ldots,\ 8,\ x.$$

**La deuxième ligne.** Une différence de deux de ces nombres est :

- soit la différence de deux entiers entre $0$ et $8$, donc un entier $m$ avec $-8 \leqslant m \leqslant 8$ ;
- soit $x - k$ ou $k - x$, avec $k$ entier entre $0$ et $8$ ;
- soit $x - x = 0$.

Dans tous les cas, c'est un nombre de la forme $m + nx$, où $m$ et $n$ sont des entiers avec
$-8 \leqslant m \leqslant 8$ et $n \in \{-1, 0, 1\}$.

**La quatrième ligne.** Comme $(m + nx)^2 = m^2 + 2mn\,x + n^2x^2$, un nombre de la quatrième
ligne s'écrit
$$(m_1 + n_1x)^2 + (m_2 + n_2x)^2 - (m_3 + n_3x)^2 - (m_4 + n_4x)^2 = \alpha + \beta x + \gamma x^2,$$
avec
$$\alpha = m_1^2 + m_2^2 - m_3^2 - m_4^2, \qquad \beta = 2\,(m_1n_1 + m_2n_2 - m_3n_3 - m_4n_4),$$
$$\gamma = n_1^2 + n_2^2 - n_3^2 - n_4^2.$$
Les entiers $m_i$ et $n_i$ ne peuvent prendre qu'un nombre fini de valeurs. Les triplets
$(\alpha, \beta, \gamma)$ possibles forment donc une liste finie, que nous appelons $L$, et
**cette liste ne dépend pas de $x$**. De plus, pour tout triplet de $L$ :

- $\beta$ est un entier **pair** ;
- $\gamma$ est un entier compris entre $-2$ et $2$, car chaque $n_i^2$ vaut $0$ ou $1$.

**La troisième ligne.** Les nombres $x = x - 0$ et $1 = 1 - 0$ sont sur la deuxième ligne. La
troisième ligne contient donc $q \times x \times 1 = qx$ et $q \times x \times x = qx^2$.

### Étape 3 : un polynôme qui a trop de racines

Notons $N$ le nombre de triplets de la liste $L$, et donnons à $x$ les $2N + 1$ valeurs
$9, 10, 11, \ldots, 9 + 2N$, qui ne sont pas parmi $0, 1, \ldots, 8$.

**$q$ est un entier pair.** Pour chacune de ces valeurs de $x$, le nombre $qx$ est sur la
quatrième ligne, donc il existe un triplet $(\alpha, \beta, \gamma)$ de $L$ tel que
$qx = \alpha + \beta x + \gamma x^2$. Il y a $2N + 1$ valeurs de $x$ et seulement $N$ triplets :
si chaque triplet servait au plus deux fois, on n'atteindrait que $2N$ valeurs. Un même triplet
$(\alpha, \beta, \gamma)$ sert donc pour au moins trois valeurs différentes de $x$. Ces trois
valeurs sont des racines du polynôme
$$\gamma X^2 + (\beta - q)\,X + \alpha.$$
Or un polynôme non nul de degré au plus $2$ a au plus deux racines. Ce polynôme est donc nul :
$\gamma = 0$, $\alpha = 0$ et $\beta = q$. Ainsi **$q = \beta$ est un entier pair.**

**$q$ est compris entre $-2$ et $2$.** On recommence avec $qx^2$ : il existe un triplet
$(\alpha', \beta', \gamma')$ de $L$ qui vérifie $qx^2 = \alpha' + \beta' x + \gamma' x^2$ pour au
moins trois valeurs différentes de $x$. Le polynôme
$$(\gamma' - q)\,X^2 + \beta' X + \alpha'$$
a trois racines, il est donc nul, et $q = \gamma'$. Ainsi **$-2 \leqslant q \leqslant 2$.**

Un entier pair compris entre $-2$ et $2$ vaut $-2$, $0$ ou $2$.

### Conclusion

Les réels $q$ cherchés sont exactement **$q = -2$, $q = 0$ et $q = 2$.**
