---
id: "11811"
title: "Des restes sans facteur carré"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [division euclidienne, nombres premiers, restes, puissances, equation diophantienne]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 15 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ sa partie entière, le plus grand entier inférieur ou égal à $x$.

Trouver tous les entiers $n \geqslant 1$ tels que, pour tout nombre premier $p < n$, le nombre

$$n - \left\lfloor \frac{n}{p} \right\rfloor p$$

ne soit divisible par aucun carré parfait autre que $1$.

## Hints

1. Que représente $n - \lfloor n/p \rfloor\, p$ ? Écris la division euclidienne de $n$ par $p$. Attention, $0$ est divisible par $4$.
2. Teste $n$ de $1$ à $20$. Montre que, à part $n = 1$, une solution est forcément un nombre premier.
3. Le nombre $4$ ne doit jamais être un reste. Si un nombre premier $p \geqslant 5$ divise $n - 4$, que vaut le reste de $n$ dans la division par $p$ ? Déduis-en que $n - 4$ est une puissance de $3$ quand $n \geqslant 11$.
4. Fais de même avec les restes $8$ et $9$ : les nombres $n - 8$ et $n - 9$ n'ont que de petits facteurs premiers.
5. Tu arriveras à des équations comme $5^y + 4 = 3^x$. Montre que $x$ est pair, puis factorise $3^x - 4$.

## Solution

**Le reste de la division.** Écrivons la division euclidienne de $n$ par $p$ : $n = qp + r$ avec $q$ entier et $0 \leqslant r \leqslant p - 1$. Alors $\dfrac{n}{p} = q + \dfrac{r}{p}$ avec $0 \leqslant \dfrac{r}{p} < 1$, donc $\left\lfloor \dfrac{n}{p} \right\rfloor = q$ et $n - \left\lfloor \dfrac{n}{p} \right\rfloor p = r$. **La condition porte sur le reste $r$ de la division de $n$ par chaque premier $p < n$** : ce reste ne doit être divisible par aucun carré $4, 9, 16, 25, \ldots$ En particulier il ne doit valoir ni $0$ (qui est divisible par $4$), ni $4$, ni $8$, ni $9$.

Disons qu'un entier $n$ est *bon* s'il vérifie la condition.

**Les petites valeurs.** Pour $n = 1$ et $n = 2$, il n'y a aucun premier $p < n$ : ils sont bons. Les restes de $3$ par $2$ ; de $5$ par $2, 3$ ; de $7$ par $2, 3, 5$ valent $1$ ; $1, 2$ ; $1, 1, 2$ : ils n'ont pas de facteur carré, donc $3$, $5$ et $7$ sont bons.

**Une solution $n \geqslant 3$ est un nombre premier.** Si $n \geqslant 3$ n'est pas premier, il a un diviseur premier $p < n$, et le reste de $n$ par $p$ vaut $0$, divisible par $4$. Donc $n$ n'est pas bon. Ainsi $4$, $6$, $8$, $9$, $10$ ne sont pas bons, et parmi les entiers jusqu'à $10$, les bons sont $1, 2, 3, 5, 7$.

Soit désormais $n \geqslant 11$ un entier bon. Il est premier, donc impair.

**Le nombre $n - 4$ est une puissance de $3$.** Soit $p$ un nombre premier qui divise $n - 4$. Comme $n$ est impair, $n - 4$ aussi, donc $p \neq 2$. Si $p \geqslant 5$, alors $p \leqslant n - 4 < n$ et $n = (n - 4) + 4$ avec $4 < p$ : le reste de $n$ par $p$ vaut $4$, divisible par le carré $4$, contradiction. Donc le seul facteur premier possible de $n - 4$ est $3$, et $n - 4 = 3^x$ avec $x \geqslant 2$ (car $n - 4 \geqslant 7$). En particulier $n$ a pour reste $1$ dans la division par $3$.

**Les facteurs premiers de $n - 8$ et $n - 9$.** De la même façon, si un premier $p \geqslant 11$ divisait $n - 8$, le reste de $n$ par $p$ vaudrait $8$, divisible par $4$ ; si un premier $p \geqslant 11$ divisait $n - 9$, le reste vaudrait $9$. Donc $n - 8$ et $n - 9$ n'ont pas d'autres facteurs premiers que $2$, $3$, $5$, $7$. De plus :

