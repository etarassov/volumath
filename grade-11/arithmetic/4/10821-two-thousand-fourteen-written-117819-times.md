---
id: "10821"
title: "2014 écrit 117 819 fois"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [divisibilite, congruences, restes, somme-geometrique, decomposition-en-facteurs-premiers, ecriture-decimale]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2014-2015-envoi-3.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2014-2015-envoi-3-solutions.pdf (le corrigé utilise le théorème d'Euler, remplacé ici par un calcul de restes à la main)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-3.pdf"
---

## Statement

On écrit les quatre chiffres $2014$ les uns à la suite des autres, $117\,819$ fois de suite, ce qui donne un très grand nombre $201420142014\ldots2014$. On multiplie ce nombre par $4$, et on appelle $n$ le résultat :

$$n = 4 \times 201420142014\ldots2014 .$$

Montrer que $2014^3$ divise $n$.

## Hints

1. Pose $x = 10^4$ et $N = 117\,819$. Écris le grand nombre $2014\ldots2014$ sous la forme $2014 \times \left(1 + x + x^2 + \cdots + x^{N-1}\right)$.
2. Décompose $2014$ et $N$ en facteurs premiers. Montre qu'il suffit de prouver que $19^2$ et $53^2$ divisent $R = 1 + x + \cdots + x^{N-1}$.
3. Montre que si un entier $p \geqslant 2$ divise $y - 1$, alors $p^2$ divise $y^p - 1$.
4. Calcule les restes des puissances de $x$ dans la division par $19$, puis par $53$. Tu dois trouver $x^9 \equiv 1 \pmod{19}$ et $x^{13} \equiv 1 \pmod{53}$.

## Solution

### Un rappel sur les restes

On écrit $u \equiv v \pmod k$, et on lit « $u$ est congru à $v$ modulo $k$ », quand $u - v$ est un multiple de $k$. On peut ajouter et multiplier ces relations comme des égalités. En particulier, $u \equiv v$ donne $u^j \equiv v^j \pmod k$ pour tout $j \geqslant 1$. Pour calculer le reste d'une puissance, on peut donc remplacer à chaque étape un nombre par son reste.

### Étape 1 : on écrit le nombre autrement

Posons $x = 10^4 = 10\,000$ et $N = 117\,819$. Multiplier par $x$ décale l'écriture de quatre chiffres vers la gauche. Par exemple $20142014 = 2014 \times x + 2014 = 2014\,(1 + x)$. De la même façon,
$$201420142014\ldots2014 = 2014 \times R, \qquad \text{avec } R = 1 + x + x^2 + \cdots + x^{N-1} .$$
Donc $n = 4 \times 2014 \times R$.

### Étape 2 : ce qu'il reste à montrer

On a $2014 = 2 \times 19 \times 53$, donc
$$2014^3 = 2^3 \times 19^3 \times 53^3 \qquad \text{et} \qquad n = 4 \times 2014 \times R = 2^3 \times 19 \times 53 \times R .$$
Il suffit donc de montrer que **$19^2 \times 53^2$ divise $R$**. Comme $19^2$ et $53^2$ n'ont aucun facteur premier commun, il suffit de montrer que $19^2$ divise $R$ et que $53^2$ divise $R$.

On utilise la **somme géométrique** : pour tout entier $y$ et tout $k \geqslant 1$,
$$y^k - 1 = (y - 1)\left(1 + y + \cdots + y^{k-1}\right) .$$
Avec $y = x$ et $k = N$, cela donne $x^N - 1 = (x - 1) \times R = 9999 \times R$. Or $9999 = 3^2 \times 11 \times 101$ n'est divisible ni par $19$ ni par $53$. Si $19^2$ divise $9999 \times R$, alors, en regardant les décompositions en facteurs premiers, les deux facteurs $19$ viennent de $R$, donc $19^2$ divise $R$. De même pour $53$. Il suffit donc de montrer :
$$x^N \equiv 1 \pmod{19^2} \qquad \text{et} \qquad x^N \equiv 1 \pmod{53^2} .$$

Enfin, notons que $N = 117\,819 = 3^2 \times 13 \times 19 \times 53$.

### Étape 3 : un lemme

**Lemme.** Soit $p \geqslant 2$ un entier. Si $p$ divise $y - 1$, alors $p^2$ divise $y^p - 1$.

*Preuve.* D'après la somme géométrique, $y^p - 1 = (y - 1)\left(1 + y + \cdots + y^{p-1}\right)$. Le premier facteur est un multiple de $p$. Pour le second, $y \equiv 1 \pmod p$ donne $y^i \equiv 1$ pour tout $i$, donc
$$1 + y + \cdots + y^{p-1} \equiv \underbrace{1 + 1 + \cdots + 1}_{p \text{ termes}} = p \equiv 0 \pmod p .$$
Le produit de deux multiples de $p$ est un multiple de $p^2$.

### Étape 4 : modulo $19^2$

On a $10\,000 = 19 \times 526 + 6$, donc $x \equiv 6 \pmod{19}$. On calcule les restes des puissances de $6$ dans la division par $19$, en multipliant chaque fois par $6$ :

| $j$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|
| reste de $x^j$ | $6$ | $17$ | $7$ | $4$ | $5$ | $11$ | $9$ | $16$ | $1$ |

Par exemple $17 \times 6 = 102 = 5 \times 19 + 7$. Ainsi $x^9 \equiv 1 \pmod{19}$.

Le lemme, appliqué avec $y = x^9$ et $p = 19$, donne $x^{9 \times 19} \equiv 1 \pmod{19^2}$, c'est-à-dire $x^{171} \equiv 1 \pmod{19^2}$. Or $N = 171 \times 689$, donc
$$x^N = \left(x^{171}\right)^{689} \equiv 1^{689} = 1 \pmod{19^2} .$$

### Étape 5 : modulo $53^2$

On a $10\,000 = 53 \times 188 + 36$, donc $x \equiv 36 \pmod{53}$. On calcule en élevant au carré :
$$x^2 \equiv 36^2 = 1296 = 53 \times 24 + 24 \equiv 24, \qquad x^4 \equiv 24^2 = 576 = 53 \times 10 + 46 \equiv -7,$$
$$x^8 \equiv (-7)^2 = 49 \equiv -4, \qquad x^{12} = x^8 \times x^4 \equiv (-4) \times (-7) = 28 \pmod{53},$$
et enfin
$$x^{13} = x^{12} \times x \equiv 28 \times 36 = 1008 = 53 \times 19 + 1 \equiv 1 \pmod{53} .$$

Le lemme, appliqué avec $y = x^{13}$ et $p = 53$, donne $x^{13 \times 53} = x^{689} \equiv 1 \pmod{53^2}$. Or $N = 689 \times 171$, donc
$$x^N = \left(x^{689}\right)^{171} \equiv 1 \pmod{53^2} .$$

### Conclusion

On a montré que $x^N - 1$ est divisible par $19^2$ et par $53^2$. D'après l'étape 2, $19^2 \times 53^2$ divise $R$, et donc **$2014^3$ divise $n = 2^3 \times 19 \times 53 \times R$.**

## Going further

1. Pourquoi a-t-on multiplié par $4$ ? Montre que $2014^3$ ne divise pas le nombre $201420142014\ldots2014$ lui-même. *Indication : $R$ est-il pair ou impair ?*
2. On peut vérifier à l'ordinateur que $117\,819$ est le plus petit nombre de répétitions qui marche. Montre au moins que $19^2$ ne divise pas $1 + x + \cdots + x^{8}$, alors que $19$ le divise.
