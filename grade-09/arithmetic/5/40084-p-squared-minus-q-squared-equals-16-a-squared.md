---
id: "40084"
title: "Quand p² − q² vaut 16a²"
grade: 9
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [difference-de-deux-carres, identites-remarquables, parite, nombres-premiers-entre-eux, decomposition-en-facteurs-premiers, carre-parfait, triplet-pythagoricien]
adapted_from: null
see_also: ["40081", "40082", "40083", "40085", "40086", "40087"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2004, mathématiques, série S"
  reference: "cg-2004-s-sujet.pdf, problème unique, partie IV « étude de la condition (C1) », questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2004.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2004-s-sujet.pdf"
---

## Statement

Dans un problème de géométrie sur des cercles tangents (voir l'exercice 40081), une longueur est un
nombre rationnel exactement quand deux entiers $n$ et $k$, avec $1 \leq k \leq n - 1$, vérifient la
condition suivante :
$$(\mathcal{C}_1) \qquad \text{il existe un entier naturel } a \text{ tel que } n(n-1) - k(k-1) = 4a^2.$$
On étudie ici cette condition. On dit que deux entiers naturels non nuls sont
**premiers entre eux** quand leur seul diviseur commun positif est $1$.

1. Soit $n$ et $k$ deux entiers tels que $1 \leq k \leq n - 1$. On pose $p = 2n - 1$ et
   $q = 2k - 1$.

   a) Montrer que $p$ et $q$ sont des entiers naturels impairs tels que $q < p$, et que $(n, k)$
   vérifie $(\mathcal{C}_1)$ si et seulement si $(p, q)$ vérifie la condition
   $$(\mathcal{C}_2) \qquad \text{il existe un entier naturel } a \text{ tel que } p^2 - q^2 = 16a^2.$$

   b) Réciproquement, montrer que tout couple $(p, q)$ d'entiers naturels impairs tels que
   $q < p$ s'obtient de cette façon à partir d'un unique couple $(n, k)$ avec
   $1 \leq k \leq n - 1$.
2. Soit $u$ et $v$ deux entiers tels que $u > v \geq 1$, l'un pair et l'autre impair. On pose
   $p = u^2 + v^2$ et $q = u^2 - v^2$. Montrer que $p$ et $q$ sont des entiers naturels impairs
   tels que $q < p$, et que le couple $(p, q)$ vérifie $(\mathcal{C}_2)$.
3. Soit $(p, q)$ un couple d'entiers naturels impairs, premiers entre eux, tels que $q < p$, qui
   vérifie $(\mathcal{C}_2)$. Montrer qu'il existe deux entiers naturels $u$ et $v$, l'un pair et
   l'autre impair, tels que $p = u^2 + v^2$ et $q = u^2 - v^2$. Calculer alors en fonction de $u$
   et de $v$ l'entier $a$ de la condition $(\mathcal{C}_2)$.

## Hints

1. **Question 1 a).** Développer $p^2 - q^2$ et comparer avec $n(n-1) - k(k-1)$.
2. **Question 2.** L'un des deux nombres $u^2$ et $v^2$ est pair, l'autre impair. Pour
   $(\mathcal{C}_2)$, écrire $p^2 - q^2 = (p - q)(p + q)$.
3. **Question 3.** Écrire $(p - q)(p + q) = 16a^2$. Les nombres $p + q$ et $p - q$ sont pairs :
   poser $s = \frac{p + q}{2}$ et $t = \frac{p - q}{2}$. Que vaut $st$ ?
4. **Question 3.** On trouve $st = 4a^2 = (2a)^2$. Un diviseur commun de $s$ et $t$ divise aussi
   $s + t$ et $s - t$. Que sont $s + t$ et $s - t$ ?
5. **Question 3.** Si deux entiers premiers entre eux ont pour produit un carré, chacun est un
   carré. Pour le voir, regarder un nombre premier qui divise $s$ : avec quel exposant
   apparaît-il dans $st$, et dans $s$ ?
6. **Question 3.** Pour les parités, regarder $s + t$.

## Solution

**1. a)** Comme $n \geq 2$ et $k \geq 1$, on a $p = 2n - 1 \geq 3$ et $q = 2k - 1 \geq 1$ : ce
sont des entiers naturels impairs, et $k < n$ donne $q < p$. Ensuite
$$p^2 - q^2 = (4n^2 - 4n + 1) - (4k^2 - 4k + 1) = 4\left(n(n-1) - k(k-1)\right).$$
Ainsi $n(n-1) - k(k-1) = 4a^2$ équivaut à $p^2 - q^2 = 16a^2$, avec le même entier $a$.

**Conclusion :** $(n, k)$ vérifie $(\mathcal{C}_1)$ si et seulement si $(p, q)$ vérifie
$(\mathcal{C}_2)$.

**1. b)** Soit $p$ et $q$ impairs avec $1 \leq q < p$. Les seuls entiers $n$ et $k$ possibles sont
$n = \frac{p + 1}{2}$ et $k = \frac{q + 1}{2}$, qui sont bien des entiers puisque $p$ et $q$ sont
impairs. On a $k \geq 1$ car $q \geq 1$, et $k < n$ car $q < p$.

**Conclusion :** les couples $(n, k)$ avec $1 \leq k \leq n - 1$ et les couples d'impairs
$(p, q)$ avec $q < p$ se correspondent un à un.

