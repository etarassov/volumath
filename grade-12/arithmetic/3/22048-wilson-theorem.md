---
id: "22048"
title: "Le théorème de Wilson"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 45
tags: [nombres-premiers, factorielle, congruences, inverse-modulo-p, theoreme-de-wilson, maths-expertes]
adapted_from: null
see_also: ["8047", "2807", "22049", "22052"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Modulos » (Jean), exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Pour un entier $n \geq 1$, on note $n! = 1 \times 2 \times \cdots \times n$. Le but de l'exercice est de démontrer le **théorème de Wilson** :

> Un entier $n \geq 2$ est premier si et seulement si $(n-1)! \equiv -1 \pmod{n}$, c'est-à-dire si et seulement si $n$ divise $(n-1)! + 1$.

1. Soit $n \geq 2$ un entier qui n'est pas premier, et qui n'est pas le carré d'un nombre premier. Montrer qu'il existe deux entiers **distincts** $a$ et $b$, compris entre $2$ et $n - 1$, tels que $n = ab$. En déduire que $(n-1)! \equiv 0 \pmod{n}$.
2. Soit $n > 4$ un entier qui est le carré d'un nombre premier $p$, donc $n = p^2$. En remarquant que $n$ divise $p \times 2p$, montrer que $(n-1)! \equiv 0 \pmod{n}$.
3. Soit $p$ un nombre premier. En regroupant les facteurs du produit $(p-1)!$ deux par deux, montrer que $(p-1)! \equiv -1 \pmod{p}$.
4. Conclure. Attention, il reste un cas à traiter à part.

## Hints

1. Pour la question 1, prenez pour $a$ le plus petit diviseur de $n$ supérieur ou égal à $2$.
2. Pour la question 2, vérifiez que $2p \leq p^2 - 1$ quand $p \geq 3$.
3. Pour la question 3, montrez que chaque $x$ entre $1$ et $p - 1$ a un inverse modulo $p$ : un $y$ entre $1$ et $p - 1$ tel que $xy \equiv 1 \pmod{p}$. Quels $x$ sont leur propre inverse ?
4. Testez la question 3 avec $p = 11$ : regroupez $2, 3, \ldots, 9$ par paires dont le produit vaut $1$ modulo $11$.
5. Le cas oublié par les questions 1 et 2 est $n = 4$.

## Solution

**Question 1.** Soit $a$ le plus petit diviseur de $n$ supérieur ou égal à $2$. C'est un nombre premier : sinon, un de ses diviseurs, plus petit que lui et au moins égal à $2$, diviserait aussi $n$. Posons $b = \frac{n}{a}$.

- Comme $n$ n'est pas premier, $a \neq n$, donc $a \leq n - 1$ et $b \geq 2$.
- Comme $a \geq 2$, on a $b = \frac{n}{a} \leq \frac{n}{2} \leq n - 1$.
- Si l'on avait $a = b$, on aurait $n = a^2$, le carré d'un nombre premier, ce qui est exclu. Donc $a \neq b$.

Les entiers $a$ et $b$ sont distincts et compris entre $2$ et $n - 1$. Ce sont donc deux facteurs **différents** du produit $(n-1)! = 1 \times 2 \times \cdots \times (n-1)$. Ce produit est donc un multiple de $ab = n$ : $(n-1)! \equiv 0 \pmod{n}$.

**Question 2.** Comme $n = p^2 > 4$, on a $p \geq 3$, donc $(p-1)^2 \geq 4$ et
$$p^2 - 1 - 2p = (p-1)^2 - 2 \geq 2 > 0.$$
Ainsi $p < 2p < p^2 - 1 = n - 1$ : les entiers $p$ et $2p$ sont deux facteurs différents du produit $(n-1)!$. Ce produit est donc un multiple de $p \times 2p = 2p^2 = 2n$, donc de $n$. Ainsi $(n-1)! \equiv 0 \pmod{n}$.

**Question 3.** Pour $p = 2$ et $p = 3$, on vérifie directement : $1! = 1 \equiv -1 \pmod{2}$ et $2! = 2 \equiv -1 \pmod{3}$. On suppose maintenant $p \geq 5$. On utilise le lemme de Gauss : si un nombre premier $p$ divise un produit $xy$ et ne divise pas $x$, alors il divise $y$.

*Étape 1 : chaque $x$ a un unique inverse.* Fixons $x$ entre $1$ et $p - 1$. Regardons les $p - 1$ produits $x \times 1, x \times 2, \ldots, x \times (p-1)$.

- Aucun n'est divisible par $p$ : $p$ ne divise ni $x$ ni $i$, donc, par le lemme de Gauss, il ne divise pas $xi$.
- Deux d'entre eux ne sont jamais congrus : si $xi \equiv xj \pmod{p}$, alors $p$ divise $x\,(i - j)$, donc $p$ divise $i - j$. Comme $|i - j| < p$, on a $i = j$.

Ces $p - 1$ produits ont donc $p - 1$ restes différents, pris parmi $1, 2, \ldots, p - 1$ : chaque reste apparaît exactement une fois. En particulier, il y a un unique $y$ entre $1$ et $p - 1$ tel que $xy \equiv 1 \pmod{p}$. On l'appelle l'inverse de $x$. Si $y$ est l'inverse de $x$, alors $x$ est l'inverse de $y$.

*Étape 2 : seuls $1$ et $p - 1$ sont leur propre inverse.* Si $x^2 \equiv 1 \pmod{p}$, alors $p$ divise $x^2 - 1 = (x-1)(x+1)$, donc $p$ divise $x - 1$ ou $x + 1$. Pour $x$ entre $1$ et $p - 1$, cela donne $x = 1$ ou $x = p - 1$. Réciproquement, $1 \times 1 = 1$ et $(p-1)^2 = p\,(p-2) + 1 \equiv 1 \pmod{p}$.

*Étape 3 : on regroupe.* Prenons $x$ entre $2$ et $p - 2$. Son inverse $y$ est différent de $x$ (étape 2). Il n'est pas égal à $1$, car l'inverse de $1$ est $1$, ni à $p - 1$, car l'inverse de $p - 1$ est $p - 1$. Donc $y$ est lui aussi entre $2$ et $p - 2$. Les $p - 3$ nombres $2, 3, \ldots, p - 2$ se regroupent ainsi en paires $\{x, y\}$ dont le produit est congru à $1$. Par exemple, pour $p = 11$ :
$$2 \times 3 \times \cdots \times 9 = (2 \times 6) \times (3 \times 4) \times (5 \times 9) \times (7 \times 8) \equiv 1 \times 1 \times 1 \times 1 \pmod{11}.$$
En général, $2 \times 3 \times \cdots \times (p - 2) \equiv 1 \pmod{p}$, et donc
$$(p-1)! = 1 \times \left(2 \times 3 \times \cdots \times (p-2)\right) \times (p - 1) \equiv 1 \times 1 \times (-1) = -1 \pmod{p}.$$

**Question 4.** Soit $n \geq 2$.

- Si $n$ est premier, la question 3 donne $(n-1)! \equiv -1 \pmod{n}$.
- Si $n$ n'est pas premier et $n \neq 4$, les questions 1 et 2 donnent $(n-1)! \equiv 0 \pmod{n}$. Or $0 \not\equiv -1 \pmod{n}$, puisque $n \geq 2$ ne divise pas $1$.
- Si $n = 4$, on calcule : $3! = 6 \equiv 2 \pmod{4}$, alors que $-1 \equiv 3 \pmod{4}$.

**Conclusion.** Un entier $n \geq 2$ est premier si et seulement si $(n-1)! \equiv -1 \pmod{n}$. C'est le théorème de Wilson.

## Going further

1. Que vaut $(n-1)!$ modulo $n$ quand $n = 4$, et quand $n$ est un autre nombre non premier ? Vérifiez sur $n = 6$, $8$ et $9$.
2. Soit $p$ un nombre premier de la forme $4k + 1$. En écrivant $p - j \equiv -j \pmod{p}$ dans le produit $(p-1)!$, montrer que $\left(\left(\frac{p-1}{2}\right)!\right)^2 \equiv -1 \pmod{p}$.
