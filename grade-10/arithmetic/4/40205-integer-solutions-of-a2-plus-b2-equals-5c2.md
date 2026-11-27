---
id: "40205"
title: "Les solutions entières de a² + b² = 5c² : premières propriétés"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [equation-diophantienne, nombres-premiers-entre-eux, parite, restes, divisibilite, nombres-premiers, factorisation, contre-exemple]
adapted_from: null
see_also: ["40203", "40204", "40206", "40207"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2007, mathématiques, série S"
  reference: "cg-2007-s-sujet.pdf, exercice 3, partie II « Arithmétique », A « Deux familles de triangles », question 1 a) à 1 e)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2007.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2007-s-sujet.pdf"
---

## Statement

Un triangle dont les médianes issues de $A$ et de $B$ sont perpendiculaires a des côtés
$a = BC$, $b = CA$ et $c = AB$ qui vérifient
$$a^2 + b^2 = 5c^2 . \qquad (\star)$$
Pour chercher de tels triangles dont les côtés sont des nombres entiers, on étudie ici les triplets
$(a, b, c)$ d'entiers strictement positifs qui vérifient $(\star)$.

Si $(a, b, c)$ vérifie $(\star)$, alors pour tout entier $m \geq 1$ le triplet $(ma, mb, mc)$ la
vérifie aussi. On se limite donc aux triplets **sans facteur premier commun** : aucun nombre premier
ne divise à la fois $a$, $b$ et $c$. On note $\mathcal{T}_1$ l'ensemble de ces triplets.

Dans les questions 1 à 4, $(a, b, c)$ est un triplet de $\mathcal{T}_1$.

1. Montrer que $a$, $b$ et $c$ sont premiers entre eux deux à deux : aucun nombre premier ne divise
   deux d'entre eux.
2. Montrer que $a$ et $b$ ne sont pas de même parité.
3. Montrer que ni $a$ ni $b$ n'est divisible par $3$, par $4$ ou par $5$.
4. a) Montrer que $b^2 - 4a^2$ et $a^2 - 4b^2$ sont des multiples de $5$.

   b) En déduire qu'il existe deux entiers relatifs $\alpha$ et $\beta$ tels que
   $$\text{(I)} \quad 2a + b = 5\alpha \ \text{ et } \ -a + 2b = 5\beta \qquad \text{ou} \qquad \text{(II)} \quad 2a - b = 5\alpha \ \text{ et } \ a + 2b = 5\beta .$$

   c) Vérifier qu'alors $\alpha^2 + \beta^2 = c^2$, et que $\alpha$ et $\beta$ sont premiers entre eux.
5. Inversement, soit $\alpha$ et $\beta$ deux entiers premiers entre eux, et $a$, $b$ les entiers qui
   leur sont associés par les relations (I), ou par les relations (II). Les entiers $a$ et $b$
   sont-ils toujours premiers entre eux ?

## Hints

1. **Question 1.** Si un nombre premier $p$ divise $a$ et $b$, alors $p^2$ divise $5c^2$. Séparer
   les cas $p = 5$ et $p \neq 5$.
2. **Question 2.** Quel est le reste de la division par $4$ du carré d'un nombre impair ? Et celui de
   $5c^2 = 4c^2 + c^2$ ?
3. **Question 3.** Les restes possibles d'un carré dans la division par $3$ sont $0$ et $1$. Pour
   $4$ : si $(2k + 1)^2 = 4k(k + 1) + 1$, que dire du reste d'un carré impair dans la division par
   $8$ ?
4. **Question 4 a).** Écrire $b^2 - 4a^2 = (a^2 + b^2) - 5a^2$.
5. **Question 4 b).** Factoriser $b^2 - 4a^2$. Si $5$ divise $2a + b$, que dire de
   $-a + 2b = 2(2a + b) - 5a$ ?
6. **Question 4 c).** Exprimer $a$ et $b$ à l'aide de $\alpha$ et $\beta$.
7. **Question 5.** Un diviseur commun de $a$ et $b$ divise $5\alpha$ et $5\beta$. Chercher un
   exemple avec de petites valeurs de $\alpha$ et $\beta$.

## Solution

On utilise deux faits sur les entiers.

