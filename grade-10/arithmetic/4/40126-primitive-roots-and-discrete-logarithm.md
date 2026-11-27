---
id: "40126"
title: "Racines primitives et logarithme discret"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [restes, congruences, nombres-premiers, racine-primitive, logarithme-discret, principe-des-tiroirs, periodicite, algorithme]
adapted_from: null
see_also: ["40127", "40128"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2005, mathématiques, série S"
  reference: "cg-2005-s-sujet.pdf, exercice 4, partie I « Définition du logarithme discret », questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2005.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2005-s-sujet.pdf"
---

## Statement

Dans tout l'exercice, $p$ désigne un nombre premier.

**Notations.** Pour un entier naturel $N$, on note $(N \bmod p)$ le reste de la division euclidienne
de $N$ par $p$ : c'est l'entier de $\{0, 1, \ldots, p - 1\}$ qui a le même reste que $N$. Pour des
entiers $a$, $b$ et $n \geq 1$, on écrit $a \equiv b \pmod{n}$ (« $a$ est congru à $b$ modulo
$n$ ») lorsque $b - a$ est un multiple de $n$.

**Définition.** Un entier $x \in \{1, \ldots, p - 1\}$ est une *racine primitive modulo $p$*
lorsque les restes $(x^k \bmod p)$, pour $k = 0, 1, 2, \ldots$, prennent toutes les valeurs
$1, 2, \ldots, p - 1$.

Par exemple, pour $p = 5$ :

- $1$ n'est pas racine primitive modulo $5$, puisque ses puissances valent toujours $1$ ;
- $2$ est racine primitive modulo $5$, puisque $(2^0 \bmod 5) = 1$, $(2^1 \bmod 5) = 2$,
  $(2^2 \bmod 5) = 4$ et $(2^3 \bmod 5) = 3$ ;
- $3$ est racine primitive modulo $5$, puisque $(3^0 \bmod 5) = 1$, $(3^1 \bmod 5) = 3$,
  $(3^2 \bmod 5) = 4$ et $(3^3 \bmod 5) = 2$ ;
- $4$ n'est pas racine primitive modulo $5$, puisque $(4^k \bmod 5)$ vaut alternativement $1$ et
  $4$.

1. Dans cette question, $p = 7$. Déterminer les racines primitives modulo $7$.

*On admet désormais que, pour tout nombre premier $p$, il existe au moins une racine primitive
modulo $p$, et l'on en choisit une, notée $g$.*

2. a) Montrer que les restes $(g^k \bmod p)$ pour $k = 0, 1, \ldots, p - 2$ sont exactement les
   entiers $1, 2, \ldots, p - 1$, chacun une fois.

   b) Soit $A \in \{1, \ldots, p - 1\}$. Justifier qu'il existe un unique entier
   $a \in \{0, \ldots, p - 2\}$ tel que $A = (g^a \bmod p)$.

   Cet entier $a$ s'appelle le *logarithme de base $g$ modulo $p$* de $A$ ; on le note $\ell(A)$.

   c) Soit $b$ un entier naturel congru à $a$ modulo $p - 1$. Calculer $(g^b \bmod p)$.

3. Pour trouver $\ell(A)$, une méthode simple consiste à calculer les restes $(g^k \bmod p)$ pour
   $k = 0, 1, 2, \ldots$ jusqu'à tomber sur $A$.

   a) Écrire un algorithme (par exemple une fonction Python) qui réalise ce travail.

   b) On prend $p = 53$, $g = 20$ et $A = 40$ (on admet que $20$ est une racine primitive modulo
   $53$). En programmant l'algorithme sur une calculatrice ou un ordinateur, déterminer $\ell(40)$.

## Hints

1. **Question 1.** Pour calculer $(x^{k+1} \bmod 7)$, il suffit de multiplier $(x^k \bmod 7)$ par
   $x$ et de reprendre le reste : on n'a jamais de grands nombres à manipuler.
2. **Question 2a.** Notez $u_k = (g^k \bmod p)$. Chaque terme ne dépend que du précédent. Que se
   passe-t-il dès qu'une valeur se répète ?
3. **Question 2a.** Considérer le premier rang $m$ où $u_m$ est égal à un terme déjà vu. Combien
   de valeurs différentes la suite prend-elle en tout ? Comparer avec la définition de $g$.
4. **Question 2c.** Il suffit de montrer que $(g^{p-1} \bmod p) = 1$. On sait que $u_{p-1}$ est égal
   à l'un des $u_i$ avec $0 \leq i \leq p - 2$ : montrer que $i = 0$.
5. **Question 2c.** Si $i \geq 1$, alors $p$ divise $g \times (g^{p-2} - g^{i-1})$. Or un nombre
   premier qui divise un produit divise l'un des facteurs : pensez à la décomposition en facteurs
   premiers.

