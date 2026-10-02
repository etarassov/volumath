---
id: "8521"
title: "Cinquante-cinq nombres et une différence de 9"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [principe-des-tiroirs, differences, contre-exemple, partition]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Principe des tiroirs » (Vincent) du Groupe A, exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Daphné choisit $55$ entiers parmi les nombres $1, 2, 3, \ldots, 99$.

1. Démontrer que, parmi les entiers choisis, il y en a toujours deux dont la différence vaut
   exactement $9$.
2. Est-ce encore vrai si on remplace $9$ par $11$ ?

## Hints

1. Pour la question 1, il faut construire des tiroirs. Un bon tiroir contiendrait deux nombres dont la différence vaut $9$, par exemple $\{1, 10\}$.
2. Attention : si tu prends tous les paquets $\{n, n+9\}$, certains nombres apparaissent dans deux paquets différents. Il faut une vraie partition, où chaque nombre est rangé dans un paquet et un seul.
3. Essaie de découper $1, 2, \ldots, 99$ en blocs de $18$ nombres consécutifs, et de constituer les paires à l'intérieur de chaque bloc.
4. Pour la question 2, la réponse est différente. Cherche à construire un contre-exemple, en gardant des blocs entiers de nombres consécutifs.

## Solution

### 1. Avec une différence de 9

**Les tiroirs.** Découpons $1, 2, \ldots, 99$ en blocs de $18$ nombres consécutifs, puis un
reste :

$$\{1, \ldots, 18\}, \quad \{19, \ldots, 36\}, \quad \{37, \ldots, 54\}, \quad
\{55, \ldots, 72\}, \quad \{73, \ldots, 90\}, \quad \{91, \ldots, 99\} .$$

Dans chacun des cinq premiers blocs, formons neuf paires en associant chaque nombre de la
première moitié à celui situé $9$ plus loin. Par exemple, dans le bloc $\{1, \ldots, 18\}$ :

$$\{1, 10\}, \; \{2, 11\}, \; \{3, 12\}, \; \ldots, \; \{9, 18\} .$$

Cela fait $9$ paires par bloc, donc $5 \times 9 = 45$ paires. Les neuf nombres restants,
$91, 92, \ldots, 99$, forment neuf tiroirs contenant chacun un seul nombre.

Au total nous avons $45 + 9 = 54$ tiroirs, et chaque entier de $1$ à $99$ est rangé dans
exactement un tiroir.

**Le principe des tiroirs.** Daphné choisit $55$ entiers et il n'y a que $54$ tiroirs : deux de
ses entiers tombent donc dans le même tiroir. Ce tiroir contient deux nombres, ce n'est donc
pas l'un des neuf tiroirs solitaires : c'est une paire $\{n, n+9\}$.

Les deux entiers choisis ont donc une différence égale à $9$.

### 2. Avec une différence de 11, c'est faux

Voici un choix de $55$ nombres entre $1$ et $99$ dont deux n'ont jamais une différence de
$11$ : on prend les blocs de $11$ nombres consécutifs, une fois sur deux.

$$\{1, \ldots, 11\}, \quad \{23, \ldots, 33\}, \quad \{45, \ldots, 55\}, \quad
\{67, \ldots, 77\}, \quad \{89, \ldots, 99\} .$$

Cela fait bien $5 \times 11 = 55$ nombres, tous compris entre $1$ et $99$.

**Pourquoi aucune différence ne vaut 11 ?** Prenons deux des nombres choisis.

- S'ils sont dans le même bloc, leur différence vaut au plus $10$, puisqu'un bloc contient
  $11$ nombres consécutifs.
- S'ils sont dans deux blocs différents, le plus grand des deux est au moins $22$ plus grand
  que le début de son bloc par rapport au début du bloc de l'autre. Précisément, deux blocs
  consécutifs sont séparés par un « trou » de $11$ nombres : le plus grand nombre d'un bloc
  et le plus petit du bloc suivant diffèrent de $12$. Donc deux nombres de blocs différents
  diffèrent d'au moins $12$.

Dans les deux cas, la différence ne vaut jamais $11$.

**Conclusion.** Avec une différence de $9$ le résultat est vrai, avec une différence de $11$
il est faux.

## Going further

En reprenant la méthode de la question 1, on montre que le résultat reste vrai pour une
différence de $10$, de $12$ ou de $13$ : à chaque fois on trouve un découpage en $54$ tiroirs
au plus. La différence $11$ est la seule qui échoue entre $9$ et $13$, et le contre-exemple
ci-dessus explique pourquoi : $99 = 9 \times 11$ se découpe exactement en neuf blocs de $11$,
dont on garde une moitié.
