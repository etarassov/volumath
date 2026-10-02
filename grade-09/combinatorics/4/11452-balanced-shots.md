---
id: "11452"
title: "Les tirs équilibrés"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [parite, suites, demonstration, astuce]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 4 (combinatoire)"
  reference: "2023-04_Sujet-envoi-4-2023-2024.pdf, Exercices Juniors, exercice 5 ; corrigé 2024-03_corrige-envoi-4-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/04/Sujet-envoi-4-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-04_Sujet-envoi-4-2023-2024.pdf"
---

## Statement

Soit $n$ un entier positif ou nul. Joseph tire $2n + 1$ flèches, l'une après l'autre. Chaque tir est
soit une réussite, soit un échec.

Un tir est dit **équilibré** si

$$(\text{nombre d'échecs avant ce tir}) + (\text{nombre de réussites après ce tir}) = n .$$

Le tir lui-même ne compte ni dans l'un ni dans l'autre de ces deux nombres.

Le nombre de tirs équilibrés est-il pair ou impair ?

## Hints

1. Fais des essais avec $n = 1$, donc $3$ tirs. Écris les $8$ suites possibles de réussites (R) et
   d'échecs (E), et compte les tirs équilibrés à chaque fois.
2. Coupe la suite des tirs par un trait, quelque part. Compte les échecs à gauche du trait et les
   réussites à droite du trait. Que devient ce nombre quand on déplace le trait d'un tir vers la
   droite ?
3. Que vaut ce nombre quand le trait est tout à gauche ? Et quand il est tout à droite ? Leur somme
   vaut $2n + 1$.

## Solution

La réponse est : le nombre de tirs équilibrés est toujours **impair**.

**Un compteur.** Numérotons les tirs de $1$ à $2n+1$. Pour chaque $j$ de $0$ à $2n+1$, imaginons un
trait placé juste après le tir numéro $j$ (pour $j = 0$, le trait est avant le premier tir). Notons

$$h(j) = (\text{échecs parmi les tirs } 1 \text{ à } j) + (\text{réussites parmi les tirs } j+1 \text{ à } 2n+1).$$

Notons aussi $R$ le nombre total de réussites et $E$ le nombre total d'échecs, de sorte que
$R + E = 2n + 1$.

- Pour $j = 0$, il n'y a aucun tir avant le trait : $h(0) = R$.
- Pour $j = 2n+1$, il n'y a aucun tir après le trait : $h(2n+1) = E$.

**Un pas à la fois.** Quand on déplace le trait de la position $j-1$ à la position $j$, le tir
numéro $j$ passe de droite à gauche du trait.

- Si c'est une réussite, elle ne compte plus à droite, et ne compte pas à gauche : $h$ baisse de $1$.
- Si c'est un échec, il se met à compter à gauche : $h$ monte de $1$.

Donc $h$ avance par pas de $+1$ ou de $-1$.

**Les tirs équilibrés.** Pour le tir numéro $t$, notons $q$ le nombre d'échecs avant ce tir plus le
nombre de réussites après ce tir. Le tir $t$ est équilibré quand $q = n$. Comparons $q$ avec
$h(t-1)$ et $h(t)$ : ces deux nombres comptent les mêmes tirs que $q$, plus le tir $t$ lui-même d'un
seul côté.

- Si le tir $t$ est une réussite, $h(t-1) = q + 1$ et $h(t) = q$.
- Si le tir $t$ est un échec, $h(t-1) = q$ et $h(t) = q + 1$.

Dans les deux cas, $q$ est le plus petit des deux nombres $h(t-1)$ et $h(t)$, qui diffèrent de $1$.
Donc le tir $t$ est équilibré exactement quand le pas numéro $t$ va de $n$ à $n+1$, ou de $n+1$ à $n$.

**Le passage de la frontière.** Disons que $h$ est « en bas » quand $h \leqslant n$, et « en haut »
quand $h \geqslant n + 1$. Comme $h$ avance de $1$ à chaque pas, la seule façon de changer de côté est
un pas entre $n$ et $n+1$, c'est-à-dire un tir équilibré. Ainsi, chaque tir équilibré fait changer
$h$ de côté, et les autres tirs le laissent du même côté.

Or $R + E = 2n + 1$ : les deux nombres $R$ et $E$ ne peuvent pas être tous les deux $\leqslant n$
(leur somme serait au plus $2n$), ni tous les deux $\geqslant n+1$ (leur somme serait au moins
$2n+2$). L'un est donc en bas et l'autre en haut. Le compteur $h$ part de $R$ et arrive à $E$ : il
termine du côté opposé à celui où il a commencé.

Après un nombre pair de changements de côté, on est revenu du côté de départ. Pour finir de l'autre
côté, il faut donc un nombre impair de changements.

**Un exemple.** Avec $n = 1$ et les tirs réussite, réussite, échec : $h$ vaut successivement
$2, 1, 0, 1$. Seul le premier pas va de $2$ à $1$, c'est-à-dire entre $n+1 = 2$ et $n = 1$. On vérifie
directement que seul le premier tir est équilibré : $0$ échec avant et $1$ réussite après.

**Conclusion.** Quels que soient les tirs de Joseph, le nombre de tirs équilibrés est impair. En
particulier, il y a toujours au moins un tir équilibré.