**2.** L'un des nombres $u$ et $v$ est pair, l'autre impair, donc l'un des carrés $u^2$ et $v^2$
est pair et l'autre impair. Leur somme $p$ et leur différence $q$ sont donc impaires. Comme
$u > v$, on a $q > 0$, et comme $v \geq 1$, on a $q = p - 2v^2 < p$. Enfin
$$p^2 - q^2 = (p - q)(p + q) = 2v^2 \times 2u^2 = 4u^2v^2 = 4(uv)^2 .$$
Le produit $uv$ est pair, puisque l'un des deux facteurs l'est : $uv = 2a$ avec $a$ entier naturel,
et $p^2 - q^2 = 4 \times 4a^2 = 16a^2$.

**Conclusion :** $(p, q)$ vérifie $(\mathcal{C}_2)$, avec $a = \frac{uv}{2}$.

**3.** *Deux nouveaux entiers.* Les nombres $p$ et $q$ sont impairs, donc $p + q$ et $p - q$ sont
pairs, et ils sont strictement positifs car $q < p$. Posons
$$s = \frac{p + q}{2} \qquad \text{et} \qquad t = \frac{p - q}{2} .$$
Ce sont des entiers strictement positifs, avec $s + t = p$ et $s - t = q$. La condition
$(\mathcal{C}_2)$ donne $(p + q)(p - q) = 16a^2$, soit $4st = 16a^2$, d'où
$$st = 4a^2 = (2a)^2 .$$

*$s$ et $t$ sont premiers entre eux.* Si un entier $d \geq 1$ divise $s$ et $t$, il divise
$s + t = p$ et $s - t = q$. Comme $p$ et $q$ sont premiers entre eux, $d = 1$.

*Un lemme.* Si deux entiers $s, t \geq 1$ premiers entre eux ont pour produit un carré, alors $s$ et
$t$ sont des carrés. En effet, soit $\ell$ un nombre premier qui divise $s$. Il ne divise pas $t$
(sinon $\ell$ serait un diviseur commun). Dans la décomposition en facteurs premiers, l'exposant de
$\ell$ dans $st$ est donc égal à son exposant dans $s$. Or $st$ est un carré, donc tous les
exposants de sa décomposition sont pairs. Ainsi chaque nombre premier figure dans $s$ avec un
exposant pair, et $s$ est un carré (si $s = 1$, c'est $1^2$). De même pour $t$.

*Conclusion de l'existence.* Il existe donc des entiers $u, v \geq 1$ tels que $s = u^2$ et
$t = v^2$, et alors
$$p = s + t = u^2 + v^2, \qquad q = s - t = u^2 - v^2 .$$
Comme $p = s + t$ est impair, l'un des nombres $s$ et $t$ est pair et l'autre impair. Un carré a
la même parité que le nombre qu'on élève au carré, donc $u$ et $v$ sont de parités différentes.

*Valeur de $a$.* On a $u^2v^2 = st = 4a^2$, donc $uv = 2a$ (tous ces nombres sont positifs).

**Conclusion :** $p = u^2 + v^2$, $q = u^2 - v^2$ avec $u$ et $v$ de parités différentes, et
$a = \frac{uv}{2}$.

**Bilan.** Les couples d'entiers impairs premiers entre eux $(p, q)$, avec $q < p$, qui vérifient
$p^2 - q^2 = 16a^2$ s'écrivent tous $(u^2 + v^2, u^2 - v^2)$ avec $u > v \geq 1$ de parités
différentes, et alors $a = \frac{uv}{2}$. Réciproquement, d'après la question 2, tout couple de
cette forme vérifie $(\mathcal{C}_2)$, même quand ses deux nombres ne sont pas premiers entre eux
($u = 6$, $v = 3$ donne $(45, 27)$). Avec la question 1, cela donne des couples $(n, k)$ qui
vérifient $(\mathcal{C}_1)$ : par exemple $u = 2$, $v = 1$ donne $p = 5$, $q = 3$,
donc $n = 3$ et $k = 2$ ; $u = 3$, $v = 2$ donne $p = 13$, $q = 5$, donc $n = 7$ et $k = 3$, et
l'on vérifie que $7 \times 6 - 3 \times 2 = 36 = 4 \times 3^2$.

## Going further

- La condition $(\mathcal{C}_2)$ s'écrit aussi $q^2 + (4a)^2 = p^2$ : les nombres $q$, $4a$ et $p$
  sont les côtés d'un triangle rectangle. On vient donc de trouver tous les triangles rectangles à
  côtés entiers dont deux côtés sont impairs et premiers entre eux.
- Que se passe-t-il quand $p$ et $q$ ne sont pas premiers entre eux ? Montrer que si $(p, q)$
  vérifie $(\mathcal{C}_2)$ et si $d$ est un entier impair, alors $(dp, dq)$ vérifie aussi
  $(\mathcal{C}_2)$. Pour $p = 25$, trouver deux valeurs de $q$ qui conviennent, l'une venant de
  $25 = 4^2 + 3^2$, l'autre de $25 = 5 \times 5$. Pour quelles valeurs de $k$ le couple $(13, k)$
  vérifie-t-il alors $(\mathcal{C}_1)$ ?
- Dans la dernière partie du sujet, on utilisait ce résultat pour montrer qu'il existe une infinité
  de couples $(n, k)$ qui vérifient $(\mathcal{C}_1)$ (exercice 40087).
