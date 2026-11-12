---
id: "22053"
title: "Deux nombres premiers et les puissances de 5 et de 2"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres-premiers, congruences, petit-theoreme-de-fermat, bezout, pgcd, lemme-de-gauss, raisonnement-par-l-absurde, maths-expertes]
adapted_from: null
see_also: ["10813", "22051"]
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Modulos » (Jean), exercice 16 (erreur de la source : le corrigé de la question 2 écrit 5^p − 3^p et 5^q − 3^q au lieu de 5^p − 2^p et 5^q − 2^q ; le corrigé de la question 1 passe par l'inverse de 2 modulo p, la solution ci-dessous l'évite)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $p$ et $q$ deux nombres premiers distincts, tous les deux strictement plus grands que $5$.

1. Montrer que si $p$ divise $5^q - 2^q$, alors $q$ divise $p - 1$.
2. En déduire que $pq$ ne divise pas $\left(5^p - 2^p\right)\left(5^q - 2^q\right)$.

## Hints

1. Le nombre $p$ ne divise ni $2$ ni $5$. Que dit le petit théorème de Fermat sur $5^{p-1}$ et $2^{p-1}$ modulo $p$ ?
2. Comme $q$ est premier, $\mathrm{PGCD}(q, p - 1)$ vaut $1$ ou $q$. Supposez qu'il vaut $1$ : le théorème de Bézout permet d'écrire $uq = 1 + w\,(p-1)$ avec $u$ et $w$ entiers positifs.
3. Élevez la congruence $5^q \equiv 2^q \pmod{p}$ à la puissance $u$.
4. Pour la question 2, que vaut $5^p - 2^p$ modulo $p$ ?

## Solution

On utilise trois résultats du cours.

- Le **petit théorème de Fermat** : si $p$ est premier et ne divise pas $a$, alors $a^{p-1} \equiv 1 \pmod{p}$. En multipliant par $a$, on a aussi $a^p \equiv a \pmod{p}$.
- Le **théorème de Bézout** : si $\mathrm{PGCD}(a, b) = 1$, il existe des entiers $u$ et $v$ tels que $au + bv = 1$.
- Le **lemme de Gauss** : si un nombre premier divise un produit et ne divise pas l'un des facteurs, alors il divise l'autre.

Comme $p > 5$, le nombre premier $p$ ne divise ni $2$ ni $5$. Le petit théorème de Fermat donne donc
$$5^{p-1} \equiv 1 \pmod{p} \qquad \text{et} \qquad 2^{p-1} \equiv 1 \pmod{p}.$$

**Question 1.** On suppose que $p$ divise $5^q - 2^q$, c'est-à-dire $5^q \equiv 2^q \pmod{p}$.

Comme $q$ est premier, ses seuls diviseurs positifs sont $1$ et $q$, donc $\mathrm{PGCD}(q, p - 1)$ vaut $1$ ou $q$. Supposons par l'absurde qu'il vaut $1$.

*Étape 1 : une relation de Bézout avec les bons signes.* Le théorème de Bézout donne des entiers $u$ et $v$ tels que $uq + v\,(p-1) = 1$. Pour tout entier $k$, le couple $u + k\,(p-1)$ et $v - kq$ vérifie la même égalité. En prenant $k$ assez grand, on peut donc supposer $u \geq 1$. Posons $w = -v$, de sorte que
$$uq = 1 + w\,(p-1).$$
Comme $u \geq 1$ et $q \geq 7$, on a $w\,(p-1) = uq - 1 \geq 6 > 0$, donc $w \geq 1$.

*Étape 2 : la contradiction.* En élevant $5^q \equiv 2^q$ à la puissance $u$, on obtient $5^{uq} \equiv 2^{uq} \pmod{p}$. Or
$$5^{uq} = 5^{1 + w(p-1)} = 5 \times \left(5^{p-1}\right)^w \equiv 5 \times 1^w = 5 \pmod{p},$$
et de même $2^{uq} = 2 \times \left(2^{p-1}\right)^w \equiv 2 \pmod{p}$. Donc $5 \equiv 2 \pmod{p}$ : le nombre $p$ divise $3$, ce qui est impossible puisque $p > 5$.

Donc $\mathrm{PGCD}(q, p - 1) = q$, c'est-à-dire **$q$ divise $p - 1$**.

**Question 2.** Supposons par l'absurde que $pq$ divise $\left(5^p - 2^p\right)\left(5^q - 2^q\right)$.

- *Le nombre $p$ ne divise pas $5^p - 2^p$.* D'après le petit théorème de Fermat, $5^p \equiv 5$ et $2^p \equiv 2 \pmod{p}$, donc $5^p - 2^p \equiv 3 \pmod{p}$. Comme $p > 3$, ce n'est pas $0$.
- *Donc $p$ divise $5^q - 2^q$.* En effet, $p$ divise le produit $\left(5^p - 2^p\right)\left(5^q - 2^q\right)$ et ne divise pas le premier facteur. Par le lemme de Gauss, il divise le second.
- *Donc $q < p$.* D'après la question 1, $q$ divise $p - 1$, donc $q \leq p - 1 < p$.

Les rôles de $p$ et $q$ sont symétriques : $q$ divise aussi le produit, le même raisonnement montre que $q$ ne divise pas $5^q - 2^q$, donc divise $5^p - 2^p$, et la question 1 (avec $p$ et $q$ échangés) donne que $p$ divise $q - 1$, donc $p < q$.

On aurait à la fois $q < p$ et $p < q$, ce qui est impossible.

**Conclusion.** Si $p$ divise $5^q - 2^q$, alors $q$ divise $p - 1$. Et $pq$ ne divise jamais $\left(5^p - 2^p\right)\left(5^q - 2^q\right)$.

## Going further

1. Vérifiez la question 1 sur un exemple : le nombre $83$ divise $5^{41} - 2^{41}$. Que vaut $83 - 1$ ?
2. Pourquoi a-t-on besoin de $p \neq 3$ ? Montrez que $3$ divise $5^n - 2^n$ pour tout entier $n \geq 1$.
3. Le même raisonnement marche-t-il avec $7^q - 3^q$ ? Quels nombres premiers faut-il alors exclure ?
