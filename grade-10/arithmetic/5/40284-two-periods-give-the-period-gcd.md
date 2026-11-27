---
id: "40284"
title: "Une suite finie de périodes a et b, assez longue, a la période PGCD(a, b)"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [periodicite, suites, restes, division-euclidienne, nombres-premiers-entre-eux, pgcd, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: ["40285", "10646"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2009, mathématiques, série S"
  reference: "cg-2009-s-sujet.pdf, exercice III « Arithmétique », questions 1 a), 1 b) et 2. La notation des intervalles d'entiers est écrite en toutes lettres."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2009.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2009-s-sujet.pdf"
---

## Statement

On considère une suite finie de $n$ nombres $U = (u_1, u_2, \ldots, u_n)$. On dit qu'un entier $p \geq 1$ est une *période* de $U$ si $u_i = u_{i+p}$ pour tout entier $i$ tel que $1 \leq i \leq n - p$. Une suite peut avoir plusieurs périodes. Par exemple, la suite $(1, 0, 1, 1, 0, 1)$, de longueur $n = 6$, a les périodes $3$ et $5$.

Deux entiers sont *premiers entre eux* quand leur seul diviseur commun positif est $1$. Le $\mathrm{PGCD}$ de deux entiers est leur plus grand diviseur commun.

1. Soit $a$ et $b$ deux entiers strictement positifs premiers entre eux. Pour tout entier $k \geq 1$, on note $r_k$ le reste de la division euclidienne de $ka$ par $a + b$.

   a) Montrer que, lorsque $k$ prend les valeurs $1, 2, \ldots, a + b - 1$, le reste $r_k$ prend toutes les valeurs $1, 2, \ldots, a + b - 1$.

   b) En déduire que, si $a$ et $b$ sont des périodes de $U$ et si $n \geq a + b - 1$, alors $U$ est constante.

2. Soit maintenant $a$ et $b$ deux entiers strictement positifs, et $d$ leur $\mathrm{PGCD}$. Montrer que, si $a$ et $b$ sont des périodes de $U$ et si $n \geq a + b - d$, alors $d$ est aussi une période de $U$.

## Hints

1. **Question 1.** a) Avec $a = 3$ et $b = 5$, calculer les restes de $3, 6, 9, \ldots, 21$ dans la division par $8$.
2. **Question 1.** a) Il suffit de montrer que les restes $r_1, \ldots, r_{a+b-1}$ sont tous différents et qu'aucun n'est nul. Si $r_k = r_l$ avec $k < l$, que peut-on dire de $(l - k)a$ ?
3. **Question 1.** a) Montrer que $a + b$ et $a$ n'ont aucun facteur premier commun. Si $a + b$ divise $ma$, où vont les facteurs premiers de $a + b$ dans la décomposition de $ma$ ?
4. **Question 1.** b) Avec $a = 3$, $b = 5$ et une suite de longueur $7$, la période $3$ donne $u_3 = u_6$, puis la période $5$ donne $u_6 = u_1$. Continuer en suivant l'ordre des restes $3, 6, 1, 4, 7, 2, 5$.
5. **Question 1.** b) Comparer $r_{k+1}$ et $r_k$ : on passe de l'un à l'autre en ajoutant $a$ ou en retirant $b$. Dans les deux cas, une des deux périodes relie $u_{r_k}$ et $u_{r_{k+1}}$.
6. **Question 1.** b) Pour quelle valeur de $k$ a-t-on $r_k = b$ ? Ce cas pose problème, mais il n'arrive qu'à la fin.
7. **Question 2.** Écrire $a = d a'$ et $b = d b'$. Regarder seulement un terme sur $d$ : $u_j, u_{j+d}, u_{j+2d}, \ldots$ Quelles sont les périodes de cette nouvelle suite, et quelle est sa longueur ?

## Solution

**1.** a) *Un lemme.* Montrons que si $a + b$ divise un produit $ma$, où $m$ est un entier positif, alors $a + b$ divise $m$.

D'abord, $a + b$ et $a$ sont premiers entre eux : un diviseur commun de $a + b$ et de $a$ divise leur différence $b$, c'est donc un diviseur commun de $a$ et de $b$, et il vaut $1$. Ainsi aucun nombre premier ne divise à la fois $a + b$ et $a$.

Supposons que $a + b$ divise $ma$, et soit $p$ un nombre premier qui apparaît $e$ fois dans la décomposition de $a + b$ en facteurs premiers. Alors $p$ apparaît au moins $e$ fois dans la décomposition de $ma$, qui est formée de celle de $m$ et de celle de $a$. Comme $p$ n'apparaît pas dans celle de $a$, il apparaît au moins $e$ fois dans celle de $m$. C'est vrai pour chaque facteur premier de $a + b$, donc $a + b$ divise $m$.

*Les restes sont non nuls.* Si $r_k = 0$ pour un $k$ entre $1$ et $a + b - 1$, alors $a + b$ divise $ka$, donc divise $k$ d'après le lemme. C'est impossible, car $0 < k < a + b$.

*Les restes sont tous différents.* Si $r_k = r_l$ avec $1 \leq k < l \leq a + b - 1$, alors $ka$ et $la$ ont le même reste dans la division par $a + b$, donc $a + b$ divise leur différence $(l - k)a$. D'après le lemme, $a + b$ divise $l - k$, ce qui est impossible car $0 < l - k < a + b$.

On a donc $a + b - 1$ restes tous différents, pris parmi les $a + b - 1$ valeurs $1, 2, \ldots, a + b - 1$.

**Conclusion :** les restes $r_1, \ldots, r_{a+b-1}$ prennent chacune des valeurs $1, 2, \ldots, a + b - 1$, une fois chacune.