- $n - 8$ est impair, puisque $n$ l'est ;
- $n$ a pour reste $1$ par $3$, donc $n - 8$ et $n - 9$ ont pour restes $2$ et $1$ : $3$ ne divise aucun des deux ;
- $n - 8$ et $n - 9$ sont deux entiers consécutifs, donc aucun nombre premier ne divise les deux à la fois.

Ainsi $n - 8$ ne s'écrit qu'avec les facteurs $5$ et $7$. Trois cas se présentent.

**Cas 1 : $n - 8 = 5^y$.** Alors $5^y + 4 = n - 4 = 3^x$. Une puissance de $5$ a pour reste $1$ dans la division par $4$, donc $3^x$ aussi. Or $3^x$ a pour reste $1$ par $4$ quand $x$ est pair et $3$ quand $x$ est impair (car $9 = 8 + 1$). Donc $x = 2k$ est pair, et
$$5^y = 3^{2k} - 4 = (3^k - 2)(3^k + 2) .$$
Les deux facteurs sont des puissances de $5$ dont la différence vaut $4$ ; ils ne peuvent pas être tous deux multiples de $5$. Donc $3^k - 2 = 1$, $k = 1$, $x = 2$ et $n = 3^2 + 4 = 13$.

**Cas 2 : $n - 8 = 7^y$.** Alors $7^y + 4 = 3^x$, avec $y \geqslant 1$ (car $n - 8 \geqslant 3$). Les restes des puissances de $3$ dans la division par $7$ sont, pour $x = 0, 1, 2, 3, 4, 5$ :
$$1,\; 3,\; 2,\; 6,\; 4,\; 5,$$
puis ils recommencent, car $3^6 = 729 = 7 \times 104 + 1$. Comme $3^x$ doit avoir pour reste $4$, l'exposant $x$ est de la forme $6j + 4$ : il est pair. En écrivant $x = 2k$, on obtient $7^y = (3^k - 2)(3^k + 2)$, et comme au cas 1, $3^k - 2 = 1$, donc $3^k + 2 = 5$. Mais $5$ n'est pas une puissance de $7$ : contradiction.

**Cas 3 : $n - 8$ est divisible à la fois par $5$ et par $7$.** Alors ni $5$ ni $7$ ne divise $n - 9$, qui n'a donc que le facteur premier $2$ : $n - 9 = 2^y$, et
$$2^y + 5 = n - 4 = 3^x .$$
Comme $n \geqslant 11$, $y \geqslant 1$. Si $y = 1$, $3^x = 7$, impossible. Donc $y \geqslant 2$.

- Dans la division par $4$, $2^y + 5$ a pour reste $1$, donc $3^x$ aussi : $x$ est pair, $x = 2b$.
- Dans la division par $3$ ($x \geqslant 1$), $3^x$ a pour reste $0$, donc $2^y$ a le même reste que $-5$, c'est-à-dire $1$. Or les puissances de $2$ ont pour restes $1, 2, 1, 2, \ldots$ par $3$ ; donc $y$ est pair, $y = 2c$.

Alors $5 = 3^{2b} - 2^{2c} = (3^b - 2^c)(3^b + 2^c)$. Le second facteur est positif et plus grand que le premier, donc $3^b - 2^c = 1$ et $3^b + 2^c = 5$, ce qui donne $3^b = 3$, $2^c = 2$, puis $n = 3^2 + 4 = 13$. (Mais alors $n - 8 = 5$ n'est pas multiple de $7$ : ce cas ne donne rien de nouveau.)

**Vérification de $n = 13$.** Les restes de $13$ par $2, 3, 5, 7, 11$ valent $1, 1, 3, 6, 2$, et aucun n'est divisible par un carré autre que $1$. Donc $13$ est bon.

**Conclusion.** Les entiers cherchés sont exactement
$$n \in \{1, 2, 3, 5, 7, 13\} .$$

## Going further

Demandons seulement que les restes ne soient pas des multiples de $4$ (le reste $0$ reste interdit, mais $9$ devient permis). Un programme montre que la liste des solutions jusqu'à $3000$ ne change pas : c'est encore $1, 2, 3, 5, 7, 13$. Peux-tu le démontrer ? Les nombres $n - 4$, $n - 8$ et $n - 12$ joueront le rôle que jouaient ici $n - 4$, $n - 8$ et $n - 9$.
