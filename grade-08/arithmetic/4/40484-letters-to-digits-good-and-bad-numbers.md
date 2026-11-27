---
id: "40484"
title: "Des chiffres pour des lettres : nombres bons et mauvais"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [chiffres, divisibilite, criteres-de-divisibilite, mots, disjonction-de-cas, contre-exemple, logique]
adapted_from: null
see_also: ["40485", "40486", "40487"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2014, mathématiques, série S"
  reference: "cg-2014-s-sujet.pdf, problème III « Des chiffres pour des lettres », questions 1° (a, b) et 2° (a à e)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2014-s-sujet.pdf"
---

## Statement

Un *mot de longueur $n$* est une suite de $n$ lettres choisies parmi les dix lettres $A$, $B$,
$C$, $D$, $E$, $F$, $G$, $H$, $I$, $J$. Par exemple, $BEC$, $JJCD$, $AFFICHAGE$ et $ABCDEFGHIJ$
sont des mots de longueurs $3$, $4$, $9$ et $10$.

Une *attribution* du mot $\omega$ est un nombre dont l'écriture décimale s'obtient en remplaçant
chaque lettre de $\omega$ par l'un des chiffres $0, 1, 2, \ldots, 9$, de sorte que des lettres
identiques soient remplacées par le même chiffre, et que deux lettres différentes soient
remplacées par des chiffres différents. Le premier chiffre peut être $0$. Par exemple, $121$ et
$040 = 40$ sont des attributions du mot $GAG$, mais $333$ et $452$ n'en sont pas ; $555$ et
$000 = 0$ sont des attributions du mot $AAA$, mais pas $112$ ni $789$.

Soit $d$ un entier strictement positif. On dit que le mot $\omega$ est un *bloqueur* de $d$ si
aucune attribution de $\omega$ n'est divisible par $d$. Par exemple, le mot $AABCA$ n'est pas un
bloqueur de $4$, car $66716$ est une attribution de $AABCA$ divisible par $4$.

1. Montrer que le mot $AB$ est un bloqueur de $100$.
2. Montrer que tout nombre d'au moins trois chiffres admet un bloqueur.

Un entier $d > 0$ est dit *mauvais* s'il admet au moins un bloqueur. Sinon, on dit que $d$ est
*bon* : cela veut dire que **tout** mot a au moins une attribution divisible par $d$. La
question 2 montre que tout nombre d'au moins trois chiffres est mauvais.

3. Montrer que $10$ est bon.
4. Montrer que $8$ est bon.
5. Montrer que le mot $AAB$ est un bloqueur de $27$.
6. Montrer que le mot $ABBAB$ est un bloqueur de $32$.
7. Un diviseur positif d'un nombre bon est-il forcément bon ? Un diviseur positif d'un nombre
   mauvais est-il forcément mauvais ?

## Hints

1. **Question 1.** Une attribution de $AB$ est un nombre de deux chiffres (peut-être commençant
   par $0$). Peut-elle valoir $0$ ? Quelle est la plus grande possible ?
2. **Question 2.** Le même mot $AB$ fonctionne-t-il ?
3. **Question 3.** On peut choisir le chiffre de chaque lettre. Lequel donner à la dernière
   lettre ?
4. **Question 4.** Comme $1000 = 8 \times 125$, un nombre est divisible par $8$ exactement quand
   le nombre formé par ses trois derniers chiffres l'est.
5. **Question 4.** Classer les mots selon la forme de leurs trois dernières lettres : trois
   lettres identiques, deux identiques (lesquelles ?), trois différentes. Pour chaque forme,
   chercher un multiple de $8$ de trois chiffres qui a cette forme. Ne pas oublier les mots d'une
   ou deux lettres.
6. **Question 5.** Une attribution de $AAB$ s'écrit $110a + b$, où $a$ et $b$ sont deux chiffres
   différents. Or $110 = 4 \times 27 + 2$.
7. **Question 6.** Écrire une attribution de $ABBAB$ sous la forme $10010a + 1101b$, puis
   chercher les restes de $10010$ et de $1101$ dans la division par $32$.
8. **Question 6.** Si $13 \times m$ est divisible par $32$, il est pair. Comme $13$ est impair,
   $m$ est pair. Recommencer.
9. **Question 7.** Pour la première question, revenir à la définition de « bon ». Pour la
   seconde, chercher un contre-exemple parmi les nombres déjà rencontrés.

## Solution

**1.** Soient $a$ et $b$ les chiffres donnés à $A$ et à $B$ ; ils sont différents. L'attribution
vaut $10a + b$. Elle est au plus $99$, et même au plus $98$ puisque $99$ demanderait $a = b$. Elle
n'est pas nulle, car $10a + b = 0$ demanderait $a = b = 0$. C'est donc un entier entre $1$ et $98$,
et aucun entier de cet intervalle n'est un multiple de $100$.

**Conclusion :** aucune attribution de $AB$ n'est divisible par $100$ : $AB$ est un bloqueur de
$100$.

**2.** Soit $d$ un nombre d'au moins trois chiffres, donc $d \geq 100$. D'après la question 1,
toute attribution de $AB$ est un entier compris entre $1$ et $98$, donc strictement entre $0$ et
$d$. Un tel entier n'est pas un multiple de $d$ (le plus petit multiple strictement positif de $d$
est $d$ lui-même).

