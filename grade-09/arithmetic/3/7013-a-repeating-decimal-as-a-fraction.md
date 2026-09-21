---
id: "7013"
title: "Un nombre décimal périodique en fraction"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [developpement decimal, fraction, periodicite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD (Antoine Taveneaux), exercice 3 ; repris en 2012 (stage_junior_2012.pdf, débutants, arithmétique après-midi, exercice 8)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On considère le nombre

x = 0,5 1234 1234 1234 1234 …

c'est-à-dire : un $5$ juste après la virgule, puis le bloc $1234$ répété indéfiniment.

1. Écrire $x$ sous forme de fraction.
2. Expliquer pourquoi la méthode marche pour **tout** nombre dont le développement décimal est
   périodique à partir d'un certain rang.
3. Et réciproquement : pourquoi le développement décimal d'une fraction est-il toujours
   périodique à partir d'un certain rang ?

## Hints

1. Multiplier par $10$ décale la virgule d'un cran. Trouve deux multiples de $x$ dont les
   parties après la virgule sont exactement les mêmes.
2. La période a quatre chiffres, et il y a un chiffre « en trop » avant elle. Essaie $10x$ et
   $100\,000\,x$.
3. Pour la question 3, pose la division à la main et regarde les **restes** successifs.
   Combien de restes différents peut-il y avoir ?

## Solution

**1. La fraction.**

L'idée est de fabriquer deux nombres qui ont exactement la même partie décimale, puis de les
soustraire.

Multiplions d'abord $x$ par $10$, pour faire passer le $5$ devant la virgule :

10x = 5,1234 1234 1234 …

Multiplions maintenant $x$ par $10^5 = 100\,000$ : cela décale la virgule d'un cran
supplémentaire, plus un bloc entier de quatre chiffres.

100 000 x = 51 234,1234 1234 …

Les deux nombres ont exactement la même partie après la virgule. En les soustrayant, elle
disparaît :
$$100\,000\,x - 10\,x = 51\,234 - 5 = 51\,229 ,$$
c'est-à-dire
$$99\,990\,x = 51\,229 \qquad \text{donc} \qquad x = \frac{51\,229}{99\,990} .$$

*Cette fraction est irréductible.* En effet
$$99\,990 = 2 \times 3^2 \times 5 \times 11 \times 101 ,$$
et $51\,229$ n'est divisible par aucun de ces cinq nombres premiers : il est impair, il ne se
termine ni par $0$ ni par $5$, sa somme de chiffres vaut $5+1+2+2+9 = 19$ qui n'est pas
multiple de $3$, sa somme alternée vaut $9-2+2-1+5 = 13$ qui n'est pas multiple de $11$, et
$101 \times 507 = 51\,207$ laisse un reste de $22$.

**2. Pourquoi cela marche toujours.**

Soit $y$ un nombre dont le développement décimal est périodique à partir d'un certain rang :
disons qu'il y a $p$ chiffres après la virgule avant que la période ne commence, et que la
période a $q$ chiffres.

Alors $10^p\,y$ et $10^{p+q}\,y$ ont exactement la même partie après la virgule : le premier
attaque la période juste après la virgule, le second aussi, un bloc plus loin. Leur différence
$$\left(10^{p+q} - 10^p\right) y$$
est donc un **entier**, appelons-le $N$. On en déduit
$$y = \frac{N}{10^{p+q} - 10^p} ,$$
qui est bien une fraction d'entiers.

**3. La réciproque.**

Posons la division de $a$ par $b$ à la main. À chaque nouvelle décimale correspond un nouveau
reste, et ce reste est un entier compris entre $0$ et $b-1$ : il n'y a donc que $b$ valeurs
possibles.

- Si un reste devient nul, la division s'arrête : le développement se termine, et on peut le
  voir comme périodique, avec la période $0$ répétée indéfiniment.
- Sinon, parmi $b$ restes consécutifs, deux au moins sont égaux, disons le $i$-ième et le
  $j$-ième. Or **chaque reste détermine entièrement la suite du calcul** : le chiffre suivant
  et le reste suivant ne dépendent que de lui. Donc à partir de là tout se répète, et le
  développement est périodique, de période au plus $|i - j| < b$.

**Conclusion.** Un nombre a un développement décimal périodique à partir d'un certain rang si
et seulement si c'est une fraction d'entiers.

## Going further

La démonstration de la question 3 donne une borne : la période de $\dfrac{a}{b}$ est
strictement inférieure à $b$. Pour $b = 7$, la division donne 0,142857 142857 …, de période $6$ : la borne est
presque atteinte.

Quels sont les entiers $b$ pour lesquels $1/b$ a un développement décimal **fini** ?
*(Réponse : ceux dont les seuls facteurs premiers sont $2$ et $5$.)*
