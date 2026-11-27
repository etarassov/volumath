---
id: "40161"
title: "Effacer le dernier chiffre et l'ajouter q fois : des critères de divisibilité"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [criteres-de-divisibilite, divisibilite, ecriture-decimale, chiffre-des-unites, point-fixe, periodicite, principe-des-tiroirs]
adapted_from: null
see_also: ["22044"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2006, mathématiques, série S"
  reference: "cg-2006-s-sujet.pdf, exercice 1, questions 1 à 6. La question 4 (« f_q(n) est congru à qn modulo p ») est posée ici sous la forme « f_q(n) − qn est un multiple de p »."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2006.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2006-s-sujet.pdf"
---

## Statement

Soit $n$ un entier strictement positif. On note $a_0$ son chiffre des unités, et $d$ le nombre
obtenu en effaçant ce chiffre (avec $d = 0$ si $n$ n'a qu'un chiffre). Ainsi $n = 10d + a_0$.
Par exemple, pour $n = 4907$, on a $d = 490$ et $a_0 = 7$.

On choisit un entier $q$ compris entre $1$ et $9$, on pose $p = 10q - 1$, et on note $f_q$ la
fonction qui, à l'entier $n = 10d + a_0$, associe l'entier
$$f_q(n) = d + q\,a_0 .$$
Autrement dit, on efface le dernier chiffre de $n$, puis on ajoute $q$ fois ce chiffre au nombre
restant.

Enfin, $q$ étant fixé, on associe à tout entier $n \geq 1$ la suite $n_0, n_1, n_2, \ldots$
définie par $n_0 = n$ et $n_{k+1} = f_q(n_k)$ pour tout entier $k \geq 0$. Par exemple, pour
$q = 5$, la suite associée à $4907$ est
$$4907,\ 525,\ 77,\ 42,\ 14,\ 21,\ 7,\ 35,\ 28,\ 42,\ 14,\ \ldots$$

1. Vérifier que $f_q(n) = \frac{n + p\,a_0}{10}$. En déduire que $f_q(p) = p$.
2. a) Montrer que, si $m > p$, alors $f_q(m) < m$.
   b) En déduire que, pour tout entier $n \geq 1$, il existe un entier $j$ tel que $n_j \leq p$.
3. a) Montrer que, si $m < p$, alors $f_q(m) < p$.
   b) En déduire que, pour tout entier $n \geq 1$, la suite $(n_k)$ est périodique à partir d'un
   certain rang : il existe des entiers $k$ et $T$, avec $T > 0$, tels que $n_{j+T} = n_j$ pour
   tout $j \geq k$.
4. Montrer que, pour tout entier $n \geq 1$, le nombre $f_q(n) - q\,n$ est un multiple de $p$.
   (On dit que $f_q(n)$ est congru à $q\,n$ modulo $p$.)
5. Pour quelles valeurs de $q$ la fonction $f_q$ a-t-elle des *points fixes* autres que $p$,
   c'est-à-dire des entiers $m \geq 1$ tels que $f_q(m) = m$ ? Quels sont alors ces points fixes ?
6. Montrer que, pour des choix convenables de $q$, l'étude de la suite $(n_k)$ associée à un
   entier $n$ fournit des critères de divisibilité de $n$ par $9$, $19$, $29$, $13$, $49$ et $7$.
   Énoncer ces critères.

## Hints

1. **Question 1.** Remplacer $d$ par $\frac{n - a_0}{10}$, puis utiliser $10q = p + 1$.
2. **Question 2.** Avec la question 1, $f_q(m) < m$ revient à $p\,a_0 < 9m$. Que sait-on de
   $a_0$ ?
3. **Question 2.** Pour b), tant que les termes restent plus grands que $p$, la suite est une
   suite d'entiers positifs strictement décroissante. Peut-elle continuer indéfiniment ?
4. **Question 3.** Pour a), majorer $m + p\,a_0$ en utilisant $m < p$ et $a_0 \leq 9$.
5. **Question 3.** Pour b), à partir du rang $j$ de la question 2, tous les termes sont dans
   l'ensemble fini $\{1, 2, \ldots, p\}$. Deux d'entre eux sont donc égaux. Pourquoi la suite se
   répète-t-elle ensuite ?
6. **Question 4.** Écrire $q\,n = q\,(10d + a_0)$ et calculer $f_q(n) - q\,n$ en fonction de $d$.
7. **Question 5.** D'après la question 2, un point fixe vérifie $m \leq p$. Avec la question 1,
   $f_q(m) = m$ revient à $9m = p\,a_0$.
8. **Question 5.** Le nombre $p$ est-il divisible par $3$ ? par $9$ ? Si $p$ n'est pas divisible
   par $3$, alors $9$ doit diviser $a_0$.
9. **Question 6.** Montrer d'abord que $p$ divise $n$ si et seulement si $p$ divise $f_q(n)$, en
   utilisant $n = 10\,f_q(n) - p\,a_0$ dans un sens. Puis chercher des $q$ tels que $13$ ou $7$
   divise $p = 10q - 1$.

## Solution

