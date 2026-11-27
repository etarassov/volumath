---
id: "40127"
title: "Calculer un logarithme discret avec quelques nombres premiers"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 45
tags: [congruences, restes, logarithme-discret, racine-primitive, nombres-premiers, decomposition-en-facteurs-premiers, systeme-lineaire]
adapted_from: null
see_also: ["40126", "40128"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2005, mathématiques, série S"
  reference: "cg-2005-s-sujet.pdf, exercice 4, partie II « Calcul du logarithme discret par la méthode d'Adleman », questions 1 à 4"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2005.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2005-s-sujet.pdf"
---

## Statement

Dans tout l'exercice, $p$ désigne un nombre premier.

**Notations et rappels.** Pour un entier naturel $N$, on note $(N \bmod p)$ le reste de la division
euclidienne de $N$ par $p$. Pour des entiers $a$, $b$ et $n \geq 1$, on écrit
$a \equiv b \pmod{n}$ lorsque $b - a$ est un multiple de $n$. Si $x \equiv x' \pmod{n}$ et
$y \equiv y' \pmod{n}$, alors $xy \equiv x'y' \pmod{n}$.

Un entier $g \in \{1, \ldots, p - 1\}$ est une *racine primitive modulo $p$* lorsque les restes
$(g^k \bmod p)$, pour $k = 0, 1, 2, \ldots$, prennent toutes les valeurs $1, 2, \ldots, p - 1$. On
fixe une racine primitive $g$ modulo $p$. On a montré dans une partie précédente, et l'on admet ici,
que :

- **(P1)** les restes $(g^k \bmod p)$ pour $k = 0, 1, \ldots, p - 2$ sont exactement les entiers
  $1, \ldots, p - 1$, chacun une fois ;
- **(P2)** pour tous entiers naturels $x$ et $y$, $g^x \equiv g^y \pmod{p}$ si et seulement si
  $x \equiv y \pmod{p - 1}$.

Pour $A \in \{1, \ldots, p - 1\}$, le *logarithme de base $g$ modulo $p$* de $A$, noté $\ell(A)$,
est l'unique entier $a \in \{0, \ldots, p - 2\}$ tel que $(g^a \bmod p) = A$.

L'idée de cette partie : connaître les logarithmes de quelques nombres premiers permet de trouver
rapidement le logarithme de n'importe quel entier.

1. Dans cette question, $p = 113$ et $g = 55$, et l'on donne $\ell(2) = 60$ et $\ell(3) = 5$.
   Trouver $\ell(54)$.

*Pour toute la suite, on choisit des nombres premiers distincts $p_1, \ldots, p_n$, tous
strictement inférieurs à $p$, et des entiers naturels $a_1, \ldots, a_n$ tels que, pour chaque
$i$, les facteurs premiers de $(g^{a_i} \bmod p)$ soient parmi $p_1, \ldots, p_n$. On a donc, pour
chaque $i \in \{1, \ldots, n\}$, une égalité*
$$(g^{a_i} \bmod p) = p_1^{e_{i,1}}\, p_2^{e_{i,2}} \cdots p_n^{e_{i,n}},$$
*où les exposants $e_{i,j}$ sont des entiers naturels.*

2. Montrer que, pour tout $i \in \{1, \ldots, n\}$,
   $$a_i \equiv e_{i,1}\,\ell(p_1) + e_{i,2}\,\ell(p_2) + \cdots + e_{i,n}\,\ell(p_n) \pmod{p - 1}.$$

3. Dans cette question, $p = 53$, $g = 20$, $n = 2$, $p_1 = 2$ et $p_2 = 5$.

   a) À l'aide de $g$ et de $g^3$, déterminer $\ell(2)$ et $\ell(5)$.

   b) En déduire $\ell(40)$.

   c) Combien d'entiers de $\{1, \ldots, 52\}$ peuvent s'écrire sous la forme $2^\alpha 5^\beta$, avec
   $\alpha$ et $\beta$ entiers naturels ?

4. Soit $A \in \{1, \ldots, p - 1\}$.

   a) Montrer que les restes $(g^s A \bmod p)$ pour $s = 0, 1, \ldots, p - 2$ sont exactement les
   entiers $1, \ldots, p - 1$.

   b) On suppose connu un entier naturel $s$ tel que $(g^s A \bmod p)$ n'ait pas d'autres facteurs
   premiers que $p_1, \ldots, p_n$, et l'on suppose connus $\ell(p_1), \ldots, \ell(p_n)$. En
   déduire $\ell(A)$.

   c) Avec $p = 53$ et $g = 20$, déterminer $\ell(30)$.

## Hints

