---
id: "4824"
title: "Cent animaux pour cent euros"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [equation-a-deux-inconnues, entiers, multiples, recherche-exhaustive]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, Math Relays"
  reference: "Handout-192-208.pdf, exercice 19 (réponse dans Handout-193-208.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-192-208.pdf"
---

## Statement

Un fermier achète exactement $100$ animaux et dépense exactement $100$ euros.

Les prix sont les suivants :

- un cheval coûte $10$ euros,
- un cochon coûte $3$ euros,
- un lapin coûte $\text{0,50}$ euro.

Il peut très bien n'acheter aucun animal d'une des trois sortes.

Trouver **toutes** les façons dont il a pu s'y prendre, et démontrer qu'il n'y en a pas d'autres.

## Hints

1. Appelle $c$ le nombre de chevaux, $p$ le nombre de cochons et $l$ le nombre de lapins. Écris les deux conditions sous forme d'équations.
2. Une des équations contient un $\text{0,50}$. Multiplie-la par $2$ pour n'avoir que des nombres entiers.
3. Tu as maintenant deux équations avec trois inconnues. Soustrais l'une de l'autre : les lapins disparaissent.
4. Il reste une seule équation à deux inconnues, du type $19c + 5p = 100$. Combien de chevaux au maximum le fermier peut-il acheter ?
5. Pour chaque valeur possible de $c$, regarde si $5p = 100 - 19c$ donne un nombre entier de cochons.

## Solution

**Mise en équations.** Notons $c$ le nombre de chevaux, $p$ le nombre de cochons et $l$ le nombre de lapins. Ce sont trois entiers positifs ou nuls, et

$$c + p + l = 100 \qquad (1)$$

$$10c + 3p + \text{0,5}\,l = 100 \qquad (2)$$

**On chasse la virgule.** Multiplions $(2)$ par $2$ :
$$20c + 6p + l = 200 \qquad (2')$$

**On élimine les lapins.** Soustrayons $(1)$ de $(2')$ :
$$(20c + 6p + l) - (c + p + l) = 200 - 100,$$
c'est-à-dire
$$19c + 5p = 100 . \qquad (3)$$

**Combien de chevaux ?** Comme $p \geqslant 0$, on a $19c \leqslant 100$, donc
$$c \leqslant \frac{100}{19} < 6 .$$
Les seules valeurs possibles sont $c = 0, 1, 2, 3, 4, 5$. Examinons-les une par une, en calculant $5p = 100 - 19c$.

| $c$ | $100 - 19c$ | $p = \dfrac{100 - 19c}{5}$ |
|---|---|---|
| $0$ | $100$ | $20$ |
| $1$ | $81$ | pas entier |
| $2$ | $62$ | pas entier |
| $3$ | $43$ | pas entier |
| $4$ | $24$ | pas entier |
| $5$ | $5$ | $1$ |

Seules deux valeurs conviennent : $c = 0$ et $c = 5$.

*Une façon plus rapide de le voir.* Dans $19c + 5p = 100$, les nombres $5p$ et $100$ sont des multiples de $5$. Donc $19c$ doit aussi être un multiple de $5$, et comme $19$ ne l'est pas, c'est $c$ qui doit être un multiple de $5$. Avec $c \leqslant 5$, il ne reste que $c = 0$ et $c = 5$.

**Les deux solutions.**

*Premier cas : $c = 0$, $p = 20$.* Alors $l = 100 - 0 - 20 = 80$.
Vérification : $0 + 20 \times 3 + 80 \times \text{0,5} = 60 + 40 = 100$ euros, et $0 + 20 + 80 = 100$ animaux. ✔

*Second cas : $c = 5$, $p = 1$.* Alors $l = 100 - 5 - 1 = 94$.
Vérification : $5 \times 10 + 1 \times 3 + 94 \times \text{0,5} = 50 + 3 + 47 = 100$ euros, et $5 + 1 + 94 = 100$ animaux. ✔

**Réponse : il y a exactement deux achats possibles,**

$$\boxed{0 \text{ cheval, } 20 \text{ cochons, } 80 \text{ lapins}}$$

$$\boxed{5 \text{ chevaux, } 1 \text{ cochon, } 94 \text{ lapins}}$$

## Going further

1. Si le fermier veut au moins un animal de chaque sorte, il ne reste qu'une solution. Laquelle ?
2. Reprends le problème avec un cheval à $10$ €, un cochon à $2$ € et un lapin à $\text{0,50}$ €. Combien de solutions cette fois ?
3. Le même problème existe depuis très longtemps sous le nom de « problème des cent oiseaux ». Cherche la version où des coqs coûtent $5$ pièces, des poules $3$ pièces et des poussins $1$ pièce pour trois, et où l'on veut $100$ oiseaux pour $100$ pièces.
