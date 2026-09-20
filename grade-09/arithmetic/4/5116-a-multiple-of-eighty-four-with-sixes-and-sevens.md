---
id: "5116"
title: "Un multiple de 84 écrit avec des 6 et des 7"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, criteres-de-divisibilite, chiffres, minimum]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 26"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Trouver le plus petit multiple de $84$ dont l'écriture décimale n'utilise que les chiffres $6$ et $7$.

## Hints

1. Décompose $84$ en facteurs : $84 = 4 \times 3 \times 7$. On peut alors traiter les trois divisibilités séparément.
2. Un nombre est divisible par $4$ exactement quand le nombre formé par ses deux derniers chiffres l'est. Avec seulement des $6$ et des $7$, il n'y a que quatre terminaisons possibles.
3. Un nombre est divisible par $3$ exactement quand la somme de ses chiffres l'est. Quel est le reste de $6$ modulo $3$ ? Et celui de $7$ ?
4. Tu apprends ainsi combien de chiffres $7$ le nombre doit contenir. Cela donne une taille minimale.
5. Il ne reste plus, pour chaque taille, que quelques nombres à essayer, en commençant par le plus petit. La divisibilité par $7$ se teste à la main.

## Solution

**Étape 1. Découper le problème.**

$$84 = 4 \times 3 \times 7$$

Ces trois facteurs sont deux à deux premiers entre eux. Un nombre est donc un multiple de $84$ exactement quand il est à la fois multiple de $4$, de $3$ et de $7$.

**Étape 2. La divisibilité par 4 fixe la terminaison.**

Un nombre est divisible par $4$ exactement quand le nombre formé par ses deux derniers chiffres l'est. Avec des $6$ et des $7$, les terminaisons possibles sont

$$66, \qquad 67, \qquad 76, \qquad 77$$

et une seule est divisible par $4$ :

$$76 = 4 \times 19$$

Donc **le nombre se termine par $76$**.

**Étape 3. La divisibilité par 3 compte les 7.**

Un nombre est divisible par $3$ exactement quand la somme de ses chiffres l'est. Or $6$ est un multiple de $3$ et $7 = 6 + 1$ laisse le reste $1$. Si le nombre contient $s$ chiffres $7$, la somme de ses chiffres a donc le même reste que $s$ modulo $3$ :

$$\text{le nombre est divisible par } 3 \iff s \text{ est un multiple de } 3$$

Comme le nombre se termine par $76$, il contient au moins un $7$, donc $s \geqslant 1$, donc

$$s \geqslant 3$$

**Étape 4. La taille minimale.**

Le nombre contient au moins trois $7$ et se termine par un $6$ : il a donc au moins quatre chiffres.

*Quatre chiffres.* Trois $7$ et un $6$, en finissant par $76$ : le $6$ est en dernière position et les trois autres chiffres sont des $7$, ce qui donne

$$7776$$

Ce nombre est bien divisible par $4$ (il finit par $76$) et par $3$ (somme des chiffres $= 27$). Est-il divisible par $7$ ? Non :

$$7776 = 7 \times 1110 + 6$$

Il n'y a donc pas de solution à quatre chiffres.

*Cinq chiffres.* Le nombre contient exactement trois $7$ (six $7$ demanderaient six chiffres) et donc deux $6$, et il se termine par $76$. Les trois premiers chiffres contiennent donc deux $7$ et un $6$. Dans l'ordre croissant, les candidats sont

$$67\,776, \qquad 76\,776, \qquad 77\,676$$

On les teste par divisibilité par $7$ :

$$67\,776 = 7 \times 9682 + 2 \qquad \text{(non)}$$
$$76\,776 = 7 \times 10\,968 \qquad \text{(oui)}$$

**Conclusion. Le plus petit multiple de $84$ écrit uniquement avec des $6$ et des $7$ est**

$$76\,776 = 84 \times 914$$

## Going further

La méthode se réemploie telle quelle pour d'autres questions du même genre. L'idée est toujours la même : découper le diviseur en facteurs premiers entre eux, traiter chacun avec son critère propre, et se servir des contraintes obtenues pour réduire la recherche à quelques candidats.

Ici, les deux premiers critères ont fait presque tout le travail : ils ont imposé la fin du nombre et le nombre de $7$, ce qui ne laissait que trois candidats à cinq chiffres. Seule la divisibilité par $7$, qui n'a pas de critère simple sur les chiffres, a demandé un vrai calcul.

Essaie maintenant : quel est le plus petit multiple de $36$ écrit uniquement avec des $1$ et des $2$ ?
