---
id: "40401"
title: "Échanger les nombres premiers et les exposants"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 40
tags: [decomposition-en-facteurs-premiers, exposants, puissances, iteration, point-fixe, monotonie, equation]
adapted_from: null
see_also: ["40402", "40403"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2012, mathématiques, série S"
  reference: "cg-2012-s-sujet.pdf, problème 1 « Les premiers sont les derniers », questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2012.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2012-s-sujet.pdf"
---

## Statement

Tout entier $n \geq 2$ s'écrit comme produit de facteurs premiers :
$$n = p_1^{a_1} \times p_2^{a_2} \times \cdots \times p_k^{a_k}$$
où $p_1, p_2, \ldots, p_k$ sont des nombres premiers **distincts** et où les exposants
$a_1, a_2, \ldots, a_k$ sont des entiers strictement positifs. On **échange** alors les rôles des
nombres premiers et des exposants, en posant
$$f(n) = a_1^{p_1} \times a_2^{p_2} \times \cdots \times a_k^{p_k} .$$
Par exemple, $720 = 2^4 \times 3^2 \times 5^1$, donc $f(720) = 4^2 \times 2^3 \times 1^5 = 128$.
On pose de plus $f(1) = 1$.

On peut recommencer avec le résultat. On note $f^0(n) = n$, $f^1(n) = f(n)$,
$f^2(n) = f(f(n))$, et plus généralement $f^{i+1}(n) = f(f^i(n))$ pour tout entier $i \geq 0$.
Attention, ici $f^2(n)$ ne désigne pas un carré. Par exemple $f^0(720) = 720$,
$f^1(720) = 128$ et $f^2(720) = f(128) = f(2^7) = 7^2 = 49$.

1. a) Calculer $f(2012)$.

   b) Calculer les nombres $f^i(36^{36})$ pour $i = 0, 1, 2, 3$. Que peut-on dire des
   suivants ?

2. a) Trouver un entier $n \geq 1$ tel que $f(n) \neq n$ mais $f(f(n)) = n$. Les nombres
   $n, f(n), f^2(n), f^3(n), \ldots$ prennent alors deux valeurs, en alternance.

   b) Montrer que la fonction $f$ n'est ni croissante ni décroissante.

3. Résoudre les équations suivantes, d'inconnue l'entier $n \geq 1$ :

   a) $f(n) = 1$ ; b) $f(n) = 2$ ; c) $f(n) = 4$.

## Hints

1. **Question 1.** $2012 = 4 \times 503$. Le nombre $503$ est-il premier ?
2. **Question 1.** Décomposer $36$ en facteurs premiers, puis $36^{36}$. À chaque étape,
   redécomposer le résultat en facteurs premiers avant d'appliquer $f$ de nouveau.
3. **Question 2.** Que vaut $f(p^a)$ quand $p$ est premier ? Et si l'exposant $a$ est lui aussi
   un nombre premier, que vaut $f(f(p^a))$ ?
4. **Question 2.** Essayer $n = 2^3$.
5. **Question 2.** Pour b), il suffit de trouver deux entiers $m < n$ avec $f(m) > f(n)$, puis
   deux autres avec $f(m) < f(n)$. La question a) en donne déjà deux.
6. **Question 3.** Chaque facteur $a_i^{p_i}$ vaut $1$ quand $a_i = 1$. Quand $a_i \geq 2$,
   quelle est sa plus petite valeur possible ? Ne pas oublier que $p_i \geq 2$.
7. **Question 3.** Pour $f(n) = 4$ : combien de facteurs $a_i^{p_i}$ peuvent être différents
   de $1$ ? Si $p_i \geq 3$ et $a_i \geq 2$, alors $a_i^{p_i} \geq 8$.

## Solution

**1. a)** Le nombre $503$ n'est divisible ni par $2$, ni par $3$, $5$, $7$, $11$, $13$, $17$,
$19$, et $23^2 = 529 > 503$ : il est donc premier. Ainsi $2012 = 2^2 \times 503^1$, et
$$f(2012) = 2^2 \times 1^{503} = 4 .$$

**b)** On a $36 = 2^2 \times 3^2$, donc $f^0(36^{36}) = 36^{36} = 2^{72} \times 3^{72}$.

- $f^1(36^{36}) = 72^2 \times 72^3 = 72^5$. Comme $72 = 2^3 \times 3^2$, cela s'écrit
  $2^{15} \times 3^{10}$.
- $f^2(36^{36}) = f(2^{15} \times 3^{10}) = 15^2 \times 10^3 = 225 \times 1000 = 225\,000$.
  En facteurs premiers, $15^2 \times 10^3 = 3^2 \times 5^2 \times 2^3 \times 5^3 = 2^3 \times 3^2 \times 5^5$.
- $f^3(36^{36}) = f(2^3 \times 3^2 \times 5^5) = 3^2 \times 2^3 \times 5^5 = 225\,000$.

