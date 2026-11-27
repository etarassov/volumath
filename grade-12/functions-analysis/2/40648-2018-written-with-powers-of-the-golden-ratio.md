---
id: "40648"
title: "Un algorithme pour écrire 2018 avec les puissances du nombre d'or"
grade: 12
theme: functions-analysis
difficulty: 2
duration_min: 35
tags: [nombre-d-or, logarithme, partie-entiere, algorithme, algorithme-glouton, ecriture-en-base, calculatrice]
adapted_from: null
see_also: ["40646", "40647"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2018, mathématiques, série S"
  reference: "cg-2018-s-sujet.pdf, problème III « Les nombres en or », partie B « Représentation en or pur », questions 3 a, 3 b et 3 c. Les résultats des questions 2 a et 2 b sont admis dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2018-s-sujet.pdf"
---

## Statement

On note $\varphi = \frac{1 + \sqrt{5}}{2} \approx \text{1,618}$ le *nombre d'or*, qui vérifie
$\varphi^2 = \varphi + 1$.

Un réel $x$ est dit *en or* s'il existe deux entiers naturels $p$ et $q$ et des chiffres
$a_p, \ldots, a_0, a_{-1}, \ldots, a_{-q}$, valant chacun $0$ ou $1$, tels que

$$x = a_p\varphi^p + \cdots + a_1\varphi + a_0 + a_{-1}\varphi^{-1} + \cdots + a_{-q}\varphi^{-q}.$$

On écrit alors $x \triangleright a_p \ldots a_0 , a_{-1} \ldots a_{-q}$ : c'est une
*représentation en or* de $x$. Par exemple, $\varphi^3 + \varphi^2 + 1 + \varphi^{-1} + \varphi^{-4}
\triangleright$ 1101,1001.

Une représentation est *en or pur* si elle ne contient jamais deux chiffres $1$ consécutifs.
Pour $x \neq 0$, la *teneur en or* d'une représentation est le plus grand exposant $n$ tel que
$a_n = 1$. Par exemple, la teneur de 1101,1001 est $3$, et celle de 0,0010 est $-3$.

On admet les deux résultats suivants :

- si $x$ a une représentation en or pur de teneur $n$, alors $\varphi^n \leqslant x < \varphi^{n+1}$ ;
- un réel a au plus une représentation en or pur.

Soit $x$ un réel non nul ayant une représentation en or pur.

1. Exprimer la teneur en or de cette représentation à l'aide des fonctions logarithme népérien et
   partie entière.
2. Écrire un algorithme (en langage naturel ou en Python) qui détermine la représentation en or
   pur de $x$.
3. Appliquer cet algorithme à $x = 2018$, à la calculatrice ou à l'ordinateur. (On admet que 2018
   a une représentation en or pur.)

## Hints

1. **Question 1.** Appliquer la fonction $\ln$, qui est croissante, à l'encadrement admis.
2. **Question 2.** La question 1 donne la position du premier chiffre $1$. Que représente
   $x - \varphi^n$, et quelle est sa représentation en or pur ?
3. **Question 3.** Les restes deviennent très petits : une erreur d'arrondi peut faire tomber
   $\frac{\ln r}{\ln \varphi}$ juste en dessous d'un entier. Vérifier à chaque étape que
   $\varphi^n \leqslant r < \varphi^{n+1}$.

## Solution

**1.** Le réel $x$ est non nul et somme de puissances de $\varphi$, donc $x > 0$. Soit $n$ la
teneur. On a $\varphi^n \leqslant x < \varphi^{n+1}$. La fonction $\ln$ est strictement croissante,
et $\ln(\varphi^n) = n \ln \varphi$, donc $n \ln \varphi \leqslant \ln x < (n+1)\ln\varphi$. Comme
$\varphi > 1$, $\ln \varphi > 0$, et en divisant :

$$n \leqslant \frac{\ln x}{\ln \varphi} < n + 1.$$

**Conclusion :** la teneur est $n = \left\lfloor \frac{\ln x}{\ln \varphi} \right\rfloor$, la
partie entière de $\frac{\ln x}{\ln \varphi}$.

**2.** Notons $j_1 > j_2 > \cdots > j_r$ les positions des chiffres $1$ dans la représentation en or
pur de $x$. D'après la question 1, $j_1 = \left\lfloor \frac{\ln x}{\ln \varphi} \right\rfloor$.
Le reste $x - \varphi^{j_1} = \varphi^{j_2} + \cdots + \varphi^{j_r}$ a une représentation en or pur
(celle de $x$ sans son premier $1$), de teneur $j_2$ ; la question 1 donne donc $j_2$, et ainsi de
suite. Après $r$ étapes, le reste vaut $0$. D'où l'algorithme « glouton » :

- au départ, $r \leftarrow x$ et la liste est vide ;
- tant que $r > 0$ : calculer $n = \left\lfloor \frac{\ln r}{\ln \varphi} \right\rfloor$, ajouter
  $n$ à la liste, puis faire $r \leftarrow r - \varphi^n$ ;
- à la fin, la liste contient les positions des chiffres $1$.

La représentation en or pur étant unique (résultat admis), c'est bien *la* représentation de $x$.

