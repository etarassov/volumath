---
id: "40487"
title: "Un nombre mauvais a une infinité de bloqueurs"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [chiffres, divisibilite, principe-des-tiroirs, decomposition-en-facteurs-premiers, ecriture-decimale, construction, mots]
adapted_from: null
see_also: ["40484", "40485", "40486"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2014, mathématiques, série S"
  reference: "cg-2014-s-sujet.pdf, problème III « Des chiffres pour des lettres », question 6°"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2014-s-sujet.pdf"
---

## Statement

Un *mot de longueur $n$* est une suite de $n$ lettres choisies parmi les dix lettres $A$, $B$,
$C$, $D$, $E$, $F$, $G$, $H$, $I$, $J$.

Une *attribution* du mot $\omega$ est un nombre dont l'écriture décimale s'obtient en remplaçant
chaque lettre de $\omega$ par l'un des chiffres $0, 1, \ldots, 9$, de sorte que des lettres
identiques soient remplacées par le même chiffre, et que deux lettres différentes soient
remplacées par des chiffres différents. Le premier chiffre peut être $0$. Par exemple, $121$ et
$040 = 40$ sont des attributions du mot $GAG$, mais $333$ et $452$ n'en sont pas.

Soit $d$ un entier strictement positif. Le mot $\omega$ est un *bloqueur* de $d$ si aucune
attribution de $\omega$ n'est divisible par $d$. Par exemple, le mot $AB$ est un bloqueur de
$100$, car ses attributions sont des nombres compris entre $1$ et $98$. Le nombre $d$ est dit
*mauvais* s'il admet au moins un bloqueur.

Montrer que si un nombre est mauvais, il admet une infinité de bloqueurs.

## Hints

1. Partir d'un bloqueur $\omega$ de $d$, de longueur $n$, et fabriquer d'autres mots à partir de
   lui. Que dire des attributions du mot $\omega\omega$, formé de deux copies de $\omega$ écrites
   à la suite ? Et de $\omega\omega\omega$ ?
2. Une attribution du mot formé de $m$ copies de $\omega$ s'écrit $v \times W_m$, où $v$ est une
   attribution de $\omega$ et $W_m = 1 + 10^n + 10^{2n} + \cdots + 10^{(m-1)n}$. Il suffirait que
   $d$ et $W_m$ n'aient aucun facteur premier commun.
3. Écrire $d = 2^\alpha \times 5^\beta \times d'$, où $d'$ n'est divisible ni par $2$ ni par $5$.
   Le nombre $W_m$ n'est jamais divisible par $2$ ni par $5$ : pourquoi ? Pour la partie $d'$, il
   suffirait que $W_m - 1$ soit un multiple de $d'$.
4. Principe des tiroirs : parmi les $d' + 1$ nombres $W_1, W_2, \ldots, W_{d'+1}$, deux ont le
   même reste dans la division par $d'$. Que vaut leur différence ?

## Solution

Soit $d$ un nombre mauvais et $\omega$ un bloqueur de $d$, de longueur $n$. Pour $m \geq 1$,
notons $\omega^{(m)}$ le mot formé de $m$ copies de $\omega$ écrites à la suite, et

$$W_m = 1 + 10^n + 10^{2n} + \cdots + 10^{(m-1)n} .$$

Par exemple, pour $n = 3$, $W_3 = 1\,001\,001$.

*Étape 1 : les attributions de $\omega^{(m)}$.* Le mot $\omega^{(m)}$ contient les mêmes lettres
que $\omega$. Une attribution de $\omega^{(m)}$ donne un chiffre à chacune de ces lettres ; avec ces
mêmes chiffres, $\omega$ a une attribution $v$ (écrite avec $n$ chiffres), et l'attribution de
$\omega^{(m)}$ s'écrit en recopiant $m$ fois l'écriture de $v$. Elle vaut donc

$$v \times 10^{(m-1)n} + \cdots + v \times 10^n + v = v \times W_m .$$

Ainsi chaque attribution de $\omega^{(m)}$ est de la forme $v \times W_m$, où $v$ est une
attribution de $\omega$, donc un nombre non divisible par $d$.