Le nombre $225\,000 = 2^3 \times 3^2 \times 5^5$ vérifie donc $f(225\,000) = 225\,000$ : en
échangeant les nombres premiers et les exposants, on retombe sur les mêmes facteurs
$2^3$, $3^2$ et $5^5$, dans un autre ordre. Par conséquent
$f^4(36^{36}) = f(f^3(36^{36})) = f(225\,000) = 225\,000$, et ainsi de suite.

**Conclusion :** $f^0(36^{36}) = 36^{36}$, $f^1(36^{36}) = 72^5$, et
$f^i(36^{36}) = 225\,000$ pour tout $i \geq 2$.

**2. a)** Pour $n = 2^3 = 8$, on a $f(8) = 3^2 = 9$, puis $f(9) = f(3^2) = 2^3 = 8$. Donc
$f(8) \neq 8$ et $f(f(8)) = 8$. La suite $f^i(8)$ vaut $8, 9, 8, 9, \ldots$

Plus généralement, si $p$ et $q$ sont deux nombres premiers distincts, $n = p^q$ convient :
$f(p^q) = q^p$ et $f(q^p) = p^q$.

**b)** On a $8 < 9$ mais $f(8) = 9 > f(9) = 8$ : la fonction $f$ n'est pas croissante.
On a $2 < 4$ et $f(2) = f(2^1) = 1^2 = 1 < f(4) = f(2^2) = 2^2 = 4$ : la fonction $f$ n'est pas
décroissante.

**3.** Pour $n \geq 2$, chaque facteur $a_i^{p_i}$ de $f(n)$ vaut $1$ si $a_i = 1$. Si
$a_i \geq 2$, comme $p_i \geq 2$, il vaut au moins $2^2 = 4$. Ainsi **chaque facteur vaut $1$ ou
est supérieur ou égal à $4$.**

**a)** $f(1) = 1$. Pour $n \geq 2$, $f(n) = 1$ si et seulement si tous les facteurs valent $1$,
c'est-à-dire si tous les exposants $a_i$ valent $1$.

**Conclusion :** les solutions de $f(n) = 1$ sont $n = 1$ et les produits de nombres premiers
distincts, chacun à la puissance $1$ : $2, 3, 5, 6, 7, 10, 11, 13, 14, 15, \ldots$

**b)** Si tous les facteurs valent $1$, alors $f(n) = 1$. Sinon l'un d'eux est au moins égal à
$4$, et $f(n) \geq 4$. Dans aucun cas $f(n) = 2$, et $f(1) = 1$.

**Conclusion :** l'équation $f(n) = 2$ n'a aucune solution.

**c)** Supposons $f(n) = 4$, donc $n \geq 2$. Deux facteurs supérieurs ou égaux à $4$ donneraient
un produit au moins égal à $16$ : il y a donc exactement un facteur $a_i^{p_i}$ différent de $1$,
et il vaut $4$. Si $p_i \geq 3$, alors $a_i^{p_i} \geq 2^3 = 8$ : impossible. Donc $p_i = 2$, et
$a_i^2 = 4$ donne $a_i = 2$. Tous les autres exposants valent $1$.

Réciproquement, si $n = 2^2 \times q_1 \times \cdots \times q_r$ avec $q_1, \ldots, q_r$ des nombres
premiers impairs distincts ($r = 0$ est permis), alors $f(n) = 2^2 \times 1 \times \cdots \times 1 = 4$.

**Conclusion :** les solutions de $f(n) = 4$ sont les nombres $n = 4m$, où $m$ est impair et est
un produit de nombres premiers distincts (ou $m = 1$) : $4, 12, 20, 28, 44, 52, 60, \ldots$

**Bilan.** La fonction $f$ échange les nombres premiers et les exposants. Certains nombres sont
fixes, comme $225\,000 = 2^3 \times 3^2 \times 5^5$ ; d'autres vont par paires, comme $8$ et $9$.
La fonction $f$ n'est pas monotone. Le nombre $1$ a une infinité d'antécédents, le nombre $2$
n'en a aucun, et $4$ en a une infinité : ce sont les nombres $4m$, où $m$ vaut $1$ ou est un
produit de nombres premiers impairs distincts.

## Going further

- Pour tout nombre premier $p$, que vaut $f(p^p)$ ? Trouver d'autres nombres $n$ tels que
  $f(n) = n$.
- Dans la suite du sujet, on montrait que $f(f(n)) \leq n$ pour tout $n$, et donc que la suite
  $f^0(n), f^1(n), f^2(n), \ldots$ finit toujours soit par être constante, soit par alterner entre
  deux valeurs : voir l'exercice 40402. Par exemple $720, 128, 49, 128, 49, \ldots$
- La question b) montre que $2$ n'est jamais une valeur de $f$. Quels sont les entiers qui
  s'écrivent $f(m)$ ? C'est l'exercice 40403.
