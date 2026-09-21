---
id: "8271"
title: "Deux carrés qui valent −1 modulo p"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombres premiers, congruences, difference de carres, lemme d euclide]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, La Muraille"
  reference: "PolycopieV1-1.pdf, chapitre IX « La Muraille », exercice 24 (niveau 1, proposé par Anatole Bouton). La Muraille ne publie pas de solutions."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers et $p$ un nombre premier vérifiant

$$0 < m < n < p .$$

On suppose que $p$ divise $m^2 + 1$ et que $p$ divise $n^2 + 1$.

Montrer que $p$ divise aussi $mn - 1$.

## Hints

1. Tu disposes de deux multiples de $p$. Que peux-tu faire de deux multiples d'un même nombre ?
2. Calcule la différence $(n^2+1) - (m^2+1)$ et factorise-la.
3. $p$ est premier : s'il divise un produit, il divise l'un des facteurs. Lequel des deux
   est-il impossible ici, et pourquoi la condition $0 < m < n < p$ sert-elle ?
4. Tu obtiens $n \equiv -m \pmod p$. Remplace alors $n$ par $-m$ dans $mn$.

## Solution

**On soustrait les deux hypothèses.**

$p$ divise $m^2+1$ et $n^2+1$, donc il divise leur différence :

$$(n^2+1) - (m^2+1) = n^2 - m^2 = (n-m)(n+m) .$$

**Le premier facteur est exclu.**

$p$ est premier et divise le produit $(n-m)(n+m)$, donc il divise $n-m$ ou $n+m$.

Or $0 < m < n < p$ entraîne

$$0 < n - m < p ,$$

et aucun entier strictement compris entre $0$ et $p$ n'est un multiple de $p$. Donc $p$ ne
divise pas $n-m$.

**Donc $p$ divise $n+m$.**

Autrement dit

$$n \equiv -m \pmod p .$$

**On conclut.**

Multiplions cette congruence par $m$ :

$$mn \equiv -m^2 \pmod p .$$

Mais $p$ divise $m^2 + 1$, c'est-à-dire $m^2 \equiv -1 \pmod p$, donc $-m^2 \equiv 1 \pmod p$.
Par conséquent

$$mn \equiv 1 \pmod p, \qquad \text{c'est-à-dire} \qquad p \mid mn - 1 .$$

$$\blacksquare$$

**Un exemple.** Prenons $p = 13$. On a $5^2 + 1 = 26 = 2 \times 13$ et $8^2+1 = 65 = 5 \times
13$. Avec $m = 5$ et $n = 8$ : $mn - 1 = 39 = 3 \times 13$. ✓ (On remarque au passage
$m + n = 13 = p$, comme le prédit la démonstration.)

## Going further

1. La démonstration montre en fait que $m + n$ est un multiple de $p$ ; et comme
   $0 < m+n < 2p$, on a même $m+n = p$. Vérifier cette égalité sur l'exemple, puis avec
   $p = 17$.
2. Pour quels nombres premiers $p$ existe-t-il un entier $m$ avec $p \mid m^2+1$ ? Tester
   $p = 3, 5, 7, 11, 13, 17, 19$ et conjecturer.
3. Avec la même méthode : si $p$ divise $m^3 - 1$ et $n^3 - 1$, toujours avec
   $0 < m < n < p$, montrer que $p$ divise $n^2 + mn + m^2$. (Factoriser $n^3 - m^3$.)