- *Nombres premiers.* Si un nombre premier divise un produit, il divise l'un des facteurs. C'est une
  conséquence de la décomposition en facteurs premiers. En particulier, si $p$ divise $n^2$, alors
  $p$ divise $n$.
- *Restes.* Le reste de la division par $k$ d'une somme ou d'un produit ne dépend que des restes des
  termes ou des facteurs.

**1.** Soit $p$ un nombre premier.

- *Si $p$ divise $a$ et $b$*, alors $p^2$ divise $a^2 + b^2 = 5c^2$. Si $p \neq 5$, alors $p$ divise
  $c^2$ (il divise le produit $5 \times c^2$ et ne divise pas $5$), donc $p$ divise $c$. Si $p = 5$,
  alors $25$ divise $5c^2$, donc $5$ divise $c^2$, donc $c$. Dans les deux cas, $p$ divise $a$, $b$ et
  $c$ : c'est exclu.
- *Si $p$ divise $a$ et $c$*, alors $p$ divise $b^2 = 5c^2 - a^2$, donc $b$ : exclu.
- *Si $p$ divise $b$ et $c$*, de même $p$ divise $a^2 = 5c^2 - b^2$, donc $a$ : exclu.

**Conclusion :** $a$, $b$ et $c$ sont premiers entre eux deux à deux.

**2.** D'après la question 1, $a$ et $b$ ne sont pas tous deux pairs. Supposons-les tous deux impairs.
Le carré d'un nombre impair $2k + 1$ vaut $4k^2 + 4k + 1$ : son reste dans la division par $4$ est
$1$. Donc $a^2 + b^2$ a pour reste $2$ dans la division par $4$. Or $5c^2 = 4c^2 + c^2$ a le même reste
que $c^2$, c'est-à-dire $0$ (si $c$ est pair) ou $1$ (si $c$ est impair). C'est impossible.

**Conclusion :** $a$ et $b$ sont de parités différentes. Alors $a^2 + b^2 = 5c^2$ est impair, donc $c$
est impair.

**3.** Par symétrie des rôles de $a$ et $b$, il suffit de traiter $a$.

*Par $5$.* Si $5$ divise $a$, alors $5$ divise $b^2 = 5c^2 - a^2$, donc $b$ : c'est contraire à la
question 1.

*Par $3$.* Un entier s'écrit $3k$, $3k + 1$ ou $3k + 2$, et son carré a pour reste $0$, $1$ ou $1$
dans la division par $3$. Si $3$ divise $a$, alors $3$ ne divise ni $b$ ni $c$ (question 1), donc
$a^2 + b^2$ a pour reste $0 + 1 = 1$. Mais $5c^2 = 6c^2 - c^2$ et $c^2$ a pour reste $1$, donc $5c^2$ a
pour reste $3 - 1 = 2$. C'est impossible.

*Par $4$.* Le carré d'un nombre impair s'écrit $(2k + 1)^2 = 4k(k + 1) + 1$. Comme $k(k + 1)$ est pair,
$4k(k + 1)$ est un multiple de $8$ : **un carré impair a pour reste $1$ dans la division par $8$.**
Si $4$ divise $a$, alors $a^2$ est un multiple de $16$, et $b$ et $c$ sont impairs (question 2).
Donc $a^2 + b^2$ a pour reste $1$ dans la division par $8$, alors que $5c^2$ a pour reste $5$. C'est
impossible.

**Conclusion :** ni $a$ ni $b$ n'est divisible par $3$, par $4$ ou par $5$. Celui des deux qui est pair
est donc le double d'un nombre impair.

**4. a)** On a $b^2 - 4a^2 = (a^2 + b^2) - 5a^2 = 5c^2 - 5a^2 = 5(c^2 - a^2)$, et de même
$a^2 - 4b^2 = 5(c^2 - b^2)$. Ce sont des multiples de $5$.

**b)** On a $b^2 - 4a^2 = (b - 2a)(b + 2a)$. Le nombre premier $5$ divise ce produit, donc il divise
$2a + b$ ou $b - 2a$.

- *Si $5$ divise $2a + b$*, alors $-a + 2b = 2(2a + b) - 5a$ est aussi un multiple de $5$. On pose
  $\alpha = \frac{2a + b}{5}$ et $\beta = \frac{-a + 2b}{5}$ : ce sont des entiers, et on est dans le
  cas (I).
