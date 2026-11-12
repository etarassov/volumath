---
id: "22052"
title: "Quand −1 est-il un carré modulo p ?"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres-premiers, congruences, carres-modulo-p, petit-theoreme-de-fermat, theoreme-de-wilson, infini, raisonnement-par-l-absurde, maths-expertes]
adapted_from: null
see_also: ["22048", "22049", "22046", "8717"]
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Modulos » (Jean), exercice 15 (erreur de la source : le corrigé pose N = (p₁ × ⋯ × pᵣ)² + 1 et affirme que tout nombre premier qui divise N est congru à 1 modulo 4 ; c'est faux pour 2, qui divise N dès que les pᵢ sont impairs ; la solution ci-dessous prend N = (2 p₁ ⋯ pᵣ)² + 1, qui est impair)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $p$ un nombre premier impair. On dit qu'un entier $n$ est un **carré modulo $p$** s'il existe un entier $a$ tel que $a^2 \equiv n \pmod{p}$.

1. Montrer que $-1$ est un carré modulo $p$ si et seulement si $p \equiv 1 \pmod{4}$.
2. En déduire qu'il existe une infinité de nombres premiers congrus à $1$ modulo $4$.

## Hints

1. Testez sur de petits nombres premiers : $-1$ est-il un carré modulo $3$, $5$, $7$, $13$ ?
2. Si $a^2 \equiv -1 \pmod{p}$, calculez $a^{p-1} = \left(a^2\right)^{(p-1)/2}$ de deux façons, l'une avec le petit théorème de Fermat.
3. Pour la réciproque, écrivez $(p-1)! = 1 \times 2 \times \cdots \times (p-1)$ en associant chaque $j$ à $p - j \equiv -j$, et utilisez le théorème de Wilson : $(p-1)! \equiv -1 \pmod{p}$.
4. Pour la question 2, imitez la preuve d'Euclide avec un nombre de la forme $x^2 + 1$. Attention au nombre premier $2$.

## Solution

On utilise le **petit théorème de Fermat** : si $p$ est premier et ne divise pas $a$, alors $a^{p-1} \equiv 1 \pmod{p}$. On utilise aussi le **théorème de Wilson** : si $p$ est premier, alors $(p-1)! \equiv -1 \pmod{p}$. En voici une preuve courte. Chaque $x$ entre $1$ et $p - 1$ est premier avec $p$, donc a un inverse $y$ entre $1$ et $p - 1$, c'est-à-dire $xy \equiv 1 \pmod{p}$. Le nombre $x$ est son propre inverse quand $p$ divise $x^2 - 1 = (x-1)(x+1)$, c'est-à-dire pour $x = 1$ et $x = p - 1$ seulement. Les nombres $2, 3, \ldots, p - 2$ se rangent donc en paires $\{x, y\}$ avec $xy \equiv 1$, et leur produit est congru à $1$. Finalement $(p-1)! \equiv 1 \times 1 \times (p - 1) \equiv -1 \pmod{p}$.

Comme $p$ est impair, il s'écrit $p = 4k + 1$ ou $p = 4k + 3$. Le nombre $\frac{p-1}{2}$ vaut $2k$ dans le premier cas, qui est pair, et $2k + 1$ dans le second, qui est impair. Donc **$p \equiv 1 \pmod{4}$ si et seulement si $\frac{p-1}{2}$ est pair.**

**Question 1, premier sens : si $-1$ est un carré modulo $p$, alors $p \equiv 1 \pmod{4}$.**

Soit $a$ un entier tel que $a^2 \equiv -1 \pmod{p}$. Le nombre $p$ ne divise pas $a$ : sinon il diviserait $a^2$ et $a^2 + 1$, donc leur différence $1$. Le petit théorème de Fermat donne donc $a^{p-1} \equiv 1 \pmod{p}$. D'autre part, $p - 1$ est pair, et

$$a^{p-1} = \left(a^2\right)^{(p-1)/2} \equiv (-1)^{(p-1)/2} \pmod{p}.$$

Donc $(-1)^{(p-1)/2} \equiv 1 \pmod{p}$. Si $\frac{p-1}{2}$ était impair, on aurait $-1 \equiv 1 \pmod{p}$, donc $p$ diviserait $2$, ce qui est impossible car $p$ est impair. Donc $\frac{p-1}{2}$ est pair, c'est-à-dire $p \equiv 1 \pmod{4}$.

**Question 1, second sens : si $p \equiv 1 \pmod{4}$, alors $-1$ est un carré modulo $p$.**

Posons $m = \frac{p-1}{2}$, qui est pair. On range les facteurs de $(p-1)!$ par paires $\{j, p - j\}$ pour $j = 1, 2, \ldots, m$ : ce sont bien tous les nombres de $1$ à $p - 1$, chacun une seule fois. Comme $p - j \equiv -j \pmod{p}$,

$$(p-1)! = \prod_{j=1}^{m} j\,(p - j) \equiv \prod_{j=1}^{m} \left(-j^2\right) = (-1)^m \left(m!\right)^2 \pmod{p}.$$

Comme $m$ est pair, $(-1)^m = 1$, et le théorème de Wilson donne

$$-1 \equiv (p-1)! \equiv \left(m!\right)^2 \pmod{p}.$$

Donc $-1$ est un carré modulo $p$ : c'est le carré de $a = \left(\frac{p-1}{2}\right)!$. Par exemple, pour $p = 13$, on a $m = 6$ et $6! = 720 = 13 \times 55 + 5$, et en effet $5^2 = 25 = 2 \times 13 - 1 \equiv -1 \pmod{13}$.

**Question 2.** Supposons par l'absurde qu'il n'existe qu'un nombre fini de nombres premiers congrus à $1$ modulo $4$. Il y en a au moins un, à savoir $5$. Notons-les $p_1, p_2, \ldots, p_r$, et posons

$$x = 2\,p_1 p_2 \cdots p_r \qquad \text{et} \qquad N = x^2 + 1.$$

- Le nombre $x$ est pair, donc $N$ est impair, et $N \geq 2$. Il a donc au moins un facteur premier $q$, et $q$ est impair.
- Comme $q$ divise $x^2 + 1$, on a $x^2 \equiv -1 \pmod{q}$ : $-1$ est un carré modulo $q$. D'après la question 1, $q \equiv 1 \pmod{4}$.
- Donc $q$ est l'un des $p_i$. Alors $q$ divise $x$, donc $x^2$, et il divise aussi $N = x^2 + 1$. Il divise donc la différence $N - x^2 = 1$, ce qui est impossible.

Il existe donc une infinité de nombres premiers congrus à $1$ modulo $4$.

**Conclusion.** Pour un nombre premier impair $p$, le nombre $-1$ est un carré modulo $p$ si et seulement si $p \equiv 1 \pmod{4}$, et dans ce cas $-1 \equiv \left(\left(\frac{p-1}{2}\right)!\right)^2 \pmod{p}$. Il y a une infinité de nombres premiers de la forme $4k + 1$.

## Going further

1. Pourquoi a-t-on mis un facteur $2$ dans $x$ ? Que se passerait-il avec $N = \left(p_1 p_2 \cdots p_r\right)^2 + 1$, par exemple quand la liste est réduite à $p_1 = 5$ ?
2. Montrer que tout diviseur premier impair de $n^2 + 1$ est congru à $1$ modulo $4$. En déduire qu'un entier de la forme $4k + 3$ ne divise jamais $n^2 + 1$.