**Conclusion :** $AB$ est un bloqueur de tout nombre $d \geq 100$.

**3.** Soit $\omega$ un mot quelconque. Donnons le chiffre $0$ à la dernière lettre de $\omega$,
puis donnons aux autres lettres différentes de $\omega$ des chiffres différents pris parmi
$1, 2, \ldots, 9$. C'est possible, car il y a au plus dix lettres différentes. L'attribution
obtenue se termine par $0$, donc elle est divisible par $10$.

**Conclusion :** tout mot a une attribution divisible par $10$, donc $10$ est bon.

**4.** *Les trois derniers chiffres suffisent.* Un nombre $N$ s'écrit $N = 1000\,Q + R$, où $R$
est le nombre formé par ses trois derniers chiffres. Comme $1000 = 8 \times 125$, le nombre $N$ est
divisible par $8$ exactement quand $R$ l'est.

*Le choix des chiffres.* Soit $\omega$ un mot. On choisit d'abord les chiffres des lettres qui
apparaissent parmi les trois dernières de $\omega$, comme dans le tableau ci-dessous ; on donne
ensuite aux autres lettres de $\omega$ des chiffres différents, encore libres (il y a assez de
chiffres, puisqu'il y a au plus dix lettres). Notons $X$, $Y$, $Z$ les trois dernières lettres,
dans l'ordre.

| Forme des trois dernières lettres | Trois derniers chiffres | Multiple de 8 |
|---|---|---|
| $XXX$ (trois fois la même lettre) | $000$ | $0 = 8 \times 0$ |
| $XXZ$ avec $Z \neq X$ | $112$ | $112 = 8 \times 14$ |
| $XYX$ avec $Y \neq X$ | $808$ | $808 = 8 \times 101$ |
| $XYY$ avec $Y \neq X$ | $144$ | $144 = 8 \times 18$ |
| $XYZ$, trois lettres différentes | $120$ | $120 = 8 \times 15$ |

Dans chaque ligne, des lettres identiques reçoivent le même chiffre et des lettres différentes des
chiffres différents, donc c'est bien un début d'attribution. Il reste les mots courts :

- un mot d'une lettre : on lui donne le chiffre $8$ (ou $0$) ;
- un mot de deux lettres identiques $XX$ : on choisit $88 = 8 \times 11$ ;
- un mot de deux lettres différentes $XY$ : on choisit $16 = 8 \times 2$.

**Conclusion :** tout mot a une attribution divisible par $8$, donc $8$ est bon.

**5.** Soient $a$ et $b$ les chiffres de $A$ et de $B$, différents. L'attribution vaut
$100a + 10a + b = 110a + b$. Comme $110 = 4 \times 27 + 2$,
$$110a + b = 27 \times 4a + (2a + b) .$$
Elle est donc divisible par $27$ exactement quand $2a + b$ l'est. Or $2a + b$ est au plus
$2 \times 9 + 8 = 26$ (puisque $a \neq b$), et n'est pas nul (sinon $a = b = 0$). Un entier entre
$1$ et $26$ n'est pas divisible par $27$.

**Conclusion :** aucune attribution de $AAB$ n'est divisible par $27$ : $AAB$ est un bloqueur de
$27$.

**6.** Soient $a$ et $b$ les chiffres de $A$ et de $B$, différents. L'attribution de $ABBAB$ vaut
$$10000a + 1000b + 100b + 10a + b = 10010a + 1101b .$$
Or $10010 = 32 \times 312 + 26$ et $1101 = 32 \times 34 + 13$, donc
$$10010a + 1101b = 32 \times (312a + 34b) + 26a + 13b = 32 \times (312a + 34b) + 13 \times (2a + b) .$$
Ainsi l'attribution est divisible par $32$ exactement quand $13m$ l'est, où $m = 2a + b$. Comme à
la question 5, $1 \leq m \leq 26$.

Supposons $13m$ divisible par $32$. Alors $13m$ est pair ; comme $13$ est impair, $m$ est pair,
$m = 2m_1$, et $13 m_1$ est divisible par $16$. Le même raisonnement montre que $m_1$ est pair,
$m_1 = 2m_2$ avec $13m_2$ divisible par $8$, puis $m_2 = 2m_3$ avec $13 m_3$ divisible par $4$,
puis $m_3 = 2m_4$ avec $13 m_4$ divisible par $2$, et enfin $m_4$ est pair. Donc $m$ est divisible
par $2 \times 2 \times 2 \times 2 \times 2 = 32$, ce qui est impossible pour $1 \leq m \leq 26$.

**Conclusion :** aucune attribution de $ABBAB$ n'est divisible par $32$ : $ABBAB$ est un bloqueur
de $32$.

**7.** *Un diviseur d'un nombre bon est bon.* Soit $d$ un nombre bon et $e$ un diviseur positif
de $d$. Soit $\omega$ un mot quelconque. Comme $d$ est bon, $\omega$ a une attribution $N$
divisible par $d$. Comme $e$ divise $d$, qui divise $N$, le nombre $e$ divise $N$. Ainsi tout mot
a une attribution divisible par $e$ : $e$ est bon.

Dit autrement : **tout multiple d'un nombre mauvais est mauvais**. (Si $d$ était bon, son diviseur
mauvais serait bon.)

