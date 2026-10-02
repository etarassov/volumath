---
id: "12473"
title: "503 pièces dans deux saladiers"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [maths-expertes, congruences, puissances-de-2, nombres-premiers, petit-theoreme-de-fermat, processus]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2020"
  reference: "2020-11_Enonce-Test-Fevrier-2020.pdf, exercice 10 (groupe EGMO) ; corrigé 2020-03_Correction-Web.pdf (le corrigé utilise les carrés modulo 503 ; solution réécrite avec le seul petit théorème de Fermat)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Fevrier-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Fevrier-2020.pdf"
---

## Statement

Jean dispose de $503$ pièces, qu'il a réparties dans deux saladiers, chaque saladier contenant au
moins une pièce.

Ensuite, tant que chacun des deux saladiers contient au moins deux pièces, il effectue l'opération
suivante : il choisit le saladier qui contient un nombre pair de pièces, prend la moitié de ces
pièces et les met dans l'autre saladier. Dès que l'un des deux saladiers contient une pièce ou
moins, il s'arrête.

Est-il possible que ce processus ne s'arrête jamais ?

## Hints

1. Note $a_\ell$ le nombre de pièces dans le premier saladier après $\ell$ opérations. Exprime
   $a_{\ell + 1}$ en fonction de $a_\ell$, selon que $a_\ell$ est pair ou impair.
2. Montre que, dans les deux cas, $2\,a_{\ell+1} \equiv a_\ell \pmod{503}$. Déduis-en que
   $2^\ell a_\ell \equiv a_0 \pmod{503}$.
3. Le processus s'arrête dès que $a_\ell = 1$ ou $a_\ell = 502$, c'est-à-dire dès que
   $a_\ell \equiv 1$ ou $a_\ell \equiv -1 \pmod{503}$. Il suffit donc que $a_0$ soit congru à
   $2^j$ ou à $-2^j$ pour un certain entier $j$.
4. Le nombre $503$ est premier, et $502 = 2 \times 251$ avec $251$ premier. Étudie le plus petit
   entier $\omega \geqslant 1$ tel que $2^\omega \equiv 1 \pmod{503}$ : montre qu'il divise $502$,
   puis que les $502$ nombres $2^j$ et $-2^j$, pour $0 \leqslant j \leqslant 250$, sont deux à deux
   non congrus modulo $503$.

## Solution

Nous allons montrer que **le processus s'arrête toujours**, et même après au plus $250$
opérations. Dans toute la solution, on note $p = 503$, et les congruences sont modulo $p$.

### Étape 1 : ce que fait une opération

Comme $503$ est impair, exactement un des deux saladiers contient un nombre pair de pièces :
l'opération est donc bien définie, et il n'y a jamais de choix à faire.

Notons $a_\ell$ le nombre de pièces dans le premier saladier après $\ell$ opérations. Le second en
contient $p - a_\ell$. Au départ, $1 \leqslant a_0 \leqslant 502$.

Pendant une opération, un saladier garde la moitié de ses pièces, donc au moins une, et l'autre ne
fait qu'en recevoir. Les deux saladiers contiennent donc toujours au moins une pièce :
$1 \leqslant a_\ell \leqslant 502$ tant que le processus continue. Il s'arrête exactement quand
$a_\ell = 1$ ou $p - a_\ell = 1$, c'est-à-dire quand $a_\ell = 1$ ou $a_\ell = 502$.

Supposons que le processus n'est pas arrêté après $\ell$ opérations.

- Si $a_\ell$ est pair, Jean prend la moitié du premier saladier : $a_{\ell+1} = \dfrac{a_\ell}{2}$,
  donc $2\,a_{\ell+1} = a_\ell$.
- Si $a_\ell$ est impair, c'est $p - a_\ell$ qui est pair, et Jean met $\dfrac{p - a_\ell}{2}$
  pièces dans le premier saladier : $a_{\ell+1} = a_\ell + \dfrac{p - a_\ell}{2} = \dfrac{p + a_\ell}{2}$,
  donc $2\,a_{\ell+1} = a_\ell + p$.

Dans les deux cas,
$$2\,a_{\ell+1} \equiv a_\ell \pmod p.$$
En multipliant par $2^\ell$, on obtient $2^{\ell+1} a_{\ell+1} \equiv 2^\ell a_\ell$, et de proche en
proche
$$2^\ell a_\ell \equiv a_0 \pmod p \qquad \text{tant que le processus continue.}$$

### Étape 2 : il suffit que $a_0$ soit congru à $2^j$ ou à $-2^j$

Supposons que $a_0 \equiv \varepsilon \cdot 2^j \pmod p$, avec $j \geqslant 0$ et
$\varepsilon = 1$ ou $\varepsilon = -1$. Si le processus n'est pas arrêté avant la $j$-ième
opération, l'étape 1 donne
$$2^j a_j \equiv a_0 \equiv \varepsilon \cdot 2^j, \quad \text{donc } p \text{ divise } 2^j\,(a_j - \varepsilon).$$
Nous verrons à l'étape 3 que $p$ est premier. Il ne divise pas $2^j$, donc, d'après le lemme
d'Euclide, il divise $a_j - \varepsilon$. Comme $1 \leqslant a_j \leqslant 502$, cela donne
$a_j = 1$ si $\varepsilon = 1$, et $a_j = 502$ si $\varepsilon = -1$ : le processus s'arrête après
la $j$-ième opération.

**Dans tous les cas, le processus s'arrête après au plus $j$ opérations.**

Il reste à montrer que **tout entier $x$ compris entre $1$ et $502$ est congru à $2^j$ ou à $-2^j$
modulo $p$, pour un certain $j$ entre $0$ et $250$.** C'est le cœur du problème.

