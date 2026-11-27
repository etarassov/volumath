---
id: "40087"
title: "Les diviseurs premiers de n² + 1 sont sommes de deux carrés"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [somme-de-deux-carres, nombres-premiers, recurrence-forte, identite, restes, decomposition-en-facteurs-premiers, factorielle, infinite-des-nombres-premiers]
adapted_from: null
see_also: ["40081", "40082", "40083", "40084", "40085", "40086", "22052"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2004, mathématiques, série S"
  reference: "cg-2004-s-sujet.pdf, problème unique, partie VI « retour au problème initial », questions 1 à 4. À la question 1, le sujet impose les nombres complexes ; ici ils ne sont qu'une piste facultative. « Congru à 1 modulo 4 » est écrit « de reste 1 dans la division par 4 »."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2004.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2004-s-sujet.pdf"
---

## Statement

On dit qu'un entier naturel est « somme de deux carrés » s'il s'écrit $a^2 + b^2$ avec $a$ et $b$
entiers naturels. On admet les deux résultats suivants, démontrés dans les exercices 40085 et
40086 :

- **(F1)** Un entier naturel impair somme de deux carrés a pour reste $1$ dans la division par $4$.
- **(F2)** Tout nombre premier dont le reste dans la division par $4$ est $1$ est somme de deux
  carrés.

1. Soit $N = a^2 + b^2$ et $M = c^2 + d^2$ deux entiers sommes de deux carrés. Montrer que le
   produit $NM$ est somme de deux carrés, et en donner une décomposition explicite en fonction de
   $a$, $b$, $c$ et $d$. (Si l'on connaît les nombres complexes, on peut penser à
   $\lvert (a + \mathrm{i}\,b)(c + \mathrm{i}\,d) \rvert^2$.)
2. On veut démontrer, pour tout entier $n \geq 1$, la propriété
   $$\mathcal{P}(n) : \quad \text{« tout nombre premier qui divise } n^2 + 1 \text{ est somme de deux carrés »}.$$
   a) Montrer que $\mathcal{P}(1)$, $\mathcal{P}(2)$ et $\mathcal{P}(3)$ sont vraies.

   b) Soit $n \geq 2$ un entier. On suppose $\mathcal{P}(i)$ vraie pour tout entier $i$ tel que
   $1 \leq i \leq n - 1$, et l'on considère un nombre premier $p$ qui divise $n^2 + 1$.

      **i)** Montrer que $p \neq n$.

      **ii)** On suppose $p < n$. Montrer que $p$ divise $(n - p)^2 + 1$.

      **iii)** On suppose $n < p < n^2 + 1$. Montrer que les autres diviseurs premiers de $n^2 + 1$ sont
      strictement inférieurs à $n$. En déduire, en distinguant selon la parité de $n$, que $p$ a pour
      reste $1$ dans la division par $4$.

      **iv)** Montrer que $p$ est somme de deux carrés.

   c) Conclure.
3. a) Pour un entier $s \geq 2$, on note $p_s$ le plus petit diviseur premier du nombre
   $(s!)^2 + 1$. Montrer que $p_s > s$ et que $p_s$ est somme de deux carrés.

   b) En déduire qu'il existe une infinité de nombres premiers sommes de deux carrés.
4. Pour des entiers $1 \leq k < n$, on pose $L(n, k) = \frac{4}{2n - 1}\sqrt{n(n-1) - k(k-1)}$
   (c'est la longueur d'une corde dans une file de cercles tangents, exercice 40081). On admet que
   $L(n, k)$ est rationnel si et seulement si le couple $(p, q) = (2n - 1, 2k - 1)$ vérifie
   $p^2 - q^2 = 16a^2$ pour un entier naturel $a$, et que c'est le cas dès que
   $p = u^2 + v^2$ et $q = u^2 - v^2$ avec $u > v \geq 1$ de parités différentes (exercice 40084).

   a) Montrer qu'il existe une infinité de couples $(n, k)$, avec $1 \leq k < n$, tels que
   $L(n, k)$ soit rationnel.

   b) Trouver un entier $n$ pour lequel il existe plusieurs valeurs de $k$ telles que $L(n, k)$
   soit rationnel.

