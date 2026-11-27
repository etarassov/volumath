---
id: "40207"
title: "Les diviseurs premiers de u² − uv − v² se terminent par 1 ou 9"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [maths-expertes, congruences, petit-theoreme-de-fermat, partie-entiere, nombre-d-or, nombres-premiers, residus-quadratiques, stabilite]
adapted_from: null
see_also: ["40203", "40204", "40205", "40206"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2007, mathématiques, série S"
  reference: "cg-2007-s-sujet.pdf, exercice 3, partie II « Arithmétique », B « Entiers de la forme u² − uv − v² et leurs diviseurs », questions 1, 2 a) à 2 d), 3 a) et 3 b)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2007.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2007-s-sujet.pdf"
---

## Statement

On note $E$ l'ensemble des entiers de la forme $u^2 - uv - v^2$, où $u$ et $v$ sont des entiers
relatifs quelconques.

1. On note $\omega$ et $\omega'$ les deux solutions de l'équation $x^2 - x - 1 = 0$.

   a) Montrer que $u^2 - uv - v^2 = (u - \omega v)(u - \omega' v)$.

   b) En déduire que $E$ est stable par multiplication : le produit de deux éléments de $E$ est
   encore dans $E$.

   c) Que peut-on dire de l'ensemble $F$ des entiers de la forme $u^2 + 4uv - v^2$, où $u$ et $v$
   sont des entiers relatifs quelconques ?

2. Soit $p = 2q + 1$ un nombre premier strictement supérieur à $5$, qui divise un entier
   $u^2 - uv - v^2$, où $u$ et $v$ sont des entiers relatifs premiers entre eux.

   a) Montrer que $(2u - v)^2 \equiv 5v^2 \pmod{p}$ et $(u + 2v)^2 \equiv 5u^2 \pmod{p}$.

   b) En déduire que $5^q \equiv 1 \pmod{p}$.

   c) Pour tout entier $j$ compris entre $1$ et $q$, on note $r_j$ le reste de la division de $5j$
      par $p$. Si $r_j \leq q$, on pose $f(j) = r_j$ et $\varepsilon(j) = 1$ ; sinon, on pose
      $f(j) = p - r_j$ et $\varepsilon(j) = -1$. On a ainsi dans tous les cas $1 \leq f(j) \leq q$ et
      $5j \equiv \varepsilon(j)\,f(j) \pmod{p}$.

      Montrer que les entiers $f(1), f(2), \ldots, f(q)$ sont deux à deux distincts. En déduire que le
      nombre $m$ d'entiers $j$ compris entre $1$ et $q$ tels que $\varepsilon(j) = -1$ est pair.

   d) Pour tout réel $x$, on note $\lfloor x \rfloor$ sa partie entière, le plus grand entier
      inférieur ou égal à $x$. Montrer que
      $$\left\lfloor \frac{4p}{10} \right\rfloor - \left\lfloor \frac{3p}{10} \right\rfloor + \left\lfloor \frac{2p}{10} \right\rfloor - \left\lfloor \frac{p}{10} \right\rfloor$$
      est pair, puis que $p \equiv 1$ ou $p \equiv -1 \pmod{10}$.

3. On considère un triangle dont les côtés $a = BC$, $b = CA$, $c = AB$ sont des entiers sans
   facteur premier commun, et dont les médianes issues de $A$ et de $B$ sont perpendiculaires. On
   admet les résultats suivants, démontrés dans une partie précédente : $a^2 + b^2 = 5c^2$, ni $a$
   ni $b$ n'est divisible par $3$ ou par $5$, et, quitte à échanger $A$ et $B$, $a$ est pair, $b$ est
   impair, et il existe des entiers $u > v > 0$ premiers entre eux, de parités différentes, tels que
   $$(1) \quad a = 2(u^2 - uv - v^2), \ \ b = u^2 + 4uv - v^2 \qquad \text{ou} \qquad (2) \quad a = 2(u^2 + uv - v^2), \ \ b = -u^2 + 4uv + v^2 .$$

   a) Montrer que tous les facteurs premiers impairs de $a$ sont congrus à $1$ ou à $9$ modulo $10$.

   b) Que peut-on dire des facteurs premiers de $b$ ?

## Hints

1. **Question 1 a).** Utiliser la somme et le produit des racines : $\omega + \omega' = 1$ et
   $\omega\omega' = -1$.
2. **Question 1 b).** Développer $(u - \omega v)(x - \omega y)$ en remplaçant $\omega^2$ par
   $\omega + 1$ : on obtient un nombre de la forme $U - \omega V$ avec $U$, $V$ entiers. Le même calcul
   marche avec $\omega'$.