1. **Question 1.** Décomposer $54$ en facteurs premiers.
2. **Question 2.** Par définition, $p_j \equiv g^{\ell(p_j)} \pmod{p}$. Remplacer chaque $p_j$ par
   $g^{\ell(p_j)}$ dans le produit, puis utiliser (P2).
3. **Question 3a.** $20 = 2^2 \times 5$, et l'on trouvera que $(20^3 \bmod 53) = 50$. Cela donne deux
   relations entre $\ell(2)$ et $\ell(5)$, modulo $52$.
4. **Question 3a.** Combiner les deux relations pour éliminer une inconnue, comme pour un système
   ordinaire. On tombe sur $3x \equiv 51 \pmod{52}$ avec $0 \leq x \leq 51$ : quels multiples de $3$
   compris entre $0$ et $153$ conviennent ?
5. **Question 4a.** Écrire $A \equiv g^{\ell(A)} \pmod{p}$.
6. **Question 4c.** Essayer $s = 0, 1, 2, \ldots$ en calculant chaque fois le reste de $20^s \times 30$
   à partir du précédent, jusqu'à obtenir un produit de puissances de $2$ et de $5$.

## Solution

**1.** On a $54 = 2 \times 3^3$. Par définition des logarithmes, $g^{60} \equiv 2$ et $g^5 \equiv 3$
modulo $113$, donc, en multipliant ces congruences,
$$g^{60 + 3 \times 5} = g^{60} \times (g^5)^3 \equiv 2 \times 3^3 = 54 \pmod{113}.$$
Ainsi $g^{75} \equiv g^{\ell(54)} \pmod{113}$, et d'après (P2), $\ell(54) \equiv 75 \pmod{112}$.
Comme $75 \in \{0, \ldots, 111\}$, **$\ell(54) = 75$.**

