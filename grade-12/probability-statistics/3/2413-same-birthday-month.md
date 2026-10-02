---
id: "2413"
title: "Deux personnes nées le même mois"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [probabilite, evenement-contraire, denombrement, independance, paradoxe]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Probability"
  reference: "Handout-487-575.pdf, exercice 9 (réponses dans Handout-488-575.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-487-575.pdf"
---

## Statement

On réunit $n$ personnes choisies au hasard. On admet que chaque personne a la même probabilité d'être née dans chacun des $12$ mois de l'année, et que les mois de naissance des différentes personnes sont indépendants.

On note $p_n$ la probabilité qu'au moins deux personnes du groupe soient nées le même mois.

1. Calculer $p_2$ et $p_3$.
2. Montrer que pour $2 \le n \le 12$,

   $$p_n = 1 - \frac{12 \times 11 \times 10 \times \cdots \times (13-n)}{12^{\,n}} = 1 - \frac{12!}{(12-n)!\;12^{\,n}} .$$

3. Que vaut $p_n$ pour $n \ge 13$ ?
4. Déterminer le plus petit entier $n$ tel que $p_n \ge \dfrac{1}{2}$. Le résultat surprend-il ?

## Hints

1. L'événement contraire de « au moins deux personnes ont le même mois de naissance » est bien plus simple à décrire. Lequel est-ce ?
2. Pour que les $n$ mois soient tous différents, attribue-les un par un : la première personne a $12$ mois possibles, la deuxième $11$, et ainsi de suite.
3. Le nombre total de répartitions des mois est $12^{\,n}$, toutes équiprobables.
4. Pour la question 4, calcule $p_4$ et $p_5$ à la calculatrice. Il n'est pas nécessaire de résoudre une inéquation.

## Solution

### L'événement contraire

L'événement contraire de « au moins deux personnes sont nées le même mois » est

$$\overline{A_n} : \text{« les } n \text{ personnes sont nées dans } n \text{ mois tous différents »} .$$

Il est bien plus facile à compter, car il n'y a pas de cas à distinguer.

### 2. La formule

Décrivons le résultat par la liste des mois de naissance des $n$ personnes, dans l'ordre. Chaque personne pouvant être née dans l'un quelconque des $12$ mois, indépendamment des autres, il y a

$$12^{\,n}$$

listes possibles, toutes de même probabilité.

Comptons celles dont les $n$ mois sont tous différents. On attribue les mois un par un :

* la première personne : $12$ mois possibles ;
* la deuxième : $11$ mois, tous sauf celui de la première ;
* la troisième : $10$ mois ;
* …
* la $n$-ième : $12 - (n-1) = 13 - n$ mois.

Cela fait $12 \times 11 \times \cdots \times (13-n)$ listes, c'est-à-dire $\dfrac{12!}{(12-n)!}$. Donc

$$P(\overline{A_n}) = \frac{12!}{(12-n)!\;12^{\,n}} \qquad \text{et} \qquad p_n = 1 - \frac{12!}{(12-n)!\;12^{\,n}} .$$

### 1. Les premières valeurs

$$p_2 = 1 - \frac{12 \times 11}{12^{2}} = 1 - \frac{11}{12} = \frac{1}{12} \approx \text{0,083} ,$$

$$p_3 = 1 - \frac{12 \times 11 \times 10}{12^{3}} = 1 - \frac{110}{144} = \frac{17}{72} \approx \text{0,236} .$$

### 3. Au-delà de douze personnes

S'il y a $n \ge 13$ personnes pour seulement $12$ mois, deux personnes au moins partagent forcément un mois : c'est le principe des tiroirs. Donc $p_n = 1$.

*(La formule le dit aussi : pour $n = 13$, l'un des facteurs du produit $12 \times 11 \times \cdots$ vaut $0$.)*

### 4. Le seuil de une chance sur deux

$$p_4 = 1 - \frac{12 \times 11 \times 10 \times 9}{12^{4}} = 1 - \frac{11\,880}{20\,736} = 1 - \frac{55}{96} = \frac{41}{96} \approx \text{0,427} ,$$

$$p_5 = 1 - \frac{12 \times 11 \times 10 \times 9 \times 8}{12^{5}} = 1 - \frac{95\,040}{248\,832} = \frac{89}{144} \approx \text{0,618} .$$

Comme $p_4 < \text{0,5} \le p_5$ et que la suite $(p_n)$ est croissante (ajouter une personne ne peut pas faire disparaître une coïncidence), le plus petit entier cherché est

$$n = 5 .$$

**Commentaire.** Cinq personnes suffisent pour que la coïncidence soit plus probable que son contraire, alors qu'il y a douze mois. La raison est qu'avec $5$ personnes on ne compare pas $5$ mois, mais les $\binom{5}{2} = 10$ paires de personnes : il y a déjà dix occasions de coïncidence. C'est le même mécanisme que dans le célèbre paradoxe des anniversaires, où $23$ personnes suffisent pour dépasser une chance sur deux avec $365$ jours.

## Going further

1. Calculer $p_6$ et $p_7$. À partir de combien de personnes la coïncidence est-elle quasi certaine, disons au moins $95\%$ ?
2. Reprendre l'exercice avec les jours de la semaine à la place des mois.
3. Avec $365$ jours, vérifier à la calculatrice que le seuil de $50\%$ est atteint pour $n = 23$.
