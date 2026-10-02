---
id: "2803"
title: "La parité de ad − bc"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 25
tags: [probabilite, parite, independance, evenement-contraire]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Relays"
  reference: "Handout-1301-1322.pdf, problème 12 (réponse dans Handout-1302-1322.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1301-1322.pdf"
---

## Statement

On choisit quatre entiers $a$, $b$, $c$ et $d$ au hasard, indépendamment les uns des autres, chacun tiré au sort parmi les $2008$ entiers de $0$ à $2007$. Ils ne sont pas forcément distincts.

Quelle est la probabilité que le nombre $ad - bc$ soit **pair** ?

## Hints

1. Un nombre est pair ou impair : seule la parité de $a$, $b$, $c$, $d$ compte ici. Parmi les entiers de $0$ à $2007$, combien sont pairs ? combien sont impairs ?
2. Quelle est donc la probabilité qu'un entier tiré au sort soit pair ?
3. À quelle condition le produit $ad$ est-il **impair** ? C'est plus simple à dire que la condition pour qu'il soit pair.
4. $ad - bc$ est pair exactement quand $ad$ et $bc$ ont la **même** parité. Cela fait deux cas à séparer.
5. $a$ et $d$ d'un côté, $b$ et $c$ de l'autre : les quatre tirages sont indépendants, donc les événements « $ad$ est pair » et « $bc$ est pair » le sont aussi.

## Solution

**Seule la parité compte.**

Entre $0$ et $2007$ il y a $2008$ entiers : $1004$ pairs ($0, 2, \ldots, 2006$) et $1004$ impairs ($1, 3, \ldots, 2007$). Chaque entier étant tiré au hasard de façon équiprobable,

$$P(a \text{ pair}) = \frac{1004}{2008} = \frac12, \qquad P(a \text{ impair}) = \frac12,$$

et de même pour $b$, $c$ et $d$.

**La parité d'un produit.**

Un produit de deux entiers est impair si et seulement si **les deux** facteurs sont impairs. Comme $a$ et $d$ sont tirés indépendamment :

$$P(ad \text{ impair}) = P(a \text{ impair}) \times P(d \text{ impair}) = \frac12 \times \frac12 = \frac14 .$$

En passant à l'événement contraire,

$$P(ad \text{ pair}) = 1 - \frac14 = \frac34 .$$

Le calcul est identique pour $bc$ :

$$P(bc \text{ pair}) = \frac34, \qquad P(bc \text{ impair}) = \frac14 .$$

**La parité de la différence.**

Une différence de deux entiers est paire si et seulement si ces deux entiers ont la même parité :

- pair $-$ pair $=$ pair ;
- impair $-$ impair $=$ pair ;
- pair $-$ impair $=$ impair, et impair $-$ pair $=$ impair.

Donc l'événement « $ad - bc$ est pair » se décompose en deux cas incompatibles :

$$\{ad \text{ pair et } bc \text{ pair}\} \quad \text{ou} \quad \{ad \text{ impair et } bc \text{ impair}\}.$$

Les quatre tirages étant indépendants, $ad$ ne dépend que de $a$ et $d$, tandis que $bc$ ne dépend que de $b$ et $c$ : les deux événements portant sur $ad$ et sur $bc$ sont indépendants, et les probabilités se multiplient dans chaque cas.

$$P(ad - bc \text{ pair}) = \frac34 \times \frac34 + \frac14 \times \frac14 = \frac{9}{16} + \frac{1}{16} = \frac{10}{16} = \frac58 .$$

**Conclusion.** La probabilité que $ad - bc$ soit pair vaut

$$\frac58 = \text{0,625}.$$

**Pourquoi ce n'est pas $\frac12$.** On pourrait croire qu'un nombre « au hasard » a une chance sur deux d'être pair. Mais $ad$ n'est pas un entier tiré au hasard : un produit a bien plus de chances d'être pair qu'impair, car il suffit qu'**un** de ses deux facteurs le soit. Ce déséquilibre se retrouve dans la différence, et pousse la réponse au-dessus de $\frac12$.

## Going further

1. Quelle est la probabilité que $ad - bc$ soit **impair** ? Vérifier que les deux réponses ont bien pour somme $1$.
2. Reprendre le problème avec $a$, $b$, $c$, $d$ tirés parmi les entiers de $1$ à $2007$ : la réponse change-t-elle ? De combien ?
3. Le nombre $ad - bc$ est le déterminant du tableau $\begin{pmatrix} a & b \\ c & d\end{pmatrix}$. Quelle est la probabilité qu'il soit divisible par $3$, si les quatre entiers sont tirés parmi $0, 1, \ldots, 2006$ ?