**2.** Pour chaque $j$, $p_j \in \{1, \ldots, p - 1\}$ (c'est un nombre premier inférieur à $p$),
donc $\ell(p_j)$ existe et $p_j \equiv g^{\ell(p_j)} \pmod{p}$. En remplaçant chaque facteur du
produit :
$$g^{a_i} \equiv p_1^{e_{i,1}} \cdots p_n^{e_{i,n}} \equiv \left(g^{\ell(p_1)}\right)^{e_{i,1}} \cdots \left(g^{\ell(p_n)}\right)^{e_{i,n}} = g^{\,e_{i,1}\ell(p_1) + \cdots + e_{i,n}\ell(p_n)} \pmod{p}.$$
D'après (P2), les exposants sont congrus modulo $p - 1$ :
$$a_i \equiv e_{i,1}\,\ell(p_1) + \cdots + e_{i,n}\,\ell(p_n) \pmod{p - 1}.$$

**3a.** Notons $x = \ell(2)$ et $y = \ell(5)$, deux entiers de $\{0, \ldots, 51\}$.

- Avec $a_1 = 1$ : $(g \bmod 53) = 20 = 2^2 \times 5$, donc d'après la question 2,
  $2x + y \equiv 1 \pmod{52}$.
- Avec $a_2 = 3$ : $20^2 = 400 = 7 \times 53 + 29$, puis $29 \times 20 = 580 = 10 \times 53 + 50$,
  donc $(g^3 \bmod 53) = 50 = 2 \times 5^2$, et $x + 2y \equiv 3 \pmod{52}$.

En retranchant la seconde relation de deux fois la première : $3x \equiv 2 - 3 = -1 \equiv 51 \pmod{52}$.
Comme $0 \leq 3x \leq 153$, le nombre $3x$ est l'un des nombres $51$ et $103$, qui sont les seuls
entiers de $[0, 153]$ congrus à $51$ modulo $52$. Seul $51$ est multiple de $3$ : $3x = 51$ et
$x = 17$.

En retranchant la première de deux fois la seconde : $3y \equiv 6 - 1 = 5 \pmod{52}$. Les entiers
de $[0, 153]$ congrus à $5$ modulo $52$ sont $5$, $57$ et $109$ ; seul $57$ est multiple de $3$,
donc $y = 19$.

Vérification : $2 \times 17 + 19 = 53 \equiv 1$ et $17 + 2 \times 19 = 55 \equiv 3$ modulo $52$.

**Conclusion :** $\ell(2) = 17$ et $\ell(5) = 19$.

**3b.** $40 = 2^3 \times 5$, donc $g^{3 \times 17 + 19} \equiv 40 \pmod{53}$, et d'après (P2),
$\ell(40) \equiv 51 + 19 = 70 \equiv 18 \pmod{52}$. **Donc $\ell(40) = 18$.**

C'est bien le résultat que donne la méthode naïve, qui consiste à calculer les puissances de $20$
une à une jusqu'à la dix-huitième.

**3c.** Les puissances de $2$ inférieures à $52$ sont $1, 2, 4, 8, 16, 32$. On les multiplie par
$5^\beta$ en restant inférieur ou égal à $52$ :

- $\beta = 0$ : $1, 2, 4, 8, 16, 32$ (six nombres) ;
- $\beta = 1$ : $5, 10, 20, 40$ (quatre nombres) ;
- $\beta = 2$ : $25, 50$ (deux nombres) ;
- $\beta \geq 3$ : $5^3 = 125 > 52$, aucun.

Ces nombres sont tous différents (la décomposition en facteurs premiers est unique).
**Conclusion :** $12$ entiers de $\{1, \ldots, 52\}$ s'écrivent $2^\alpha 5^\beta$. Avec $\ell(2)$ et
$\ell(5)$, on connaît donc immédiatement le logarithme de $12$ des $52$ entiers.

**4a.** Notons $a = \ell(A)$, de sorte que $A \equiv g^a \pmod{p}$. Alors
$g^s A \equiv g^{s + a} \pmod{p}$. Quand $s$ parcourt $0, 1, \ldots, p - 2$, l'exposant $s + a$
parcourt les $p - 1$ entiers consécutifs $a, a + 1, \ldots, a + p - 2$. Leurs restes dans la
division par $p - 1$ sont les nombres $0, 1, \ldots, p - 2$, chacun une fois. D'après (P2), le reste
de $g^{s+a}$ modulo $p$ est donc celui de $g^r$, où $r$ parcourt $0, \ldots, p - 2$. D'après (P1),
ces restes sont exactement $1, \ldots, p - 1$.

**Conclusion :** quand $s$ parcourt $0, \ldots, p - 2$, le reste $(g^s A \bmod p)$ prend chacune des
valeurs $1, \ldots, p - 1$ une fois et une seule.

**4b.** Écrivons $(g^s A \bmod p) = p_1^{f_1} \cdots p_n^{f_n}$. Comme dans la question 2,
$$g^{s + \ell(A)} \equiv g^s A \equiv p_1^{f_1} \cdots p_n^{f_n} \equiv g^{\,f_1\ell(p_1) + \cdots + f_n\ell(p_n)} \pmod{p},$$
donc, d'après (P2),
$$\ell(A) \equiv f_1\,\ell(p_1) + \cdots + f_n\,\ell(p_n) - s \pmod{p - 1}.$$
**Conclusion :** $\ell(A)$ est l'unique entier de $\{0, \ldots, p - 2\}$ congru à
$f_1\ell(p_1) + \cdots + f_n\ell(p_n) - s$ modulo $p - 1$.

**4c.** $30 = 2 \times 3 \times 5$ contient le facteur $3$, qui n'est pas dans notre liste. On essaie
$s = 1, 2, \ldots$ en multipliant chaque fois le reste par $20$ :

- $s = 1$ : $20 \times 30 = 600 = 11 \times 53 + 17$, reste $17$, premier : non ;
- $s = 2$ : $20 \times 17 = 340 = 6 \times 53 + 22$, reste $22 = 2 \times 11$ : non ;
- $s = 3$ : $20 \times 22 = 440 = 8 \times 53 + 16$, reste $16 = 2^4$ : oui.

D'après 4b, $\ell(30) \equiv 4 \times 17 - 3 = 65 \equiv 13 \pmod{52}$. **Donc $\ell(30) = 13$.**

On peut le vérifier : la liste des puissances de $20$ modulo $53$ donne bien $(20^{13} \bmod 53) = 30$.

**Bilan.** Une fois connus les logarithmes de quelques petits nombres premiers (ici $2$ et $5$, tirés
de deux relations obtenues avec $g$ et $g^3$), on trouve le logarithme de n'importe quel $A$ en
cherchant une puissance $g^s$ telle que $g^s A$ se décompose sur ces nombres premiers : il suffit
alors d'additionner des logarithmes connus. C'est la méthode d'Adleman.

## Going further

- Combien de valeurs de $s$ faut-il essayer, en moyenne, avant de trouver une bonne puissance ? Cela
  dépend de la proportion d'entiers de $\{1, \ldots, p - 1\}$ qui se décomposent sur
  $p_1, \ldots, p_n$ : c'est l'objet de la fin du sujet, dans l'exercice 40128.
- Avec $p = 53$, $g = 20$, $\ell(2) = 17$ et $\ell(5) = 19$, calculer $\ell(3)$. (Indication :
  chercher $s$ tel que $(20^s \times 3 \bmod 53)$ ne contienne que les facteurs $2$ et $5$.)
