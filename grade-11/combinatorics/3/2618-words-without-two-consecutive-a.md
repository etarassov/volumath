---
id: "2618"
title: "Des mots sans deux A de suite"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, suite-recurrente, fibonacci, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I Circle, Introduction to Sequences"
  reference: "Handout-662-771.pdf, exercice 4"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-662-771.pdf"
---

## Statement

On écrit des mots en n'utilisant que les deux lettres **A** et **B**. Un mot de longueur $n$ est donc une suite de $n$ lettres, chacune valant A ou B ; les mots n'ont pas besoin de vouloir dire quelque chose.

On appelle **mot sage** un mot qui ne contient jamais deux A consécutifs. Par exemple `BABAB` est sage, mais `BAABB` ne l'est pas.

Soit $u_n$ le nombre de mots sages de longueur $n$.

1. Calculer $u_1$, $u_2$ et $u_3$ à la main.
2. Montrer que pour tout $n \geq 1$, $\ u_{n+2} = u_{n+1} + u_n$.
3. En déduire $u_{10}$.

## Hints

1. Pour $n = 3$, les huit mots possibles tiennent sur une ligne : écris-les tous et barre ceux qui contiennent `AA`.
2. Pour la relation de récurrence, regarde la **dernière lettre** d'un mot sage de longueur $n+2$ et sépare en deux cas.
3. Si le mot se termine par B, que peut-on dire des $n+1$ premières lettres ? Et si le mot se termine par A, que vaut forcément l'avant-dernière lettre ?
4. Vérifie que les deux cas ne se recouvrent pas, et que tout mot sage de longueur $n+2$ tombe bien dans l'un des deux.

## Solution

**1. Les premiers termes.**

*Longueur $1$ :* les deux mots `A` et `B` sont sages, donc $u_1 = 2$.

*Longueur $2$ :* les quatre mots sont `AA`, `AB`, `BA`, `BB`. Seul `AA` est interdit, donc $u_2 = 3$.

*Longueur $3$ :* les huit mots sont
$$\texttt{AAA}, \ \texttt{AAB}, \ \texttt{ABA}, \ \texttt{ABB}, \ \texttt{BAA}, \ \texttt{BAB}, \ \texttt{BBA}, \ \texttt{BBB}.$$
Les mots `AAA`, `AAB` et `BAA` contiennent `AA` et sont éliminés. Il en reste cinq, donc $u_3 = 5$.

**2. La relation de récurrence.**

Soit $n \geq 1$. Classons les mots sages de longueur $n+2$ d'après leur **dernière lettre**. Ces deux cas sont incompatibles et couvrent tout.

**Cas 1 : le mot se termine par B.**

Un mot sage de longueur $n+2$ finissant par B s'obtient en prenant un mot de longueur $n+1$ et en lui ajoutant un B à la fin. Comme la lettre ajoutée est un B, elle ne peut créer aucune paire `AA`. Le mot obtenu est donc sage si et seulement si le mot de départ l'était.

Il y a donc exactement $u_{n+1}$ mots sages de ce type.

**Cas 2 : le mot se termine par A.**

L'avant-dernière lettre ne peut pas être un A, sinon le mot contiendrait `AA`. Elle vaut donc forcément B : le mot se termine par `BA`.

Un tel mot s'obtient en prenant un mot de longueur $n$ et en lui ajoutant `BA` à la fin. Là encore, les deux lettres ajoutées ne créent pas de paire `AA` : la seule nouvelle paire formée avec l'avant est « dernière lettre du mot de départ suivie de B », qui ne peut pas être `AA`.

Il y a donc exactement $u_n$ mots sages de ce type.

**Conclusion.** En additionnant les deux cas :
$$\boxed{u_{n+2} = u_{n+1} + u_n \quad \text{pour tout } n \geq 1.}$$

**3. La valeur de $u_{10}$.**

On applique la relation à partir de $u_1 = 2$ et $u_2 = 3$ :

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|
| $u_n$ | $2$ | $3$ | $5$ | $8$ | $13$ | $21$ | $34$ | $55$ | $89$ | $144$ |

$$\boxed{u_{10} = 144 .}$$

On reconnaît au passage la **suite de Fibonacci**, dans laquelle chaque terme est la somme des deux précédents.

## Going further

Une machine confirme ces valeurs : en énumérant les $2^{10} = 1024$ mots de longueur $10$ et en éliminant ceux qui contiennent `AA`, il en reste bien $144$.

La même méthode compte bien d'autres choses. Par exemple, le nombre de façons d'écrire $n$ comme somme ordonnée de $1$ et de $2$ (avec $3 = 1+1+1 = 2+1 = 1+2$, soit trois façons) obéit à la même relation de récurrence, pour la même raison : on regarde le dernier terme de la somme et on sépare en deux cas.
