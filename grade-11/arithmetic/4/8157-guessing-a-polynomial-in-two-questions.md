---
id: "8157"
title: "Deviner un polynôme en deux questions"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [polynome, numeration, base, chiffres]
adapted_from: null
see_also: ["2425"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 55 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Sophie a choisi un polynôme $P$ dont **tous les coefficients sont des entiers naturels**. Elle ne dit ni son degré, ni ses coefficients.

Thomas a le droit de poser deux questions, chacune de la forme « que vaut $P(a)$ ? » pour un nombre $a$ de son choix. Il pose la première, écoute la réponse, et peut en tenir compte pour choisir le nombre de sa seconde question.

Après ces deux réponses, Thomas doit annoncer le polynôme $P$ exactement.

Comment doit-il s'y prendre ?

## Hints

1. Que vaut $P(1)$, pour un polynôme dont les coefficients sont $a_0, a_1, \ldots, a_d$ ?
2. Une fois $P(1)$ connu, que sait-on de chaque coefficient pris séparément ?
3. Si tous les coefficients sont strictement plus petits qu'un nombre $B$, que représente $P(B)$ ?
4. Pense à l'écriture d'un nombre en base $B$ : « $c_d c_{d-1} \ldots c_1 c_0$ en base $B$ » désigne le nombre $c_d B^d + \cdots + c_1 B + c_0$, et les chiffres $c_i$ sont alors uniquement déterminés dès qu'ils sont tous entre $0$ et $B-1$.

## Solution

Écrivons $P(x) = a_d x^d + a_{d-1}x^{d-1} + \cdots + a_1 x + a_0$, où tous les $a_i$ sont des entiers naturels.

**Première question : Thomas demande $P(1)$.**

Comme $1^k = 1$ pour tout $k$,

$$s = P(1) = a_d + a_{d-1} + \cdots + a_1 + a_0 .$$

Thomas obtient donc la **somme** des coefficients.

Si $s = 0$ : tous les coefficients sont des entiers naturels de somme nulle, donc tous nuls, et $P$ est le polynôme nul. Thomas a fini (il peut poser n'importe quelle seconde question).

Sinon $s \geqslant 1$, et surtout chaque coefficient vérifie

$$0 \leqslant a_i \leqslant s < s+1 ,$$

puisque c'est un des termes d'une somme de nombres positifs valant $s$.

**Seconde question : Thomas demande $P(s+1)$.**

Posons $B = s+1$. Thomas reçoit le nombre

$$N = P(B) = a_d B^d + a_{d-1}B^{d-1} + \cdots + a_1 B + a_0 .$$

Or chaque $a_i$ est un entier compris entre $0$ et $B - 1$. Cette égalité dit donc exactement que

$$a_d,\ a_{d-1},\ \ldots,\ a_1,\ a_0$$

sont les **chiffres de $N$ écrit en base $B$**.

Et l'écriture d'un entier naturel dans une base $B \geqslant 2$ est unique. Thomas n'a donc qu'à écrire $N$ en base $B = s+1$ : les chiffres obtenus, lus de gauche à droite, sont les coefficients $a_d, \ldots, a_1, a_0$. Le polynôme est entièrement déterminé.

(Le cas $s = 1$ donne $B = 2$, ce qui est bien une base valable : $P$ est alors un simple monôme $x^k$, et $N = 2^k$ le dit.)

$$\boxed{\ \text{Thomas demande } P(1) = s, \text{ puis } P(s+1) : \text{les chiffres en base } s+1 \text{ sont les coefficients.}\ }$$

## Going further

On peut concrétiser. Supposons que Sophie réponde $P(1) = 5$, puis $P(6) = 227$.

On écrit $227$ en base $6$ : $227 = 6^3 \times 1 + \ldots$ ; comme $216 = 6^3$, il reste $11 = 1 \times 6 + 5$, donc

$$227 = 1 \times 6^3 + 0 \times 6^2 + 1 \times 6 + 5 .$$

Les chiffres sont $1, 0, 1, 5$, donc $P(x) = x^3 + x + 5$. On vérifie : $1 + 0 + 1 + 5 = 5$, c'est bien la première réponse.

La méthode échoue si l'on autorise des coefficients négatifs, ou non entiers : c'est le fait que les coefficients soient des entiers naturels majorés par $s$ qui les transforme en chiffres.
