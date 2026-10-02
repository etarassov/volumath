---
id: "13457"
title: "Vingt îles et 172 lignes de ferry"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [graphe, denombrement, raisonnement par l absurde, paires]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve lycée, exercice 11 ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

Il y a $20$ îles dans l'archipel d'Animathland. Certaines paires d'îles sont reliées par une ligne de ferry, qui fonctionne dans les deux sens. Deux îles sont reliées par au plus une ligne, et il y a $172$ lignes en tout.

Montrer que l'on peut aller de n'importe quelle île à n'importe quelle autre en changeant de ferry au plus une fois, c'est-à-dire en passant par au plus une autre île.

## Hints

1. Combien y a-t-il de paires d'îles en tout ? Combien de paires d'îles ne sont **pas** reliées par une ligne ?
2. Raisonne par l'absurde : suppose qu'il existe deux îles $A$ et $B$ telles qu'on ne peut pas aller de $A$ à $B$ avec au plus un changement. Que peux-tu dire de la paire $\{A, B\}$ ?
3. Prends une troisième île $C$. Elle ne peut pas être reliée à la fois à $A$ et à $B$. Combien cela fait-il de paires non reliées, au minimum ?

## Solution

**Étape 1 : on compte les paires non reliées.** Numérotons les îles de $1$ à $20$. L'île $1$ forme une paire avec chacune des $19$ autres. L'île $2$ forme une nouvelle paire avec chacune des $18$ îles $3, \ldots, 20$. Et ainsi de suite, jusqu'à l'île $19$ qui forme une seule nouvelle paire, avec l'île $20$. Le nombre total de paires d'îles est donc

$$19 + 18 + \ldots + 2 + 1 = \frac{19 \times 20}{2} = 190.$$

(Pour faire la somme, on regroupe $19$ avec $1$, $18$ avec $2$, et ainsi de suite jusqu'à $11$ avec $9$ : cela fait $9$ groupes de somme $20$, et il reste le nombre $10$, donc $9 \times 20 + 10 = 190$.)

Il y a $172$ lignes, chacune pour une paire différente. Il y a donc exactement $190 - 172 = 18$ paires d'îles qui ne sont pas reliées.

**Étape 2 : on raisonne par l'absurde.** Supposons qu'il existe deux îles $A$ et $B$ telles qu'on ne puisse pas aller de l'une à l'autre en changeant de ferry au plus une fois. Cela veut dire deux choses :

- $A$ et $B$ ne sont pas reliées directement : la paire $\{A, B\}$ n'est pas reliée ;
- aucune autre île n'est reliée à la fois à $A$ et à $B$, sinon on pourrait passer par elle.

**Étape 3 : on trouve trop de paires non reliées.** Prenons l'une des $18$ îles $C$ autres que $A$ et $B$. D'après l'étape 2, la paire $\{A, C\}$ ou la paire $\{B, C\}$ n'est pas reliée. Chaque île $C$ fournit ainsi au moins une paire non reliée, et ces paires sont toutes différentes, car elles contiennent des îles $C$ différentes. Avec la paire $\{A, B\}$, cela fait au moins

$$18 + 1 = 19$$

paires non reliées.

**Conclusion.** On a trouvé au moins $19$ paires non reliées, alors qu'il y en a exactement $18$ : c'est impossible. Donc deux îles quelconques peuvent toujours être rejointes en changeant de ferry au plus une fois.

*Attention à ce qu'il fallait montrer.* Il ne suffit pas de dessiner une façon de placer les $172$ lignes qui marche : il faut montrer que **toutes** les façons de les placer conviennent. C'est pour cela qu'on raisonne sur deux îles $A$ et $B$ quelconques.

## Going further

Montrer que le résultat devient faux avec $171$ lignes : trouver une façon de placer $171$ lignes entre les $20$ îles pour laquelle deux îles ne peuvent pas être rejointes avec au plus un changement.