### Étape 3 : deux nombres premiers

**$503$ est premier.** Comme $23^2 = 529 > 503$, il suffit de vérifier que $503$ n'est divisible
par aucun des nombres premiers $2, 3, 5, 7, 11, 13, 17, 19$. C'est le cas :
$503 = 7 \times 71 + 6 = 11 \times 45 + 8 = 13 \times 38 + 9 = 17 \times 29 + 10 = 19 \times 26 + 9$,
et $503$ n'est divisible ni par $2$, ni par $3$ (somme des chiffres $8$), ni par $5$.

**$251$ est premier.** Comme $17^2 = 289 > 251$, il suffit de tester $2, 3, 5, 7, 11, 13$ :
$251 = 7 \times 35 + 6 = 11 \times 22 + 9 = 13 \times 19 + 4$, et $251$ n'est divisible ni par
$2$, ni par $3$, ni par $5$.

Ainsi $p - 1 = 502 = 2 \times 251$, et les diviseurs positifs de $502$ sont $1$, $2$, $251$ et
$502$.

### Étape 4 : le plus petit exposant $\omega$

Comme $p$ est premier et ne divise pas $2$, le petit théorème de Fermat donne
$2^{502} \equiv 1 \pmod p$. Il existe donc des entiers $e \geqslant 1$ tels que $2^e \equiv 1$.
Notons $\omega$ le plus petit d'entre eux.

**Si $2^e \equiv 1$ avec $e \geqslant 1$, alors $\omega$ divise $e$.** Écrivons la division
euclidienne $e = q\,\omega + r$ avec $0 \leqslant r < \omega$. Alors
$$1 \equiv 2^e = (2^\omega)^q \times 2^r \equiv 1^q \times 2^r = 2^r.$$
Si $r$ était au moins $1$, ce serait un exposant plus petit que $\omega$ qui convient, ce qui est
impossible. Donc $r = 0$, et $\omega$ divise $e$.

En particulier, $\omega$ divise $502$, donc $\omega \in \{1, 2, 251, 502\}$. Or $2^1 = 2$ et
$2^2 = 4$ ne sont pas congrus à $1$ modulo $503$ (car $503$ ne divise ni $1$ ni $3$). Par
conséquent
$$\omega = 251 \quad \text{ou} \quad \omega = 502.$$

### Étape 5 : les nombres $2^j$ et $-2^j$ sont tous différents

On regarde les $502$ nombres
$$2^0, 2^1, \ldots, 2^{250} \qquad \text{et} \qquad -2^0, -2^1, \ldots, -2^{250}.$$
Aucun n'est divisible par $p$. Montrons qu'ils sont deux à deux non congrus modulo $p$.

**Deux puissances différentes.** Supposons $2^i \equiv 2^j$ avec $0 \leqslant i < j \leqslant 250$.
Alors $p$ divise $2^i(2^{j-i} - 1)$, et comme il ne divise pas $2^i$, il divise $2^{j-i} - 1$.
D'après l'étape 4, $\omega$ divise $j - i$. C'est impossible, car
$1 \leqslant j - i \leqslant 250 < 251 \leqslant \omega$. De la même façon, $-2^i \equiv -2^j$
est impossible.

**Une puissance et l'opposé d'une puissance.** Supposons $2^i \equiv -2^j$ avec
$0 \leqslant i, j \leqslant 250$. Quitte à échanger $i$ et $j$, on peut supposer $i \geqslant j$.
Alors $p$ divise $2^j(2^{i-j} + 1)$, donc il divise $2^{i-j} + 1$ : en posant $k = i - j$, on a
$2^k \equiv -1$, avec $0 \leqslant k \leqslant 250$.

- Si $k = 0$, cela donne $1 \equiv -1$, donc $p$ divise $2$ : impossible.
- Si $k \geqslant 1$, en élevant au carré, $2^{2k} \equiv 1$. D'après l'étape 4, $\omega$ divise
  $2k$, et comme $\omega \geqslant 251$, l'entier $251$ divise $2k$ (car $251$ divise $\omega$).
  Mais $2 \leqslant 2k \leqslant 500$, et le seul multiple de $251$ dans cet intervalle est $251$
  lui-même, qui est impair alors que $2k$ est pair. C'est impossible.

### Étape 6 : conclusion

Les $502$ nombres de l'étape 5 donnent $502$ restes différents dans la division par $p$, tous
différents de $0$. Or il n'y a que $502$ restes possibles non nuls : $1, 2, \ldots, 502$. Chacun
de ces restes est donc atteint exactement une fois.

En particulier, quelle que soit la répartition de départ, $a_0$ est congru à $2^j$ ou à $-2^j$
pour un certain $j$ compris entre $0$ et $250$. D'après l'étape 2, le processus s'arrête après au
plus $j \leqslant 250$ opérations.

**Non, il n'est pas possible que le processus ne s'arrête jamais : il s'arrête toujours, après au
plus $250$ opérations.**

## Going further

1. On remplace $503$ par $9$ pièces. Montrer que, si Jean met $3$ pièces dans le premier saladier
   et $6$ dans le second, le processus ne s'arrête jamais. Où la solution ci-dessus ne marche-t-elle
   plus ?
2. Même question avec $17$ pièces, en partant de $3$ pièces et $14$ pièces. Ici $17$ est premier :
   quel est le plus petit $\omega \geqslant 1$ tel que $2^\omega \equiv 1 \pmod{17}$, et pourquoi
   cela empêche-t-il l'argument de l'étape 5 ?
