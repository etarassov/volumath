---
id: "0555"
title: "Un carré parfait peut-il finir par 4444 ?"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [carre-parfait, restes, parite, demonstration, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 11 «В целых числах», задача 6"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

On calcule facilement que

$$12^2 = 144 \qquad \text{et} \qquad 38^2 = 1444.$$

Le premier carré se termine par deux $4$, le second par trois $4$.

Existe-t-il un carré parfait qui se termine par **quatre** $4$, c'est-à-dire dont les quatre derniers chiffres sont $4444$ ?

*(Un carré parfait est le carré $n^2$ d'un entier naturel $n$.)*

## Hints

1. On raisonne par l'absurde : on suppose qu'un tel carré existe et on cherche une contradiction.
2. Dire que $n^2$ se termine par $4444$, c'est dire que $n^2 - 4444$ est un multiple de $10\,000$. Écrire $n^2 = 10\,000\,k + 4444$.
3. Le nombre $n^2$ est pair, donc $n$ est pair. Poser $n = 2p$ et simplifier l'égalité par $4$.
4. Quels restes un carré peut-il laisser dans la division par $4$ ? Traiter séparément le cas où l'entier est pair et celui où il est impair.

## Solution

**L'idée : raisonner par l'absurde, et regarder les restes dans la division par 4.**

Supposons qu'il existe un entier naturel $n$ tel que $n^2$ se termine par $4444$.

**Étape 1 : traduire « se termine par 4444 ».**

Les quatre derniers chiffres de $n^2$ sont $4444$. Cela signifie exactement que $n^2 - 4444$ est un multiple de $10\,000$, c'est-à-dire qu'il existe un entier naturel $k$ tel que

$$n^2 = 10\,000\,k + 4444.$$

**Étape 2 : $n$ est pair.**

Le membre de droite est pair, donc $n^2$ est pair, donc $n$ est pair (si $n$ était impair, $n^2$ serait impair). Écrivons $n = 2p$ avec $p$ entier naturel. L'égalité devient

$$4p^2 = 10\,000\,k + 4444.$$

Les trois nombres $4p^2$, $10\,000\,k$ et $4444$ sont tous divisibles par $4$. Divisons toute l'égalité par $4$ :

$$p^2 = 2500\,k + 1111.$$

**Étape 3 : le reste du membre de droite dans la division par 4.**

Regardons le reste de $2500\,k + 1111$ dans la division par $4$ :

- $2500 = 4 \times 625$, donc $2500\,k$ est un multiple de $4$ ;
- $1111 = 4 \times 277 + 3$.

Donc

$$p^2 = 4\,(625k + 277) + 3 :$$

le nombre $p^2$ laisse le reste $\mathbf{3}$ dans la division par $4$.

**Étape 4 : mais un carré ne laisse jamais le reste 3.**

Regardons tous les carrés, selon la parité de $p$ :

- si $p$ est pair, $p = 2m$, alors $p^2 = 4m^2$ : le reste est $0$ ;
- si $p$ est impair, $p = 2m + 1$, alors
  $$p^2 = 4m^2 + 4m + 1 = 4\,(m^2 + m) + 1 :$$
  le reste est $1$.

Un carré parfait laisse donc toujours le reste $0$ ou $1$ dans la division par $4$. Jamais $3$.

**Conclusion.**

L'étape 3 et l'étape 4 se contredisent. L'hypothèse de départ est donc fausse :

**aucun carré parfait ne se termine par $4444$.**

C'est d'ailleurs pour cela que la suite $144$, $1444$ s'arrête là : on peut obtenir deux $4$, puis trois $4$, mais pas quatre.

## Going further

1. Par quels chiffres un carré parfait peut-il se terminer ? (Calculer les carrés de $0$ à $9$ et regarder les derniers chiffres.)
2. Montrer qu'aucun carré parfait ne se termine par $1111$. Le raisonnement est encore plus court : ici
   il n'y a même pas besoin de diviser par $4$, il suffit de regarder tout de suite le reste de
   $10\,000\,k + 1111$ dans la division par $4$.
3. Et un carré parfait peut-il se terminer par cinq $4$, c'est-à-dire par $44444$ ? La réponse se déduit-elle
   de l'exercice sans aucun nouveau calcul ?