3. **Question 1 c).** Chercher à écrire $u^2 + 4uv - v^2$ sous la forme $U^2 - UV - V^2$ avec
   $V = 2v$.
4. **Question 1 c).** Pour l'inclusion inverse, vérifier que le couple $(2U + V, U + V)$ donne la même
   valeur que $(U, V)$, et regarder les parités.
5. **Question 2 a).** Calculer $4(u^2 - uv - v^2)$.
6. **Question 2 b).** Petit théorème de Fermat. Il faut d'abord vérifier que $p$ ne divise ni $v$
   ni $2u - v$.
7. **Question 2 c).** Si $f(j) = f(k)$, alors $p$ divise $5(k - j)$ ou $5(k + j)$. Pour la parité de
   $m$, multiplier entre elles les $q$ congruences $5j \equiv \varepsilon(j) f(j)$.
8. **Question 2 d).** Comme $5j < \frac{5p}{2}$, on a $\varepsilon(j) = -1$ exactement quand $5j$ est
   entre $\frac{p}{2}$ et $p$, ou entre $\frac{3p}{2}$ et $2p$. Compter les entiers $j$ correspondants.
9. **Question 2 d).** Écrire $p = 10k + r$ avec $r \in \{1, 3, 7, 9\}$.
10. **Question 3.** Écrire $\frac{a}{2}$ et $b$ (ou $-b$) sous la forme $U^2 - UV - V^2$ avec $U$ et
    $V$ premiers entre eux, en utilisant la question 1 c).

## Solution

**1. a)** On a $\omega = \frac{1 + \sqrt{5}}{2}$ et $\omega' = \frac{1 - \sqrt{5}}{2}$, donc
$\omega + \omega' = 1$ et $\omega\omega' = \frac{1 - 5}{4} = -1$. Ainsi
$$(u - \omega v)(u - \omega' v) = u^2 - (\omega + \omega')uv + \omega\omega' v^2 = u^2 - uv - v^2 .$$

**b)** Soit $n = u^2 - uv - v^2$ et $n' = x^2 - xy - y^2$ deux éléments de $E$. Comme
$\omega^2 = \omega + 1$,
$$(u - \omega v)(x - \omega y) = ux - \omega(uy + vx) + (\omega + 1)vy = U - \omega V ,$$
avec $U = ux + vy$ et $V = uy + vx - vy$, qui sont des entiers. Le nombre $\omega'$ vérifie la même
équation, donc de même $(u - \omega' v)(x - \omega' y) = U - \omega' V$, avec les mêmes $U$ et $V$. En
multipliant et en utilisant a) :
$$nn' = (U - \omega V)(U - \omega' V) = U^2 - UV - V^2 .$$

**Conclusion :** $nn'$ est dans $E$ : l'ensemble $E$ est stable par multiplication.

**c)** **Réponse : $F = E$.** En particulier, $F$ est lui aussi stable par multiplication.

*$F$ est inclus dans $E$.* En développant,
$$(u + 3v)^2 - (u + 3v)(2v) - (2v)^2 = u^2 + 6uv + 9v^2 - 2uv - 6v^2 - 4v^2 = u^2 + 4uv - v^2 .$$
Donc $u^2 + 4uv - v^2$ est l'élément de $E$ obtenu avec $U = u + 3v$ et $V = 2v$.

*$E$ est inclus dans $F$.* Soit $n = U^2 - UV - V^2$.

- Si $V$ est pair, $V = 2v$, on pose $u = U - 3v$ : le calcul précédent montre que
  $u^2 + 4uv - v^2 = U^2 - UV - V^2 = n$, donc $n$ est dans $F$.
- Le couple $(U_1, V_1) = (2U + V, U + V)$ donne la même valeur. En effet,
  $(2U + V)^2 = 4U^2 + 4UV + V^2$, $(2U + V)(U + V) = 2U^2 + 3UV + V^2$ et
  $(U + V)^2 = U^2 + 2UV + V^2$, donc
  $$(2U + V)^2 - (2U + V)(U + V) - (U + V)^2 = U^2 - UV - V^2 .$$
- Si $U$ et $V$ sont impairs, $V_1 = U + V$ est pair, et on est ramené au premier cas.
- Si $U$ est pair et $V$ impair, on recommence avec $(U_1, V_1)$ : $V_2 = U_1 + V_1 = 3U + 2V$ est
  pair.

Dans tous les cas $n$ est dans $F$.

**2. a)** On a
$$(2u - v)^2 - 5v^2 = 4u^2 - 4uv - 4v^2 = 4(u^2 - uv - v^2),$$
$$(u + 2v)^2 - 5u^2 = -4u^2 + 4uv + 4v^2 = -4(u^2 - uv - v^2) .$$
Comme $p$ divise $u^2 - uv - v^2$, il divise ces deux différences.

