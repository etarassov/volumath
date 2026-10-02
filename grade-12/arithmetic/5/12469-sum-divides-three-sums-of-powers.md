---
id: "12469"
title: "a + b + c divise trois sommes de puissances"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [maths-expertes, congruences, divisibilite, nombres-premiers, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2020"
  reference: "2020-11_Enonce-Test-Fevrier-2020.pdf, exercice 6 (groupe Senior) ; corrigé 2020-03_Correction-Web.pdf (le corrigé divise modulo p et utilise l'indicatrice d'Euler ; solution réécrite sans inverse modulo p)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Fevrier-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Fevrier-2020.pdf"
---

## Statement

Trouver les triplets $(a, b, c)$ d'entiers naturels non nuls tels que $\mathrm{PGCD}(a, b, c) = 1$ et
que $a + b + c$ divise chacun des entiers
$$a^{12} + b^{12} + c^{12}, \qquad a^{23} + b^{23} + c^{23} \qquad \text{et} \qquad a^{11004} + b^{11004} + c^{11004}.$$

## Hints

1. Note $S_k = a^k + b^k + c^k$. Commence par la puissance de $2$ dans $S_1$ : si $S_1$ est pair,
   combien des nombres $a$, $b$, $c$ sont impairs ? Regarde alors $S_{12}$ modulo $4$.
2. Soit $p$ un nombre premier impair qui divise $S_1$. Montre que $p$ ne divise aucun des nombres
   $a$, $b$, $c$.
3. Modulo $p$, on a $a \equiv -(b + c)$, $a^{12} \equiv -(b^{12} + c^{12})$ et
   $a^{23} \equiv -(b^{23} + c^{23})$. Calcule $a^{24}$ de deux façons : comme $(a^{12})^2$ et comme
   $a \times a^{23}$. Factorise la différence.
4. Tu dois obtenir $a^{11} \equiv b^{11} \equiv c^{11} \pmod p$. Déduis-en que $p$ divise $S_4$,
   puis élève $a^4 \equiv -(b^4 + c^4)$ au cube.
5. À la fin, tu dois trouver que $S_1$ divise $6$.

## Solution

Notons $S_k = a^k + b^k + c^k$ pour tout entier $k \geqslant 0$, de sorte que $S_1 = a + b + c$.
Soit $(a, b, c)$ un triplet qui convient.

On utilisera souvent le **lemme d'Euclide** : si un nombre premier $p$ divise un produit $xy$, alors
$p$ divise $x$ ou $p$ divise $y$. En particulier, si $p$ divise $x^n$, alors $p$ divise $x$.

### Étape 1 : $4$ ne divise pas $S_1$

Si $S_1$ est impair, c'est clair. Supposons $S_1$ pair. Le nombre d'entiers impairs parmi $a$, $b$,
$c$ est alors pair, donc égal à $0$ ou à $2$. Il ne vaut pas $0$, car $a$, $b$, $c$ ne sont pas tous
pairs puisque leur $\mathrm{PGCD}$ vaut $1$. Il y a donc exactement deux nombres impairs et un nombre
pair.

Si $x = 2q + 1$ est impair, alors $x^2 = 4q^2 + 4q + 1 \equiv 1 \pmod 4$, donc
$x^{12} = (x^2)^6 \equiv 1 \pmod 4$. Si $x$ est pair, $x^{12} \equiv 0 \pmod 4$. Par conséquent
$S_{12} \equiv 1 + 1 + 0 = 2 \pmod 4$, et $4$ ne divise pas $S_{12}$. Comme $S_1$ divise $S_{12}$,
le nombre $4$ ne divise pas $S_1$.

### Étape 2 : un nombre premier impair qui divise $S_1$ ne divise ni $a$, ni $b$, ni $c$

Soit $p$ un nombre premier impair qui divise $S_1$. Supposons que $p$ divise $c$.

- Si $p$ divisait aussi $a$, il diviserait $b = S_1 - a - c$, et donc les trois nombres, ce qui est
  impossible car leur $\mathrm{PGCD}$ vaut $1$. Donc $p$ ne divise pas $a$.
- Comme $p$ divise $S_1$ et $c$, on a $b \equiv -a \pmod p$, donc $b^{12} \equiv a^{12} \pmod p$, et
  $$S_{12} \equiv a^{12} + a^{12} + 0 = 2a^{12} \pmod p.$$
  Or $p$ divise $S_{12}$, donc $p$ divise $2a^{12}$. Comme $p$ est impair, il ne divise pas $2$, et
  le lemme d'Euclide donne que $p$ divise $a$. C'est une contradiction.

Donc $p$ ne divise pas $c$. Les trois nombres jouent le même rôle, donc de même $p$ ne divise ni
$a$ ni $b$.

### Étape 3 : $a^{11} \equiv b^{11} \equiv c^{11} \pmod p$

Gardons le même nombre premier impair $p$. Toutes les congruences de cette étape sont modulo $p$.
Comme $p$ divise $S_1$, $S_{12}$ et $S_{23}$, on a
$$a \equiv -(b + c), \qquad a^{12} \equiv -(b^{12} + c^{12}), \qquad a^{23} \equiv -(b^{23} + c^{23}).$$
Calculons $a^{24}$ de deux façons :
$$a^{24} = (a^{12})^2 \equiv (b^{12} + c^{12})^2 = b^{24} + 2b^{12}c^{12} + c^{24},$$
$$a^{24} = a \times a^{23} \equiv (b + c)(b^{23} + c^{23}) = b^{24} + bc^{23} + b^{23}c + c^{24}.$$
En faisant la différence,
$$0 \equiv bc^{23} + b^{23}c - 2b^{12}c^{12} = bc\,(b^{22} - 2b^{11}c^{11} + c^{22}) = bc\,(b^{11} - c^{11})^2.$$
D'après l'étape 2, $p$ ne divise ni $b$ ni $c$. Le lemme d'Euclide donne donc que $p$ divise
$(b^{11} - c^{11})^2$, puis que $p$ divise $b^{11} - c^{11}$ : on a $b^{11} \equiv c^{11}$.

En échangeant les rôles de $a$ et de $b$, on obtient de même $a^{11} \equiv c^{11}$.

### Étape 4 : $p$ divise $S_4$

Pour tout entier $k \geqslant 0$, d'après l'étape 3,
$$S_{k+11} = a^k a^{11} + b^k b^{11} + c^k c^{11} \equiv c^{11}(a^k + b^k + c^k) = c^{11} S_k \pmod p.$$
Comme $11004 = 11 \times 1000 + 4$, en appliquant cette relation $1000$ fois, on obtient
$$S_{11004} \equiv c^{11000}\,S_4 \pmod p.$$
Comme $p$ divise $S_{11004}$ mais pas $c^{11000}$ (étape 2 et lemme d'Euclide), $p$ divise $S_4$.

### Étape 5 : $p = 3$

Modulo $p$, on a maintenant $a^4 \equiv -(b^4 + c^4)$. En élevant au cube,
$$a^{12} \equiv -(b^4 + c^4)^3 = -(b^{12} + c^{12}) - 3b^4c^4\,(b^4 + c^4) \pmod p.$$
Mais on sait aussi que $a^{12} \equiv -(b^{12} + c^{12})$. Donc $3b^4c^4\,(b^4 + c^4) \equiv 0$, et
comme $b^4 + c^4 \equiv -a^4$, on obtient que $p$ divise $3a^4b^4c^4$. Le nombre $p$ ne divise ni
$a$, ni $b$, ni $c$, donc, par le lemme d'Euclide, $p$ divise $3$ : **$p = 3$**.

### Étape 6 : $9$ ne divise pas $S_1$

Supposons que $3$ divise $S_1$. D'après l'étape 2, $3$ ne divise ni $a$, ni $b$, ni $c$.

Soit $x$ un entier qui n'est pas multiple de $3$. On peut écrire $x = 3q + 1$ ou $x = 3q - 1$, et
$$(3q + 1)^3 = 27q^3 + 27q^2 + 9q + 1, \qquad (3q - 1)^3 = 27q^3 - 27q^2 + 9q - 1.$$
Donc $x^3 \equiv 1$ ou $x^3 \equiv -1 \pmod 9$. Dans les deux cas $x^6 \equiv 1 \pmod 9$, puis
$x^{12} \equiv 1 \pmod 9$.

Ainsi $S_{12} \equiv 1 + 1 + 1 = 3 \pmod 9$, et $9$ ne divise pas $S_{12}$. Comme $S_1$ divise
$S_{12}$, le nombre $9$ ne divise pas $S_1$.

### Étape 7 : conclusion

D'après les étapes 2 à 5, le seul nombre premier impair qui peut diviser $S_1$ est $3$. D'après les
étapes 1 et 6, $4$ et $9$ ne divisent pas $S_1$. Donc $S_1$ divise $2 \times 3 = 6$, et
$S_1 \in \{1, 2, 3, 6\}$. Comme $a$, $b$, $c$ sont au moins égaux à $1$, on a $S_1 \geqslant 3$.

- **Si $S_1 = 3$**, alors $a = b = c = 1$.
- **Si $S_1 = 6$**, alors, à l'ordre près, $(a, b, c)$ est $(1, 1, 4)$, $(1, 2, 3)$ ou $(2, 2, 2)$.
  Le triplet $(2, 2, 2)$ est exclu car son $\mathrm{PGCD}$ vaut $2$. Le triplet $(1, 2, 3)$ est
  exclu par l'étape 2, car $3$ divise $S_1 = 6$ et divise aussi $3$. Il reste $(1, 1, 4)$.

**Vérification.** Pour $(1, 1, 1)$, on a $S_k = 3 = S_1$ pour tout $k$. Pour $(1, 1, 4)$, on a
$S_k = 2 + 4^k$, qui est pair, et comme $4 \equiv 1 \pmod 3$, on a $S_k \equiv 2 + 1 \equiv 0 \pmod 3$.
Donc $6$ divise $S_k$ pour tout $k \geqslant 1$. Dans les deux cas, le $\mathrm{PGCD}$ vaut $1$.

**Les triplets cherchés sont $(1, 1, 1)$, $(1, 1, 4)$, $(1, 4, 1)$ et $(4, 1, 1)$.**

## Going further

Vérifier que le triplet $(1, 4, 18)$ satisfait les deux premières conditions, mais pas la
troisième. À quel endroit de la solution la condition sur l'exposant $11004$ a-t-elle servi ?
