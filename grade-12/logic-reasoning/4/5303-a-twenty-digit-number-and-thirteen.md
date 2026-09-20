---
id: "5303"
title: "Le nombre à vingt chiffres et le nombre 13"
grade: 12
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [jeu, strategie gagnante, congruences, divisibilite]
adapted_from: null
see_also: ["5302"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Mathematical Games, par Tatiana Shubin (San José State University)"
  reference: "TShubinmathgames.pdf, jeu 3 (b) ; le document ne donne aucune solution"
  url: "https://mathcircles.org/activity/mathematical-games/"
  original_language: "en"
  local_copy: "sources/originals/namc/TShubinmathgames.pdf"
---

## Statement

Alice et Bob écrivent ensemble un nombre de $20$ chiffres, **de gauche à droite**, en alternant : Alice écrit le premier chiffre (non nul), Bob le deuxième, Alice le troisième, et ainsi de suite. Bob écrit donc le vingtième et dernier chiffre.

Quand les $20$ chiffres sont posés :

- **Alice gagne** si le nombre obtenu **n'est pas** divisible par $13$ ;
- **Bob gagne** s'il **est** divisible par $13$.

Lequel des deux joueurs a une stratégie gagnante ?

*Remarque : si l'on remplace $13$ par $7$, Bob gagne sans effort, en choisissant bien le dernier chiffre. Ici, ce n'est plus le cas.*

## Hints

1. Notons $M$ le nombre formé par les $19$ premiers chiffres et $c$ le dernier chiffre, écrit par Bob. Le nombre final vaut $10M + c$. Pour quelles valeurs du reste de $10M$ modulo $13$ Bob trouve-t-il un chiffre $c$ qui convienne ?
2. Bob dispose de dix chiffres seulement, alors qu'il y a treize restes possibles. Il échoue donc dans exactement trois cas : lesquels ?
3. Traduire ces trois cas en une condition sur $M$ lui-même, en remarquant que $10 \times 4 = 40 \equiv 1 \pmod{13}$.
4. C'est Alice qui écrit le dix-neuvième chiffre, donc le dernier chiffre de $M$. Si $M'$ désigne le nombre formé par les $18$ premiers chiffres, on a $M = 10M' + a$ avec $a$ au choix d'Alice. Quels restes modulo $13$ Alice peut-elle atteindre ?

## Solution

**Réponse : c'est Alice qui gagne.**

Dans tout ce qui suit, $M$ désigne le nombre formé par les $19$ premiers chiffres et $c$ le dernier chiffre, écrit par Bob. Le nombre final vaut
$$N = 10M + c, \qquad c \in \{0, 1, \ldots, 9\}.$$

### Étape 1 : quand Bob est-il coincé ?

Bob gagne s'il existe un chiffre $c$ entre $0$ et $9$ tel que $13$ divise $10M + c$, c'est-à-dire tel que
$$c \equiv -10M \pmod{13}.$$

Il y a exactement un entier $c$ entre $0$ et $12$ qui vérifie cette congruence. Bob peut l'écrire si et seulement si $c \leqslant 9$. Donc :

$$\textbf{Bob perd} \iff -10M \equiv 10,\ 11 \text{ ou } 12 \pmod{13} \iff 10M \equiv 3,\ 2 \text{ ou } 1 \pmod{13}.$$

(On est passé de $-10M$ à $10M$ en changeant les signes : $-10 \equiv 3$, $-11 \equiv 2$, $-12 \equiv 1$ modulo $13$.)

### Étape 2 : traduire la condition sur $M$

Remarquons que
$$10 \times 4 = 40 = 3 \times 13 + 1, \qquad \text{donc} \qquad 10 \times 4 \equiv 1 \pmod{13}.$$

En multipliant par $4$ les trois congruences de l'étape 1 :

- $10M \equiv 1$ équivaut à $M \equiv 4$ ;
- $10M \equiv 2$ équivaut à $M \equiv 8$ ;
- $10M \equiv 3$ équivaut à $M \equiv 12$.

(Dans un sens on multiplie par $4$, dans l'autre par $10$ : les deux opérations sont inverses l'une de l'autre modulo $13$, puisque $40 \equiv 1$.)

Vérification directe : $10 \times 4 = 40 \equiv 1$, $10 \times 8 = 80 = 6 \times 13 + 2 \equiv 2$, $10 \times 12 = 120 = 9 \times 13 + 3 \equiv 3$. Tout colle.

**Alice gagne donc si et seulement si elle réussit à faire en sorte que**
$$M \equiv 4, \quad 8 \quad \text{ou} \quad 12 \pmod{13}.$$

### Étape 3 : Alice tient le dix-neuvième chiffre

Alice joue les coups de rang impair, donc le coup numéro $19$ : le dernier chiffre de $M$ est à elle. Notons $M'$ le nombre formé par les $18$ premiers chiffres et $a$ le chiffre qu'Alice écrit au dix-neuvième coup. Alors
$$M = 10M' + a, \qquad a \in \{0, 1, \ldots, 9\}.$$

Posons $r$ le reste de $10M'$ dans la division par $13$. Quand $a$ parcourt $0, 1, \ldots, 9$, le reste de $M$ modulo $13$ parcourt les **dix restes consécutifs**
$$r,\ r+1,\ r+2,\ \ldots,\ r+9 \pmod{13}.$$

Ces dix restes sont deux à deux distincts, et les **trois seuls** restes qu'Alice ne peut pas atteindre sont
$$r+10, \quad r+11, \quad r+12 \pmod{13},$$
c'est-à-dire trois restes consécutifs.

### Étape 4 : Alice n'est jamais bloquée

Alice échouerait seulement si les trois restes gagnants $4$, $8$ et $12$ étaient tous les trois hors de sa portée, c'est-à-dire si
$$\{4,\ 8,\ 12\} = \{r+10,\ r+11,\ r+12\} \pmod{13}.$$

C'est impossible : le membre de droite est formé de trois restes **consécutifs**, alors que $4$, $8$ et $12$ sont espacés de $4$. Plus précisément, dans $\{r+10, r+11, r+12\}$ la différence entre deux éléments vaut $1$, $2$, $11$ ou $12$ modulo $13$, jamais $4$.

Donc au moins un des trois restes $4$, $8$, $12$ est atteignable : **Alice choisit son dix-neuvième chiffre $a$ pour l'atteindre**, et Bob est alors coincé, quel que soit le chiffre qu'il écrit.

**Conclusion. Alice a une stratégie gagnante :** elle joue ses dix-huit premiers chiffres comme elle veut, puis elle calcule le reste de $10M'$ modulo $13$ et choisit $a$ de façon que $M$ soit congru à $4$, $8$ ou $12$ modulo $13$. Le nombre final n'est alors jamais divisible par $13$.

### Un exemple

Supposons qu'après $18$ chiffres on ait $10M' \equiv 0 \pmod{13}$. Alice peut atteindre les restes $0, 1, \ldots, 9$ pour $M$ ; elle choisit $a = 4$, donc $M \equiv 4$, donc $10M \equiv 1$. Bob devrait écrire $c \equiv -1 \equiv 12$, ce qui n'est pas un chiffre. Il perd.

## Going further

1. Avec $7$ à la place de $13$, c'est Bob qui gagne. Pour quels diviseurs $d$ Bob gagne-t-il à coup sûr, et pour quels autres Alice peut-elle l'en empêcher ?
2. Et si le nombre comptait $21$ chiffres, donc si c'était Alice qui écrivait le dernier ?