Sur une machine, les calculs sont approchés : le reste final n'est pas exactement $0$, et
$\frac{\ln r}{\ln \varphi}$ peut tomber juste en dessous de l'entier attendu. On s'arrête donc quand
le reste est très petit, et on corrige $n$ si $\varphi^{n+1} \leqslant r$, à une tolérance près.
En Python :

```python
from math import log, floor, sqrt

phi = (1 + sqrt(5)) / 2

def or_pur(x):
    exposants = []
    while x > 1e-9:
        n = floor(log(x) / log(phi))
        if phi**(n + 1) <= x + 1e-9:   # correction d'arrondi
            n = n + 1
        exposants.append(n)
        x = x - phi**n
    return exposants

print(or_pur(2018))
```

**3.** Les étapes (valeurs arrondies) :

| reste $r$ | $\frac{\ln r}{\ln \varphi}$ | $n$ | $\varphi^n$ |
|---|---|---|---|
| $2018$ | $\text{15,814}$ | $15$ | $\text{1364,0007}$ |
| $\text{653,9993}$ | $\text{13,472}$ | $13$ | $\text{521,0019}$ |
| $\text{132,9973}$ | $\text{10,163}$ | $10$ | $\text{122,9919}$ |
| $\text{10,0055}$ | $\text{4,786}$ | $4$ | $\text{6,8541}$ |
| $\text{3,1514}$ | $\text{2,385}$ | $2$ | $\text{2,6180}$ |
| $\text{0,5333}$ | $\text{−1,306}$ | $-2$ | $\text{0,3820}$ |
| $\text{0,1514}$ | $\text{−3,923}$ | $-4$ | $\text{0,1459}$ |
| $\text{0,005478}$ | $\text{−10,821}$ | $-11$ | $\text{0,005025}$ |
| $\text{0,000453104}$ | $\text{−16,000}$ | $-16$ | $\text{0,000453104}$ |

Après la dernière étape, le reste est nul (aux arrondis près). À la dernière ligne, une
machine peut trouver pour $\frac{\ln r}{\ln\varphi}$ une valeur très légèrement inférieure à $-16$,
dont la partie entière est $-17$ (c'est le cas en Python sans la correction) : c'est l'erreur d'arrondi dont parle la question 2, et le test
$\varphi^{-16} \leqslant r$ la corrige.

**Conclusion :**

$$2018 = \varphi^{15} + \varphi^{13} + \varphi^{10} + \varphi^{4} + \varphi^{2} + \varphi^{-2} + \varphi^{-4} + \varphi^{-11} + \varphi^{-16},$$

soit $2018 \triangleright$ 1010010000010100,0101000000100001.

*Vérification exacte (pour le meneur).* Le nombre $\psi = 1 - \varphi = -\frac{1}{\varphi}$ est
l'autre solution de $x^2 = x + 1$, donc les nombres $L_k = \varphi^k + \psi^k$ vérifient
$L_{k+1} = L_k + L_{k-1}$, avec $L_0 = 2$ et $L_1 = 1$ : ce sont des entiers (les nombres de
Lucas), et $L_2 = 3$, $L_4 = 7$, $L_{10} = 123$, $L_{13} = 521$, $L_{15} = 1364$. Comme
$\psi^k = (-1)^k\varphi^{-k}$ :

$$(\varphi^{15} - \varphi^{-15}) + (\varphi^{13} - \varphi^{-13}) + (\varphi^{10} + \varphi^{-10}) + (\varphi^4 + \varphi^{-4}) + (\varphi^2 + \varphi^{-2})$$

vaut $L_{15} + L_{13} + L_{10} + L_4 + L_2 = 1364 + 521 + 123 + 7 + 3 = 2018$.

Il reste à voir que $\varphi^{-15} + \varphi^{-13} - \varphi^{-10} + \varphi^{-11} + \varphi^{-16} = 0$.
Avec $\varphi^{k-1} + \varphi^{k-2} = \varphi^k$ : $\varphi^{-15} + \varphi^{-16} = \varphi^{-14}$, puis
$\varphi^{-14} + \varphi^{-13} = \varphi^{-12}$, puis $\varphi^{-12} + \varphi^{-11} = \varphi^{-10}$,
et $\varphi^{-10} - \varphi^{-10} = 0$.

**Bilan.** La teneur d'une représentation en or pur de $x$ est
$\left\lfloor \frac{\ln x}{\ln \varphi} \right\rfloor$. En retirant à chaque étape la plus grande
puissance de $\varphi$ inférieure ou égale au reste, on trouve un à un les chiffres $1$ de cette
représentation ; pour $2018$, on obtient neuf puissances de $\varphi$, d'exposants $15$, $13$, $10$,
$4$, $2$, $-2$, $-4$, $-11$ et $-16$.

## Going further

- Appliquer l'algorithme à $7$, $18$ et $47$. Que remarquez-vous ? Expliquer le résultat à l'aide
  des nombres de Lucas $L_{2k} = \varphi^{2k} + \varphi^{-2k}$.
- Pourquoi tout entier a-t-il une représentation en or pur ? C'est l'objet de l'exercice 40646 ;
  l'encadrement et l'unicité admis ici sont démontrés dans l'exercice 40647.
