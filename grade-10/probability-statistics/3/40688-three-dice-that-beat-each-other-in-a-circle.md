---
id: "40688"
title: "Trois dés qui se battent en rond, et le cycle qui s'inverse"
grade: 10
theme: probability-statistics
difficulty: 3
duration_min: 50
tags: [probabilite, des, non-transitivite, jeu, strategie, equiprobabilite, independance, jetons]
adapted_from: null
see_also: ["40689", "40690", "2617"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série S"
  reference: "cg-2019-s-sujet.pdf, problème 3 « Plus d'une chance sur deux pour tout le monde », partie I « Des urnes et des dés », questions 1 et 2 (a à d)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-s-sujet.pdf"
---

## Statement

1. On dispose de trois urnes $A$, $B$ et $C$ qui contiennent chacune quatre jetons
   indiscernables au toucher :

   | urne | numéros des jetons |
   |---|---|
   | $A$ | $12$, $10$, $3$, $1$ |
   | $B$ | $9$, $8$, $7$, $2$ |
   | $C$ | $11$, $6$, $5$, $4$ |

   On tire au hasard un jeton dans chacune des trois urnes, indépendamment, et on note $X_A$,
   $X_B$ et $X_C$ les numéros tirés dans $A$, $B$ et $C$.

   Montrer que $P(X_A > X_B) = \frac{9}{16}$ et que $P(X_B > X_C) = \frac{9}{16}$. Que vaut
   $P(X_C > X_A)$ ?

2. On dispose de trois dés cubiques équilibrés $D_1$, $D_2$ et $D_3$, dont les faces portent les
   numéros suivants :

   | dé | numéros des faces |
   |---|---|
   | $D_1$ | $6$, $3$, $3$, $3$, $3$, $3$ |
   | $D_2$ | $5$, $5$, $5$, $2$, $2$, $2$ |
   | $D_3$ | $4$, $4$, $4$, $4$, $4$, $1$ |

   a) On lance les trois dés, indépendamment, et on note $X_1$, $X_2$ et $X_3$ les numéros
   obtenus avec $D_1$, $D_2$ et $D_3$. Calculer $P(X_1 > X_2)$, $P(X_2 > X_3)$ et
   $P(X_3 > X_1)$.

   b) Claire et Paul jouent au jeu suivant : l'un d'eux choisit un des trois dés, puis l'autre
   choisit un des deux dés restants. Ils lancent chacun leur dé, et celui qui obtient le plus
   grand numéro gagne. Claire a-t-elle intérêt à choisir son dé avant Paul, ou à le laisser
   choisir en premier ?

   c) Finalement, c'est Paul qui choisit en premier. Quel(s) dé(s) a-t-il intérêt à choisir ?

   d) Claire et Paul changent la règle. L'un choisit un des trois dés, puis l'autre choisit un des
   deux dés restants. Chacun lance **deux fois** son dé, et celui dont la **somme** des deux
   numéros est la plus grande gagne. Paul choisit en premier et prend le dé $D_2$. Quel dé Claire
   a-t-elle intérêt à choisir ? Avec cette nouvelle règle, Claire a-t-elle intérêt, en général, à
   choisir son dé avant Paul ou à le laisser choisir en premier ?

## Hints

1. **Question 1.** Il y a $4 \times 4 = 16$ couples de jetons équiprobables. Pour chaque jeton
   de $A$, compter les jetons de $B$ qui lui sont inférieurs.
2. **Question 2 a.** Un dé n'a que deux sortes de faces : il suffit d'un petit tableau à deux
   lignes et deux colonnes, avec les probabilités de chaque case.
3. **Question 2 b.** Si Paul a choisi un dé, Claire peut-elle toujours trouver un dé qui bat le
   sien avec une probabilité supérieure à $\frac{1}{2}$ ?
4. **Question 2 c.** Pour chaque dé que Paul peut prendre, chercher la meilleure réponse de
   Claire, et la probabilité que Paul gagne alors.
5. **Question 2 d.** Commencer par la loi de la somme de deux lancers de chaque dé : chaque somme
   ne prend que trois valeurs.
6. **Question 2 d.** Comparer ensuite les sommes comme à la question a, avec un tableau
   $3 \times 3$. Les égalités sont-elles possibles ?

