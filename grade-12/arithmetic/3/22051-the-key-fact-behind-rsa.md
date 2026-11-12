---
id: "22051"
title: "Le ressort du chiffrement RSA"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, congruences, petit-theoreme-de-fermat, lemme-de-gauss, cryptographie, maths-expertes]
adapted_from: null
see_also: ["22053"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Modulos » (Jean), exercice 14 « Derrière le RSA » (l'énoncé de la source dit « pour tout entier n » mais parle ensuite de M, et son corrigé applique le petit théorème de Fermat sans traiter le cas où p divise M ; on a aussi supposé e et d positifs)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $p$ et $q$ deux nombres premiers distincts, et $e$, $d$ deux entiers strictement positifs tels que
$$ed \equiv 1 \pmod{(p-1)(q-1)}.$$

Montrer que, pour tout entier $M$,
$$\left(M^e\right)^d \equiv M \pmod{pq}.$$

## Hints

1. Posez $a = ed$ et écrivez $a = 1 + k\,(p-1)(q-1)$. Que vaut $M^a$ modulo $p$ quand $p$ ne divise pas $M$ ? Utilisez le petit théorème de Fermat.
2. N'oubliez pas le cas où $p$ divise $M$.
3. Vous savez maintenant que $p$ et $q$ divisent tous les deux $M^a - M$. Pourquoi leur produit le divise-t-il aussi ?

## Solution

On utilise deux résultats du cours :

- le **petit théorème de Fermat** : si $p$ est premier et ne divise pas $M$, alors $M^{p-1} \equiv 1 \pmod{p}$ ;
- le **lemme de Gauss** : si un nombre premier divise un produit et ne divise pas l'un des facteurs, alors il divise l'autre.

Posons $a = ed$. Comme $ed \equiv 1 \pmod{(p-1)(q-1)}$, il existe un entier $k$ tel que $a = 1 + k\,(p-1)(q-1)$. De plus $a \geq 1$, donc $k\,(p-1)(q-1) = a - 1 \geq 0$, et $k \geq 0$. On a $\left(M^e\right)^d = M^{ed} = M^a$ : il faut montrer que $pq$ divise $M^a - M$.

**Étape 1 : $p$ divise $M^a - M$.**

- Si $p$ divise $M$, il divise aussi $M^a$ (car $a \geq 1$), donc il divise $M^a - M$.
- Sinon, le petit théorème de Fermat donne $M^{p-1} \equiv 1 \pmod{p}$. Comme $k\,(q-1) \geq 0$,
$$M^a = M \times \left(M^{p-1}\right)^{k(q-1)} \equiv M \times 1^{k(q-1)} = M \pmod{p}.$$

Dans les deux cas, $M^a \equiv M \pmod{p}$.

**Étape 2 : $q$ divise $M^a - M$.** C'est le même raisonnement, en échangeant les rôles de $p$ et $q$ : on écrit $M^a = M \times \left(M^{q-1}\right)^{k(p-1)}$.

**Étape 3 : $pq$ divise $M^a - M$.** D'après l'étape 1, on peut écrire $M^a - M = p\,m$ avec $m$ entier. D'après l'étape 2, le nombre premier $q$ divise le produit $p\,m$. Il ne divise pas $p$, car $p$ est un nombre premier différent de $q$. Par le lemme de Gauss, $q$ divise $m$. Donc $pq$ divise $p\,m = M^a - M$.

**Conclusion.** Pour tout entier $M$, on a $\left(M^e\right)^d = M^{ed} \equiv M \pmod{pq}$.

## Going further

Ce résultat est le cœur du chiffrement **RSA**. Une personne choisit deux grands nombres premiers $p$ et $q$, puis $e$ et $d$ comme dans l'énoncé. Elle publie $N = pq$ et $e$, mais garde $d$ secret. Pour lui envoyer un message codé par un nombre $M$ entre $0$ et $N - 1$, on lui transmet le reste de $M^e$ modulo $N$. Elle seule peut retrouver $M$, en élevant ce reste à la puissance $d$.

1. Avec $p = 5$, $q = 11$ et $e = 3$, vérifiez que $d = 27$ convient. Codez le message $M = 2$, puis décodez-le.
2. Pourquoi est-il utile que $N$ soit très difficile à décomposer en produit de facteurs premiers ?
