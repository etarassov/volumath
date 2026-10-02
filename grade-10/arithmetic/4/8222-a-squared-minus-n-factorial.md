---
id: "8222"
title: "a² − n! = 2019"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [congruences, carres-modulo-4, factorielle, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, entraînement de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », entraînement de fin de parcours, exercice 3"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On rappelle que, pour un entier $n \ge 1$, la **factorielle** de $n$ est le produit

$$n! = n \times (n-1) \times \cdots \times 2 \times 1 ,$$

et qu'on pose par convention $0! = 1$. Ainsi $1! = 1$, $2! = 2$, $3! = 6$, $4! = 24$, $5! = 120$.

Déterminer tous les couples d'entiers positifs $(a, n)$ tels que

$$a^2 - n! = 2019 .$$

On pensera à vérifier que les couples trouvés sont bien solutions.

## Hints

1. Il y a un carré dans l'équation. Devant un carré, le premier réflexe utile est de regarder ce qui se passe **modulo 4**. Quels sont les restes possibles d'un carré dans la division par $4$ ?
2. Calcule le reste de $2019$ modulo $4$.
3. À partir de quelle valeur de $n$ le nombre $n!$ est-il divisible par $4$ ? Regarde $4! = 24$.
4. Cela élimine d'un coup toutes les grandes valeurs de $n$. Il n'en reste que quelques-unes : essaie-les toutes.
5. Pour chacune, il faut décider si $2019 + n!$ est un carré parfait. Encadre-le entre deux carrés consécutifs : quel est le carré juste en dessous de $2019$, et celui juste au-dessus ?

## Solution

**Étape 1 : les carrés modulo 4.**

Tout entier $a$ s'écrit $a = 2k$ ou $a = 2k+1$.

- Si $a = 2k$, alors $a^2 = 4k^2 \equiv 0 \pmod 4$.
- Si $a = 2k+1$, alors $a^2 = 4k^2 + 4k + 1 \equiv 1 \pmod 4$.

Donc **un carré parfait est toujours congru à $0$ ou à $1$ modulo $4$**, jamais à $2$ ni à $3$.

**Étape 2 : $n \ge 4$ est impossible.**

Si $n \ge 4$, alors $n!$ contient les facteurs $2$ et $4$, donc $4 \mid n!$ et par conséquent

$$a^2 = 2019 + n! \equiv 2019 \pmod 4 .$$

Or $2019 = 4 \times 504 + 3$, donc $2019 \equiv 3 \pmod 4$.

On aurait donc $a^2 \equiv 3 \pmod 4$, ce qui est impossible d'après l'étape 1.

**Étape 3 : il ne reste que quatre valeurs de $n$.**

Donc $n \in \{0, 1, 2, 3\}$, et les valeurs correspondantes de $a^2 = 2019 + n!$ sont :

| $n$ | $n!$ | $a^2 = 2019 + n!$ |
|---|---|---|
| $0$ | $1$ | $2020$ |
| $1$ | $1$ | $2020$ |
| $2$ | $2$ | $2021$ |
| $3$ | $6$ | $2025$ |

**Étape 4 : lesquels sont des carrés ?**

Encadrons. On a

$$44^2 = 1936 \qquad \text{et} \qquad 45^2 = 2025 .$$

Les quatre nombres du tableau sont tous compris entre $1936$ et $2025$ inclus. Entre ces deux carrés consécutifs, le seul carré parfait est $2025$ lui-même. Donc

- $2020$ n'est pas un carré (deux fois) ;
- $2021$ n'est pas un carré ;
- $2025 = 45^2$ en est un.

La seule possibilité est donc $n = 3$ et $a = 45$.

**Vérification.**

$$45^2 - 3! = 2025 - 6 = 2019 . \ \checkmark$$

**Conclusion.**

$$\boxed{(a, n) = (45, 3) \text{ est l'unique solution.}}$$

**Ce qu'il faut retenir.** Deux outils très différents se relaient ici. Les congruences modulo $4$ éliminent d'un seul coup une infinité de valeurs de $n$ ; ensuite un simple encadrement règle les quelques cas restants. C'est le schéma habituel des équations arithmétiques : un argument de congruence pour borner, puis une recherche exhaustive.

## Going further

Résoudre de la même façon $a^2 - n! = 2018$, puis $a^2 - n! = 2020$. L'argument modulo $4$ fonctionne-t-il encore ? Sinon, que faut-il faire à la place ?