*Un diviseur d'un nombre mauvais peut être bon.* Le nombre $100$ est mauvais (question 1), et son
diviseur $10$ est bon (question 3). On peut aussi prendre le diviseur $1$, qui est bon puisque
tout nombre est divisible par $1$.

**Conclusion :** oui, un diviseur d'un nombre bon est toujours bon ; non, un diviseur d'un nombre
mauvais n'est pas forcément mauvais.

**Bilan.** Le mot $AB$ bloque tous les nombres à partir de $100$, qui sont donc mauvais. Parmi les
petits nombres, $10$ et $8$ sont bons, alors que $27$ et $32$ sont mauvais, bloqués par $AAB$ et
$ABBAB$. Enfin, les diviseurs d'un nombre bon sont bons (donc les multiples d'un nombre mauvais
sont mauvais), mais un nombre mauvais peut avoir des diviseurs bons.

## Going further

- Le mot $AB$ bloque-t-il aussi $99$ ? Que peut-on en conclure sur $99$ ?
- Montrer, sans nouveau calcul, que $1$, $2$, $4$ et $5$ sont bons. Pour $3$, c'est plus
  difficile : il découle du fait que $9$ est bon (exercice 40486).
- La suite du sujet montrait que tout nombre premier $p \geq 7$ est mauvais, puis qu'il y a au
  plus $27$ nombres bons (exercice 40485), que $9$ et $18$ sont bons (exercice 40486), et qu'un
  nombre mauvais a toujours une infinité de bloqueurs (exercice 40487). Le sujet affirmait, sans
  le demander, qu'il y a exactement $22$ nombres bons : les diviseurs de $18$, $24$, $45$, $50$,
  $60$ et $80$.
