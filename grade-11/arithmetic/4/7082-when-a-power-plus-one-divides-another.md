---
id: "7082"
title: "Quand aᵐ + 1 divise aⁿ + 1"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [divisibilite, puissances, factorisation, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des avancés"
  reference: "stage_junior_2011.pdf, « Arithmétique », TD du groupe des avancés, exercice 3, question b"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

Soit $a \geq 2$ un entier, et soient $m$ et $n$ deux entiers strictement positifs tels que $m$ divise $n$. On note $k = \dfrac{n}{m}$, qui est donc un entier.

1. Démontrer que si $k$ est **impair**, alors $a^m + 1$ divise $a^n + 1$.
2. Démontrer que si $k$ est **pair**, alors $a^m + 1$ divise $a^n - 1$.
3. En déduire que $a^m + 1$ divise $a^n + 1$ **si et seulement si** $k$ est impair.

Par exemple, $2^3 + 1 = 9$ divise $2^9 + 1 = 513 = 9 \times 57$, alors que $2^3 + 1 = 9$ ne divise pas $2^6 + 1 = 65$.

## Hints

1. Tout se simplifie si on pose $b = a^m$. Que vaut alors $a^n$ ?
2. La question devient : quand est-ce que $b + 1$ divise $b^k + 1$ ? Teste à la main avec $k = 1$, $k = 2$, $k = 3$.
3. Pour $k = 3$, développe $(b+1)(b^2 - b + 1)$. Tu devrais reconnaître le résultat.
4. Pour $k$ impair quelconque, la même factorisation marche avec les signes qui alternent : $b^{k-1} - b^{k-2} + b^{k-3} - \ldots - b + 1$. Vérifie que les termes du milieu se détruisent.
5. Pour $k$ pair, cherche plutôt à diviser $b^k - 1$. Remarque que $b + 1$ divise $b^2 - 1$, puis que $b^2 - 1$ divise $b^k - 1$ quand $k$ est pair.
6. Pour la question 3, suppose que $a^m + 1$ divise à la fois $a^n - 1$ et $a^n + 1$. Que divise-t-il alors ?

## Solution

Posons $b = a^m$. Comme $n = km$, on a $a^n = a^{km} = \left(a^m\right)^k = b^k$. Toutes les questions portent donc sur le même couple $(b, k)$, avec $b = a^m \geq 2^1 = 2$.

**1. Le cas $k$ impair.** Comme $k$ est impair, $k - 1$ est pair. Posons

$$S = b^{k-1} - b^{k-2} + b^{k-3} - \ldots - b + 1,$$

les signes alternant, en commençant et en finissant par $+$. C'est possible parce que $k - 1$ est pair : le terme de plus haut degré $b^{k-1}$ et le terme constant $1$ portent tous les deux le signe $+$.

Développons $(b + 1)S$. En multipliant $S$ par $b$ :

$$b^{k} - b^{k-1} + b^{k-2} - \ldots - b^2 + b,$$

et en multipliant $S$ par $1$ :

$$b^{k-1} - b^{k-2} + b^{k-3} - \ldots - b + 1.$$

Additionnons ces deux lignes. Chaque puissance $b^j$ avec $1 \leq j \leq k-1$ apparaît une fois dans chaque ligne, et **avec des signes opposés** : tout se détruit. Il ne reste que $b^k$, venu de la première ligne, et $1$, venu de la seconde. Donc

$$(b + 1)\,S = b^k + 1.$$

Comme $S$ est un entier, $b + 1$ divise $b^k + 1$. En revenant à $a$ : $a^m + 1$ divise $a^n + 1$.

**2. Le cas $k$ pair.** On procède en deux temps.

D'abord, $b + 1$ divise $b^2 - 1$, puisque $b^2 - 1 = (b-1)(b+1)$.

Ensuite, posons $c = b^2$ et $j = \dfrac{k}{2}$, qui est un entier puisque $k$ est pair. Alors $b^k = c^{\,j}$, et l'identité classique

$$c^{\,j} - 1 = (c - 1)\left(c^{\,j-1} + c^{\,j-2} + \ldots + c + 1\right)$$

montre que $c - 1 = b^2 - 1$ divise $c^{\,j} - 1 = b^k - 1$.

En mettant les deux bouts ensemble : $b + 1$ divise $b^2 - 1$, qui divise $b^k - 1$. Donc $b + 1$ divise $b^k - 1$, c'est-à-dire $a^m + 1$ divise $a^n - 1$.

**3. La réciproque.** Le sens direct est la question 1. Pour l'autre sens, supposons $k$ pair et montrons que $a^m + 1$ ne divise pas $a^n + 1$.

Raisonnons par l'absurde et supposons que $a^m + 1$ divise $a^n + 1$. D'après la question 2, il divise aussi $a^n - 1$. Il divise donc leur différence :

$$\left(a^n + 1\right) - \left(a^n - 1\right) = 2.$$

Donc $a^m + 1$ divise $2$, ce qui impose $a^m + 1 \leq 2$, soit $a^m \leq 1$. Or $a \geq 2$ et $m \geq 1$ donnent $a^m \geq 2$. Contradiction.

**Conclusion.** Lorsque $m$ divise $n$, le nombre $a^m + 1$ divise $a^n + 1$ exactement quand le quotient $\dfrac{n}{m}$ est impair. Quand ce quotient est pair, $a^m + 1$ divise $a^n - 1$ à la place.

## Going further

Vérifions sur un exemple que les deux cas sont bien là. Prenons $a = 2$ et $m = 3$, donc $a^m + 1 = 9$.

| $k$ | $n = 3k$ | $2^n + 1$ | divisible par $9$ ? | $2^n - 1$ | divisible par $9$ ? |
|---|---|---|---|---|---|
| $1$ | $3$ | $9$ | oui | $7$ | non |
| $2$ | $6$ | $65$ | non | $63$ | oui |
| $3$ | $9$ | $513$ | oui | $511$ | non |
| $4$ | $12$ | $4097$ | non | $4095$ | oui |

Les deux colonnes alternent exactement comme annoncé.

Une conséquence utile : pour que $2^N + 1$ soit premier, il faut que $N$ n'ait **aucun** diviseur impair autre que $1$, donc que $N$ soit une puissance de $2$. En effet, si $N = m k$ avec $k$ impair et $k > 1$, alors $2^m + 1$ divise $2^N + 1$ tout en étant strictement compris entre $1$ et $2^N + 1$. C'est la raison pour laquelle on ne cherche les nombres premiers de cette forme que parmi les $2^{2^s} + 1$.
