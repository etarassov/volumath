---
id: "1810"
title: "Des boules noires jamais côte à côte"
grade: 12
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, combinaisons, boules, bijection]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Combinations"
  reference: "Handout-1757-1621.pdf, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1757-1621.pdf"
---

## Statement

On dispose de $m$ boules blanches et de $n$ boules noires. Les boules d'une même couleur sont indiscernables entre elles, et on suppose $m > n$.

On aligne les $m+n$ boules sur une rangée. Combien y a-t-il d'alignements dans lesquels deux boules noires ne sont **jamais** voisines ?

## Hints

1. Commence par des petits cas à la main. Pour $m = 3$ et $n = 2$, écris tous les alignements valables. Combien en trouves-tu ?
2. Essayer de placer les boules dans l'ordre, de gauche à droite, mène vite à un calcul pénible. Change de point de vue : place d'abord une seule couleur.
3. Aligne les $m$ boules blanches. Elles découpent la rangée en « emplacements » où l'on pourra glisser une boule noire. Combien y a-t-il d'emplacements, en comptant celui tout à gauche et celui tout à droite ?
4. Que se passe-t-il si deux boules noires vont dans le même emplacement ? Et si chaque emplacement reçoit au plus une boule noire ?
5. Il ne reste plus qu'à choisir les emplacements occupés, sans ordre puisque les boules noires sont indiscernables.

## Solution

**Un petit cas d'abord.** Avec $m = 3$ blanches et $n = 2$ noires, les alignements valables sont

$$\text{NBNBB},\quad \text{NBBNB},\quad \text{NBBBN},\quad \text{BNBNB},\quad \text{BNBBN},\quad \text{BBNBN},$$

soit $6$ alignements.

**L'idée : placer les blanches d'abord.**

Alignons les $m$ boules blanches :

$$\_\ \text{B} \ \_\ \text{B} \ \_ \ \cdots \ \text{B} \ \_$$

Les tirets marquent les **emplacements** où l'on peut glisser des boules noires : un avant la première blanche, un entre chaque paire de blanches voisines (il y en a $m-1$), et un après la dernière blanche. Cela fait en tout

$$1 + (m-1) + 1 = m+1 \ \text{emplacements}.$$

**Pourquoi un emplacement ne peut recevoir qu'une seule noire.**

Si deux boules noires étaient placées dans le même emplacement, elles se retrouveraient voisines, ce qui est interdit. Inversement, si chaque emplacement reçoit au plus une boule noire, alors deux boules noires sont toujours séparées par au moins une boule blanche, donc jamais voisines.

**La correspondance est exacte.**

- Partant d'un alignement valable, effaçons les boules noires. Il reste les $m$ blanches, et chaque noire occupait l'un des $m+1$ emplacements, à raison d'au plus une par emplacement. On obtient donc un choix de $n$ emplacements parmi $m+1$.
- Inversement, à tout choix de $n$ emplacements parmi les $m+1$ correspond un alignement valable, et un seul, car les boules d'une même couleur sont indiscernables.

Les deux constructions sont inverses l'une de l'autre : compter les alignements revient exactement à compter les choix de $n$ emplacements parmi $m+1$.

**Le compte.**

$$\boxed{\binom{m+1}{n} = \frac{(m+1)!}{n!\,(m+1-n)!}}$$

**Vérifications.**

- $m = 3$, $n = 2$ : $\binom{4}{2} = 6$. C'est bien ce qu'on avait trouvé à la main.
- $m = 5$, $n = 1$ : $\binom{6}{1} = 6$, ce qui est clair : la boule noire peut occuper n'importe lequel des $6$ emplacements.

**À quoi sert l'hypothèse $m > n$ ?** Elle garantit $n \le m < m+1$, donc $\binom{m+1}{n}$ n'est pas nul : il existe au moins un alignement valable. Si l'on avait $n > m+1$, il serait impossible de séparer toutes les noires et la réponse serait $0$. La formule $\binom{m+1}{n}$ reste d'ailleurs correcte dans ce cas, puisqu'un coefficient binomial $\binom{p}{q}$ avec $q > p$ vaut $0$.

## Going further

1. Combien y a-t-il d'alignements dans lesquels deux boules **blanches** ne sont jamais voisines ?
2. Et si l'on interdit à la fois deux noires voisines et deux blanches voisines ?
3. Même question, mais les boules sont maintenant disposées sur un **cercle** au lieu d'une rangée.
