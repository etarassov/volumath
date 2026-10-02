---
id: "8038"
title: "2ᵃ + 9ᵇ = 2 × 5ᶜ + 5 n'a pas de solution"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, puissances, disjonction-de-cas, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, groupe A : arithmétique, mercredi 23 après-midi (Rémi Lesbats), exercice 5. Le corrigé imprimé annonce la solution (a, b, c) = (1, 0, 0), qui ne vérifie pas l'équation : il n'y a en fait aucune solution."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Montrer qu'il n'existe aucun triplet d'entiers naturels $(a, b, c)$ tel que

$$2^a + 9^b = 2 \times 5^c + 5 .$$

## Hints

1. Les nombres $9$ et $5$ ont quelque chose en commun modulo $4$. Regarde l'égalité modulo
   $4$.
2. Modulo $4$, le membre de droite est complètement déterminé. Que cela impose-t-il à $2^a$ ?
   Attention à traiter $a = 0$ et $a = 1$ à part.
3. Une fois $a$ connu, l'égalité se simplifie. Essaie alors modulo $3$.
4. N'oublie pas le cas $b = 0$, où le raisonnement modulo $3$ ne conclut pas de la même façon.

## Solution

**Première étape : modulo $4$.**

On a $9 \equiv 1 \pmod 4$, donc $9^b \equiv 1 \pmod 4$ quel que soit $b$.
De même $5 \equiv 1 \pmod 4$, donc $5^c \equiv 1 \pmod 4$, et

$$2 \times 5^c + 5 \equiv 2 + 5 = 7 \equiv 3 \pmod 4 .$$

Le membre de gauche vaut $2^a + 9^b \equiv 2^a + 1 \pmod 4$. Il faut donc

$$2^a \equiv 2 \pmod 4 .$$

Examinons les trois cas :

- $a = 0$ : $2^a = 1 \equiv 1$, non ;
- $a = 1$ : $2^a = 2 \equiv 2$, **oui** ;
- $a \geqslant 2$ : $2^a$ est un multiple de $4$, donc $2^a \equiv 0$, non.

**Donc $a = 1$.**

**Deuxième étape : l'équation simplifiée.** Avec $a = 1$, l'égalité devient

$$2 + 9^b = 2 \times 5^c + 5, \qquad \text{c'est-à-dire} \qquad 9^b = 2 \times 5^c + 3 .$$

**Troisième étape : modulo $3$.**

Le membre de droite vaut $2 \times 5^c + 3 \equiv 2 \times 5^c \pmod 3$. Comme
$5 \equiv 2 \pmod 3$, cela fait

$$2 \times 2^c = 2^{c+1} \pmod 3 .$$

Or $2 \equiv -1 \pmod 3$, donc $2^{c+1} \equiv (-1)^{c+1} \equiv 1$ ou $2$ modulo $3$ : le
membre de droite n'est **jamais** divisible par $3$.

Regardons maintenant le membre de gauche, $9^b$ :

- si $b \geqslant 1$, alors $9^b$ est un multiple de $9$, donc de $3$. Il serait divisible par
  $3$, alors que le membre de droite ne l'est pas : contradiction ;
- si $b = 0$, alors $9^b = 1$ et l'égalité s'écrit $1 = 2 \times 5^c + 3$, donc
  $2 \times 5^c = -2$. Mais $5^c \geqslant 1$, donc $2 \times 5^c \geqslant 2 > 0$ :
  contradiction également.

**Dans tous les cas on aboutit à une contradiction : l'équation n'a aucune solution en entiers
naturels.**

## Going further

**Une erreur dans la source.** Le corrigé du stage de Valbonne 2017 conclut que
$(a, b, c) = (1, 0, 0)$ est solution. Vérifions :

$$2^1 + 9^0 = 2 + 1 = 3, \qquad 2 \times 5^0 + 5 = 2 + 5 = 7 .$$

Les deux membres ne sont pas égaux. L'erreur vient d'une ligne de calcul fautive dans le
corrigé, qui remplace $2 \times 5^c + 5$ par $2 \times 5^c$ au moment de passer au cas
$a = 1$. Le raisonnement ci-dessus, mené jusqu'au bout, montre qu'il n'y a pas de solution du
tout.

C'est un bon rappel : une réponse imprimée est une vérification de votre raisonnement, jamais
un remplacement. Une solution se teste en la reportant dans l'énoncé, et cela prend dix
secondes.