**b)** *$p$ ne divise pas $v$.* Sinon $p$ diviserait $u^2 = (u^2 - uv - v^2) + uv + v^2$, donc $u$, alors que
$u$ et $v$ sont premiers entre eux.

*$p$ ne divise pas $2u - v$.* Sinon, d'après a), $p$ diviserait $5v^2$ ; or $p$ est premier, différent
de $5$, et ne divise pas $v$.

D'après le petit théorème de Fermat, $v^{p-1} \equiv 1$ et $(2u - v)^{p-1} \equiv 1 \pmod{p}$. Élevons la
congruence $(2u - v)^2 \equiv 5v^2$ à la puissance $q$, en notant que $2q = p - 1$ :
$$(2u - v)^{p-1} \equiv 5^q\, v^{p-1} \pmod{p}, \qquad \text{donc} \qquad 1 \equiv 5^q \pmod{p} .$$

**c)** *Les $f(j)$ sont distincts.* Supposons $f(j) = f(k)$ avec $1 \leq j < k \leq q$. Alors $5k$ et $5j$
sont congrus à $\pm f(j)$, donc $5k \equiv 5j$ ou $5k \equiv -5j \pmod{p}$ : $p$ divise $5(k - j)$ ou
$5(k + j)$. Comme $p$ est premier et ne divise pas $5$, il divise $k - j$ ou $k + j$. Or
$0 < k - j < p$ et $0 < k + j \leq 2q - 1 < p$ : c'est impossible.

*La parité de $m$.* Les $q$ entiers $f(1), \ldots, f(q)$ sont distincts et compris entre $1$ et $q$ : ce
sont exactement $1, 2, \ldots, q$ dans un certain ordre. Multiplions les $q$ congruences
$5j \equiv \varepsilon(j) f(j) \pmod{p}$ :
$$5^q \times (1 \times 2 \times \cdots \times q) \equiv (-1)^m \times (1 \times 2 \times \cdots \times q) \pmod{p} .$$
Le nombre $q!$ est premier avec $p$ (tous ses facteurs sont plus petits que $p$), on peut donc le
simplifier : $5^q \equiv (-1)^m \pmod{p}$. Avec b), $(-1)^m \equiv 1 \pmod{p}$. Si $m$ était impair, on
aurait $-1 \equiv 1$, donc $p$ diviserait $2$ : impossible.

**Conclusion :** $m$ est pair.

**d)** *$m$ est égal à l'expression.* On a $\varepsilon(j) = -1$ quand $r_j \geq q + 1 = \frac{p + 1}{2}$,
c'est-à-dire quand $r_j > \frac{p}{2}$. Pour $1 \leq j \leq q$, on a $0 < 5j \leq 5q < \frac{5p}{2}$, et
$5j$ n'est pas un multiple de $p$. Écrivons $5j = tp + r_j$ : le quotient $t$ vaut $0$, $1$ ou $2$. Le
cas $t = 2$ avec $r_j > \frac{p}{2}$ donnerait $5j > \frac{5p}{2}$, ce qui est exclu. Donc
$\varepsilon(j) = -1$ exactement quand
$$\frac{p}{2} < 5j < p \qquad \text{ou} \qquad \frac{3p}{2} < 5j < 2p ,$$
c'est-à-dire $\frac{p}{10} < j < \frac{2p}{10}$ ou $\frac{3p}{10} < j < \frac{4p}{10}$. Ces entiers $j$ sont
bien entre $1$ et $q$, car $\frac{4p}{10} < \frac{p - 1}{2}$ dès que $p > 5$.

Les nombres $\frac{p}{10}$, $\frac{2p}{10}$, $\frac{3p}{10}$, $\frac{4p}{10}$ ne sont pas entiers, car $p$
est premier avec $10$. Or, si $x < y$ ne sont pas entiers, le nombre d'entiers strictement compris entre
$x$ et $y$ est $\lfloor y \rfloor - \lfloor x \rfloor$. Donc
$$m = \left\lfloor \frac{2p}{10} \right\rfloor - \left\lfloor \frac{p}{10} \right\rfloor + \left\lfloor \frac{4p}{10} \right\rfloor - \left\lfloor \frac{3p}{10} \right\rfloor ,$$
et cette expression est paire d'après c).

*Le chiffre des unités de $p$.* Le nombre $p$ est impair et n'est pas divisible par $5$ : $p = 10k + r$
avec $r \in \{1, 3, 7, 9\}$. Pour $n = 1, 2, 3, 4$, on a
$\left\lfloor \frac{np}{10} \right\rfloor = nk + \left\lfloor \frac{nr}{10} \right\rfloor$, donc
$$m = (4k - 3k + 2k - k) + s(r) = 2k + s(r), \qquad s(r) = \left\lfloor \frac{4r}{10} \right\rfloor - \left\lfloor \frac{3r}{10} \right\rfloor + \left\lfloor \frac{2r}{10} \right\rfloor - \left\lfloor \frac{r}{10} \right\rfloor .$$