## Hints

1. **Question 1.** Développer $(ac - bd)^2 + (ad + bc)^2$.
2. **Question 2 b) ii).** Développer $(n - p)^2 + 1$ et faire apparaître $n^2 + 1$.
3. **Question 2 b) iii).** Écrire $n^2 + 1 = pQ$. Montrer que $Q \leq n$, puis qu'un autre diviseur
   premier de $n^2 + 1$ divise $Q$.
4. **Question 2 b) iii).** Les autres diviseurs premiers $q$ sont plus petits que $n$ : la question
   ii) et l'hypothèse de récurrence montrent qu'ils sont sommes de deux carrés. S'ils sont impairs,
   (F1) donne leur reste dans la division par $4$.
5. **Question 2 b) iii).** Un produit de nombres de reste $1$ dans la division par $4$ a pour reste
   $1$. Quel est le reste de $n^2 + 1$ dans la division par $4$ quand $n$ est pair ? Quand $n$ est
   impair, regarder $\frac{n^2 + 1}{2}$.
6. **Question 2 b) iv).** Faire la liste des cas : $p < n$, $p = n$, $n < p < n^2 + 1$,
   $p = n^2 + 1$.
7. **Question 3 a).** Un nombre premier inférieur ou égal à $s$ divise $s!$.
8. **Question 4 a).** Essayer $v = 1$ et $u$ pair.
9. **Question 4 b).** Un nombre qui s'écrit de deux façons comme somme de deux carrés donne deux
   valeurs de $q$ pour le même $p$. La question 1 en fabrique : essayer $65 = 5 \times 13$.

## Solution

**1.** En développant,
$$(ac - bd)^2 + (ad + bc)^2 = a^2c^2 - 2abcd + b^2d^2 + a^2d^2 + 2abcd + b^2c^2 = (a^2 + b^2)(c^2 + d^2).$$

**Conclusion :** $NM = (ac - bd)^2 + (ad + bc)^2 = \lvert ac - bd \rvert^2 + (ad + bc)^2$, qui est
somme de deux carrés d'entiers naturels. C'est exactement l'égalité
$\lvert z \rvert^2 \lvert w \rvert^2 = \lvert zw \rvert^2$ pour $z = a + \mathrm{i}\,b$ et
$w = c + \mathrm{i}\,d$, puisque $zw = (ac - bd) + \mathrm{i}\,(ad + bc)$.

**2. a)** $1^2 + 1 = 2 = 1^2 + 1^2$ ; $2^2 + 1 = 5 = 1^2 + 2^2$, qui est premier ;
$3^2 + 1 = 10 = 2 \times 5$, et $2$ et $5$ sont sommes de deux carrés. Les trois propriétés sont
vraies.

**2. b) i)** Si $p = n$, alors $p$ divise $n^2$ et $n^2 + 1$, donc leur différence $1$ :
impossible.

**2. b) ii)** On a $(n - p)^2 + 1 = (n^2 + 1) - 2np + p^2 = (n^2 + 1) - p(2n - p)$, différence de
deux multiples de $p$.

**Conclusion :** $p$ divise $(n - p)^2 + 1$. Comme $1 \leq n - p \leq n - 1$, l'hypothèse
$\mathcal{P}(n - p)$ montre alors que $p$ est somme de deux carrés.

**2. b) iii)** *Les autres diviseurs premiers sont petits.* Écrivons $n^2 + 1 = pQ$ avec $Q$
entier. Comme $p > n$,
$$Q = \frac{n^2 + 1}{p} < \frac{n^2 + 1}{n} = n + \frac{1}{n} < n + 1,$$
donc $Q \leq n$. En particulier $p$ ne divise pas $Q$, puisque $Q < p$. Par unicité de la
décomposition en facteurs premiers, les facteurs premiers de $pQ$ sont $p$ et ceux de $Q$. Un
diviseur premier $q$ de $n^2 + 1$ autre que $p$ divise donc $Q$, d'où $q \leq Q \leq n$, et
$q \neq n$ d'après i) (qui s'applique à tout diviseur premier de $n^2 + 1$).

