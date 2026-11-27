---
id: "40441"
title: "Suites superbes : chaque terme divise la somme"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [divisibilite, diviseurs, parite, nombres-premiers, decomposition-en-facteurs-premiers, construction, disjonction-de-cas]
adapted_from: null
see_also: ["40442", "40443", "10849", "7864"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2013, mathématiques, série S"
  reference: "cg-2013-s-sujet.pdf, problème I « De superbes suites », questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2013-s-sujet.pdf"
---

## Statement

Dans cet exercice, une *suite finie* est une liste $(a_1, a_2, \ldots, a_n)$ d'entiers strictement
positifs, avec $n \geq 2$. Le nombre $n$ de termes s'appelle la *longueur* de la suite.

On dit qu'une suite finie est **superbe** si chacun de ses termes divise la somme de tous ses
termes.

Par exemple, la suite $(1, 2, 1, 2, 1, 2, 1, 2)$ est superbe, de longueur $8$ : la somme de ses
termes vaut $12$, qui est divisible par $1$ et par $2$. La suite $(3, 3, 6, 12)$ est superbe, de
longueur $4$ : la somme de ses termes vaut $24$, qui est un multiple de $3$, de $6$ et de $12$.

1. Déterminer les entiers strictement positifs $b$ tels que la suite $(21, 7, b)$ soit superbe.
2. a) Déterminer les suites superbes de longueur $2$, puis celles de longueur $3$.

   b) Déterminer les suites superbes de longueur $4$ dont la somme des termes vaut $2013$.
3. a) Montrer que, pour tout entier $n \geq 3$, il existe une suite superbe de longueur $n$ dont
   les termes sont tous différents.

   b) Montrer que, pour tout entier $n \geq 2$, il n'existe pas de suite superbe de longueur $n$
   dont les termes sont des nombres premiers tous différents.

## Hints

1. **Question 1.** Le nombre $b$ doit diviser la somme $28 + b$. Que peut-on en déduire sur $b$ ?
2. **Question 1.** $b$ divise $28 + b$ exactement quand $b$ divise $28$. Il ne reste que six
   valeurs à essayer.
3. **Question 2 a).** Longueur $2$ : si $a$ divise $a + b$, alors $a$ divise $b$.
4. **Question 2 a).** Longueur $3$ : l'ordre des termes ne change rien, on peut donc les ranger,
   $a \leq b \leq c$. Le plus grand terme $c$ divise la somme $S = a + b + c$, et
   $c < S \leq 3c$. Quelles valeurs peut prendre le quotient $S \div c$ ?
5. **Question 2 a).** Dans le cas $S = 2c$, on a $c = a + b$. Écrire que $b$ divise
   $S = 2a + 2b$, et en déduire que $b$ divise $2a$.
6. **Question 2 b).** $2013$ est impair. Que peut-on dire d'un diviseur d'un nombre impair ?
7. **Question 3 a).** Chercher d'abord un exemple de longueur $4$ : peut-on ajouter un terme à une
   suite superbe de longueur $3$ trouvée à la question 2 a) pour qu'elle reste superbe ?
8. **Question 3 a).** Partir de $(1, 2, 3)$. Que devient la somme si l'on ajoute un terme égal à
   la somme des termes déjà écrits ?
9. **Question 3 b).** Si plusieurs nombres premiers différents divisent $S$, ils apparaissent tous
   dans la décomposition de $S$ en facteurs premiers, donc leur produit divise $S$.
10. **Question 3 b).** Comparer ce produit avec $S$, en utilisant le plus grand des nombres
   premiers de la suite.

## Solution

**1.** La somme des termes vaut $S = 21 + 7 + b = 28 + b$. Le nombre $b$ divise $28 + b$, et il
divise $b$, donc il divise la différence $(28 + b) - b = 28$. Réciproquement, si $b$ divise $28$,
alors $b$ divise $28 + b$. Les candidats sont donc les diviseurs de $28$ :
$1, 2, 4, 7, 14, 28$.

Il faut aussi que $7$ et $21$ divisent $28 + b$ :

| $b$ | $1$ | $2$ | $4$ | $7$ | $14$ | $28$ |
|---|---|---|---|---|---|---|
| $28 + b$ | $29$ | $30$ | $32$ | $35$ | $42$ | $56$ |
| multiple de $7$ ? | non | non | non | oui | oui | oui |
| multiple de $21$ ? | non | non | non | non | oui | non |

**Conclusion :** la seule valeur est $b = 14$. La suite $(21, 7, 14)$ a pour somme $42$, qui est
bien divisible par $21$, $7$ et $14$.

**2. a)** *Longueur 2.* Si $(a, b)$ est superbe, $a$ divise $a + b$ et $a$, donc $a$ divise
$b$ ; de même $b$ divise $a$. Deux entiers positifs qui se divisent l'un l'autre sont égaux :
$a \leq b$ et $b \leq a$. Réciproquement $(a, a)$ est superbe, car $a$ divise $2a$.

**Les suites superbes de longueur 2 sont les suites $(a, a)$, avec $a \geq 1$.**

*Longueur 3.* Être superbe ne dépend pas de l'ordre des termes, on range donc les termes :
$a \leq b \leq c$. Notons $S = a + b + c$.

Le plus grand terme $c$ divise $S$, donc $S = kc$ pour un entier $k$. Or $S > c$ (car $a$ et $b$
sont positifs) et $S \leq c + c + c = 3c$. Donc $k = 2$ ou $k = 3$.

