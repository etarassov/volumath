---
id: "11076"
title: "nm divise le produit de deux nombres de Fermat"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres-de-fermat, congruences, ordre, petit-theoreme-de-fermat, nombres-premiers, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Seniors, exercice 14 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Trouver tous les couples $(n, m)$ d'entiers strictement positifs tels que $nm$ divise
$$\left(2^{2^n} + 1\right)\left(2^{2^m} + 1\right).$$

## Hints

1. Note $F_k = 2^{2^k} + 1$. Soit $p$ un nombre premier qui divise $F_k$. Montre que
   $2^{2^{k+1}} \equiv 1 \pmod p$.
2. Regarde le plus petit entier $d \geqslant 1$ tel que $2^d \equiv 1 \pmod p$. Montre que $d$
   divise tout exposant $e$ tel que $2^e \equiv 1 \pmod p$, puis que $d = 2^{k+1}$.
3. Avec le petit théorème de Fermat, déduis que $p \geqslant 2^{k+1} + 1$. Applique cela à un
   facteur premier du plus petit des deux nombres $n$ et $m$.
4. Une fois que tu sais que l'un des deux vaut $1$, quels nombres premiers peuvent diviser l'autre ?

## Solution

Notons $F_k = 2^{2^k} + 1$ pour tout entier $k \geqslant 0$. On cherche les couples tels que
$nm$ divise $F_n F_m$.

**Étape 1 : les facteurs premiers de $F_k$ sont grands.**

Montrons que tout nombre premier $p$ qui divise $F_k$ vérifie $p \geqslant 2^{k+1} + 1$.

Le nombre $F_k$ est impair, donc $p$ est impair. On a $2^{2^k} \equiv -1 \pmod p$, et en élevant
au carré, $2^{2^{k+1}} \equiv 1 \pmod p$.

Soit $d$ le plus petit entier $d \geqslant 1$ tel que $2^d \equiv 1 \pmod p$. Si $e \geqslant 1$
vérifie aussi $2^e \equiv 1 \pmod p$, écrivons la division euclidienne $e = qd + r$ avec
$0 \leqslant r < d$. Alors
$$1 \equiv 2^e = \left(2^d\right)^q \times 2^r \equiv 2^r \pmod p,$$
et comme $d$ est le plus petit exposant strictement positif qui donne $1$, on a $r = 0$ : $d$
divise $e$.

Appliquons cela à $e = 2^{k+1}$ : $d$ divise $2^{k+1}$, donc $d = 2^j$ avec $j \leqslant k+1$. Si
on avait $j \leqslant k$, alors $d$ diviserait $2^k$, et donc $2^{2^k} \equiv 1 \pmod p$. Or
$2^{2^k} \equiv -1$, d'où $1 \equiv -1$, c'est-à-dire $p$ divise $2$ : impossible. Donc
$d = 2^{k+1}$.

Enfin, $p$ est impair, donc d'après le petit théorème de Fermat, $2^{p-1} \equiv 1 \pmod p$. Ainsi
$d = 2^{k+1}$ divise $p - 1$, et $p \geqslant 2^{k+1} + 1$.

**Étape 2 : le plus petit des deux vaut $1$.**

Les rôles de $n$ et $m$ sont les mêmes, on peut donc supposer $n \geqslant m$. Supposons
$m \geqslant 2$ et prenons un facteur premier $p$ de $m$. Comme $p$ divise $nm$, il divise
$F_n F_m$, donc il divise $F_n$ ou $F_m$. D'après l'étape 1,
$$p \geqslant 2^{n+1} + 1 \qquad \text{ou} \qquad p \geqslant 2^{m+1} + 1,$$
et dans les deux cas $p \geqslant 2^{m+1} + 1$ car $n \geqslant m$. Mais $p \leqslant m < 2^{m+1} + 1$,
contradiction. Donc $m = 1$.

**Étape 3 : les valeurs possibles de $n$.**

Avec $m = 1$, la condition devient : $n$ divise $F_1 \, F_n = 5 \, F_n$.

Si $n = 1$, c'est vrai. Si $n \geqslant 2$, soit $p$ un facteur premier de $n$. Il divise $5$ ou
$F_n$. S'il divisait $F_n$, on aurait $p \geqslant 2^{n+1} + 1 > n \geqslant p$, impossible. Donc
$p = 5$ : le seul facteur premier de $n$ est $5$, et $n = 5^\ell$ avec $\ell \geqslant 1$.

Or pour $n \geqslant 2$, $2^{2^n} = 16^{2^{n-2}} \equiv 1 \pmod 5$, donc $F_n \equiv 2 \pmod 5$ :
$5$ ne divise pas $F_n$. Comme $5^\ell$ divise $5 F_n$, le nombre $5^{\ell - 1}$ divise $F_n$, ce qui
force $\ell - 1 = 0$. Donc $n = 5$.

Réciproquement, $n = 5$ convient bien : $5$ divise $5 F_5$.

**Conclusion.** Les couples cherchés sont $(1, 1)$, $(1, 5)$ et $(5, 1)$.

## Going further

D'après l'étape 1, tout facteur premier de $F_5 = 2^{32} + 1$ est de la forme $64j + 1$. Fermat
pensait que tous les $F_k$ étaient premiers, mais Euler a trouvé en 1732 que $641 = 10 \times 64 + 1$
divise $F_5$. Le démontrer sans calculer $2^{32}$.

*Réponse* : on remarque que $641 = 5 \times 2^7 + 1$ et aussi $641 = 5^4 + 2^4$. La première
écriture donne $5 \times 2^7 \equiv -1 \pmod{641}$, donc en élevant à la puissance $4$,
$5^4 \times 2^{28} \equiv 1 \pmod{641}$. La seconde donne $5^4 \equiv -2^4 \pmod{641}$. En
remplaçant, $-2^4 \times 2^{28} \equiv 1$, c'est-à-dire $2^{32} \equiv -1 \pmod{641}$ : $641$
divise $2^{32} + 1$.
