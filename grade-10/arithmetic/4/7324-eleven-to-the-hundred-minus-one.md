---
id: "7324"
title: "11¹⁰⁰ − 1 se termine par trois zéros"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, factorisation, somme-geometrique, congruences]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, arithmétique, exercice 43"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Montrer que $11^{100} - 1$ est divisible par $1000$.

## Hints

1. Il existe une factorisation très utile : pour tout entier $a$ et tout $n \geqslant 1$,
$$a^{n} - 1 = (a - 1)\left(a^{n-1} + a^{n-2} + \cdots + a + 1\right).$$
Applique-la avec $a = 11$ et $n = 100$.
2. Le facteur $a - 1$ vaut $10$. Il reste donc à montrer que la grande somme est un multiple de $100$.
3. Pour cela, il suffit de connaître chaque terme $11^k$ **modulo $100$**, c'est-à-dire ses deux derniers chiffres. Calcule $11^0$, $11^1$, $11^2$, $11^3$, $11^4$. Que remarques-tu ?
4. Montre que $11^k \equiv 10k + 1 \pmod{100}$, par récurrence.
5. Il ne reste plus qu'à additionner $10k + 1$ pour $k$ allant de $0$ à $99$.

## Solution

**Étape 1 : on factorise.**

Pour tout entier $a$ et tout entier $n \geqslant 1$, on a l'identité
$$a^{n} - 1 = (a - 1)\left(a^{n-1} + a^{n-2} + \cdots + a + 1\right)$$
(en développant le membre de droite, tout se télescope).

Avec $a = 11$ et $n = 100$ :
$$11^{100} - 1 = 10 \times S, \qquad \text{où} \qquad S = 11^{99} + 11^{98} + \cdots + 11 + 1 .$$

Comme le facteur $10$ est déjà là, il suffit de montrer que $S$ est un multiple de $100$.

**Étape 2 : les deux derniers chiffres de $11^k$.**

Calculons les premières puissances de $11$ :
$$11^0 = 1, \quad 11^1 = 11, \quad 11^2 = 121, \quad 11^3 = 1331, \quad 11^4 = 14\,641 .$$

Leurs deux derniers chiffres sont $01$, $11$, $21$, $31$, $41$ : on avance de $10$ à chaque fois. Cela suggère
$$11^k \equiv 10k + 1 \pmod{100} .$$

*Démonstration par récurrence.* C'est vrai pour $k = 0$, car $11^0 = 1$. Supposons-le vrai pour un certain $k$. Alors
$$11^{k+1} = 11 \times 11^{k} \equiv 11 \times (10k+1) = 110k + 11 = 100k + 10k + 11 \equiv 10(k+1) + 1 \pmod{100},$$
car $100k$ est un multiple de $100$. La propriété est donc vraie pour tout $k \geqslant 0$.

**Étape 3 : on additionne.**

$$S = \sum_{k=0}^{99} 11^{k} \equiv \sum_{k=0}^{99} (10k + 1) = 10 \times (0 + 1 + 2 + \cdots + 99) + 100 \pmod{100}.$$

Or
$$0 + 1 + 2 + \cdots + 99 = \frac{99 \times 100}{2} = 4950 ,$$
donc
$$S \equiv 10 \times 4950 + 100 = 49\,500 + 100 = 49\,600 \pmod{100}.$$

Et $49\,600 = 100 \times 496$ est un multiple de $100$. Donc $S \equiv 0 \pmod{100}$.

**Conclusion.**

$S$ est un multiple de $100$, donc $11^{100} - 1 = 10 S$ est un multiple de $1000$.

**Une autre route.** Si l'on connaît la formule du binôme, on peut écrire directement
$$11^{100} = (1 + 10)^{100} = 1 + \binom{100}{1}10 + \binom{100}{2}10^2 + \binom{100}{3}10^3 + \cdots$$
Tous les termes à partir de $10^3$ sont des multiples de $1000$. Il reste
$$11^{100} - 1 \equiv 100 \times 10 + 4950 \times 100 = 1000 + 495\,000 \pmod{1000},$$
et ces deux nombres sont bien des multiples de $1000$.

## Going further

1. $11^{100} - 1$ est-il divisible par $10\,000$ ? Reprends le calcul du binôme avec un terme de plus.
2. Quel est le plus petit entier $n > 0$ tel que $11^{n} - 1$ soit divisible par $1000$ ?
3. Montre que $11^{k} \equiv 100\,\dfrac{k(k-1)}{2} + 10k + 1 \pmod{1000}$, et retrouve le résultat.
