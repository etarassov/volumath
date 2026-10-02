---
id: "2610"
title: "Le premier qui fait pile a gagné"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [suite-geometrique, serie, limite, jeu, equite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, Probability I (Anand Rajagopalan)"
  reference: "Handout-451-519.pdf, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-451-519.pdf"
---

## Statement

Anne et Bruno lancent une pièce équilibrée à tour de rôle : Anne d'abord, puis Bruno, puis Anne, et ainsi de suite. **Le premier qui obtient pile a gagné**, et le jeu s'arrête.

1. Quelle est la probabilité que le jeu ne s'arrête jamais ?
2. Quelle est la probabilité qu'Anne gagne ?
3. Quelle est la probabilité que Bruno gagne ? Le jeu est-il équitable ?

## Hints

1. Pour que le jeu dure encore après $n$ lancers, il faut que les $n$ lancers aient tous donné face. Quelle est la probabilité de cela ? Que devient-elle quand $n$ tend vers $+\infty$ ?
2. Anne gagne au lancer numéro $1$, ou au lancer numéro $3$, ou au lancer numéro $5$... Traite ces cas séparément, ils sont incompatibles.
3. Pour qu'Anne gagne exactement à son $(k+1)$-ième lancer, il faut que les $2k$ premiers lancers donnent face, puis que le suivant donne pile.
4. Tu obtiens une somme de termes d'une suite géométrique. Quelle est sa raison ? Fais tendre le nombre de termes vers l'infini.

## Solution

**1. Le jeu s'arrête presque sûrement.**

Notons $A_n$ l'événement « le jeu dure encore après le $n$-ième lancer ». Cela signifie exactement que les $n$ premiers lancers ont tous donné face, donc
$$P(A_n) = \left(\frac{1}{2}\right)^n .$$

L'événement « le jeu ne s'arrête jamais » est inclus dans $A_n$ pour **tout** $n$, donc sa probabilité $p$ vérifie $0 \leq p \leq \left(\tfrac12\right)^n$ pour tout $n$.

Or $\left(\tfrac12\right)^n \to 0$ quand $n \to +\infty$, car $0 < \tfrac12 < 1$. Par encadrement, $p = 0$.

**La probabilité que le jeu ne s'arrête jamais est nulle.**

**2. La probabilité qu'Anne gagne.**

Anne lance aux tours numéro $1, 3, 5, \ldots$, c'est-à-dire au lancer numéro $2k+1$ pour $k = 0, 1, 2, \ldots$

Notons $G_k$ l'événement « Anne gagne au lancer numéro $2k+1$ ». Cet événement se produit exactement lorsque les $2k$ premiers lancers donnent face et que le lancer numéro $2k+1$ donne pile. Les lancers étant indépendants,
$$P(G_k) = \left(\frac12\right)^{2k} \times \frac12 = \frac12 \left(\frac14\right)^{k} .$$

Les événements $G_0, G_1, G_2, \ldots$ sont deux à deux incompatibles, et d'après la question 1 leur réunion est l'événement « Anne gagne » (le cas « le jeu ne s'arrête jamais » a probabilité nulle). Donc $P(\text{Anne gagne})$ est la limite, quand $N \to +\infty$, de
$$\sum_{k=0}^{N} \frac12 \left(\frac14\right)^{k} = \frac12 \times \frac{1 - \left(\frac14\right)^{N+1}}{1 - \frac14} .$$

Comme $\left(\tfrac14\right)^{N+1} \to 0$, cette expression tend vers
$$\frac12 \times \frac{1}{1 - \frac14} = \frac12 \times \frac{4}{3} = \frac{2}{3}.$$

$$\boxed{P(\text{Anne gagne}) = \frac{2}{3}.}$$

**3. La probabilité que Bruno gagne.**

Les trois issues « Anne gagne », « Bruno gagne » et « le jeu ne s'arrête jamais » forment une partition, et la dernière a probabilité $0$. Donc
$$P(\text{Bruno gagne}) = 1 - \frac23 = \frac13 .$$

**Le jeu n'est pas du tout équitable : Anne gagne deux fois sur trois.** Cela vient uniquement du fait qu'elle commence.

*Autre façon de voir le résultat.* Notons $a$ la probabilité que le joueur qui va lancer gagne la partie. Il gagne tout de suite avec probabilité $\tfrac12$ ; sinon, avec probabilité $\tfrac12$, c'est à l'autre de lancer dans exactement la même situation, et l'autre gagne alors avec probabilité $a$. Donc
$$a = \frac12 + \frac12 (1 - a),$$
ce qui donne $2a = 1 + 1 - a$, puis $a = \dfrac23$.

## Going further

En changeant la règle on peut viser n'importe quelle probabilité. Par exemple, pour fabriquer un jeu qu'Anne gagne avec probabilité $\tfrac{1}{3}$ exactement, il suffit d'écrire $\tfrac13$ en binaire : $\tfrac13 = \text{0,010101}\ldots_2$. On lance la pièce indéfiniment pour construire un nombre binaire aléatoire entre $0$ et $1$, et Anne gagne si ce nombre est plus petit que $\tfrac13$. Un seul lancer suffit souvent à décider.
