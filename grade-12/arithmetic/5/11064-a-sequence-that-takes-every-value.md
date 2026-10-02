---
id: "11064"
title: "Une suite qui finit par prendre toutes les valeurs"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [suites, petit-theoreme-de-fermat, nombres-premiers, absurde, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Seniors, exercice 18 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf. Le corrigé contient plusieurs coquilles : « (mod q − 1) » pour (mod q) dans l'usage du petit théorème de Fermat, un inverse « modulo p_{k+1} − 1 » au lieu de modulo p_{k+1}, l'intervalle « 1 ⩽ i ⩽ p_k − 1 » au lieu de p_{k+1} − 1, et « ≡ N » au lieu de ≡ 1. La solution ci-dessous suit la même idée, réécrite."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Pour tout entier $k \geqslant 1$, on note $p(k)$ le plus petit nombre premier qui ne divise pas $k$. Par exemple $p(1) = 2$, $p(2) = 3$ et $p(6) = 5$.

Soit $(a_n)_{n \geqslant 0}$ la suite définie par un premier terme $a_0 \geqslant 1$ et, pour tout $n \geqslant 0$ :

> $a_{n+1}$ est le plus petit entier strictement positif, différent de $a_0, a_1, \ldots, a_n$, tel que $a_n^{\,a_{n+1}} - 1$ est divisible par $p(a_n)$.

Démontrer que tout entier strictement positif apparaît une fois et une seule dans la suite.

## Hints

1. Calcule les premiers termes pour $a_0 = 1$. Tu dois trouver $1, 2, 4, 3, 5, 6, 7, 8, 10, 9, \ldots$
2. Commence par vérifier que la suite est bien définie : pourquoi existe-t-il toujours un candidat ? Le petit théorème de Fermat aide.
3. Raisonne par l'absurde avec $N$ le plus petit entier qui n'apparaît jamais. À partir d'un certain rang, que peux-tu dire de $a_n^N - 1$ et de $p(a_n)$ ?
4. Montre qu'un nombre premier $q$ ne peut être égal à $p(a_n)$ que pour un nombre fini d'indices $n$. Sinon, tous les multiples de $q - 1$ apparaîtraient. Pense aux nombres $P^{j(q-1)}$, où $P$ est le produit des nombres premiers plus petits que $q$.
5. Il existe donc des indices $m$, aussi loin que tu veux, avec $p(a_{m+1}) > p(a_m) = q$. Alors $q$ divise $a_{m+1}$. Écris $a_{m+1} = q^b\,c$ et utilise Fermat pour montrer que $q$ divise $a_m^{\,c} - 1$.

## Solution

On utilise le petit théorème de Fermat : si $q$ est premier, alors $x^q \equiv x \pmod{q}$ pour tout entier $x$, et $x^{q-1} \equiv 1 \pmod{q}$ si $q$ ne divise pas $x$.

Par définition, $p(k)$ ne divise pas $k$, et **tous les nombres premiers strictement plus petits que $p(k)$ divisent $k$**. On utilisera souvent ce fait.

**Étape 0 : la suite est bien définie, et ses termes sont distincts.**

Soit $q = p(a_n)$. Comme $q$ ne divise pas $a_n$, Fermat donne $a_n^{\,q-1} \equiv 1 \pmod q$, donc $a_n^{\,m} \equiv 1 \pmod q$ pour tout multiple $m$ de $q - 1$. Il y a une infinité de tels $m$, donc au moins un n'est pas parmi $a_0, \ldots, a_n$, et le plus petit candidat $a_{n+1}$ existe.

Par construction, chaque terme est différent des précédents, donc chaque entier apparaît **au plus** une fois. Il reste à montrer que chaque entier apparaît.

**Étape 1 : mise en place du raisonnement par l'absurde.**

Supposons qu'un entier strictement positif n'apparaisse jamais, et soit $N$ le plus petit. Les entiers $1, \ldots, N - 1$ apparaissent tous ; il existe donc un rang $N_0 \geqslant 1$ tel qu'ils figurent tous parmi $a_0, \ldots, a_{N_0 - 1}$. On pose $M = \max(a_0, a_1, \ldots, a_{N_0})$.

Soit $n \geqslant N_0 - 1$. Au moment de choisir $a_{n+1}$, les entiers $1, \ldots, N - 1$ sont déjà pris, et $N$ ne l'est pas. Si $p(a_n)$ divisait $a_n^{\,N} - 1$, l'entier $N$ serait le plus petit candidat, et l'on aurait $a_{n+1} = N$. C'est exclu, donc
$$\text{pour tout } n \geqslant N_0 - 1, \qquad p(a_n) \text{ ne divise pas } a_n^{\,N} - 1 . \qquad (\star)$$

**Étape 2 : chaque nombre premier n'est $p(a_n)$ que pour un nombre fini d'indices.**

Supposons qu'un nombre premier $q$ vérifie $p(a_n) = q$ pour une infinité d'indices $n$.

*Tous les multiples de $q - 1$ apparaissent.* Soit $m$ un multiple de $q - 1$. Pour chaque $n$ tel que $p(a_n) = q$, l'étape 0 montre que $m$ est un candidat pour $a_{n+1}$. Donc, ou bien $m$ est déjà apparu, ou bien $a_{n+1} \leqslant m$. Comme les termes sont distincts, le second cas ne peut se produire qu'au plus $m$ fois. Il y a une infinité de tels indices $n$, donc $m$ finit par apparaître.

*Contradiction.* Si $q = 2$, tous les entiers sont multiples de $q - 1 = 1$, donc $N$ apparaît : c'est absurde. Si $q \geqslant 3$, soit $P$ le produit des nombres premiers strictement plus petits que $q$, et $x_j = P^{\,j(q-1)}$ pour $j \geqslant 1$.

- $q - 1$ divise $x_j$. En effet, chaque facteur premier $r$ de $q - 1$ est plus petit que $q$, donc divise $P$, et son exposant $e$ dans $q - 1$ vérifie $2^e \leqslant r^e \leqslant q - 1$, donc $e < q - 1 \leqslant j\,(q - 1)$.
- $p(x_j) = q$, car $x_j$ est divisible par tous les nombres premiers plus petits que $q$, et pas par $q$.
- $x_j^{\,N} = \left(P^{\,jN}\right)^{q-1} \equiv 1 \pmod q$ par Fermat, car $q$ ne divise pas $P$.

Les $x_j$ sont deux à deux distincts et apparaissent tous dans la suite. Un nombre fini seulement d'entre eux ont un indice inférieur à $N_0$, donc il existe $n \geqslant N_0$ et $j$ avec $a_n = x_j$. Alors $p(a_n) = q$ divise $a_n^{\,N} - 1$, ce qui contredit $(\star)$.

**Étape 3 : un indice $m$ où $p(a_n)$ augmente, avec $p(a_m)$ grand.**

Notons $q_n = p(a_n)$. D'après l'étape 2, pour toute borne $B$, il n'y a qu'un nombre fini d'indices $n$ avec $q_n \leqslant B$, puisqu'il n'y a qu'un nombre fini de nombres premiers inférieurs à $B$.

Fixons un nombre premier $\ell > M$. Il existe un rang $n_0$ à partir duquel $q_n > \ell$. La suite $(q_n)_{n \geqslant n_0}$ ne peut pas être décroissante au sens large : sinon elle ne prendrait que des valeurs inférieures à $q_{n_0}$, en nombre fini, et l'une d'elles serait prise une infinité de fois. Il existe donc $m \geqslant n_0$ avec
$$q_{m+1} > q_m .$$
Posons $q = q_m = p(a_m)$. On a $q > \ell$.

**Étape 4 : la contradiction finale.**

Comme $q < q_{m+1} = p(a_{m+1})$, le nombre premier $q$ divise $a_{m+1}$. Écrivons $a_{m+1} = q^b\,c$ avec $b \geqslant 1$ et $q$ ne divisant pas $c$. Tout nombre premier plus petit que $q$ divise $a_{m+1}$ et est différent de $q$, donc divise $c$.

*$q$ divise $a_m^{\,c} - 1$.* Posons $y = a_m^{\,c}$. Par Fermat, $y^q \equiv y \pmod q$, puis $y^{q^2} = (y^q)^q \equiv y^q \equiv y$, et de proche en proche $y^{q^b} \equiv y \pmod q$. Or $y^{q^b} = a_m^{\,a_{m+1}} \equiv 1 \pmod q$ par définition de $a_{m+1}$. Donc $a_m^{\,c} \equiv 1 \pmod q$.

*Des candidats plus petits que $a_{m+1}$.* Pour $1 \leqslant i \leqslant q - 1$, on a $a_m^{\,ic} = y^i \equiv 1 \pmod q$, donc $i\,c$ est un candidat pour $a_{m+1}$. Comme $i\,c < q\,c \leqslant q^b c = a_{m+1}$ et que $a_{m+1}$ est le plus petit candidat non utilisé, **chaque $i\,c$ avec $1 \leqslant i \leqslant q - 1$ figure déjà parmi $a_0, \ldots, a_m$.**

*Un candidat particulier.* Comme $q$ est premier et ne divise pas $c$, l'entier $c$ est inversible modulo $q$ : il existe $i \in \{1, \ldots, q - 1\}$ tel que $i\,c \equiv 1 \pmod q$. Posons $x = i\,c$ ; c'est un terme $a_j$ de la suite, avec $j \leqslant m$.

- $p(x) = q$ : $x$ est divisible par tous les nombres premiers plus petits que $q$ (ils divisent $c$), et pas par $q$ car $x \equiv 1 \pmod q$.
- $x^N \equiv 1^N = 1 \pmod q$, donc $p(a_j) = q$ divise $a_j^{\,N} - 1$.

D'après $(\star)$, on a donc $j < N_0 - 1$, et ainsi $x = a_j \leqslant M$. Mais $\ell$ est un nombre premier plus petit que $q$, donc il divise $x$, et $x \geqslant \ell > M$. C'est la contradiction cherchée.

**Conclusion.** Aucun entier ne manque : tout entier strictement positif apparaît dans la suite, et d'après l'étape 0, il y apparaît une seule fois.

## Going further

Pour $a_0 = 1$, la suite commence par $1, 2, 4, 3, 5, 6, 7, 8, 10, 9, 11, 12, 16, 13, 14, 18, 20, 22, 15, 17, 19, \ldots$ Expliquer pourquoi, chaque fois que $a_n$ est impair, le terme suivant est le plus petit entier non encore utilisé.

*Réponse :* si $a_n$ est impair, alors $p(a_n) = 2$, et $a_n^{\,m} - 1$ est pair pour tout $m \geqslant 1$. Tout entier non utilisé est donc un candidat.
