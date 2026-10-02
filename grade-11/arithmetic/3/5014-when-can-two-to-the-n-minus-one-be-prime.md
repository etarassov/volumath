---
id: "5014"
title: "Quand 2ⁿ − 1 peut-il être premier ?"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [nombres-premiers, puissances, factorisation, somme-geometrique]
adapted_from: null
see_also: ["8324"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Primes! », David Patrick, San Diego Math Teachers' Circle, 2014"
  reference: "PatrickPrimes.pdf, problème 6 a) et note 6 (même question dans numbertheory.pdf, partie 1, problème 8 a) et b))"
  url: "https://mathcircles.org/activity/primes/"
  original_language: "en"
  local_copy: "sources/originals/namc/PatrickPrimes.pdf"
---

## Statement

Depuis des siècles, les mathématiciens cherchent des formules qui fabriquent des nombres
premiers. L'une des plus célèbres est la plus simple qu'on puisse imaginer :

$$M_n = 2^n - 1 .$$

1. Calculer $M_n$ pour $n$ allant de $2$ à $8$, et dire à chaque fois si le résultat est
   premier.
2. Démontrer que si $n$ n'est pas premier, alors $M_n$ n'est pas premier non plus.
3. La réciproque est-elle vraie ? Autrement dit, si $p$ est premier, $M_p$ est-il toujours
   premier ? On pourra examiner $p = 11$.

## Hints

1. Pour la question 2, si $n$ n'est pas premier, écris $n = ab$ avec $a \geqslant 2$ et
   $b \geqslant 2$, puis pose $x = 2^a$.
2. Rappelle-toi l'identité $x^b - 1 = (x - 1)(x^{b-1} + x^{b-2} + \cdots + x + 1)$, qui vient
   de la somme des termes d'une suite géométrique.
3. Cela fournit un diviseur de $M_n$. Vérifie bien qu'il est différent de $1$ et de $M_n$ : sans
   cela, on n'a rien prouvé.
4. Pour la question 3, calcule $2^{11} - 1$ et cherche-lui un diviseur. Il suffit de tester les
   nombres premiers jusqu'à la racine carrée.

## Solution

### 1. Les premières valeurs

| $n$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|
| $2^n - 1$ | $3$ | $7$ | $15$ | $31$ | $63$ | $127$ | $255$ |
| premier ? | oui | oui | non : $3 \times 5$ | oui | non : $7 \times 9$ | oui | non : $15 \times 17$ |

On voit immédiatement que les exposants qui échouent, $4$, $6$, $8$, sont exactement ceux qui
ne sont pas premiers. La question 2 explique pourquoi.

### 2. Si $n$ n'est pas premier, $2^n - 1$ non plus

Supposons $n$ non premier, avec $n \geqslant 2$. On peut alors écrire

$$n = ab \qquad \text{avec } a \geqslant 2 \text{ et } b \geqslant 2 .$$

Posons $x = 2^a$, de sorte que $2^n = 2^{ab} = (2^a)^b = x^b$. L'identité de la somme
géométrique donne

$$x^b - 1 = (x - 1)\bigl(x^{b-1} + x^{b-2} + \cdots + x + 1\bigr) .$$

(On peut la retrouver en développant le membre de droite : tout se télescope, il ne reste que
$x^b$ et $-1$.)

En revenant à $2$ :

$$2^n - 1 = (2^a - 1)\bigl(2^{a(b-1)} + 2^{a(b-2)} + \cdots + 2^a + 1\bigr) .$$

Le nombre $2^a - 1$ est donc un diviseur de $2^n - 1$. Reste à vérifier que c'est un diviseur
« utile », c'est-à-dire différent de $1$ et de $2^n - 1$ :

- comme $a \geqslant 2$, on a $2^a - 1 \geqslant 3 > 1$ ;
- comme $a < n$ (puisque $b \geqslant 2$), on a $2^a - 1 < 2^n - 1$.

Donc $2^n - 1$ admet un diviseur strictement compris entre $1$ et lui-même : **il n'est pas
premier**.

*Vérification sur le tableau.* Pour $n = 6 = 2 \times 3$, la formule donne le diviseur
$2^2 - 1 = 3$, et en effet $63 = 3 \times 21$. Pour $n = 8 = 2 \times 4$, elle donne
$2^2 - 1 = 3$, et $255 = 3 \times 85$ ; avec $8 = 4 \times 2$ elle donne aussi
$2^4 - 1 = 15$, et $255 = 15 \times 17$.

### 3. La réciproque est fausse

Prenons $p = 11$, qui est premier :

$$2^{11} - 1 = 2048 - 1 = 2047 .$$

Ce nombre est-il premier ? Comme $45^2 = 2025 < 2047 < 2116 = 46^2$, il suffit de tester les
nombres premiers jusqu'à $45$ : $2$, $3$, $5$, $7$, $11$, $13$, $17$, $19$, $23$, ...

- $2047$ est impair, la somme de ses chiffres vaut $13$ donc il n'est pas multiple de $3$, il
  ne finit ni par $0$ ni par $5$ ;
- $2047 = 7 \times 292 + 3$, $2047 = 11 \times 186 + 1$, $2047 = 13 \times 157 + 6$,
  $2047 = 17 \times 120 + 7$, $2047 = 19 \times 107 + 14$ ;
- $2047 = 23 \times 89$.

Donc

$$\boxed{2^{11} - 1 = 2047 = 23 \times 89 \text{ n'est pas premier,}}$$

alors que $11$ est premier. **La réciproque est fausse.**

**Conclusion.** Être premier est une condition *nécessaire* sur l'exposant, mais pas
*suffisante* : pour que $2^n - 1$ soit premier il faut que $n$ soit premier, mais cela ne
garantit rien.

## Going further

Les nombres premiers de la forme $2^p - 1$ s'appellent les **nombres premiers de Mersenne**, du
nom du père Marin Mersenne, qui en dressa une liste en 1644 — avec quelques erreurs, corrigées
seulement au XXe siècle.

Ils sont rares : parmi les $25$ exposants premiers inférieurs à $100$, seuls dix donnent un
nombre premier ($p = 2, 3, 5, 7, 13, 17, 19, 31, 61, 89$), et parmi les $168$ exposants premiers
inférieurs à $1000$, quatre de plus seulement.

Ce sont pourtant eux qui détiennent tous les records : les plus grands nombres premiers connus
sont des nombres de Mersenne, parce que la forme $2^p - 1$ permet un test de primalité
particulièrement rapide. On ne sait toujours pas s'il y en a une infinité.