**1.** On a $d = \frac{n - a_0}{10}$, donc
$$f_q(n) = \frac{n - a_0}{10} + q\,a_0 = \frac{n - a_0 + 10q\,a_0}{10} = \frac{n + (10q - 1)\,a_0}{10} = \frac{n + p\,a_0}{10}.$$
Le nombre $p = 10q - 1$ se termine par le chiffre $9$, donc pour $n = p$ on a $a_0 = 9$ et
$$f_q(p) = \frac{p + 9p}{10} = p .$$

**2. a)** D'après la question 1, $f_q(m) < m$ équivaut à $m + p\,a_0 < 10m$, c'est-à-dire à
$p\,a_0 < 9m$. Or $a_0 \leq 9$, donc $p\,a_0 \leq 9p < 9m$ puisque $m > p$. Donc $f_q(m) < m$.

**b)** Remarquons d'abord que $f_q(m) \geq 1$ pour tout $m \geq 1$ : si $m \geq 10$, alors
$d \geq 1$ ; si $m \leq 9$, alors $a_0 = m \geq 1$ et $f_q(m) = q\,m \geq 1$. Tous les termes de
la suite sont donc des entiers strictement positifs.

Supposons par l'absurde que $n_k > p$ pour tout $k$. D'après a), on aurait
$n_0 > n_1 > n_2 > \cdots$, une suite d'entiers positifs strictement décroissante. Chaque terme
est au moins inférieur de $1$ au précédent, donc $n_k \leq n_0 - k$, ce qui est négatif pour
$k = n_0$ : contradiction. Il existe donc un rang $j$ tel que $n_j \leq p$.

**3. a)** Si $m < p$, alors, comme $a_0 \leq 9$,
$$f_q(m) = \frac{m + p\,a_0}{10} < \frac{p + 9p}{10} = p .$$

**b)** Soit $j$ le rang trouvé en 2 b), avec $n_j \leq p$. Si $n_j = p$, alors $n_{j+1} = p$
d'après la question 1 ; si $n_j < p$, alors $n_{j+1} < p$ d'après a). Dans les deux cas
$n_{j+1} \leq p$, et de proche en proche tous les termes à partir du rang $j$ sont dans
l'ensemble $\{1, 2, \ldots, p\}$, qui a $p$ éléments.

Parmi les $p + 1$ termes $n_j, n_{j+1}, \ldots, n_{j+p}$, deux sont donc égaux (principe des
tiroirs) : il existe $k \geq j$ et $T > 0$ tels que $n_{k+T} = n_k$. Comme chaque terme se calcule
à partir du précédent seulement, on en déduit $n_{k+T+1} = f_q(n_{k+T}) = f_q(n_k) = n_{k+1}$, puis
de proche en proche $n_{i+T} = n_i$ pour tout $i \geq k$. La suite est périodique à partir du rang
$k$.

**4.** On a $q\,n = q\,(10d + a_0) = 10q\,d + q\,a_0$. Donc
$$f_q(n) - q\,n = d + q\,a_0 - 10q\,d - q\,a_0 = (1 - 10q)\,d = -p\,d .$$
Ainsi $f_q(n) - q\,n$ est un multiple de $p$ : $f_q(n)$ est congru à $q\,n$ modulo $p$.

**5.** On a vu que $f_q(p) = p$. Cherchons les autres points fixes.

D'après la question 2 a), un entier $m > p$ n'est pas un point fixe ; on peut donc supposer
$m \leq p$. D'après la question 1, $f_q(m) = m$ équivaut à $m + p\,a_0 = 10m$, soit
$$9m = p\,a_0 ,$$
où $a_0$ est le chiffre des unités de $m$. Réciproquement, si $m = \frac{p\,a_0}{9}$ avec $a_0$ le
chiffre des unités de $m$, alors $m$ est un point fixe.

*Cas $q = 1$.* Alors $p = 9$ et l'équation devient $m = a_0$ : elle est vraie pour les entiers à
un chiffre et pour eux seulement. Les points fixes sont $1, 2, \ldots, 9$.

*Cas $q \neq 1$.* Les valeurs de $p$ sont $19, 29, 39, 49, 59, 69, 79, 89$. Aucune n'est divisible
par $9$, et seules $39 = 3 \times 13$ et $69 = 3 \times 23$ sont divisibles par $3$.

- Si $p$ n'est pas divisible par $3$ (c'est-à-dire $q = 2, 3, 5, 6, 8, 9$), alors $9$ divise
  $p\,a_0$ et n'a aucun facteur commun avec $p$, donc $9$ divise $a_0$. Comme $1 \leq a_0 \leq 9$
  (un point fixe $m \geq 1$ a $a_0 \neq 0$, sinon $9m = 0$), on a $a_0 = 9$ et $m = p$. Pas
  d'autre point fixe.
- Si $q = 4$, $p = 39$, et $9m = 39\,a_0$ s'écrit $3m = 13\,a_0$. Donc $3$ divise $a_0$ :
  $a_0 = 3$, $6$ ou $9$, ce qui donne $m = 13$, $26$ ou $39$. Le chiffre des unités de chacun est
  bien $3$, $6$, $9$. Points fixes : $13$, $26$, $39$.
