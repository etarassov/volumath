---
id: "7621"
title: "Une infinité de nombres premiers qui ne finissent pas par 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres premiers, raisonnement par l absurde, chiffre des unites, euclide]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 6 (sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Démontrer qu'il existe une **infinité** de nombres premiers dont le dernier chiffre n'est pas $1$.

## Hints

1. Raisonnez par l'absurde : supposez qu'il n'y en a qu'un nombre fini, et appelez-les $p_1, p_2, \ldots, p_k$. Notez que $2$, $3$, $5$ et $7$ en font partie.
2. Sous cette hypothèse, tous les autres nombres premiers se terminent par $1$. Que peut-on dire alors du dernier chiffre d'un produit de tels nombres premiers ?
3. Il suffit donc de fabriquer un entier qui ne se termine **pas** par $1$ et dont aucun facteur premier n'est dans la liste $p_1, \ldots, p_k$.
4. Pensez à la construction d'Euclide : considérez le produit $P = p_1 p_2 \cdots p_k$, puis un nombre construit à partir de $10P$.

## Solution

**Raisonnons par l'absurde.**

Supposons qu'il n'existe qu'un nombre **fini** de nombres premiers dont le dernier chiffre n'est pas $1$. Appelons-les

$$p_1, \ p_2, \ \ldots, \ p_k .$$

Cette liste n'est pas vide : elle contient par exemple $2$, $3$, $5$ et $7$. Sous notre hypothèse, **tout** nombre premier qui n'est pas dans cette liste se termine par le chiffre $1$.

**Une remarque sur les produits.**

Si deux entiers se terminent par $1$, leur produit aussi. En effet, en écrivant $u = 10m + 1$ et $v = 10n + 1$,

$$uv = 100mn + 10m + 10n + 1 = 10(10mn + m + n) + 1 ,$$

qui se termine bien par $1$. De proche en proche :

> **Un produit d'entiers se terminant tous par $1$ se termine lui-même par $1$.**

**La construction.**

Posons

$$P = p_1 \times p_2 \times \cdots \times p_k \qquad \text{et} \qquad N = 10P - 1 .$$

Comme $P$ contient au moins les facteurs $2$, $3$, $5$ et $7$, on a $P \geqslant 210$, donc $N \geqslant 2099$ : en particulier $N \geqslant 2$, et $N$ possède donc au moins un facteur premier.

Le nombre $10P$ se termine par $0$, donc $N = 10P - 1$ se termine par $9$.

**La contradiction.**

Décomposons $N$ en facteurs premiers. Si tous ses facteurs premiers se terminaient par $1$, alors $N$ lui-même se terminerait par $1$, d'après la remarque ci-dessus. Or $N$ se termine par $9$. Donc $N$ possède au moins un facteur premier $q$ dont le dernier chiffre n'est pas $1$.

D'après notre hypothèse, $q$ figure dans la liste : $q$ est l'un des $p_i$. Mais alors $q$ divise $P$, donc $q$ divise $10P$. Comme $q$ divise aussi $N = 10P - 1$, le nombre $q$ divise la différence

$$10P - N = 1 .$$

Un nombre premier ne peut pas diviser $1$. Contradiction.

**Conclusion.** L'hypothèse de départ est fausse : il existe une infinité de nombres premiers dont le dernier chiffre n'est pas $1$.

## Going further

La démonstration est calquée sur celle d'Euclide pour l'infinité des nombres premiers : on suppose la liste complète, on fabrique un nombre qui échappe à toute la liste, et on conclut.

Le choix du dernier chiffre $9$ pour $N$ n'a rien de magique : n'importe quel chiffre autre que $1$ aurait convenu, du moment qu'on sait construire un tel nombre. Par exemple $N = 10P + 3$ se termine par $3$ et ne peut être divisible par aucun $p_i$ **si l'on prend soin de retirer $3$ du produit $P$**, car sinon $3$ diviserait $N$. C'est pour éviter ce genre de précaution que $10P - 1$ est commode.

Un résultat bien plus fort, mais beaucoup plus difficile, est le **théorème de Dirichlet** : pour tout chiffre $c$ parmi $1$, $3$, $7$, $9$, il existe une infinité de nombres premiers se terminant par $c$. Les chiffres $0$, $2$, $4$, $5$, $6$, $8$ sont évidemment exclus, sauf pour les cas isolés $2$ et $5$.