## Solution

**1.** Les $16$ couples (jeton de $A$, jeton de $B$) sont équiprobables. Comptons ceux où le jeton
de $A$ est le plus grand : $12$ et $10$ battent les quatre jetons de $B$, $3$ ne bat que $2$, et
$1$ n'en bat aucun. Cela fait $4 + 4 + 1 + 0 = 9$ couples, donc $P(X_A > X_B) = \frac{9}{16}$.

De même pour $B$ contre $C$ : $9$ bat $6$, $5$ et $4$ ; $8$ et $7$ aussi ; $2$ n'en bat aucun.
Cela fait $3 + 3 + 3 + 0 = 9$, donc $P(X_B > X_C) = \frac{9}{16}$.

Pour $C$ contre $A$ : $11$ bat $10$, $3$ et $1$ ; $6$, $5$ et $4$ battent chacun $3$ et $1$.
Cela fait $3 + 2 + 2 + 2 = 9$, donc $P(X_C > X_A) = \frac{9}{16}$.

Chaque urne bat la suivante plus d'une fois sur deux, en tournant : $A$ bat $B$, $B$ bat $C$, et
$C$ bat $A$.

**2. a)** Les valeurs possibles des trois dés sont toutes différentes d'un dé à l'autre, donc il
n'y a jamais d'égalité.

- $X_1 > X_2$ : si $D_1$ donne $6$ (probabilité $\frac{1}{6}$), il gagne toujours ; s'il donne
  $3$ (probabilité $\frac{5}{6}$), il gagne seulement contre $2$ (probabilité $\frac{1}{2}$).
  $$P(X_1 > X_2) = \frac{1}{6} + \frac{5}{6} \times \frac{1}{2} = \frac{2}{12} + \frac{5}{12} = \frac{7}{12}.$$
- $X_2 > X_3$ : si $D_2$ donne $5$ (probabilité $\frac{1}{2}$), il gagne toujours ; s'il donne
  $2$, il gagne seulement contre $1$ (probabilité $\frac{1}{6}$).
  $$P(X_2 > X_3) = \frac{1}{2} + \frac{1}{2} \times \frac{1}{6} = \frac{7}{12}.$$
- $X_3 > X_1$ : il faut que $D_3$ donne $4$ et que $D_1$ donne $3$.
  $$P(X_3 > X_1) = \frac{5}{6} \times \frac{5}{6} = \frac{25}{36}.$$

Les trois probabilités sont strictement supérieures à $\frac{1}{2}$ : $D_1$ bat $D_2$, $D_2$ bat
$D_3$ et $D_3$ bat $D_1$.

**2. b)** Claire a intérêt à laisser Paul choisir en premier. Quel que soit le dé de Paul, il en
reste un qui le bat avec une probabilité strictement supérieure à $\frac{1}{2}$ : $D_3$ contre
$D_1$, $D_1$ contre $D_2$, $D_2$ contre $D_3$. Claire prend celui-là et gagne plus d'une fois sur
deux. Si au contraire elle choisit en premier, Paul fera de même avec elle.

**2. c)** On suppose que Claire répond au mieux. Comme il n'y a pas d'égalité, la probabilité
que Paul gagne est $1$ moins celle que Claire gagne.

- Paul prend $D_1$ : Claire prend $D_3$ et Paul gagne avec la probabilité
  $1 - \frac{25}{36} = \frac{11}{36}$ (avec $D_2$, Claire ne gagnerait qu'avec la probabilité
  $\frac{5}{12}$).
- Paul prend $D_2$ : Claire prend $D_1$, Paul gagne avec la probabilité
  $1 - \frac{7}{12} = \frac{5}{12} = \frac{15}{36}$.
- Paul prend $D_3$ : Claire prend $D_2$, Paul gagne avec la probabilité
  $\frac{5}{12} = \frac{15}{36}$.

Paul a donc intérêt à prendre $D_2$ ou $D_3$ (il gagne alors avec la probabilité
$\frac{5}{12}$), et surtout pas $D_1$ ($\frac{11}{36}$ seulement).