Par exemple, pour $a = 3$ et $b = 5$, les restes de $3, 6, 9, 12, 15, 18, 21$ dans la division par $8$ sont $3, 6, 1, 4, 7, 2, 5$.

b) *Comment on passe de $r_k$ à $r_{k+1}$.* Comme $(k+1)a = ka + a$, le nombre $r_k + a$ a le même reste que $(k+1)a$ dans la division par $a + b$. De plus $r_k + a$ est compris entre $a + 1$ et $2a + b - 1$, qui est inférieur à $2(a + b)$.

- Si $r_k \leq b - 1$, alors $r_k + a \leq a + b - 1$, donc $r_{k+1} = r_k + a$.
- Si $r_k \geq b + 1$, alors $a + b < r_k + a < 2(a + b)$, donc $r_{k+1} = r_k + a - (a + b) = r_k - b$.
- Enfin $(a + b - 1)a = (a + b)(a - 1) + b$, donc $r_{a+b-1} = b$. D'après a), c'est le seul $k$ entre $1$ et $a + b - 1$ pour lequel $r_k = b$.

*Deux restes consécutifs donnent deux termes égaux.* Supposons que $a$ et $b$ sont des périodes de $U$ et que $n \geq a + b - 1$. Soit $k$ entre $1$ et $a + b - 2$, de sorte que $r_k \neq b$.

- Si $r_k \leq b - 1$ : alors $r_k \leq b - 1 \leq n - a$, et la période $a$ donne $u_{r_k} = u_{r_k + a} = u_{r_{k+1}}$.
- Si $r_k \geq b + 1$ : alors $r_{k+1} = r_k - b \leq a - 1 \leq n - b$, et la période $b$ donne $u_{r_{k+1}} = u_{r_{k+1} + b} = u_{r_k}$.

Ainsi $u_{r_1} = u_{r_2} = \cdots = u_{r_{a+b-1}}$. D'après a), les indices $r_1, \ldots, r_{a+b-1}$ sont exactement $1, 2, \ldots, a + b - 1$, donc
$$u_1 = u_2 = \cdots = u_{a+b-1}.$$
Avec $a = 3$ et $b = 5$, cela donne $u_3 = u_6 = u_1 = u_4 = u_7 = u_2 = u_5$.

*Les termes suivants.* Pour $i \geq a + b$, on a $i - a \geq 1$ et $i - a \leq n - a$, donc $u_i = u_{i-a}$ par la période $a$. De proche en proche, chaque terme d'indice $i \geq a + b$ est égal à un terme d'indice plus petit, donc à $u_1$.

**Conclusion :** si $a$ et $b$ sont premiers entre eux et sont des périodes de $U$, avec $n \geq a + b - 1$, alors $U$ est constante.

**2.** Écrivons $a = d a'$ et $b = d b'$. Les entiers $a'$ et $b'$ sont premiers entre eux : si $e$ divise $a'$ et $b'$, alors $de$ divise $a$ et $b$, donc $de \leq d$ et $e = 1$.

Fixons $j$ entre $1$ et $d$, et regardons les termes de $U$ dont l'indice s'écrit $j + td$ avec $t \geq 0$. On obtient une nouvelle suite $W = (w_1, w_2, \ldots, w_m)$, avec $w_s = u_{j + (s-1)d}$, où $m$ est le nombre d'indices $j + (s - 1)d$ qui ne dépassent pas $n$.

*$a'$ est une période de $W$.* Si $s + a' \leq m$, l'indice $i = j + (s-1)d$ vérifie $i + a = j + (s + a' - 1)d \leq n$, donc $w_{s + a'} = u_{i + a} = u_i = w_s$. De même, $b'$ est une période de $W$.

*$W$ est assez longue.* Le terme $w_{a' + b' - 1}$ existe, car son indice dans $U$ vaut
$$j + (a' + b' - 2)d \leq d + a + b - 2d = a + b - d \leq n.$$
Donc $m \geq a' + b' - 1$.

D'après la question 1 b), appliquée à $W$ avec les périodes $a'$ et $b'$ premières entre elles, $W$ est constante. Autrement dit, $u_i = u_{i+d}$ pour tout indice $i$ de la forme $j + td$ tel que $i + d \leq n$.

Enfin, tout indice $i$ entre $1$ et $n - d$ s'écrit $j + td$ avec $j$ entre $1$ et $d$ : on prend pour $j$ le reste de $i$ dans la division par $d$, ou $j = d$ si ce reste est nul.

**Conclusion :** $u_i = u_{i+d}$ pour tout $i$ tel que $1 \leq i \leq n - d$ : $d$ est une période de $U$.

**Bilan.** Une suite finie qui a deux périodes $a$ et $b$ a aussi la période $\mathrm{PGCD}(a, b)$, dès que sa longueur est au moins $a + b - \mathrm{PGCD}(a, b)$. C'est le *théorème de Fine et Wilf*, utilisé en informatique pour l'étude des mots. L'exemple de l'énoncé, $(1, 0, 1, 1, 0, 1)$, a les périodes $3$ et $5$ et n'est pas constant : sa longueur $6$ est juste en dessous de $3 + 5 - 1 = 7$.

## Going further

- Pour une suite *infinie*, c'est beaucoup plus simple : si $a$ et $b$ sont des périodes, alors $\mathrm{PGCD}(a, b)$ en est une, sans condition. Voir l'exercice 10646.
- Quand $a$ et $b$ sont premiers entre eux et plus grands que $1$, la longueur $a + b - 1$ ne peut pas être abaissée. Dans la suite du sujet, on construisait, pour $a$ et $b$ premiers entre eux et plus grands que $1$, une suite de longueur $a + b - 2$ formée de $0$ et de $1$, de périodes $a$ et $b$, qui n'est pas constante : voir l'exercice 40285.
