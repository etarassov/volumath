---
id: "40485"
title: "Tout premier p ≥ 7 est mauvais, et il y a au plus 27 nombres bons"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [chiffres, divisibilite, nombres-premiers, petit-theoreme-de-fermat, puissances-de-dix, repunit, decomposition-en-facteurs-premiers, mots]
adapted_from: null
see_also: ["40484", "40486", "40487"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2014, mathématiques, série S"
  reference: "cg-2014-s-sujet.pdf, problème III « Des chiffres pour des lettres », question 3° (a et b), avec les résultats de 1° b et 2° c, d, e admis en préambule"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2014-s-sujet.pdf"
---

## Statement

Un *mot de longueur $n$* est une suite de $n$ lettres choisies parmi les dix lettres $A$, $B$,
$C$, $D$, $E$, $F$, $G$, $H$, $I$, $J$. Si $k$ est un entier strictement positif et $X$ une
lettre, on note $X^k$ le mot $XX\ldots X$ formé de $k$ lettres $X$.

Une *attribution* du mot $\omega$ est un nombre dont l'écriture décimale s'obtient en remplaçant
chaque lettre de $\omega$ par l'un des chiffres $0, 1, \ldots, 9$, de sorte que des lettres
identiques soient remplacées par le même chiffre, et que deux lettres différentes soient
remplacées par des chiffres différents. Le premier chiffre peut être $0$. Par exemple, $121$ et
$040 = 40$ sont des attributions du mot $GAG$, mais $333$ et $452$ n'en sont pas.

Soit $d$ un entier strictement positif. Le mot $\omega$ est un *bloqueur* de $d$ si aucune
attribution de $\omega$ n'est divisible par $d$. Le nombre $d$ est *mauvais* s'il admet au moins
un bloqueur, et *bon* sinon (tout mot a alors au moins une attribution divisible par $d$).

On admet les résultats suivants, démontrés dans une partie précédente :

- le mot $AB$ est un bloqueur de tout entier $d \geq 100$ ;
- le mot $AAB$ est un bloqueur de $27$, et le mot $ABBAB$ est un bloqueur de $32$ ;
- un diviseur positif d'un nombre bon est bon.

On pourra aussi utiliser librement le *petit théorème de Fermat* : si $p$ est un nombre premier
et $x$ un entier non divisible par $p$, alors $p$ divise $x^{p-1} - 1$.

1. Soit $p$ un nombre premier supérieur ou égal à $7$, et soit $\omega$ le mot
   $$\omega = A\;AA^{p-2}\;BA^{p-2}\;CA^{p-2}\;DA^{p-2}\;EA^{p-2}\;FA^{p-2}\;GA^{p-2}\;HA^{p-2}\;IA^{p-2}\;JA^{p-2} .$$
   Autrement dit, $\omega$ commence par une lettre $A$, suivie de dix blocs de $p - 1$ lettres
   chacun : chaque bloc est formé d'une lettre suivie de $p - 2$ lettres $A$, et les lettres en
   tête des blocs sont, dans l'ordre, $A, B, C, \ldots, J$. Pour $p = 7$, le mot a $61$ lettres
   (les espaces ne servent qu'à la lecture) :
   $$A\;\;AAAAAA\;\;BAAAAA\;\;CAAAAA\;\;DAAAAA\;\;\ldots\;\;JAAAAA$$
   Montrer que $\omega$ est un bloqueur de $p$.
2. Montrer qu'il existe au plus $27$ nombres bons.

## Hints

1. **Question 1.** Dans une attribution de $\omega$, les dix lettres reçoivent dix chiffres
   différents, donc tous les chiffres de $0$ à $9$. Que vaut la somme $a + b + \cdots + j$ des
   chiffres donnés aux lettres $A, B, \ldots, J$ ?
2. **Question 1.** Le petit théorème de Fermat, avec $x = 10$, dit que $10^{p-1} - 1$ est un
   multiple de $p$. En déduire que $10^{m(p-1)} - 1$ est aussi un multiple de $p$ pour tout
   entier $m \geq 1$. (Penser à $999999 = 99 \times 10101$.)
3. **Question 1.** Écrire l'attribution $N$ comme la somme du premier $a$, multiplié par
   $10^{10(p-1)}$, et des dix blocs, chacun multiplié par une puissance $10^{m(p-1)}$. Si l'on
   remplace chacune de ces puissances par $1$, on obtient un nombre $N_0$ tel que $N - N_0$ est un
   multiple de $p$.
4. **Question 1.** Avec $T = 10^{p-2}$ et $R = 11\ldots1$ (formé de $p - 2$ chiffres $1$), un
   bloc dont la lettre de tête a le chiffre $x$ vaut $xT + aR$. Remarquer que $9R = T - 1$ et
   $10T = 10^{p-1}$.
5. **Question 1.** Calculer $90 N_0$ : on doit trouver $405$ plus un multiple de $p$. Conclure
   en remarquant que $405 = 3^4 \times 5$.
6. **Question 2.** Un nombre bon est inférieur à $100$, et tous ses diviseurs sont bons. Quels
   facteurs premiers peut-il avoir ? Avec quelles puissances ?

## Solution

**1.** Soit $N$ une attribution de $\omega$, et notons $a, b, c, \ldots, j$ les chiffres donnés aux
lettres $A, B, C, \ldots, J$. Les dix lettres figurent dans $\omega$, donc ces dix chiffres sont
différents : ce sont $0, 1, \ldots, 9$ dans un certain ordre, et
$$a + b + c + \cdots + j = 0 + 1 + \cdots + 9 = 45 .$$

*Écriture de $N$.* Posons $L = p - 1$, $T = 10^{p-2}$ et $R = 11\ldots1$, le nombre formé de
$p - 2$ chiffres $1$. Un bloc dont la lettre de tête a le chiffre $x$ se lit $x$ suivi de $p - 2$
chiffres $a$ ; il vaut donc $xT + aR$. Numérotons les blocs de droite à gauche : le bloc numéro
$0$ est celui de $J$, le bloc numéro $1$ celui de $I$, et ainsi de suite jusqu'au bloc numéro $9$,
celui de $A$. Notons $x_m$ le chiffre de la lettre de tête du bloc numéro $m$, de sorte que
$x_0 = j$, $x_1 = i$, …, $x_9 = a$. Chaque bloc a $L$ chiffres, donc le bloc numéro $m$ est
multiplié par $10^{mL}$, et le $A$ isolé du début par $10^{10L}$ :

$$N = a \times 10^{10L} + \sum_{m=0}^{9} (x_m T + aR) \times 10^{mL} .$$

*Le petit théorème de Fermat.* Comme $p \geq 7$ est premier, il ne divise pas $10$, donc
$10^{L} - 1 = 10^{p-1} - 1$ est un multiple de $p$. Pour tout entier $m \geq 1$, en développant
le membre de droite (presque tout se simplifie), on a
$$10^{mL} - 1 = (10^L - 1)\left(1 + 10^L + 10^{2L} + \cdots + 10^{(m-1)L}\right),$$
donc $10^{mL} - 1$ est aussi un multiple de $p$. C'est encore vrai pour $m = 0$, puisque
$10^0 - 1 = 0$.

*On remplace les puissances par 1.* Posons
$$N_0 = a + \sum_{m=0}^{9} (x_m T + aR) = a + (x_0 + x_1 + \cdots + x_9)\,T + 10aR = a + 45T + 10aR .$$
Alors
$$N - N_0 = a \times (10^{10L} - 1) + \sum_{m=0}^{9} (x_m T + aR)(10^{mL} - 1),$$
et chaque terme est un multiple de $p$. Donc $N - N_0$ est un multiple de $p$.

*Calcul de $90 N_0$.* On a $9R = 99\ldots9 = 10^{p-2} - 1 = T - 1$, et $10T = 10^{p-1} = 10^L$.
Donc
$$90 N_0 = 90a + 405 \times 10T + 100a \times 9R = 90a + 405 \times 10^L + 100a\,(T - 1) .$$
Comme $100aT = 10a \times 10T = 10a \times 10^L$, on obtient
$$90 N_0 = 405 \times 10^L + 10a \times 10^L - 10a = 405 + (405 + 10a)(10^L - 1) .$$
Le dernier produit est un multiple de $p$. Donc
$$90N = 90\,(N - N_0) + 90 N_0 = 405 + (\text{un multiple de} \ p) .$$

*Conclusion.* Si $p$ divisait $N$, il diviserait $90N$, donc aussi $90N$ moins un multiple de $p$,
c'est-à-dire $405$. Or $405 = 3^4 \times 5$, dont les seuls diviseurs premiers sont $3$ et $5$,
alors que $p \geq 7$. C'est impossible.

**Conclusion :** aucune attribution de $\omega$ n'est divisible par $p$ : $\omega$ est un bloqueur
de $p$, et tout nombre premier $p \geq 7$ est mauvais.

**2.** Soit $d$ un nombre bon.

- $d \leq 99$, puisque tout entier $d \geq 100$ est mauvais (bloqué par $AB$).
- Tout diviseur de $d$ est bon. Si un nombre premier $p \geq 7$ divisait $d$, il serait bon, alors
  qu'il est mauvais d'après la question 1. Donc les seuls facteurs premiers possibles de $d$ sont
  $2$, $3$ et $5$ : $d = 2^\alpha 3^\beta 5^\gamma$ avec $\alpha, \beta, \gamma$ entiers positifs ou
  nuls.
- $27 = 3^3$ et $32 = 2^5$ sont mauvais, donc ne divisent pas $d$ : $\beta \leq 2$ et
  $\alpha \leq 4$.

Il reste à compter les nombres $2^\alpha 3^\beta 5^\gamma \leq 99$ avec $\alpha \leq 4$ et
$\beta \leq 2$. Comme $5^3 = 125 > 99$, on a $\gamma \leq 2$.

| | $3^0$ | $3^1$ | $3^2$ | Nombre |
|---|---|---|---|---|
| $5^0$ | $1, 2, 4, 8, 16$ | $3, 6, 12, 24, 48$ | $9, 18, 36, 72$ | $14$ |
| $5^1$ | $5, 10, 20, 40, 80$ | $15, 30, 60$ | $45, 90$ | $10$ |
| $5^2$ | $25, 50$ | $75$ | aucun | $3$ |

(Par exemple, $9 \times 16 = 144$, $15 \times 8 = 120$, $45 \times 4 = 180$, $25 \times 4 = 100$ et
$225$ dépassent $99$.)

**Conclusion :** tout nombre bon est dans cette liste de $14 + 10 + 3 = 27$ nombres, donc il y a
au plus $27$ nombres bons.

**Bilan.** Le mot $A\;AA^{p-2}\;BA^{p-2} \ldots JA^{p-2}$ bloque tout nombre premier $p \geq 7$ :
grâce au petit théorème de Fermat, $90$ fois n'importe laquelle de ses attributions est égal à
$405$ plus un multiple de $p$. Avec les bloqueurs déjà connus de $27$, de $32$ et des nombres à
partir de $100$, on en déduit que tout nombre bon appartient à une liste de $27$ nombres. On n'a
pas montré que ces $27$ nombres sont tous bons.

## Going further

- Le sujet affirmait, sans le demander, qu'il y a exactement $22$ nombres bons : les diviseurs de
  $18$, $24$, $45$, $50$, $60$ et $80$. Parmi les $27$ nombres du tableau, cinq sont donc
  mauvais : $36$, $48$, $72$, $75$ et $90$. Vérifier que $AAB$ est un bloqueur de $36$ et de $72$,
  que $ABA$ est un bloqueur de $48$, que $AABA$ est un bloqueur de $75$, et que le mot
  $AB^8C$ (une lettre $A$, huit lettres $B$, une lettre $C$) est un bloqueur de $90$. Que les
  $22$ autres nombres soient tous bons n'est pas démontré ici : on sait seulement, par les
  exercices 40484 et 40486, que les diviseurs de $8$, de $10$ et de $18$ le sont.
- Pourquoi le mot doit-il contenir les dix lettres ? C'est ce qui force la somme
  $a + b + \cdots + j$ à valoir $45$, quelle que soit l'attribution.
- Les autres exercices tirés de ce sujet : 40484 (les premiers exemples), 40486 ($9$ et $18$
  sont bons), 40487 (un nombre mauvais a une infinité de bloqueurs).
