---
id: "2415"
title: "Trois sacs et un dé"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 35
tags: [probabilites-totales, probabilite-conditionnelle, arbre, tirage-sans-remise]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Conditional Probability"
  reference: "Handout-498-578.pdf, exercice 5b et 5c (réponses dans Handout-499-578.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-498-578.pdf"
---

## Statement

On dispose de trois sacs :

* le sac $A$ contient $1$ boule rouge et $3$ boules vertes ;
* le sac $B$ contient $2$ boules rouges et $2$ boules vertes ;
* le sac $C$ contient $1$ boule rouge et $4$ boules vertes.

On lance un dé équilibré à six faces. Si le résultat est $1$, $2$ ou $3$, on prend le sac $A$ ; si c'est $4$ ou $5$, le sac $B$ ; si c'est $6$, le sac $C$.

1. On tire ensuite une boule au hasard dans le sac choisi. Quelle est la probabilité qu'elle soit verte ?
2. Sachant que la boule tirée est verte, quelle est la probabilité que le sac choisi soit le sac $A$ ?
3. On reprend l'expérience, mais cette fois on tire **deux** boules du sac choisi, simultanément (donc sans remise). Quelle est la probabilité qu'elles soient de la même couleur ?

## Hints

1. Commence par un arbre : première branche, le choix du sac ; seconde branche, la couleur tirée.
2. Les trois sacs forment une partition : exactement l'un des trois est choisi. C'est la situation de la formule des probabilités totales.
3. Pour la question 2, il faut « remonter » l'arbre : $P(A \mid V) = \dfrac{P(A \cap V)}{P(V)}$.
4. Pour la question 3, traite chaque sac séparément : dans un sac donné, quelle est la probabilité de tirer deux boules de la même couleur ? Additionne ensuite comme à la question 1.

## Solution

Notons $A$, $B$, $C$ les événements « le sac choisi est $A$ », « … $B$ », « … $C$ ». D'après la règle du dé,

$$P(A) = \frac{3}{6} = \frac{1}{2}, \qquad P(B) = \frac{2}{6} = \frac{1}{3}, \qquad P(C) = \frac{1}{6} .$$

Ces trois événements sont deux à deux incompatibles et leur réunion est l'univers entier : ils forment une **partition**.

### 1. La probabilité de tirer une boule verte

Notons $V$ l'événement « la boule tirée est verte ». Dans chaque sac,

$$P_A(V) = \frac{3}{4}, \qquad P_B(V) = \frac{2}{4} = \frac{1}{2}, \qquad P_C(V) = \frac{4}{5} .$$

La formule des probabilités totales donne

$$P(V) = P(A)\,P_A(V) + P(B)\,P_B(V) + P(C)\,P_C(V) = \frac{1}{2}\times\frac{3}{4} + \frac{1}{3}\times\frac{1}{2} + \frac{1}{6}\times\frac{4}{5} .$$

Soit

$$P(V) = \frac{3}{8} + \frac{1}{6} + \frac{2}{15} = \frac{45}{120} + \frac{20}{120} + \frac{16}{120} = \frac{81}{120} = \frac{27}{40} = \text{0,675} .$$

### 2. Remonter à l'origine

$$P_V(A) = \frac{P(A \cap V)}{P(V)} = \frac{\dfrac{1}{2}\times\dfrac{3}{4}}{\dfrac{27}{40}} = \frac{\dfrac{3}{8}}{\dfrac{27}{40}} = \frac{3}{8}\times\frac{40}{27} = \frac{5}{9} \approx \text{0,556} .$$

Savoir que la boule est verte fait donc passer la probabilité du sac $A$ de $\text{0,5}$ à environ $\text{0,556}$ : c'est logique, puisque le sac $A$ est plutôt riche en vert.

### 3. Deux boules de la même couleur

Traitons chaque sac. Tirer deux boules simultanément dans un sac de $n$ boules donne $\binom{n}{2}$ tirages équiprobables. Notons $M$ l'événement « les deux boules ont la même couleur ».

*Sac $A$* ($1$ rouge, $3$ vertes, $4$ boules). Deux rouges : impossible, il n'y en a qu'une. Deux vertes : $\binom{3}{2} = 3$ tirages sur $\binom{4}{2} = 6$. Donc $P_A(M) = \dfrac{3}{6} = \dfrac{1}{2}$.

*Sac $B$* ($2$ rouges, $2$ vertes, $4$ boules). Deux rouges : $\binom{2}{2} = 1$. Deux vertes : $1$. Donc $P_B(M) = \dfrac{2}{6} = \dfrac{1}{3}$.

*Sac $C$* ($1$ rouge, $4$ vertes, $5$ boules). Deux rouges : impossible. Deux vertes : $\binom{4}{2} = 6$ sur $\binom{5}{2} = 10$. Donc $P_C(M) = \dfrac{6}{10} = \dfrac{3}{5}$.

La formule des probabilités totales donne

$$P(M) = \frac{1}{2}\times\frac{1}{2} + \frac{1}{3}\times\frac{1}{3} + \frac{1}{6}\times\frac{3}{5} = \frac{1}{4} + \frac{1}{9} + \frac{1}{10} .$$

Au dénominateur commun $180$ :

$$P(M) = \frac{45}{180} + \frac{20}{180} + \frac{18}{180} = \frac{83}{180} \approx \text{0,461} .$$

**Réponses.** $\dfrac{27}{40} = \text{0,675}$ ; $\dfrac{5}{9} \approx \text{0,556}$ ; $\dfrac{83}{180} \approx \text{0,461}$.

## Going further

1. À la question 3, calculer aussi la probabilité que les deux boules soient de couleurs différentes, et vérifier que la somme fait $1$.
2. Sachant que les deux boules tirées à la question 3 sont de la même couleur, quelle est la probabilité que le sac soit $C$ ?
3. On garde les mêmes effectifs de sacs ($4$, $4$ et $5$ boules) et le même total de $4$ boules rouges et $9$ boules vertes, mais on est libre de les répartir autrement. Quelle répartition rend la probabilité de la question 1 la plus grande possible ?
