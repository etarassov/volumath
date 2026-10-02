---
id: "7836"
title: "Le PGCD de tous les nombres a²⁵ − a"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [petit-theoreme-de-fermat, pgcd, nombres-premiers, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de fin de parcours du mardi 25 août, groupe C, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver le plus grand entier $d$ qui divise $a^{25} - a$ pour **tout** entier relatif $a$.

## Hints

1. Un tel $d$ doit en particulier diviser $2^{25} - 2$. Calcule ce nombre et décompose-le : les
   identités $u^2 - v^2 = (u-v)(u+v)$ appliquées à $2^{24} - 1$ font tout le travail.
2. Dans l'autre sens, cherche des nombres premiers $p$ qui divisent $a^{25} - a$ pour tout $a$.
   Le petit théorème de Fermat dit que $a^{p-1} \equiv 1 \pmod p$ quand $p \nmid a$.
3. Pour quelles valeurs de $p$ peut-on en déduire $a^{24} \equiv 1 \pmod p$, et donc
   $a^{25} \equiv a$ ? Il faut que $p - 1$ divise $24$. Liste les $p$ premiers tels que
   $p - 1 \mid 24$.
4. Tu obtiens un encadrement : un produit qui divise $d$, et un nombre que $d$ divise. Il reste
   quelques facteurs à départager : teste-les sur $a = 3$.

## Solution

Notons $d$ le plus grand entier qui divise $a^{25} - a$ pour tout entier relatif $a$.

**Étape 1 : une borne supérieure, avec $a = 2$.**

$$2^{25} - 2 = 2\left(2^{24} - 1\right) = 2\left(2^{12} - 1\right)\left(2^{12} + 1\right)
 = 2 \times 4095 \times 4097 .$$

On décompose les deux facteurs :
$$4095 = 4096 - 1 = 9 \times 455 = 3^2 \times 5 \times 7 \times 13 ,$$
$$4097 = 17 \times 241 \quad (\text{et } 241 \text{ est premier}) .$$

Donc
$$2^{25} - 2 = 2 \times 3^2 \times 5 \times 7 \times 13 \times 17 \times 241 .$$

Comme $d$ divise ce nombre, $d$ n'a pas d'autre facteur premier que $2$, $3$, $5$, $7$, $13$,
$17$, $241$, et le facteur $3$ y apparaît au plus au carré, les autres au plus une fois.

**Étape 2 : une borne inférieure, avec le petit théorème de Fermat.**

Soit $p$ un nombre premier tel que $p - 1$ divise $24$. Montrons que $p$ divise $a^{25} - a$
pour tout entier $a$.

- Si $p$ divise $a$, alors $p$ divise $a^{25}$ et donc $a^{25} - a$.
- Sinon, le petit théorème de Fermat donne $a^{p-1} \equiv 1 \pmod p$. En écrivant
  $24 = (p-1)\,t$, il vient
  $$a^{24} = \left(a^{p-1}\right)^{t} \equiv 1^{t} = 1 \pmod p ,$$
  donc $a^{25} = a \times a^{24} \equiv a \pmod p$, c'est-à-dire $p \mid a^{25} - a$.

Quels sont ces nombres premiers ? Les diviseurs de $24$ sont $1, 2, 3, 4, 6, 8, 12, 24$, donc
$p \in \{2, 3, 4, 5, 7, 9, 13, 25\}$. En ne gardant que les nombres premiers :
$$p \in \{2,\ 3,\ 5,\ 7,\ 13\} .$$

Ces cinq nombres premiers étant distincts, leur produit divise $a^{25} - a$ pour tout $a$ :
$$2 \times 3 \times 5 \times 7 \times 13 = 2730 \quad \text{divise } d .$$

**Étape 3 : on élimine ce qui reste.**

En comparant les deux étapes, $d = 2730 \times e$ où $e$ divise $3 \times 17 \times 241$. Il
reste donc à savoir si $3$, $17$ ou $241$ divise encore $d$. Testons-les sur $a = 3$, avec
$$3^{25} - 3 = 3\left(3^{24} - 1\right).$$

*Le facteur $3$ :* le nombre $3^{24} - 1$ n'est pas divisible par $3$ (il vaut $-1$ modulo $3$),
donc $3^{25} - 3$ contient exactement un facteur $3$. Ainsi $9 \nmid d$.

*Le facteur $17$ :* calculons $3^{24}$ modulo $17$ par carrés successifs.
$$3^2 = 9, \quad 3^4 = 81 \equiv 13, \quad 3^8 \equiv 13^2 = 169 \equiv 16 \equiv -1 \pmod{17},$$
$$3^{16} \equiv (-1)^2 = 1, \qquad 3^{24} = 3^{16} \times 3^8 \equiv 1 \times (-1) = -1 \pmod{17}.$$
Donc $3^{24} - 1 \equiv -2 \not\equiv 0 \pmod{17}$, et $17$ ne divise pas $3$ non plus : donc
$17 \nmid 3^{25} - 3$, et $17 \nmid d$.

*Le facteur $241$ :* même méthode.
$$3^8 = 6561 = 241 \times 27 + 54 \equiv 54 \pmod{241},$$
$$3^{16} \equiv 54^2 = 2916 = 241 \times 12 + 24 \equiv 24 \pmod{241},$$
$$3^{24} = 3^{16} \times 3^{8} \equiv 24 \times 54 = 1296 = 241 \times 5 + 91 \equiv 91 \pmod{241}.$$
Donc $3^{24} - 1 \equiv 90 \not\equiv 0 \pmod{241}$, et $241 \nmid d$.

**Conclusion.**

$$d = 2 \times 3 \times 5 \times 7 \times 13 = \boxed{2730}.$$

*Vérification numérique.* $2^{25} - 2 = 33\,554\,430 = 2730 \times 12\,291$, et
$3^{25} - 3 = 847\,288\,609\,440 = 2730 \times 310\,362\,128$.

## Going further

Le même raisonnement donne, pour tout exposant impair $N$, que le plus grand diviseur commun de
tous les $a^{N} - a$ est le produit des nombres premiers $p$ tels que $p - 1$ divise $N - 1$.
Pour $N = 3$ on retrouve $6$, pour $N = 5$ on trouve $30$, pour $N = 7$ on trouve $42$ : ce sont
les nombres bien connus qui rendent vraies les identités $a^3 \equiv a \pmod 6$,
$a^5 \equiv a \pmod{30}$, $a^7 \equiv a \pmod{42}$.
