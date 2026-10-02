---
id: "7034"
title: "Quand 2ⁿ + 3 est-il un carré ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [carres, congruences, puissances de deux]
adapted_from: null
see_also: ["8432"]
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD (Antoine Taveneaux), exercice 13 ; repris en 2012 (stage_junior_2012.pdf, débutants, arithmétique après-midi, exercice 12)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

**a)** Trouver tous les entiers naturels $n$ tels que $2^n + 3$ soit le carré d'un entier.

**b)** Même question avec $2^n + 1$.

## Hints

1. Pour a), regarde les restes possibles d'un carré dans la division par $4$. Il n'y en a que
   deux.
2. Que vaut $2^n$ modulo $4$ dès que $n \geq 2$ ?
3. Pour b), l'argument de congruence ne marche plus. Écris $2^n = x^2 - 1$ et factorise.
4. Deux puissances de $2$ dont la différence vaut $2$ : lesquelles ?

## Solution

**a) Les entiers $n$ tels que $2^n + 3$ soit un carré.**

*Les carrés modulo $4$.* Soit $x$ un entier.

- Si $x = 2k$ est pair, alors $x^2 = 4k^2 \equiv 0 \pmod 4$.
- Si $x = 2k+1$ est impair, alors $x^2 = 4k^2 + 4k + 1 = 4(k^2+k) + 1 \equiv 1 \pmod 4$.

**Un carré est donc toujours congru à $0$ ou à $1$ modulo $4$ ; jamais à $3$.**

*Le cas $n \geq 2$.* Alors $2^n$ est divisible par $4$, donc
$$2^n + 3 \equiv 3 \pmod 4 .$$
Ce ne peut pas être un carré.

*Les petits cas.*

- $n = 0$ : $2^0 + 3 = 1 + 3 = 4 = 2^2$. **C'est un carré.** ✓
- $n = 1$ : $2^1 + 3 = 5$, qui n'est pas un carré.

**Conclusion de a).** La seule valeur est $n = 0$.

**b) Les entiers $n$ tels que $2^n + 1$ soit un carré.**

Ici l'argument modulo $4$ ne dit rien : $2^n + 1 \equiv 1 \pmod 4$ dès que $n \geq 2$, ce qui
est parfaitement compatible avec un carré. Il faut factoriser.

*La factorisation.* Supposons $2^n + 1 = x^2$ avec $x$ entier naturel. Alors
$$2^n = x^2 - 1 = (x-1)(x+1) .$$

*Les deux facteurs sont des puissances de 2.* Le produit $(x-1)(x+1)$ vaut $2^n$. Les seuls
diviseurs positifs de $2^n$ étant les puissances de $2$, et $x-1 \geq 0$, les deux facteurs
sont des puissances de $2$ :
$$x - 1 = 2^a, \qquad x + 1 = 2^b, \qquad \text{avec } a + b = n \text{ et } a \leq b .$$
*(Le cas $x = 1$, soit $2^n = 0$, est impossible.)*

*Leur différence vaut $2$.* En soustrayant,
$$2^b - 2^a = (x+1) - (x-1) = 2 .$$
Si $a \geq 2$, le membre de gauche serait divisible par $4$, ce qui est faux. Donc
$a \in \{0, 1\}$ :

- $a = 0$ : alors $2^b = 3$, impossible ;
- $a = 1$ : alors $2^b = 4$, donc $b = 2$.

D'où $x - 1 = 2$ et $x + 1 = 4$, c'est-à-dire $x = 3$, et $n = a + b = 1 + 2 = 3$.

*Vérification.* $2^3 + 1 = 9 = 3^2$. ✓

*Les petits cas restants.* Pour $n = 0$ : $2^0+1 = 2$, pas un carré. Pour $n = 1$ : $3$, pas un
carré. Pour $n = 2$ : $5$, pas un carré.

**Conclusion de b).** La seule valeur est $n = 3$.

## Going further

Le contraste entre les deux questions vaut la peine d'être médité. Les congruences sont
redoutables pour montrer qu'une chose est **impossible**, mais elles ne servent à rien quand
la réponse est « il y a une solution, et une seule » : il faut alors factoriser.

Le second raisonnement est un cas particulier d'un théorème célèbre de Mihăilescu (conjecturé
par Catalan en 1844, démontré en 2002) : les seules puissances parfaites consécutives sont
$8$ et $9$. On les voit apparaître ici.