**2. d)** *Loi de la somme de deux lancers.* Pour $D_1$, la somme vaut $12$ si les deux lancers
donnent $6$ (probabilité $\frac{1}{36}$), $9$ si un seul donne $6$
($2 \times \frac{1}{6} \times \frac{5}{6} = \frac{10}{36}$), et $6$ sinon ($\frac{25}{36}$). On
fait de même pour les deux autres :

| dé | sommes possibles et probabilités |
|---|---|
| $D_1$ | $12$ : $\frac{1}{36}$ ; $9$ : $\frac{10}{36}$ ; $6$ : $\frac{25}{36}$ |
| $D_2$ | $10$ : $\frac{1}{4}$ ; $7$ : $\frac{1}{2}$ ; $4$ : $\frac{1}{4}$ |
| $D_3$ | $8$ : $\frac{25}{36}$ ; $5$ : $\frac{10}{36}$ ; $2$ : $\frac{1}{36}$ |

Les sommes possibles sont toutes différentes d'un dé à l'autre, donc il n'y a pas d'égalité.
Notons $S_1$, $S_2$, $S_3$ les sommes obtenues.

*Paul a pris $D_2$.*

- Avec $D_3$ : Claire gagne si elle fait $8$ et Paul $7$ ou $4$, ou si elle fait $5$ et Paul $4$.
  $$P(S_3 > S_2) = \frac{25}{36} \times \frac{3}{4} + \frac{10}{36} \times \frac{1}{4} = \frac{75 + 10}{144} = \frac{85}{144}.$$
- Avec $D_1$ : Claire gagne si elle fait $12$, ou $9$ contre $7$ ou $4$, ou $6$ contre $4$.
  $$P(S_1 > S_2) = \frac{1}{36} + \frac{10}{36} \times \frac{3}{4} + \frac{25}{36} \times \frac{1}{4} = \frac{4 + 30 + 25}{144} = \frac{59}{144}.$$

Comme $\frac{85}{144} > \frac{1}{2} > \frac{59}{144}$, **Claire doit choisir $D_3$**. Attention :
avec un seul lancer, c'était $D_1$ qui battait $D_2$ ; avec deux lancers, c'est $D_2$ qui bat $D_1$
(avec la probabilité $\frac{85}{144}$).

*Le troisième duel.* Comparons $D_1$ et $D_3$ : $D_1$ gagne s'il fait $12$ ou $9$ (il bat alors
toutes les sommes de $D_3$), ou s'il fait $6$ contre $5$ ou $2$.
$$P(S_1 > S_3) = \frac{1}{36} + \frac{10}{36} + \frac{25}{36} \times \frac{11}{36} = \frac{36 + 360 + 275}{1296} = \frac{671}{1296} > \frac{648}{1296} = \frac{1}{2}.$$

Avec deux lancers, il y a encore un cycle, mais dans l'autre sens : $D_2$ bat $D_1$, $D_1$ bat
$D_3$, et $D_3$ bat $D_2$, chaque fois avec une probabilité strictement supérieure à
$\frac{1}{2}$. Quel que soit le dé choisi en premier, il en reste un qui le bat. **Claire a
toujours intérêt à laisser Paul choisir en premier**, puis à prendre le dé qui bat le sien.

**Bilan.** Les trois urnes, comme les trois dés, forment un cycle : chacun bat le suivant plus
d'une fois sur deux. Dans un tel jeu, celui qui choisit en second a l'avantage. Avec deux
lancers et la somme, le cycle des dés change de sens, mais il existe toujours, et choisir en
second reste le bon choix.

## Going further

- Dans la suite du sujet, on construisait de tels cycles d'urnes pour toutes les tailles :
  exercices 40689 (urnes fabriquées avec la suite de Fibonacci) et 40690 (trois urnes de $n$
  jetons pour tout $n \geqslant 3$).
- Remarquer que les faces de $D_1$ sont des multiples de $3$, celles de $D_2$ des multiples de
  $3$ plus $2$, celles de $D_3$ des multiples de $3$ plus $1$. Expliquer ainsi pourquoi deux dés
  différents ne donnent jamais d'égalité, même avec la somme de deux lancers.
- Un autre jeu de dés de ce genre, avec quatre dés : exercice 2617.
