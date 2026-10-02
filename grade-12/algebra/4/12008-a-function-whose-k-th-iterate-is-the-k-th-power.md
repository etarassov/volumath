---
id: "12008"
title: "Une fonction dont la k-ième itérée élève à la puissance k"
grade: 12
theme: algebra
difficulty: 4
duration_min: 50
tags: [fonctions, iteration, construction, puissances, equation-fonctionnelle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2012"
  reference: "2017-10_ofm-2011-2012-test-mars-2.pdf, exercice 4 (fonctions « k-tastrophiques ») ; corrigé 2017-10_ofm-2011-2012-test-mars-corrige.pdf (la construction gloutonne du corrigé est présentée ici sous forme explicite, par paquets)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2011-2012-test-mars-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2011-2012-test-mars-2.pdf"
---

## Statement

Soit $k > 1$ un entier. On note $\mathbb{N}^*$ l'ensemble des entiers strictement positifs. Pour une fonction $f : \mathbb{N}^* \to \mathbb{N}^*$, on note $f^k$ la $k$-ième itérée de $f$, c'est-à-dire la fonction obtenue en appliquant $k$ fois de suite $f$ :

$$f^k(n) = f(f(\cdots f(n) \cdots)) \qquad (k \text{ fois}).$$

Pour quels entiers $k > 1$ existe-t-il une fonction $f : \mathbb{N}^* \to \mathbb{N}^*$ telle que, pour tout entier $n \ge 1$,

$$f^k(n) = n^k \ ?$$

## Hints

1. Commencez par $k = 2$ : on veut $f(f(n)) = n^2$. Calculez $f(f(f(n)))$ de deux façons. Que vaut $f(n^2)$ en fonction de $f(n)$ ?
2. Plus généralement, une telle fonction vérifie forcément $f(n^k) = f(n)^k$. Il suffit donc de choisir $f$ sur les entiers qui ne sont **pas** des puissances $k$-ièmes, les autres valeurs s'en déduisent.
3. Sur les entiers qui ne sont pas des puissances $k$-ièmes, faites des groupes de $k$ nombres. Faites avancer $f$ d'un nombre au suivant dans chaque groupe, et à la fin du groupe, envoyez le dernier sur une puissance $k$-ième bien choisie.
4. Pour $k = 2$, essayez $f(2) = 3$ et $f(3) = 4$, puis $f(4) = 9$, $f(9) = 16$, et ainsi de suite.

## Solution

**Réponse.** Une telle fonction existe pour **tout** entier $k > 1$.

Fixons $k \ge 2$. Une *puissance $k$-ième* est un entier de la forme $a^k$, avec $a \ge 1$ entier.

**D'où vient l'idée.** Si une telle fonction $f$ existe, on peut calculer $f^{k+1}(n)$ de deux façons :

$$f^{k+1}(n) = f\left(f^k(n)\right) = f(n^k) \qquad \text{et} \qquad f^{k+1}(n) = f^k\left(f(n)\right) = f(n)^k .$$

Donc $f(n^k) = f(n)^k$ pour tout $n$. Les valeurs de $f$ sur les puissances $k$-ièmes sont imposées par les autres : on va choisir $f$ librement sur les entiers qui ne sont pas des puissances $k$-ièmes, puis compléter avec cette règle.

**Étape 1 : une écriture de chaque entier.** Tout entier $n \ge 2$ s'écrit de façon unique

$$n = c^{k^j}, \qquad \text{avec } j \ge 0 \text{ entier et } c \ge 2 \text{ qui n'est pas une puissance } k\text{-ième}.$$

Ici $c^{k^j}$ veut dire $c$ élevé à la puissance $k^j$ ; pour $j = 0$, c'est $c$ lui-même.

*Existence.* Si $n$ n'est pas une puissance $k$-ième, on prend $c = n$ et $j = 0$. Sinon $n = a^k$ avec $2 \le a < n$, et on recommence avec $a$. Les nombres obtenus diminuent, donc on s'arrête sur un nombre $c$ qui n'est pas une puissance $k$-ième, et $n = c^{k^j}$ où $j$ est le nombre de racines $k$-ièmes prises.

*Unicité.* Pour $j \ge 1$, le nombre $c^{k^j} = \left(c^{k^{j-1}}\right)^k$ est une puissance $k$-ième, alors que pour $j = 0$ c'est $c$, qui n'en est pas une. Donc si $n$ n'est pas une puissance $k$-ième, on a forcément $j = 0$ et $c = n$. Si $n = a^k$, on a forcément $j \ge 1$ et $c^{k^{j-1}} = a$, car un entier positif a au plus une racine $k$-ième entière (la fonction $x \mapsto x^k$ est strictement croissante sur les positifs). On est ramené à l'écriture de $a < n$, et on conclut par récurrence.

**Étape 2 : la construction.** Rangeons dans l'ordre croissant les entiers $c \ge 2$ qui ne sont pas des puissances $k$-ièmes, et coupons cette liste en paquets de $k$ nombres consécutifs. Pour $k = 2$, les non-carrés sont $2, 3, 5, 6, 7, 8, 10, 11, \ldots$ et les paquets sont $(2, 3)$, $(5, 6)$, $(7, 8)$, $(10, 11)$, et ainsi de suite.

On définit $f$ ainsi :

- $f(1) = 1$ ;
- pour un paquet $(c_1, c_2, \ldots, c_k)$, on pose $f(c_i) = c_{i+1}$ pour $1 \le i \le k - 1$, et $f(c_k) = c_1^{\,k}$ ;
- pour $n = c^{k^j}$ avec $j \ge 1$ (écriture de l'étape 1), on pose $f(n) = f(c)^{k^j}$.

D'après l'étape 1, chaque entier $n \ge 1$ reçoit ainsi une valeur et une seule, et cette valeur est un entier strictement positif. Pour $j = 0$, la troisième règle redonne la deuxième, si bien que $f\left(c^{k^j}\right) = f(c)^{k^j}$ pour tout $j \ge 0$.

**Étape 3 : $f$ commute avec la puissance $k$.** Montrons que $f(m^k) = f(m)^k$ pour tout $m \ge 1$. Pour $m = 1$, les deux membres valent $1$. Pour $m \ge 2$, écrivons $m = c^{k^j}$. Alors $m^k = c^{k^{j+1}}$, donc

$$f(m^k) = f(c)^{k^{j+1}} = \left(f(c)^{k^j}\right)^k = f(m)^k .$$

On en déduit, par récurrence sur $p \ge 1$, que $f^p(m^k) = f^p(m)^k$ : si c'est vrai pour $p$, alors

$$f^{p+1}(m^k) = f\left(f^p(m^k)\right) = f\left(f^p(m)^k\right) = f\left(f^p(m)\right)^k = f^{p+1}(m)^k .$$

En répétant $j$ fois, on obtient aussi $f^p\left(m^{k^j}\right) = f^p(m)^{k^j}$ pour tout $j \ge 0$.

**Étape 4 : vérification.**

*Les nombres d'un paquet.* Soit $(c_1, \ldots, c_k)$ un paquet et $1 \le i \le k$. En appliquant $f$ à $c_i$, on avance dans le paquet : après $k - i$ étapes on arrive à $c_k$, et une étape de plus donne $c_1^{\,k}$. Il reste $i - 1$ étapes pour atteindre $k$ au total, et d'après l'étape 3,

$$f^{i-1}\left(c_1^{\,k}\right) = \left(f^{i-1}(c_1)\right)^k = c_i^{\,k},$$

car $f^{i-1}(c_1) = c_i$ (on avance de $i - 1$ places dans le paquet). En tout, on a appliqué $f$ exactement $(k - i) + 1 + (i - 1) = k$ fois, donc $f^k(c_i) = c_i^{\,k}$.

*Les autres entiers.* On a $f^k(1) = 1 = 1^k$. Si $n = c^{k^j}$ avec $j \ge 1$, l'étape 3 et le cas précédent donnent

$$f^k(n) = \left(f^k(c)\right)^{k^j} = \left(c^k\right)^{k^j} = \left(c^{k^j}\right)^k = n^k .$$

**Un exemple.** Pour $k = 2$ : $f(2) = 3$, $f(3) = 4$, $f(4) = f(2)^2 = 9$, $f(9) = f(3)^2 = 16$. On vérifie bien $f(f(2)) = 4$, $f(f(3)) = 9$ et $f(f(4)) = 16$.

**Conclusion.** Pour tout entier $k > 1$, il existe une fonction $f : \mathbb{N}^* \to \mathbb{N}^*$ telle que $f^k(n) = n^k$ pour tout $n \ge 1$.