**Conclusion :** $n^2 + 1 = p \times Q$, où $Q \leq n$ est un produit de nombres premiers tous
strictement inférieurs à $n$.

*Ces petits diviseurs sont sommes de deux carrés.* Pour chacun d'eux, $q < n$, la question ii)
(qui n'utilisait que $q < n$) montre que $q$ est somme de deux carrés. S'il est impair, (F1) donne :
$q$ a pour reste $1$ dans la division par $4$. Or un produit de nombres de reste $1$ a pour reste
$1$, puisque $(4x + 1)(4y + 1) = 4(4xy + x + y) + 1$.

*Si $n$ est pair*, $n = 2t$ et $n^2 + 1 = 4t^2 + 1$ a pour reste $1$. Il est impair, donc tous ses
facteurs premiers sont impairs : $Q$ a pour reste $1$, et $p$ est impair. Si $p$ avait pour reste
$3$, on aurait $pQ = (4x + 3)(4y + 1) = 4(4xy + x + 3y) + 3$, de reste $3$ : impossible. Donc $p$
a pour reste $1$.

*Si $n$ est impair*, $n = 2t + 1$ avec $t \geq 1$, et
$$n^2 + 1 = 4t^2 + 4t + 2 = 2\left(2t(t + 1) + 1\right).$$
Comme $t(t + 1)$ est pair, $2t(t + 1)$ est un multiple de $4$ : le nombre
$\frac{n^2 + 1}{2}$ est impair, de reste $1$. Le facteur premier $2$ apparaît donc une seule fois
dans $n^2 + 1$, et c'est l'un des petits facteurs (on a bien $2 < 3 \leq n$). Ainsi $Q = 2Q'$ où
$Q'$ est un produit de nombres premiers impairs de reste $1$, donc $Q'$ a pour reste $1$. Enfin
$p > n \geq 3$ est impair, et $pQ' = \frac{n^2 + 1}{2}$ a pour reste $1$. Comme dans le cas pair,
$p$ ne peut pas avoir pour reste $3$.

**Conclusion :** dans les deux cas, $p$ a pour reste $1$ dans la division par $4$.

**2. b) iv)** Comme $p$ divise $n^2 + 1$, on a $p \leq n^2 + 1$. Il y a quatre cas.

- $p = n$ : impossible d'après i).
- $p < n$ : $p$ est somme de deux carrés d'après ii).
- $n < p < n^2 + 1$ : $p$ a pour reste $1$ dans la division par $4$ d'après iii), donc il est
  somme de deux carrés d'après (F2).
- $p = n^2 + 1$ : alors $p = n^2 + 1^2$.

**Conclusion :** $p$ est somme de deux carrés, et $\mathcal{P}(n)$ est vraie.

**2. c)** La propriété $\mathcal{P}(1)$ est vraie, et la question b) montre que, pour tout
$n \geq 2$, si $\mathcal{P}(1)$, …, $\mathcal{P}(n - 1)$ sont vraies, alors $\mathcal{P}(n)$ est
vraie. Par récurrence (forte), $\mathcal{P}(n)$ est vraie pour tout $n \geq 1$ : **tout nombre
premier qui divise un nombre de la forme $n^2 + 1$ est somme de deux carrés.**

**3. a)** Soit $\ell$ un nombre premier tel que $\ell \leq s$. Alors $\ell$ est l'un des facteurs de
$s! = 1 \times 2 \times \cdots \times s$, donc $\ell$ divise $(s!)^2$. S'il divisait aussi
$(s!)^2 + 1$, il diviserait $1$. Aucun nombre premier inférieur ou égal à $s$ ne divise donc
$(s!)^2 + 1$, et comme ce nombre est au moins $5$, il a un plus petit diviseur premier $p_s$, qui
vérifie $p_s > s$. Enfin $p_s$ divise $N^2 + 1$ avec $N = s!$, donc il est somme de deux carrés
d'après $\mathcal{P}(s!)$.

