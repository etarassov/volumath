---
id: "2809"
title: "Trois pas qui montent"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [suite-recurrente, parite, disjonction-de-cas, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Relays"
  reference: "Handout-1301-1322.pdf, problème 24 (réponse dans Handout-1302-1322.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1301-1322.pdf"
---

## Statement

À partir d'un entier $a_1 \geqslant 1$, on construit une suite par la règle suivante :

- si $a_{n}$ est **pair**, alors $a_{n+1} = \dfrac{a_n}{2}$ ;
- si $a_{n}$ est **impair**, alors $a_{n+1} = 3 a_n + 1$.

Par exemple, en partant de $a_1 = 6$ on obtient $6, 3, 10, 5, 16, \ldots$

Pour combien d'entiers $a_1$ compris entre $1$ et $2008$ a-t-on à la fois

$$a_1 < a_2, \qquad a_1 < a_3 \qquad \text{et} \qquad a_1 < a_4 \;?$$

## Hints

1. Commence par éliminer un grand nombre de valeurs : que se passe-t-il tout de suite si $a_1$ est pair ?
2. Si $a_1$ est impair, calcule $a_2$, puis remarque que $a_2$ est toujours pair. Que vaut alors $a_3$ ?
3. Vérifie que $a_3 > a_1$ est automatique dès que $a_1$ est impair. Il ne reste donc qu'une seule condition à examiner.
4. Tout dépend maintenant de la parité de $a_3$. Écris $a_1$ sous la forme $4k+1$, puis sous la forme $4k+3$, et calcule $a_2$, $a_3$, $a_4$ dans chaque cas.
5. Une fois la condition trouvée, il reste à compter les entiers entre $1$ et $2008$ qui la vérifient.

## Solution

**Étape 1 : $a_1$ doit être impair.**

Si $a_1$ est pair, alors $a_2 = \dfrac{a_1}{2} < a_1$ (car $a_1 > 0$). La condition $a_1 < a_2$ est déjà fausse.

Tous les $a_1$ pairs sont donc éliminés : **$a_1$ est impair**.

**Étape 2 : les deux premières conditions sont alors automatiques.**

Si $a_1$ est impair, $a_2 = 3a_1 + 1 > a_1$ : la première condition est vérifiée.

De plus $3a_1$ est impair, donc $a_2 = 3a_1 + 1$ est **pair**. Par conséquent

$$a_3 = \frac{a_2}{2} = \frac{3a_1 + 1}{2}.$$

Comparons $a_3$ et $a_1$ :

$$\frac{3a_1+1}{2} > a_1 \iff 3a_1 + 1 > 2a_1 \iff a_1 > -1,$$

ce qui est toujours vrai. La deuxième condition est donc vérifiée elle aussi, sans exception.

Tout se joue donc sur la troisième : **$a_1 < a_4$**.

**Étape 3 : séparer deux cas selon le reste de $a_1$ dans la division par $4$.**

Comme $a_1$ est impair, il s'écrit $a_1 = 4k+1$ ou $a_1 = 4k+3$ avec $k$ entier positif ou nul.

*Cas $a_1 = 4k+1$.*

$$a_2 = 3(4k+1) + 1 = 12k + 4, \qquad a_3 = 6k + 2 .$$

Le nombre $a_3 = 6k+2$ est **pair**, donc

$$a_4 = 3k + 1 .$$

La condition $a_1 < a_4$ s'écrit $4k + 1 < 3k + 1$, c'est-à-dire $k < 0$ : impossible. **Ce cas ne donne aucune solution.**

*Cas $a_1 = 4k+3$.*

$$a_2 = 3(4k+3) + 1 = 12k + 10, \qquad a_3 = 6k + 5 .$$

Le nombre $a_3 = 6k+5$ est **impair**, donc

$$a_4 = 3(6k+5) + 1 = 18k + 16 .$$

La condition $a_1 < a_4$ s'écrit $4k + 3 < 18k + 16$, soit $0 < 14k + 13$ : toujours vraie. **Ce cas donne toujours une solution.**

**Étape 4 : compter.**

Les valeurs cherchées sont exactement les entiers de la forme $4k + 3$ compris entre $1$ et $2008$, c'est-à-dire

$$3, \; 7, \; 11, \; \ldots, \; 2007 .$$

C'est une suite arithmétique de raison $4$, de premier terme $3$ et de dernier terme $2007$. Son nombre de termes vaut

$$\frac{2007 - 3}{4} + 1 = \frac{2004}{4} + 1 = 501 + 1 = 502 .$$

**Conclusion.** Il y a exactement $502$ valeurs de $a_1$ convenables : ce sont les entiers dont le reste dans la division par $4$ vaut $3$.

**Un exemple pour contrôler.** Avec $a_1 = 7$ : $a_2 = 22$, $a_3 = 11$, $a_4 = 34$. On a bien $7 < 22$, $7 < 11$ et $7 < 34$. Avec $a_1 = 9$ (qui est de la forme $4k+1$) : $a_2 = 28$, $a_3 = 14$, $a_4 = 7$, et $9 < 7$ est faux.

## Going further

1. Combien d'entiers $a_1$ entre $1$ et $2008$ vérifient en plus $a_1 < a_5$ ?
2. La règle de cette suite est célèbre : on conjecture que, quel que soit le point de départ, la suite finit toujours par atteindre $1$. C'est la **conjecture de Syracuse**, toujours ouverte. Programme la suite et regarde combien d'étapes il faut en partant de $27$.
3. Montrer que si $a_1$ est de la forme $4k+3$, alors $a_4 = 18k + 16$ est pair, et calculer $a_5$ en fonction de $k$.
