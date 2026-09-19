---
id: "3403"
title: "Le compte des œufs"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [divisibilite, reste, disjonction de cas, numeration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12 Training, Week 2: Divisibility and Modular Arithmetic"
  reference: "Handout-3695-3278.pdf, section 4.1, problème 3 (réponse dans Handout-3712-3278.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3695-3278.pdf"
---

## Statement

Un panier contient des œufs. Sept personnes les comptent l'une après l'autre.

- Jeanne se trompe de $1$ sur le chiffre des unités : son résultat vaut le bon nombre plus $1$, ou bien le bon nombre moins $1$.
- Thomas se trompe de $1$ sur le chiffre des dizaines : son résultat s'écarte du bon nombre de $10$, en plus ou en moins.
- Raoul se trompe de $1$ sur le chiffre des centaines : son résultat s'écarte du bon nombre de $100$, en plus ou en moins.
- Les quatre autres trouvent le bon nombre.

En additionnant les sept résultats, on obtient $3162$.

Combien y a-t-il d'œufs dans le panier ?

## Hints

1. Appelle $n$ le vrai nombre d'œufs. Écris la somme des sept comptes en fonction de $n$ et des trois erreurs.
2. La somme vaut $7n + e$, où $e$ est la somme des trois erreurs. Combien de valeurs $e$ peut-il prendre ?
3. $7n = 3162 - e$. Le membre de gauche est un multiple de $7$. Cela ne laisse pas beaucoup de possibilités pour $e$.
4. Calcule le reste de $3162$ dans la division par $7$, puis le reste de chacune des huit valeurs possibles de $e$.

## Solution

**L'idée : la somme des sept comptes est « sept fois le vrai nombre, plus une petite erreur ». Seul le reste dans la division par $7$ permet de retrouver cette erreur.**

**Étape 1. Mise en équation.**

Notons $n$ le nombre d'œufs. Les quatre personnes exactes annoncent $n$ chacune. Jeanne annonce $n + j$ avec $j = 1$ ou $j = -1$. Thomas annonce $n + 10t$ avec $t = 1$ ou $t = -1$. Raoul annonce $n + 100r$ avec $r = 1$ ou $r = -1$.

La somme des sept comptes vaut donc

$$7n + j + 10t + 100r = 3162.$$

**Étape 2. On utilise la divisibilité par $7$.**

Posons $e = j + 10t + 100r$. Alors $7n = 3162 - e$, donc $3162 - e$ est un multiple de $7$.

Comme $3162 = 7 \times 451 + 5$, le reste de $3162$ dans la division par $7$ est $5$. Il faut donc que $e$ laisse lui aussi le reste $5$ dans la division par $7$.

**Étape 3. On passe les huit cas en revue.**

Il y a $2 \times 2 \times 2 = 8$ valeurs possibles pour $e$. Voici pour chacune son reste dans la division par $7$ :

| $j$ | $10t$ | $100r$ | $e$ | reste de $e$ modulo $7$ |
|---|---|---|---|---|
| $+1$ | $+10$ | $+100$ | $111$ | $6$ |
| $+1$ | $+10$ | $-100$ | $-89$ | $2$ |
| $+1$ | $-10$ | $+100$ | $91$ | $0$ |
| $+1$ | $-10$ | $-100$ | $-109$ | $3$ |
| $-1$ | $+10$ | $+100$ | $109$ | $4$ |
| $-1$ | $+10$ | $-100$ | $-91$ | $0$ |
| $-1$ | $-10$ | $+100$ | $89$ | $\mathbf{5}$ |
| $-1$ | $-10$ | $-100$ | $-111$ | $1$ |

(Pour un nombre négatif, « reste $2$ » veut dire par exemple $-89 = 7 \times (-13) + 2$.)

Une seule ligne convient : $e = 89$, obtenue avec $j = -1$, $t = -1$ et $r = +1$.

**Étape 4. On conclut.**

$$7n = 3162 - 89 = 3073, \qquad n = \frac{3073}{7} = 439.$$

**Vérification.** Le vrai nombre est $439$. Jeanne compte $438$, Thomas compte $429$, Raoul compte $539$, et les quatre autres comptent $439$. La somme vaut

$$438 + 429 + 539 + 4 \times 439 = 1406 + 1756 = 3162.$$

**Conclusion : il y a $439$ œufs dans le panier.**
