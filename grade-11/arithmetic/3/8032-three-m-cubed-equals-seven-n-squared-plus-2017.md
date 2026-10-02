---
id: "8032"
title: "L'équation 3m³ = 7n² + 2017"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [congruences, carres, modulo-trois, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, test de fin de parcours du jeudi 24 août, groupe A, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Trouver tous les couples d'entiers naturels $(m, n)$ vérifiant

$$3m^3 = 7n^2 + 2017 .$$

## Hints

1. Le coefficient $3$ à gauche n'est sans doute pas là par hasard. Que vaut le membre de gauche
   modulo $3$ ?
2. Quels restes un carré peut-il donner dans la division par $3$ ? Fais un petit tableau avec
   $n \equiv 0$, $n \equiv 1$, $n \equiv 2$.
3. Il ne reste plus qu'à calculer le reste de $2017$ dans la division par $3$.

## Solution

**On regarde l'égalité modulo $3$.**

**Le membre de gauche.** Il vaut $3m^3$, qui est un multiple de $3$ :

$$3m^3 \equiv 0 \pmod 3 .$$

**Les carrés modulo $3$.** Tout entier $n$ est congru à $0$, $1$ ou $2$ modulo $3$. Dressons
le tableau :

| $n \bmod 3$ | $0$ | $1$ | $2$ |
|---|---|---|---|
| $n^2 \bmod 3$ | $0$ | $1$ | $1$ |

(car $2^2 = 4 \equiv 1$). Donc **un carré est toujours congru à $0$ ou à $1$ modulo $3$**.

**Le membre de droite.** On a $7 = 6 + 1 \equiv 1 \pmod 3$ et $2017 = 3 \times 672 + 1 \equiv 1 \pmod 3$.
Donc

$$7n^2 + 2017 \equiv n^2 + 1 \pmod 3 ,$$

et d'après le tableau, cette quantité est congrue à $1$ (si $n^2 \equiv 0$) ou à $2$ (si
$n^2 \equiv 1$).

**La contradiction.** Le membre de gauche est congru à $0$ modulo $3$, le membre de droite à
$1$ ou à $2$. Ils ne peuvent jamais être égaux.

**L'équation n'admet aucune solution en entiers naturels.**

## Going further

La méthode est générale : pour montrer qu'une équation en nombres entiers n'a pas de solution,
on cherche un module $N$ pour lequel les deux membres ne peuvent pas coïncider. Encore
faut-il choisir le bon $N$. Ici le facteur $3$ devant $m^3$ désignait $N = 3$ du doigt ; avec
des carrés on essaie souvent $3$, $4$, $5$ ou $8$, car les carrés y prennent très peu de
valeurs : modulo $4$, par exemple, un carré vaut toujours $0$ ou $1$.

Attention cependant : cette méthode ne prouve jamais qu'une équation **a** des solutions. Elle
ne sert qu'à en exclure.
