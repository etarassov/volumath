---
id: "11011"
title: "Quand xˣ prend tous les restes modulo n"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [maths-expertes, congruences, petit-theoreme-de-fermat, theoreme-chinois, bezout, nombres-premiers, polynome]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 18 ; corrigé 2020-02_corrige-commente-envoi-3.pdf (le corrigé recopie l'énoncé avec x dans {0, …, n − 1} au lieu de x ≥ 1, ce qui ne correspond pas à sa propre solution ; il utilise une racine primitive, remplacée ici par le lemme sur les racines modulo p)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 1$ ayant la propriété suivante : pour tout entier $y$, il existe un
entier $x \geqslant 1$ tel que
$$x^x \equiv y \pmod n .$$
Autrement dit, quand $x$ parcourt les entiers strictement positifs, $x^x$ prend tous les restes
possibles modulo $n$.

## Hints

1. Si $n$ a la propriété, chacun de ses diviseurs l'a aussi.
2. Montre que $p^2$ n'a pas la propriété, pour $p$ premier : peut-on obtenir le reste $p$ ?
3. Pour $n = p$ premier, cherche $x$ tel que $x \equiv 1 \pmod{p - 1}$ et $x \equiv y \pmod p$, et utilise le petit théorème de Fermat.
4. Si $p$ et $q$ sont deux premiers distincts avec $p \mid q - 1$, cherche un reste impossible modulo $pq$ : un multiple de $p$ dont la valeur modulo $q$ est bien choisie.

## Solution

On note $\mathcal{P}$ la propriété de l'énoncé. On va montrer que $n$ a la propriété $\mathcal{P}$ si et
seulement si $n = 1$, ou bien $n = p_1 p_2 \cdots p_k$ est un produit de nombres premiers **distincts**
tels qu'**aucun $p_i$ ne divise un $p_j - 1$**.

Par exemple $15 = 3 \times 5$ convient, mais pas $6 = 2 \times 3$ (car $2$ divise $3 - 1$), ni $9$.

**Trois outils.**

- *Théorème chinois.* Si $\mathrm{PGCD}(A, B) = 1$, alors pour tous entiers $u$ et $v$ il existe $x \geqslant 1$
  avec $x \equiv u \pmod A$ et $x \equiv v \pmod B$. En effet, Bézout donne $AU + BV = 1$ ; le nombre
  $vAU + uBV$ est congru à $u \cdot BV \equiv u$ modulo $A$ et à $v \cdot AU \equiv v$ modulo $B$, et on lui ajoute
  un grand multiple de $AB$ pour le rendre positif.
- *Petit théorème de Fermat.* Si $p$ est premier et ne divise pas $x$, alors $x^{p-1} \equiv 1 \pmod p$.
- *Racines modulo $p$.* Un polynôme à coefficients entiers de degré $d$, dont le coefficient dominant
  n'est pas divisible par $p$, s'annule modulo $p$ en au plus $d$ des entiers $0, 1, \ldots, p - 1$. (On le
  prouve par récurrence sur $d$ : si $r$ est une racine, on factorise $Q(X) - Q(r) = (X - r)R(X)$, et toute
  autre racine $s$ est racine de $R$ par le lemme d'Euclide.)

**Étape 0 : la propriété passe aux diviseurs.** Si $n$ a $\mathcal{P}$ et si $d$ divise $n$, alors pour
tout $y$ il existe $x$ avec $x^x \equiv y \pmod n$, donc aussi modulo $d$. Ainsi $d$ a $\mathcal{P}$.

**Étape 1 : $p^2$ n'a pas la propriété.** Soit $p$ premier. Supposons $x^x \equiv p \pmod{p^2}$. Alors $p$
divise $x^x$, donc $p$ divise $x$, et $x \geqslant p \geqslant 2$. Mais alors $p^2$ divise $x^2$, qui divise $x^x$,
donc $x^x \equiv 0 \pmod{p^2}$, pas $p$. Contradiction. Par l'étape 0, un $n$ qui a $\mathcal{P}$ n'est
divisible par aucun carré de nombre premier : ses facteurs premiers sont distincts.

**Étape 2 : si $p \mid q - 1$, alors $pq$ n'a pas la propriété.** Soient $p \neq q$ premiers avec $p \mid q - 1$,
et $t = \dfrac{q-1}{p}$, un entier avec $1 \leqslant t < q - 1$. Par le lemme sur les racines, le polynôme
$X^t - 1$ s'annule modulo $q$ en au plus $t$ entiers, donc il existe $g \in \{1, \ldots, q - 1\}$ avec
$g^t \not\equiv 1 \pmod q$. Par le théorème chinois, choisissons $y$ avec $y \equiv 0 \pmod p$ et $y \equiv g \pmod q$.

Supposons $x^x \equiv y \pmod{pq}$. Modulo $p$, on a $x^x \equiv 0$, donc $p$ divise $x$ : $x = p\,c$. Modulo
$q$, $x^x \equiv g \not\equiv 0$, donc $q$ ne divise pas $x$. Alors
$$g \equiv x^x = \left(x^c\right)^p \pmod q , \qquad \text{donc} \qquad g^t \equiv \left(x^c\right)^{pt} = \left(x^c\right)^{q-1} \equiv 1 \pmod q$$
par Fermat. Cela contredit le choix de $g$. Par l'étape 0, si $n$ a $\mathcal{P}$, aucun de ses facteurs
premiers ne divise un autre de ses facteurs premiers moins $1$.

**Étape 3 : ces nombres ont bien la propriété.** Soit $n = p_1 \cdots p_k$, produit de premiers distincts,
avec aucun $p_i$ divisant un $p_j - 1$ (le cas $n = 1$ est évident). Posons
$L = (p_1 - 1)(p_2 - 1)\cdots(p_k - 1)$. Aucun $p_i$ ne divise $L$ (lemme d'Euclide), donc
$\mathrm{PGCD}(n, L) = 1$.

Soit $y$ un entier. Par le théorème chinois, il existe $x \geqslant 1$ tel que
$$x \equiv 1 \pmod L \qquad \text{et} \qquad x \equiv y \pmod n .$$
Fixons $i$. Si $p_i$ divise $y$, il divise $x$, et $x^x \equiv 0 \equiv y \pmod{p_i}$. Sinon, $p_i$ ne divise
pas $x$ ; comme $p_i - 1$ divise $L$, qui divise $x - 1$, on écrit $x = 1 + (p_i - 1)s$ et Fermat donne
$$x^x = x \cdot \left(x^{p_i - 1}\right)^s \equiv x \equiv y \pmod{p_i} .$$
Ainsi chaque $p_i$ divise $x^x - y$ ; comme ce sont des premiers distincts, leur produit $n$ divise aussi
$x^x - y$.

**Conclusion.** Les entiers cherchés sont $n = 1$ et les produits $n = p_1 p_2 \cdots p_k$ de nombres premiers
distincts tels qu'aucun $p_i$ ne divise $p_j - 1$. Les premiers d'entre eux sont
$1, 2, 3, 5, 7, 11, 13, 15, 17, 19, 23, 29, 31, 33, 35, \ldots$

## Going further

Comme $2$ divise $q - 1$ pour tout premier impair $q$, le seul nombre pair qui convient est $n = 2$.
