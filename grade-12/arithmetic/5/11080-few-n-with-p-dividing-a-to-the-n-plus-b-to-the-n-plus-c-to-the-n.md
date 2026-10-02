---
id: "11080"
title: "Peu de n tels que p divise aⁿ + bⁿ + cⁿ"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [congruences, ordre, petit-theoreme-de-fermat, nombres-premiers, denombrement, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Seniors, exercice 18 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf (dans le lemme, le corrigé pose t = i − j puis remplace c^{j−i} par c^t, une erreur de signe sans conséquence puisque le lemme est symétrique ; il majore aussi la somme par 2(p − 2) au lieu de 2(p − 3), ce qui reste juste)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Soit $p$ un nombre premier tel que $\frac{p-1}{2}$ soit aussi un nombre premier, et soient $a$,
$b$, $c$ trois entiers non divisibles par $p$.

Montrer que le nombre d'entiers $n$ tels que $1 \leqslant n < p$ et que $p$ divise
$a^n + b^n + c^n$ est strictement inférieur à $\sqrt{2p} + 1$.

## Hints

1. Commence par le cas où $a \equiv \pm b$ et $b \equiv \pm c \pmod p$. Ensuite, quitte à changer
   les noms, suppose $a \not\equiv \pm b$ et regarde $g \equiv a b^{-1}$. Quel peut être le plus
   petit exposant $d \geqslant 1$ tel que $g^d \equiv 1 \pmod p$ ?
2. Note $E$ l'ensemble des $n$ qui conviennent. Pour un entier $t$, compte les couples $(i, j)$
   d'éléments de $E$ tels que $i - j \equiv t \pmod{p - 1}$.
3. Si $i \equiv j + t$, multiplie la relation $a^j + b^j + c^j \equiv 0$ par $c^t$ et retranche
   celle de $i$. Tu dois obtenir une seule valeur possible pour $g^j$.
4. Pour conclure, compte de deux façons les couples $(i, j)$ avec $i \neq j$.

## Solution

Notons $q = \frac{p-1}{2}$, qui est premier, et $E$ l'ensemble des entiers $n$ tels que
$1 \leqslant n \leqslant p - 1$ et $a^n + b^n + c^n \equiv 0 \pmod p$. On veut montrer que
$|E| < \sqrt{2p} + 1$, où $|E|$ est le nombre d'éléments de $E$.

Remarquons que $p \geqslant 5$ : pour $p = 2$, $\frac{p-1}{2}$ n'est pas entier, et pour $p = 3$,
il vaut $1$, qui n'est pas premier.

**Étape 1 : un cas particulier.**

Supposons $a \equiv \pm b$ et $b \equiv \pm c \pmod p$. Alors pour tout $n$, $b^n \equiv \pm a^n$
et $c^n \equiv \pm a^n$, donc
$$a^n + b^n + c^n \equiv a^n (1 \pm 1 \pm 1),$$
qui vaut $3a^n$, $a^n$ ou $-a^n$ modulo $p$. Comme $p \geqslant 5$ ne divise ni $3$ ni $a$, ce n'est
jamais $0$ : $E$ est vide et le résultat est vrai.

Dans la suite, on suppose qu'on n'est pas dans ce cas. Quitte à échanger les noms des nombres,
on peut supposer $a \not\equiv \pm b \pmod p$.

**Étape 2 : l'ordre de $g = a b^{-1}$.**

Comme $p$ ne divise pas $b$, le théorème de Bézout donne un inverse $b^{-1}$ de $b$ modulo $p$.
Posons $g \equiv a b^{-1}$. Alors $g \not\equiv \pm 1$, et $g$ n'est pas divisible par $p$.

Soit $d$ le plus petit entier $d \geqslant 1$ tel que $g^d \equiv 1 \pmod p$. Si $g^e \equiv 1$,
la division euclidienne $e = kd + s$ avec $0 \leqslant s < d$ donne
$g^s \equiv g^e \left(g^d\right)^{-k} \equiv 1$, donc $s = 0$ : $d$ divise $e$. Par le petit
théorème de Fermat, $g^{p-1} \equiv 1$, donc $d$ divise $p - 1 = 2q$. Comme $q$ est premier,
$d \in \{1, 2, q, 2q\}$.

- $d = 1$ voudrait dire $g \equiv 1$ : exclu.
- $d = 2$ voudrait dire que $p$ divise $g^2 - 1 = (g - 1)(g + 1)$, donc $g \equiv \pm 1$ : exclu.

Donc $d = q$ ou $d = 2q$. Conséquence : parmi les exposants $j = 1, 2, \ldots, 2q$, deux exposants
$j < j'$ tels que $g^j \equiv g^{j'}$ vérifient $g^{j' - j} \equiv 1$, donc $j' - j$ est un multiple
de $d$, au moins égal à $q$. Ainsi **chaque valeur est prise par $g^j$ pour au plus deux
exposants $j$** entre $1$ et $2q$.

**Étape 3 : un lemme sur les écarts.**

Comme $x^{p-1} \equiv 1$ pour $x \in \{a, b, c\}$, la valeur de $a^n + b^n + c^n$ modulo $p$ ne
dépend que du reste de $n$ modulo $p - 1$.

Pour un entier $t$, notons $e_t$ le nombre de couples $(i, j)$ d'éléments de $E$ tels que
$i - j \equiv t \pmod{p - 1}$.

*Lemme.* Si $0 < t < 2q$ et $t \neq q$, alors $e_t \leqslant 2$.

*Preuve.* Soit $(i, j)$ un tel couple. Comme $i \equiv j + t \pmod{p - 1}$, on a $x^i \equiv x^j x^t$
pour $x \in \{a, b, c\}$. Multiplions $a^j + b^j + c^j \equiv 0$ par $c^t$, et retranchons
$a^i + b^i + c^i \equiv a^j a^t + b^j b^t + c^j c^t \equiv 0$ :
$$a^j \left(c^t - a^t\right) + b^j \left(c^t - b^t\right) \equiv 0 \pmod p.$$
Si l'on avait $a^t \equiv c^t$, cette relation donnerait $b^j(c^t - b^t) \equiv 0$, donc
$b^t \equiv c^t \equiv a^t$, et $g^t \equiv 1$. Alors $d$ diviserait $t$. Or $0 < t < 2q$ et
$t \neq q$, donc $t$ n'est un multiple ni de $q$ ni de $2q$ : contradiction. Donc $c^t - a^t$ est
inversible modulo $p$, et en divisant par $b^j (c^t - a^t)$,
$$g^j \equiv \frac{b^t - c^t}{c^t - a^t} \pmod p.$$
Le membre de droite ne dépend que de $t$. D'après l'étape 2, il y a au plus deux valeurs possibles
pour $j$, et chacune détermine $i$, seul entier entre $1$ et $p - 1$ congru à $j + t$. Donc
$e_t \leqslant 2$.

**Étape 4 : le comptage.**

Notons $N = |E|$, et comptons les couples $(i, j)$ d'éléments de $E$ avec $i \neq j$. Il y en a
$N(N - 1)$. Pour chacun, $i - j$ n'est pas multiple de $p - 1$, car $i$ et $j$ sont deux nombres
distincts entre $1$ et $p - 1$. Pour un $i$ donné, un seul $j$ entre $1$ et $p - 1$ vérifie
$i - j \equiv q$. Il reste donc au moins $N(N - 1) - N = N(N - 2)$ couples dont l'écart $t$ (pris
entre $1$ et $2q - 1$) est différent de $q$. Il y a $2q - 2 = p - 3$ valeurs possibles de $t$, et
chacune compte au plus $2$ couples d'après le lemme :
$$N(N - 2) \leqslant 2(p - 3).$$
Donc
$$(N - 1)^2 = N(N - 2) + 1 \leqslant 2p - 5 < 2p,$$
d'où $N - 1 < \sqrt{2p}$.

**Conclusion.** Le nombre d'entiers $n$ cherchés est strictement inférieur à $\sqrt{2p} + 1$.

## Going further

La borne est presque atteinte pour $p = 7$, où $\sqrt{14} + 1 \approx \text{4,74}$. Trouver trois
entiers $a$, $b$, $c$ non divisibles par $7$ tels que $7$ divise $a^n + b^n + c^n$ pour quatre
valeurs de $n$ entre $1$ et $6$.

*Réponse* : $a = 1$, $b = 2$, $c = 4$. Les sommes $1 + 2^n + 4^n$ valent $7$, $21$, $73$, $273$,
$1057$ et $4161$ pour $n = 1, \ldots, 6$. Elles sont divisibles par $7$ pour $n = 1, 2, 4, 5$, et
pas pour $n = 3$ et $n = 6$ (où $2^n \equiv 4^n \equiv 1$, et la somme vaut $3$ modulo $7$).
