---
id: "1416"
title: "Qui tirera la boule blanche en premier ?"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [probabilite, tirage-sans-remise, symetrie, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, Introduction to Probability"
  reference: "Handout-3798-3429.pdf, problème 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3798-3429.pdf"
---

## Statement

Alice et Bruno ont un seau contenant des boules noires et des boules blanches. Ils jouent à tour de rôle : chacun tire une boule au hasard dans le seau, sans la remettre. Le premier qui tire une boule **blanche** gagne. Alice commence.

1. Le seau contient $5$ boules noires et $1$ boule blanche. Quelle est la probabilité qu'Alice gagne ?
2. Le seau contient $6$ boules noires et $2$ boules blanches. Quelle est la probabilité qu'Alice gagne ?

## Hints

1. Plutôt que de suivre le jeu coup par coup, imaginer qu'on vide entièrement le seau et qu'on aligne les boules dans l'ordre où elles sortent.
2. Dans cet alignement, Alice tire les boules de rang $1$, $3$, $5$, ... et Bruno celles de rang $2$, $4$, $6$, ... Alice gagne si et seulement si la **première boule blanche** de l'alignement est à une place impaire.
3. Pour la question 1, il n'y a qu'une boule blanche : toutes les places sont également probables pour elle. Combien y a-t-il de places impaires sur $6$ ?
4. Pour la question 2, il faut la probabilité que la première des deux boules blanches soit à une place impaire. Traiter directement : pour chaque place $k$, calculer la probabilité que la première blanche soit exactement à la place $k$.
5. Une autre voie pour la question 2 : $P(\text{première blanche après la place } k) = $ probabilité que les $k$ premières boules soient toutes noires, ce qui se calcule facilement.

## Solution

**Le bon point de vue : aligner toutes les boules.**

Même si le jeu s'arrête dès qu'une boule blanche sort, rien n'empêche de continuer à vider le seau. On obtient alors un alignement de toutes les boules, dans l'ordre de sortie. Toutes les façons de ranger les boules en ligne sont également probables.

Alice tire les boules de rang $1, 3, 5, \ldots$ et Bruno celles de rang $2, 4, 6, \ldots$ Donc

> **Alice gagne si et seulement si la première boule blanche de l'alignement occupe une place de rang impair.**

**1. Cinq noires et une blanche.**

Il y a $6$ boules et une seule blanche. Par symétrie, cette boule blanche a la même chance d'occuper chacune des $6$ places, soit $\dfrac16$ pour chacune.

Les places impaires sont $1$, $3$, $5$ : il y en a $3$. Donc

$$P(\text{Alice gagne}) = \frac{3}{6} = \frac12 .$$

**2. Six noires et deux blanches.**

Il y a maintenant $8$ boules. Notons $N_k$ l'événement « les $k$ premières boules tirées sont toutes noires ». Comme il y a $6$ boules noires sur $8$,

$$P(N_k) = \frac{6}{8} \times \frac{5}{7} \times \frac{4}{6} \times \cdots$$

soit, en continuant le produit sur $k$ facteurs. Calculons ces valeurs :

$$P(N_0) = 1, \quad P(N_1) = \frac68 = \frac34, \quad P(N_2) = \frac68 \times \frac57 = \frac{15}{28},$$

$$P(N_3) = \frac{15}{28} \times \frac46 = \frac{5}{14}, \quad P(N_4) = \frac{5}{14} \times \frac35 = \frac{3}{14}, \quad P(N_5) = \frac{3}{14} \times \frac24 = \frac{3}{28}, \quad P(N_6) = \frac{3}{28} \times \frac13 = \frac{1}{28}.$$

(Au-delà, $P(N_7) = 0$ : il n'y a que $6$ boules noires.)

La première boule blanche est exactement à la place $k$ lorsque les $k-1$ premières sont noires et que la $k$-ième ne l'est pas. Donc

$$P(\text{première blanche en place } k) = P(N_{k-1}) - P(N_k).$$

Alice gagne si $k \in \{1, 3, 5, 7\}$ :

$$P(\text{Alice gagne}) = \bigl(P(N_0) - P(N_1)\bigr) + \bigl(P(N_2) - P(N_3)\bigr) + \bigl(P(N_4) - P(N_5)\bigr) + \bigl(P(N_6) - P(N_7)\bigr).$$

Remplaçons :

$$P(\text{Alice gagne}) = \left(1 - \frac34\right) + \left(\frac{15}{28} - \frac{5}{14}\right) + \left(\frac{3}{14} - \frac{3}{28}\right) + \left(\frac{1}{28} - 0\right).$$

On met tout sur $28$ :

$$= \frac{7}{28} + \frac{15 - 10}{28} + \frac{6 - 3}{28} + \frac{1}{28} = \frac{7 + 5 + 3 + 1}{28} = \frac{16}{28} = \frac{4}{7}.$$

**Conclusion.** Avec $5$ noires et $1$ blanche, Alice gagne avec probabilité $\boxed{\dfrac12}$. Avec $6$ noires et $2$ blanches, elle gagne avec probabilité $\boxed{\dfrac47} \approx \text{0,571}$.

**Pourquoi Alice est avantagée dans le second cas.** Avec une seule boule blanche et un nombre **pair** de boules, les places impaires et paires se partagent équitablement : personne n'est avantagé. Dès qu'il y a deux boules blanches, la première d'entre elles sort plutôt tôt, et les places du début sont plus souvent impaires que paires (la place $1$ est impaire, la place $2$ est paire, mais la place $1$ est plus probable que la place $2$ pour la première blanche). Le fait de commencer devient alors un avantage.

## Going further

1. Avec $5$ boules noires et $1$ blanche, le nombre total de boules est pair. Que se passe-t-il avec $6$ noires et $1$ blanche ?
2. Montrer qu'avec $n$ boules noires et $1$ blanche, Alice gagne avec probabilité $\dfrac{1}{2}$ si $n$ est impair, et $\dfrac{n/2 + 1}{n+1}$ si $n$ est pair.
3. Avec $6$ noires et $2$ blanches, quelle est la probabilité que la partie dure au moins $4$ tirages ?