- Si $k = 3$, alors $a + b + c = 3c$ avec $a \leq c$ et $b \leq c$ : cela force $a = b = c$.
- Si $k = 2$, alors $a + b + c = 2c$, donc $c = a + b$ et $S = 2a + 2b$. Le terme $b$ divise
  $S = 2a + 2b$ et divise $2b$, donc il divise $2a$. Mais $0 < 2a \leq 2b$, donc $2a$ vaut $b$ ou
  $2b$.
  - Si $2a = 2b$, alors $a = b$ et $c = 2a$ : la suite est $(a, a, 2a)$.
  - Si $2a = b$, alors $c = 3a$ : la suite est $(a, 2a, 3a)$.

Réciproquement, ces trois sortes de suites sont superbes : $(a, a, a)$ a pour somme $3a$,
$(a, a, 2a)$ a pour somme $4a$, $(a, 2a, 3a)$ a pour somme $6a$, et chaque terme divise la somme.

**Les suites superbes de longueur 3 sont, à l'ordre des termes près, les suites $(a, a, a)$,
$(a, a, 2a)$ et $(a, 2a, 3a)$, avec $a \geq 1$.**

**2. b)** Supposons que $(a, b, c, d)$ soit superbe, de somme $2013$. Chaque terme divise $2013$.
Or $2013$ est impair, et un diviseur d'un nombre impair est impair (si un terme était pair, tout
multiple de ce terme serait pair). Les quatre termes sont donc impairs. Mais la somme de quatre
nombres impairs est paire : elle ne peut pas valoir $2013$.

**Il n'existe aucune suite superbe de longueur 4 de somme 2013.**

**3. a)** On part de $(1, 2, 3)$, de somme $6$, puis on ajoute à chaque étape un terme égal à la
somme des termes déjà écrits. Si la somme valait $T$ avant l'ajout, elle vaut $T + T = 2T$
après : la somme double à chaque étape.

| suite | somme |
|---|---|
| $(1, 2, 3)$ | $6$ |
| $(1, 2, 3, 6)$ | $12$ |
| $(1, 2, 3, 6, 12)$ | $24$ |
| $(1, 2, 3, 6, 12, 24)$ | $48$ |

Pour la longueur $n \geq 3$, on obtient la suite $(1, 2, 3, 6, 12, \ldots, 3 \times 2^{n-3})$,
de somme $S = 3 \times 2^{n-2}$ (on part de $6 = 3 \times 2$ et on double $n - 3$ fois).

- Les termes sont tous différents : chaque terme ajouté est égal à la somme des précédents, donc
  plus grand que chacun d'eux.
- Chaque terme divise $S$ : $1$ divise tout ; $2$ divise $S$ car $n - 2 \geq 1$ ; $3$ divise $S$ ;
  enfin un terme $3 \times 2^j$ avec $j \leq n - 3$ divise $3 \times 2^{n-2}$.

**Pour tout $n \geq 3$, la suite $(1, 2, 3, 6, \ldots, 3 \times 2^{n-3})$ est superbe, de
longueur $n$, à termes tous différents.**

**3. b)** Supposons qu'une suite superbe de longueur $n \geq 2$ soit formée de nombres premiers
tous différents. Notons $q$ le plus grand d'entre eux, $S$ la somme des termes et $P$ leur
produit.

*Le produit divise la somme.* Chacun des nombres premiers de la suite divise $S$, donc apparaît
dans la décomposition de $S$ en facteurs premiers. Comme ils sont tous différents, leur produit
$P$ divise $S$. En particulier $P \leq S$.

*La somme est trop petite.* Les $n$ termes sont au plus égaux à $q$, et un seul vaut $q$, donc
$S < n\,q$. Les $n - 1$ autres termes valent chacun au moins $2$, donc
$P \geq 2^{n-1}\,q$.

*Comparaison.* On a $2^{n-1} \geq n$ pour tout $n \geq 1$ : c'est vrai pour $n = 1$, et quand $n$
augmente de $1$, le membre de gauche est multiplié par $2$, donc augmente d'au moins $1$, tandis
que le membre de droite augmente de $1$. Donc
$$P \geq 2^{n-1}\,q \geq n\,q > S,$$
ce qui contredit $P \leq S$.

**Aucune suite superbe n'est formée de nombres premiers tous différents.**

**Bilan.** Les suites superbes courtes se décrivent entièrement : $(a, a)$ en longueur $2$, et
$(a, a, a)$, $(a, a, 2a)$, $(a, 2a, 3a)$ en longueur $3$. À partir de la longueur $3$, on peut
toujours en fabriquer une à termes tous différents, mais jamais avec des nombres premiers tous
différents, ni avec quatre termes de somme impaire.

## Going further

- Si $(a_1, \ldots, a_n)$ est superbe de somme $S$, les quotients $k_i = S \div a_i$ sont des
  entiers et
  $$\frac{1}{k_1} + \frac{1}{k_2} + \cdots + \frac{1}{k_n} = 1.$$
  Par exemple $(1, 2, 3)$ correspond à $\frac{1}{6} + \frac{1}{3} + \frac{1}{2} = 1$. Écrire $1$
  comme somme de fractions de numérateur $1$, c'est le problème des *fractions égyptiennes*.
  Retrouver ainsi les suites superbes de longueur $3$.
- L'argument de parité de la question 2 b) montre plus : une suite superbe de somme impaire a
  toujours un nombre impair de termes.
- La suite du sujet étudie les suites superbes dont les termes sont en progression arithmétique,
  puis des suites infinies (exercice 40442), et la façon de prolonger n'importe quelle suite en
  une suite superbe (exercice 40443).
