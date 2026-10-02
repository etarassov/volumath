---
id: "1010"
title: "De retour au point de départ"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [marche-aleatoire, loi-binomiale, parite, coefficient-binomial]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Intro to combinatorics and probability"
  reference: "Handout-4796-4987.pdf, exercice 25 (réponse dans Handout-4797-4987.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4796-4987.pdf"
---

## Statement

Un jeton est posé sur le $0$ d'une droite graduée. À chaque seconde, il se déplace d'une unité vers la gauche ou d'une unité vers la droite, avec la probabilité $\frac12$ pour chaque direction, indépendamment des déplacements précédents.

1. Quelle est la probabilité que le jeton soit revenu en $0$ après $2$ secondes ? après $4$ secondes ? après $6$ secondes ?
2. Quelle est la probabilité qu'il soit en $0$ après un nombre **impair** de secondes ?
3. Donner une formule pour la probabilité $p_{2n}$ d'être en $0$ après $2n$ secondes. Cette probabilité augmente-t-elle ou diminue-t-elle quand $n$ grandit ?

## Hints

1. Après $k$ secondes, notez $d$ le nombre de pas vers la droite et $g$ le nombre de pas vers la gauche. Que valent $d + g$ et la position du jeton ?
2. Pour la question 2, regardez la parité de la position après $k$ secondes.
3. Un trajet de $2n$ secondes, c'est une suite de $2n$ lettres D et G. Combien y en a-t-il en tout ? Combien ramènent le jeton en $0$ ?
4. Pour la question 3, comparez $p_{2n}$ et $p_{2n+2}$ en formant le quotient $\dfrac{p_{2n+2}}{p_{2n}}$ et en simplifiant.

## Solution

### Mise en place

Un trajet de $k$ secondes est une suite de $k$ lettres, chacune valant D (un pas à droite) ou G (un pas à gauche). Il y a $2^{k}$ trajets possibles, et ils sont tous également probables, chaque pas ayant la probabilité $\frac12$ et les pas étant indépendants.

Si le trajet comporte $d$ pas à droite et $g$ pas à gauche, alors
$$d + g = k \qquad \text{et} \qquad \text{position finale} = d - g.$$

Le jeton est revenu en $0$ exactement quand $d = g$.

### Question 2 : les temps impairs

Si $k$ est impair, l'égalité $d = g$ forcerait $k = 2d$, donc $k$ pair. C'est impossible. Autrement dit, après un nombre impair de secondes, le jeton n'est **jamais** en $0$ : la probabilité vaut $0$.

*(Autre façon de le voir : la position change de parité à chaque seconde. Partant de $0$, qui est pair, la position est impaire à chaque instant impair, donc jamais nulle.)*

### Questions 1 et 3 : les temps pairs

Prenons $k = 2n$. Revenir en $0$ signifie $d = g = n$ : le trajet comporte exactement $n$ lettres D parmi $2n$. Le nombre de tels trajets est le nombre de façons de choisir les positions des D, soit $\binom{2n}{n}$. D'où
$$p_{2n} = \frac{\binom{2n}{n}}{2^{2n}}.$$

Les premières valeurs :

$$p_{2} = \frac{\binom{2}{1}}{4} = \frac{2}{4} = \frac{1}{2}, \qquad p_{4} = \frac{\binom{4}{2}}{16} = \frac{6}{16} = \frac{3}{8}, \qquad p_{6} = \frac{\binom{6}{3}}{64} = \frac{20}{64} = \frac{5}{16}.$$

Soit $\text{0,5}$, puis $\text{0,375}$, puis $\text{0,3125}$.

**La probabilité diminue.** Formons le quotient de deux termes consécutifs :
$$\frac{p_{2n+2}}{p_{2n}} = \frac{\binom{2n+2}{n+1}}{2^{2n+2}} \times \frac{2^{2n}}{\binom{2n}{n}} = \frac{1}{4} \cdot \frac{\binom{2n+2}{n+1}}{\binom{2n}{n}}.$$

Or
$$\frac{\binom{2n+2}{n+1}}{\binom{2n}{n}} = \frac{(2n+2)!}{(n+1)!\,(n+1)!} \cdot \frac{n!\,n!}{(2n)!} = \frac{(2n+2)(2n+1)}{(n+1)^{2}} = \frac{2(2n+1)}{n+1},$$
donc
$$\frac{p_{2n+2}}{p_{2n}} = \frac{2n+1}{2n+2} < 1.$$

La suite $(p_{2n})$ est donc strictement décroissante.

**Conclusion.**
$$p_2 = \frac12, \qquad p_4 = \frac38, \qquad p_6 = \frac{5}{16}, \qquad p_{2n} = \frac{\binom{2n}{n}}{2^{2n}},$$
et la probabilité d'être revenu au point de départ décroît avec le temps ; aux instants impairs elle est nulle.

**Une remarque pour finir.** La décroissance est lente : $p_{100} \approx \text{0,0796}$, $p_{1000} \approx \text{0,0252}$. On peut montrer que $p_{2n}$ se comporte comme $\dfrac{1}{\sqrt{\pi n}}$, ce qui fait qu'elle tend vers $0$ mais très doucement. Le jeton s'éloigne, mais il revient souvent.

## Going further

1. Quelle est la probabilité que le jeton soit en position $2$ après $6$ secondes ? Et en position $3$ ?
2. Montrer que la probabilité d'être en position $j$ après $k$ secondes vaut $\binom{k}{(k+j)/2} / 2^{k}$ lorsque $k$ et $j$ ont la même parité et $|j| \leqslant k$, et $0$ sinon.
3. Vérifier numériquement que $p_{2n}\sqrt{n}$ se stabilise, et deviner vers quoi.
4. Le jeton revient-il en $0$ avec certitude si on le laisse marcher indéfiniment ? (C'est une question célèbre et la réponse est oui, mais elle demande bien plus que cet exercice.)
