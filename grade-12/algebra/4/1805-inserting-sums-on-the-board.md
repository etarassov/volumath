---
id: "1805"
title: "Le tableau où l'on intercale les sommes"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [recurrence, suites, somme, relation-de-recurrence]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction in Combinatorics"
  reference: "Handout-1478-1436.pdf, exercice 1 (corrigé dans Handout-1487-1439.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1478-1436.pdf"
---

## Statement

Au tableau sont écrits, côte à côte, les deux nombres

$$1 \qquad 1.$$

Une **opération** consiste à écrire, entre chaque paire de nombres voisins, leur somme. Les nombres déjà écrits restent en place.

- Après la première opération on lit : $1,\ 2,\ 1$.
- Après la deuxième : $1,\ 3,\ 2,\ 3,\ 1$.
- Après la troisième : $1,\ 4,\ 3,\ 5,\ 2,\ 5,\ 3,\ 4,\ 1$.

Montrer que la somme de tous les nombres écrits au tableau après $100$ opérations vaut $3^{100} + 1$.

## Hints

1. Calcule la somme après $0$, $1$, $2$ et $3$ opérations. Tu dois trouver $2$, $4$, $10$, $28$.
2. Compare ces nombres à $3^0+1$, $3^1+1$, $3^2+1$, $3^3+1$.
3. N'essaie surtout pas de décrire tous les nombres présents au tableau : il y en a beaucoup trop. Cherche seulement comment la **somme** passe d'une étape à la suivante.
4. Après l'opération, la nouvelle somme est faite des anciens nombres, plus toutes les sommes intercalées. Combien de fois chaque ancien nombre est-il compté en tout ?
5. Un nombre situé au milieu intervient dans la somme à sa gauche et dans la somme à sa droite, en plus de lui-même : il compte trois fois. Et les deux nombres des extrémités ?
6. Les deux nombres du bord ne changent jamais : ils valent toujours $1$. Tu dois arriver à $S_{n+1} = 3 S_n - 2$.

## Solution

**Notations.** Notons $S_n$ la somme de tous les nombres écrits au tableau après $n$ opérations. Au départ, avant toute opération, le tableau porte $1$ et $1$, donc $S_0 = 2$.

**Première observation : les extrémités ne bougent jamais.**

L'opération n'efface rien et n'écrit qu'**entre** deux nombres voisins. Le nombre le plus à gauche et le nombre le plus à droite restent donc en place pour toujours, et valent $1$ à chaque étape.

**Étape clé : la relation entre $S_{n+1}$ et $S_n$.**

Supposons qu'après $n$ opérations le tableau porte les nombres

$$x_1,\ x_2,\ \ldots,\ x_m \qquad \text{avec } x_1 = x_m = 1 \text{ et } x_1 + x_2 + \ldots + x_m = S_n.$$

L'opération suivante ajoute les $m-1$ nombres

$$x_1 + x_2,\quad x_2 + x_3,\quad \ldots,\quad x_{m-1} + x_m.$$

La nouvelle somme vaut donc

$$S_{n+1} = S_n + \big[(x_1+x_2) + (x_2+x_3) + \ldots + (x_{m-1}+x_m)\big].$$

Dans le crochet, comptons combien de fois apparaît chaque $x_k$ :

- un nombre du milieu ($2 \le k \le m-1$) a un voisin à gauche et un voisin à droite, donc il apparaît **deux** fois ;
- $x_1$ n'a pas de voisin à gauche, il n'apparaît qu'**une** fois ; de même pour $x_m$.

Le crochet vaut donc $2S_n - x_1 - x_m = 2 S_n - 2$, puisque $x_1 = x_m = 1$. D'où

$$\boxed{S_{n+1} = S_n + 2S_n - 2 = 3S_n - 2.}$$

**La récurrence.**

Notons $T(n)$ la propriété « $S_n = 3^n + 1$ ».

*Initialisation :* $S_0 = 2$ et $3^0 + 1 = 1 + 1 = 2$. Donc $T(0)$ est vraie.

*Hérédité :* soit $n \ge 0$ tel que $S_n = 3^n + 1$. Alors

$$S_{n+1} = 3S_n - 2 = 3(3^n + 1) - 2 = 3^{n+1} + 3 - 2 = 3^{n+1} + 1.$$

Donc $T(n+1)$ est vraie.

**Conclusion.** Par récurrence, $S_n = 3^n + 1$ pour tout entier naturel $n$. En particulier, après $100$ opérations,

$$S_{100} = 3^{100} + 1.$$

**Vérification sur les premières étapes.**

| $n$ | tableau | $S_n$ | $3^n+1$ |
|---|---|---|---|
| $0$ | $1,1$ | $2$ | $2$ |
| $1$ | $1,2,1$ | $4$ | $4$ |
| $2$ | $1,3,2,3,1$ | $10$ | $10$ |
| $3$ | $1,4,3,5,2,5,3,4,1$ | $28$ | $28$ |

## Going further

1. Combien de nombres y a-t-il au tableau après $n$ opérations ?
2. Quel est le plus grand nombre écrit au tableau après $n$ opérations ?
3. Reprends le problème en partant de $1$ et $2$ au lieu de $1$ et $1$. Quelle relation obtiens-tu, et quelle formule ?