- Si $q = 7$, $p = 69$, et $3m = 23\,a_0$. De même $a_0 = 3$, $6$ ou $9$, et $m = 23$, $46$ ou
  $69$, dont les chiffres des unités sont bien $3$, $6$, $9$. Points fixes : $23$, $46$, $69$.

**Conclusion :** $f_q$ a des points fixes autres que $p$ exactement pour $q = 1$ (les entiers
$1$ à $8$), pour $q = 4$ ($13$ et $26$) et pour $q = 7$ ($23$ et $46$).

(Pour justifier « $9$ n'a aucun facteur commun avec $p$, donc $9$ divise $a_0$ » sans théorème :
on peut aussi tester les neuf valeurs possibles de $a_0$ ; par exemple pour $p = 19$, les nombres
$19 a_0$ valent $19, 38, \ldots, 171$, et seul $171 = 9 \times 19$ est divisible par $9$.)

**6.** *Un premier résultat.* Soit $c$ un diviseur de $p$. Alors $c$ divise $n$ si et seulement
si $c$ divise $f_q(n)$.

- Si $c$ divise $n$ : d'après la question 4, $f_q(n) = q\,n - p\,d$, et $c$ divise $q\,n$ et
  $p\,d$, donc $c$ divise $f_q(n)$.
- Si $c$ divise $f_q(n)$ : d'après la question 1, $n = 10\,f_q(n) - p\,a_0$, et $c$ divise
  $10\,f_q(n)$ et $p\,a_0$, donc $c$ divise $n$.

En appliquant ce résultat à chaque terme, $c$ divise $n = n_0$ si et seulement si $c$ divise $n_1$,
si et seulement si $c$ divise $n_2$, etc. : soit tous les termes de la suite sont multiples de $c$,
soit aucun ne l'est. Or, à partir d'un certain rang, les termes sont dans $\{1, \ldots, p\}$
(question 3). Le critère est donc :

> **$c$ divise $n$ si et seulement si la suite $(n_k)$ atteint un multiple de $c$ inférieur ou égal
> à $p$.**

En pratique, on calcule les termes jusqu'à tomber sur un nombre au plus égal à $p$, et on regarde
si ce nombre est un multiple de $c$.

*Les critères.*

- **Par $9$** : $q = 1$, $p = 9$. On remplace $n$ par $d + a_0$. La suite finit sur un entier
  entre $1$ et $9$, qui ne bouge plus (c'est un point fixe). Donc $9$ divise $n$ si et seulement
  si la suite aboutit à $9$. (On retrouve, sous une autre forme, la somme des chiffres.)
- **Par $19$** : $q = 2$, $p = 19$. On efface le dernier chiffre et on ajoute son double ;
  $19$ divise $n$ si et seulement si la suite atteint $19$, seul multiple de $19$ entre $1$ et $19$.
- **Par $29$** : $q = 3$, $p = 29$. On ajoute le triple du dernier chiffre ; $29$ divise $n$ si et
  seulement si la suite atteint $29$.
- **Par $49$** : $q = 5$, $p = 49$. On ajoute le quintuple du dernier chiffre ; $49$ divise $n$ si
  et seulement si la suite atteint $49$.
- **Par $13$** : $13$ divise $39$, donc on prend $q = 4$, $p = 39$. On ajoute le quadruple du
  dernier chiffre ; $13$ divise $n$ si et seulement si la suite atteint $13$, $26$ ou $39$ (qui sont
  les trois points fixes trouvés à la question 5).
- **Par $7$** : $7$ divise $49$, donc on prend $q = 5$. On ajoute le quintuple du dernier chiffre ;
  $7$ divise $n$ si et seulement si la suite atteint l'un des nombres $7, 14, 21, 28, 35, 42, 49$.

Par exemple, pour $q = 5$, la suite de $4907$ atteint $42$ : donc $4907$ est divisible par $7$
(en effet $4907 = 7 \times 701$), mais pas par $49$, car à partir de $42$ la suite tourne sur
$42, 14, 21, 7, 35, 28$ et n'atteint jamais $49$.

**Bilan.** L'opération « effacer le dernier chiffre et l'ajouter $q$ fois » fait décroître tout
nombre plus grand que $p = 10q - 1$, et ne fait jamais sortir de $\{1, \ldots, p\}$ ; la suite
obtenue finit donc par tourner en rond. Comme $f_q(n) = q\,n - p\,d$ et $n = 10 f_q(n) - p\,a_0$,
cette opération conserve la divisibilité par $p$ et par ses diviseurs, ce qui donne des critères
de divisibilité par $9$, $19$, $29$, $49$, $13$ et $7$.

## Going further

- Avec $q = 2$, tester le critère sur $2006$ : est-il divisible par $19$ ?
- Quel $q$ donne un critère de divisibilité par $23$ ? par $17$ ? (Chercher un multiple de $17$ qui
  se termine par $9$.)
- On peut aussi soustraire au lieu d'ajouter : $7$ divise $10d + a_0$ si et seulement si $7$
  divise $d - 2a_0$. Le prouver, et comparer avec le critère trouvé ici. L'exercice 22044 traite ce
  critère.