| $r$ | $1$ | $3$ | $7$ | $9$ |
|:-:|:-:|:-:|:-:|:-:|
| $s(r)$ | $0 - 0 + 0 - 0 = 0$ | $1 - 0 + 0 - 0 = 1$ | $2 - 2 + 1 - 0 = 1$ | $3 - 2 + 1 - 0 = 2$ |

Le nombre $m$ est pair si et seulement si $s(r)$ l'est, c'est-à-dire si $r = 1$ ou $r = 9$.

**Conclusion :** $p \equiv 1$ ou $p \equiv 9 \equiv -1 \pmod{10}$.

**3. a)** Soit $p$ un facteur premier impair de $a$. Comme $a$ n'est divisible ni par $3$ ni par $5$,
on a $p \geq 7$. Et $p$ divise $\frac{a}{2}$, qui est dans les deux cas un élément de $E$ obtenu avec
deux entiers premiers entre eux :

- relation (1) : $\frac{a}{2} = u^2 - uv - v^2$ ;
- relation (2) : $\frac{a}{2} = u^2 + uv - v^2 = u^2 - u(-v) - (-v)^2$, avec $u$ et $-v$ premiers entre eux.

D'après la question 2, $p \equiv 1$ ou $9 \pmod{10}$.

**b)** Le nombre $b$ est impair, et n'est divisible ni par $3$ ni par $5$. D'après le calcul de 1 c) :

- relation (1) : $b = u^2 + 4uv - v^2 = U^2 - UV - V^2$ avec $U = u + 3v$ et $V = 2v$ ;
- relation (2) : $-b = u^2 - 4uv - v^2 = u^2 + 4u(-v) - (-v)^2 = U^2 - UV - V^2$ avec $U = u - 3v$ et
  $V = -2v$.

Dans les deux cas, $U$ et $V$ sont premiers entre eux. En effet $U = u \pm 3v$ est impair, puisque $u$
et $v$ sont de parités différentes, donc $2$ ne divise pas $U$. Et un nombre premier impair qui
diviserait $U$ et $V$ diviserait $v$, puis $u = U \mp 3v$ : c'est exclu.

Tout facteur premier $p$ de $b$ est donc au moins égal à $7$ et divise un élément $U^2 - UV - V^2$ de
$E$ avec $U$, $V$ premiers entre eux. D'après la question 2 :

**Conclusion :** tous les facteurs premiers de $b$ sont congrus à $1$ ou à $9$ modulo $10$. Ainsi, quel
que soit le nom des sommets, $c$ mis à part, le côté pair est le double d'un produit de nombres
premiers qui se terminent par $1$ ou $9$, et le côté impair est un tel produit.

Par exemple, pour le triangle $(a, b, c) = (58, 71, 41)$, on a $58 = 2 \times 29$ et $71$ est premier ;
pour $(22, 31, 17)$, on a $22 = 2 \times 11$.

**Bilan.** Un nombre premier $p > 5$ qui divise $u^2 - uv - v^2$ (avec $u$, $v$ premiers entre eux)
vérifie $5^{(p-1)/2} \equiv 1 \pmod{p}$, et un argument de comptage (questions 2 c et 2 d, le « lemme de Gauss » sur les résidus quadratiques, à ne pas confondre avec le théorème de Gauss sur la divisibilité) transforme
cette congruence en une condition sur le chiffre des unités : $p$ se termine par $1$ ou par $9$. Les
côtés $a$ et $b$ d'un triangle à côtés entiers dont deux médianes sont perpendiculaires ne peuvent
donc avoir, en dehors d'un facteur $2$, que des facteurs premiers de ce type.

## Going further

- Les questions 2 a) et 2 b) disent que $5$ est un carré modulo $p$. On peut le voir directement
  sur le triangle : si $p \geq 7$ divise $b$, alors $a^2 \equiv 5c^2 \pmod{p}$. Refaire la question 3
  par ce chemin, sans passer par $u$ et $v$.
- La réciproque est vraie aussi, mais plus difficile : tout nombre premier qui se termine par $1$ ou
  par $9$ est de la forme $u^2 - uv - v^2$. Trouver $u$ et $v$ pour $11$, $19$, $29$, $31$ et $41$.
- Le même comptage, avec un nombre premier $\ell$ à la place de $5$, est le point de départ de la
  loi de réciprocité quadratique de Gauss.