*Étape 2 : découper $d$.* Écrivons $d = 2^\alpha \times 5^\beta \times d'$, où $\alpha$ et $\beta$
sont des entiers positifs ou nuls et $d'$ un entier qui n'est divisible ni par $2$ ni par $5$.

*Étape 3 : un $W_M$ multiple de $d'$.* Il y a $d'$ restes possibles dans la division par $d'$.
Parmi les $d' + 1$ nombres $W_1, W_2, \ldots, W_{d'+1}$, deux ont donc le même reste (principe des
tiroirs) : disons $W_i$ et $W_j$, avec $i < j$. Leur différence est un multiple de $d'$, et

$$W_j - W_i = 10^{in} + 10^{(i+1)n} + \cdots + 10^{(j-1)n} = 10^{in} \times W_{j-i} .$$

Les facteurs premiers de $d'$ ne sont ni $2$ ni $5$, donc aucun ne se trouve dans
$10^{in} = 2^{in} \times 5^{in}$ : dans la décomposition en facteurs premiers de
$10^{in} \times W_{j-i}$, ils viennent tous de $W_{j-i}$. Donc $d'$ divise $W_{j-i}$. Posons
$M = j - i \geq 1$.

*Étape 4 : une infinité de tels nombres.* Pour tout entier $t \geq 1$, en regroupant les termes de
$W_{tM}$ par paquets de $M$,

$$W_{tM} = W_M \times \left(1 + 10^{Mn} + 10^{2Mn} + \cdots + 10^{(t-1)Mn}\right),$$

donc $d'$ divise aussi $W_{tM}$. Posons $m = tM + 1$. Alors
$W_m = 1 + 10^n \times W_{tM}$, donc $W_m - 1$ est un multiple de $d'$. De plus, $W_m$ se termine
par le chiffre $1$, donc il n'est divisible ni par $2$ ni par $5$.

*Étape 5 : le mot $\omega^{(m)}$ est un bloqueur de $d$.* Supposons qu'une attribution
$v \times W_m$ de $\omega^{(m)}$ soit divisible par $d$.

- $2^\alpha \times 5^\beta$ divise $v \times W_m$. Comme $W_m$ n'a pas de facteur premier $2$ ou
  $5$, tous les facteurs $2$ et $5$ de la décomposition de $v \times W_m$ viennent de $v$, donc
  $2^\alpha \times 5^\beta$ divise $v$.
- $d'$ divise $v \times W_m = v + v \times (W_m - 1)$, et $d'$ divise $v \times (W_m - 1)$. Donc
  $d'$ divise $v$.
- $2^\alpha \times 5^\beta$ et $d'$ n'ont aucun facteur premier commun et divisent tous deux $v$,
  donc leur produit $d$ divise $v$ (chaque puissance de nombre premier de la décomposition de $d$
  figure dans celle de $v$).

C'est impossible, puisque $v$ est une attribution du bloqueur $\omega$. Donc $\omega^{(m)}$ est un
bloqueur de $d$.

*Conclusion.* Pour tout entier $t \geq 1$, le mot $\omega^{(tM+1)}$ est un bloqueur de $d$. Ces mots
ont des longueurs différentes, $(tM+1)\,n$, donc ils sont tous différents.

**Conclusion :** un nombre mauvais admet une infinité de bloqueurs.

**Bilan.** Si $\omega$ bloque $d$, alors le mot formé de $tM + 1$ copies de $\omega$ bloque aussi
$d$, pour tout $t \geq 1$, où $M$ est un entier bien choisi (donné par le principe des tiroirs).
Les attributions de ces mots sont celles de $\omega$ multipliées par un nombre qui n'a aucun
facteur premier commun avec $d$, ce qui ne crée aucun multiple de $d$.

## Going further

- Exemple : le mot $AAB$ est un bloqueur de $27$. Ici $d' = 27$ et $n = 3$. Comme
  $1000 = 37 \times 27 + 1$, quel est le reste de $W_m$ dans la division par $27$ ? En déduire une
  valeur de $M$, et un bloqueur de $27$ de $84$ lettres.
- Pour certains $d$, il suffit de deux copies. Montrer que $AABAAB$ est un bloqueur de $27$ en
  remarquant que $W_2 = 1001 = 7 \times 11 \times 13$.
- Voir aussi les exercices 40484, 40485 et 40486, tirés du même sujet.