**3. b)** Si les nombres premiers sommes de deux carrés étaient en nombre fini, notons $s \geq 2$ le
plus grand d'entre eux. Le nombre $p_s$ de la question a) serait un nombre premier somme de deux
carrés strictement plus grand que $s$ : contradiction.

**Conclusion :** il existe une infinité de nombres premiers sommes de deux carrés.

**4. a)** Prenons $v = 1$ et $u = 2t$ avec $t \geq 1$ entier : $u > v$ et les parités sont
différentes. Alors $p = 4t^2 + 1$, $q = 4t^2 - 1$, ce qui donne $n = \frac{p + 1}{2} = 2t^2 + 1$ et
$k = \frac{q + 1}{2} = 2t^2$. On vérifie directement :
$$n(n-1) - k(k-1) = (2t^2 + 1) \cdot 2t^2 - 2t^2(2t^2 - 1) = 2t^2 \cdot 2 = 4t^2,$$
donc $L(2t^2 + 1, 2t^2) = \frac{8t}{4t^2 + 1}$ est rationnel. Les couples
$(3, 2)$, $(9, 8)$, $(19, 18)$, … sont deux à deux distincts.

**Conclusion :** il y a une infinité de couples $(n, k)$ pour lesquels $L(n, k)$ est rationnel.

(On peut aussi utiliser la question 3 : chaque nombre premier $p$ somme de deux carrés,
$p = u^2 + v^2$ avec $u > v \geq 1$, est impair s'il est différent de $2$, donc $u$ et $v$ sont
de parités différentes, et il fournit un couple $(n, k)$.)

**4. b)** D'après la question 1, $65 = 5 \times 13 = (1^2 + 2^2)(2^2 + 3^2)$ s'écrit de deux
façons :
$$65 = (1 \times 2 - 2 \times 3)^2 + (1 \times 3 + 2 \times 2)^2 = 4^2 + 7^2,$$
$$65 = (1 \times 2 + 2 \times 3)^2 + (1 \times 3 - 2 \times 2)^2 = 8^2 + 1^2 .$$

- Avec $u = 7$, $v = 4$ : $p = 65$, $q = 49 - 16 = 33$, d'où $n = 33$ et $k = 17$.
- Avec $u = 8$, $v = 1$ : $p = 65$, $q = 64 - 1 = 63$, d'où $n = 33$ et $k = 32$.

Vérification : $33 \times 32 = 1056$, $1056 - 17 \times 16 = 784 = 4 \times 14^2$ et
$1056 - 32 \times 31 = 64 = 4 \times 4^2$.

**Conclusion :** pour $n = 33$, $L(33, 17) = \frac{112}{65}$ et $L(33, 32) = \frac{32}{65}$ sont
rationnels. (Il y en a même d'autres : $k = 13$ et $k = 20$ conviennent aussi. Et le plus petit $n$
qui convient est $n = 13$, avec $k = 4$ et $k = 8$.)

**Bilan.** Le produit de deux sommes de deux carrés est une somme de deux carrés. Par une récurrence
forte qui s'appuie sur le théorème des deux carrés de Fermat, tout diviseur premier d'un nombre
$n^2 + 1$ est somme de deux carrés ; en prenant $n = s!$, on en déduit qu'il y a une infinité de
nombres premiers sommes de deux carrés. Pour le problème des cercles tangents, il y a une infinité
de couples $(n, k)$ pour lesquels la corde a une longueur rationnelle, et certains $n$ en ont
plusieurs.

## Going further

- Combien de valeurs de $k$ conviennent pour $n = 33$ ? Expliquer les valeurs $k = 13$ et $k = 20$
  à partir des solutions pour $p = 13$ et $p = 5$.
- Une récurrence toute pareille démontre, sans utiliser (F2), la propriété « tout nombre premier
  qui divise $n^2 + 1$ est égal à $2$ ou a pour reste $1$ dans la division par $4$ ». Pouvez-vous
  l'écrire ?
- Pour $s = 2, 3, 4, 5, 6$, calculer $p_s$ (à la calculatrice) et l'écrire comme somme de deux
  carrés.