## Solution

**Deux règles sur les restes**, utilisées partout.

- Si $x \equiv x' \pmod{p}$ et $y \equiv y' \pmod{p}$, alors $xy \equiv x'y' \pmod{p}$. En effet
  $xy - x'y' = x(y - y') + y'(x - x')$ est une somme de multiples de $p$. En particulier
  $(g^{k+1} \bmod p) = (g \times (g^k \bmod p)) \bmod p$.
- Si un nombre premier $p$ divise un produit $xy$ d'entiers naturels non nuls, il divise $x$ ou
  $y$. En effet, la décomposition en facteurs premiers de $xy$ s'obtient en mettant bout à bout
  celles de $x$ et de $y$ ; comme elle est unique et contient $p$, l'une des deux contient $p$.

**1.** On calcule les restes des puissances successives de chaque $x$ en multipliant à chaque fois
le reste précédent par $x$ :

| $x$ | $x^0$ | $x^1$ | $x^2$ | $x^3$ | $x^4$ | $x^5$ | $x^6$ |
|---|---|---|---|---|---|---|---|
| $1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $1$ |
| $2$ | $1$ | $2$ | $4$ | $1$ | $2$ | $4$ | $1$ |
| $3$ | $1$ | $3$ | $2$ | $6$ | $4$ | $5$ | $1$ |
| $4$ | $1$ | $4$ | $2$ | $1$ | $4$ | $2$ | $1$ |
| $5$ | $1$ | $5$ | $4$ | $6$ | $2$ | $3$ | $1$ |
| $6$ | $1$ | $6$ | $1$ | $6$ | $1$ | $6$ | $1$ |

Dès qu'une ligne retombe sur $1$, elle recommence à l'identique. Les lignes de $3$ et de $5$
contiennent les six valeurs $1, \ldots, 6$ ; celles de $1$, $2$, $4$ et $6$ n'en contiennent que
une, trois, trois et deux.

**Conclusion :** les racines primitives modulo $7$ sont $3$ et $5$.

**2a.** Notons $u_k = (g^k \bmod p)$. D'après la première règle, $u_{k+1} = (g\,u_k) \bmod p$ :
chaque terme est entièrement déterminé par le précédent. Par définition de $g$, l'ensemble des
valeurs prises par la suite $(u_k)$ est exactement $\{1, \ldots, p - 1\}$ ; en particulier, aucun
terme n'est nul.

Les $p$ nombres $u_0, u_1, \ldots, u_{p-1}$ sont pris parmi les $p - 1$ valeurs $1, \ldots, p - 1$ :
deux d'entre eux sont égaux (principe des tiroirs). Soit $m$ le plus petit rang tel que $u_m$ soit
égal à un terme précédent, disons $u_m = u_i$ avec $i < m$. Alors :

- les termes $u_0, u_1, \ldots, u_{m-1}$ sont deux à deux distincts, par définition de $m$ ;
- comme chaque terme ne dépend que du précédent, $u_{m+1} = u_{i+1}$, $u_{m+2} = u_{i+2}$, et ainsi
  de suite : à partir du rang $i$, la suite se répète avec la période $m - i$. Tout terme $u_k$
  avec $k \geq m$ est donc égal à un terme de rang plus petit, et de proche en proche à l'un des
  termes $u_0, \ldots, u_{m-1}$.

L'ensemble des valeurs de la suite est donc $\{u_0, \ldots, u_{m-1}\}$, qui compte exactement $m$
éléments. Comme cet ensemble est $\{1, \ldots, p - 1\}$, on a $m = p - 1$.

**Conclusion :** les $p - 1$ restes $u_0, \ldots, u_{p-2}$ sont distincts et forment l'ensemble
$\{1, \ldots, p - 1\}$ tout entier.

**2b.** *Existence :* d'après 2a, $A$ est l'un des restes $u_0, \ldots, u_{p-2}$. *Unicité :* ces
restes sont deux à deux distincts, donc un seul d'entre eux vaut $A$.

**2c.** *Montrons d'abord que $(g^{p-1} \bmod p) = 1$.* D'après la preuve de 2a (avec $m = p - 1$),
on a $u_{p-1} = u_i$ pour un $i \in \{0, \ldots, p - 2\}$. Supposons $i \geq 1$. Alors
$g^{p-1} \equiv g^i \pmod{p}$, c'est-à-dire que $p$ divise
$$g^{p-1} - g^i = g\,(g^{p-2} - g^{i-1}).$$
Le nombre $g^{p-2} - g^{i-1}$ n'est pas nul (sinon $u_{p-2} = u_{i-1}$), et l'on peut le prendre en
valeur absolue. D'après la seconde règle, $p$ divise $g$ ou $|g^{p-2} - g^{i-1}|$. Il ne divise pas
$g$, car $1 \leq g \leq p - 1$. Il divise donc $g^{p-2} - g^{i-1}$, ce qui veut dire
$u_{p-2} = u_{i-1}$. C'est impossible, car $i - 1 < p - 2$ et les restes $u_0, \ldots, u_{p-2}$
sont distincts. Donc $i = 0$, c'est-à-dire $g^{p-1} \equiv 1 \pmod{p}$.

*Conclusion.* Comme $b \equiv a \pmod{p - 1}$, on peut écrire $b = a + q(p - 1)$ avec $q$ entier,
et $q \geq 0$ puisque $b \geq 0$ et $0 \leq a < p - 1$. Alors, d'après la première règle,
$$g^b = g^a \times \left(g^{p-1}\right)^q \equiv g^a \times 1^q = g^a \equiv A \pmod{p}.$$
Donc $(g^b \bmod p) = A$ : on peut remplacer l'exposant $a$ par n'importe quel exposant qui lui est
congru modulo $p - 1$.

*Réciproque.* Si deux entiers naturels $x$ et $y$ vérifient $g^x \equiv g^y \pmod{p}$, notons $a$
et $b$ leurs restes dans la division par $p - 1$. Ce qui précède donne $g^x \equiv g^a$ et
$g^y \equiv g^b \pmod{p}$, donc $u_a = u_b$ avec $a$ et $b$ dans $\{0, \ldots, p - 2\}$. D'après
2a, ces restes sont distincts quand les exposants le sont : donc $a = b$, et $x \equiv y \pmod{p - 1}$.
Ainsi $g^x \equiv g^y \pmod{p}$ **si et seulement si** $x \equiv y \pmod{p - 1}$.

**3a.** On garde dans une variable $x$ le reste $(g^k \bmod p)$, que l'on met à jour en multipliant
par $g$ et en reprenant le reste, ce qui évite les très grands nombres :

```python
def logarithme(A, g, p):
    k = 0
    x = 1                  # x = g^k mod p
    while x != A:
        x = (x * g) % p
        k = k + 1
    return k
```

D'après 2b, $A$ apparaît pour un $k \leq p - 2$ : la boucle s'arrête toujours, et elle renvoie
$\ell(A)$, le premier rang où l'on trouve $A$.

**3b.** Le programme calcule successivement le reste de $20^k$ dans la division par $53$, pour
$k = 0, 1, \ldots$ :

| $k$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|---|
| reste | $1$ | $20$ | $29$ | $50$ | $46$ | $19$ | $9$ | $21$ | $49$ | $26$ |

| $k$ | $10$ | $11$ | $12$ | $13$ | $14$ | $15$ | $16$ | $17$ | $18$ |
|---|---|---|---|---|---|---|---|---|---|
| reste | $43$ | $12$ | $28$ | $30$ | $17$ | $22$ | $16$ | $2$ | $40$ |

Par exemple $20 \times 20 = 400 = 7 \times 53 + 29$, puis $29 \times 20 = 580 = 10 \times 53 + 50$.

**Conclusion :** $\ell(40) = 18$, c'est-à-dire $20^{18} \equiv 40 \pmod{53}$.

**Bilan.** Si $g$ est une racine primitive modulo $p$, ses puissances $g^0, \ldots, g^{p-2}$ ont des
restes tous différents qui parcourent $1, \ldots, p - 1$, et $g^{p-1}$ a pour reste $1$. Tout
$A \in \{1, \ldots, p - 1\}$ s'écrit donc $g^a$ modulo $p$ pour un unique $a \in \{0, \ldots, p - 2\}$,
son logarithme discret, et l'exposant ne compte que modulo $p - 1$ : $g^x \equiv g^y \pmod{p}$ si et
seulement si $x \equiv y \pmod{p - 1}$. On peut toujours le trouver en
essayant les puissances une à une, mais c'est long quand $p$ est grand.

## Going further

- Pour un nombre premier $p$ d'une centaine de chiffres, l'algorithme de la question 3 demanderait
  jusqu'à $p - 2$ multiplications : bien trop pour n'importe quel ordinateur. Cette difficulté est
  à la base de méthodes de cryptographie (l'échange de clés de Diffie et Hellman). La suite du sujet
  présentait une méthode plus rapide : voir les exercices 40127 et 40128.
- Montrer que si $g$ est une racine primitive modulo $p$, alors $(g^k \bmod p)$ est encore une racine
  primitive modulo $p$ si et seulement si $k$ et $p - 1$ n'ont pas de diviseur commun autre que $1$.
  Vérifier sur $p = 7$ et $g = 3$.
