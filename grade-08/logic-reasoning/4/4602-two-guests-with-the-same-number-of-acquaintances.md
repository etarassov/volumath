---
id: "4602"
title: "Deux invités qui connaissent autant de monde"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [tiroirs, connaissances, demonstration, cas-extreme]
adapted_from: null
see_also: ["0285"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners Circle, Pigeonhole Principle"
  reference: "Handout-582-703.pdf, problème 6 (réponse dans Handout-583-703.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-582-703.pdf"
---

## Statement

À une fête, il y a $n$ invités, avec $n \geqslant 2$. Se connaître est réciproque : si Alice
connaît Bruno, alors Bruno connaît Alice.

Montrer que, quelle que soit la façon dont les invités se connaissent, il y en a toujours deux
qui connaissent exactement le même nombre de personnes présentes à la fête.

## Hints

1. Pour chaque invité, note le nombre de personnes qu'il connaît à la fête. Entre quelles
   valeurs ce nombre se trouve-t-il ?
2. Il y a $n$ invités et, à première vue, $n$ valeurs possibles : $0, 1, 2, \ldots, n-1$. Cela
   ne suffit pas encore à conclure. Il faut montrer qu'une des valeurs est en trop.
3. Que voudrait dire qu'un invité connaisse $0$ personne ? Et qu'un autre en connaisse $n-1$ ?
4. Ces deux situations peuvent-elles se produire en même temps ?

## Solution

**Les valeurs possibles.**

Pour chaque invité, comptons le nombre de personnes qu'il connaît parmi les autres. Un invité
connaît au minimum $0$ personne et au maximum $n - 1$ personnes (tous les autres). Les valeurs
possibles sont donc
$$0,\ 1,\ 2,\ \ldots,\ n-1,$$
ce qui fait $n$ valeurs pour $n$ invités. Le principe des tiroirs ne s'applique pas encore :
il faut d'abord éliminer une valeur.

**Les deux valeurs extrêmes ne peuvent pas coexister.**

Supposons qu'un invité, appelons-le Adam, ne connaisse personne : sa valeur est $0$.

Supposons en même temps qu'un invité, appelons-le Zoé, connaisse tout le monde : sa valeur est
$n - 1$. Zoé connaît donc en particulier Adam.

Mais se connaître est réciproque : si Zoé connaît Adam, alors Adam connaît Zoé, et donc Adam
connaît au moins une personne. Cela contredit le fait qu'Adam ne connaisse personne.

Ces deux valeurs, $0$ et $n-1$, ne peuvent donc pas être obtenues toutes les deux à cette fête.

**Conclusion par les tiroirs.**

Deux cas se présentent.

- Si personne n'a la valeur $0$, alors toutes les valeurs sont dans $\{1, 2, \ldots, n-1\}$ :
  cela fait $n - 1$ valeurs possibles.
- Si personne n'a la valeur $n-1$, alors toutes les valeurs sont dans $\{0, 1, \ldots, n-2\}$ :
  cela fait encore $n - 1$ valeurs possibles.

Dans les deux cas, les $n$ invités se répartissent dans au plus $n-1$ valeurs. Par le principe
des tiroirs, deux invités au moins ont la même valeur.

**Conclusion.** À toute fête d'au moins deux personnes, il y a toujours deux invités qui
connaissent exactement le même nombre de personnes présentes.

## Going further

Une version bien plus difficile du même problème est proposée en seconde (exercice 0285) : dans
un lycée de $102$ élèves où chacun en connaît au moins $68$ autres, il existe **quatre** élèves
ayant exactement le même nombre de connaissances.