- *Si $5$ divise $b - 2a$*, il divise $2a - b$, et $a + 2b = 5a - 2(2a - b)$ est un multiple de $5$.
  On pose $\alpha = \frac{2a - b}{5}$ et $\beta = \frac{a + 2b}{5}$ : cas (II).

**c)** *Cas (I).* En développant,
$$(2a + b)^2 + (-a + 2b)^2 = 4a^2 + 4ab + b^2 + a^2 - 4ab + 4b^2 = 5(a^2 + b^2) = 25c^2 ,$$
donc $25\alpha^2 + 25\beta^2 = 25c^2$, soit $\alpha^2 + \beta^2 = c^2$. On calcule aussi
$$2\alpha - \beta = \frac{4a + 2b + a - 2b}{5} = a \qquad \text{et} \qquad \alpha + 2\beta = \frac{2a + b - 2a + 4b}{5} = b .$$
Un nombre premier qui diviserait $\alpha$ et $\beta$ diviserait donc $a$ et $b$, ce qui est exclu par la
question 1.

*Cas (II).* Le calcul est le même : $(2a - b)^2 + (a + 2b)^2 = 5(a^2 + b^2) = 25c^2$, et
$2\alpha + \beta = a$, $-\alpha + 2\beta = b$.

**Conclusion :** dans les deux cas, $\alpha^2 + \beta^2 = c^2$ et $\alpha$, $\beta$ sont premiers entre
eux.

*Un exemple.* Le triplet $(19, 22, 13)$ est dans $\mathcal{T}_1$ : $361 + 484 = 845 = 5 \times 169$.
Ici $2a + b = 60$ est un multiple de $5$ : cas (I), avec $\alpha = 12$ et $\beta = 5$, et l'on a bien
$12^2 + 5^2 = 13^2$.

**5.** Dans le cas (I), les relations donnent $a = 2\alpha - \beta$ et $b = \alpha + 2\beta$ (calcul de
4 c)). Soit $d$ un diviseur commun de $a$ et $b$. Il divise $2a + b = 5\alpha$ et $-a + 2b = 5\beta$.
Un nombre premier $p \neq 5$ qui diviserait $d$ diviserait $\alpha$ et $\beta$, ce qui est exclu. Et
$25$ ne peut pas diviser $d$, sinon $5$ diviserait $\alpha$ et $\beta$. Donc $a$ et $b$ ont pour plus
grand diviseur commun $1$ ou $5$, et le cas $5$ se produit vraiment : avec $\alpha = 4$ et
$\beta = 3$ (premiers entre eux, et même $4^2 + 3^2 = 5^2$), on obtient $a = 5$ et $b = 10$.
Le cas (II) est pareil : $\alpha = 3$, $\beta = 4$ donnent $a = 10$ et $b = 5$.

**Conclusion :** non. Les entiers $a$ et $b$ sont premiers entre eux, ou bien leur seul diviseur
commun autre que $1$ est $5$, et ce second cas arrive. Dans le cas (I), il arrive exactement quand
$5$ divise $2\alpha - \beta$.

**Bilan.** Dans une solution sans facteur commun de $a^2 + b^2 = 5c^2$, les trois nombres sont premiers
entre eux deux à deux, $c$ est impair, l'un de $a$, $b$ est impair et l'autre est le double d'un
impair, et aucun n'est multiple de $3$ ou de $5$. Surtout, les combinaisons $2a \pm b$ et $\mp a + 2b$,
divisées par $5$, donnent une solution $(\alpha, \beta, c)$ de l'équation de Pythagore
$\alpha^2 + \beta^2 = c^2$. Le retour n'est pas toujours sans facteur commun : il peut apparaître un
facteur $5$.

## Going further

- Pourquoi la condition est-elle « $5$ divise $2\alpha - \beta$ » dans la question 5 ? Montrer que
  $5$ divise alors aussi $\alpha + 2\beta$.
- Dans la suite du sujet, on admettait la forme générale des solutions de $x^2 + y^2 = z^2$, et l'on
  en déduisait tous les triangles dont les médianes issues de $A$ et $B$ sont perpendiculaires et
  dont les côtés sont des entiers : voir l'exercice 40206.
