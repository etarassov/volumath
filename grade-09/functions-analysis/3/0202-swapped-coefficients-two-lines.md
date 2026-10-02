---
id: "0202"
title: "Deux droites aux coefficients échangés"
grade: 9
theme: functions-analysis
difficulty: 3
duration_min: 20
tags: [fonctions, affine, droites, coefficients, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (7 класс, II полугодие), сост. Е. А. Асташов, Я. А. Верёвкин, А. А. Дейч, С. М. Саулин, А. В. Феклина, МГУ, 2017"
  reference: "Ast2017b.pdf, листок 24, задача 2 (p. 56)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Soient $k$ et $b$ deux nombres. On considère les deux fonctions affines

$$f(x) = kx + b \qquad \text{et} \qquad g(x) = bx + k,$$

obtenues l'une de l'autre en échangeant les deux coefficients. On note $d_f$ et $d_g$ leurs représentations graphiques.

**a)** Pour quelles valeurs de $k$ et de $b$ les droites $d_f$ et $d_g$ sont-elles parallèles sans aucun point commun ? Pour quelles valeurs sont-elles confondues ? Pour quelles valeurs se coupent-elles en un seul point ?

**b)** Dans ce dernier cas, déterminer l'abscisse de leur point d'intersection.

## Hints

1. Quel est le coefficient directeur de $d_f$ ? Et celui de $d_g$ ? À quelle condition deux droites sont-elles parallèles ?
2. Écris les deux expressions dans le cas $k = b$. Que remarques-tu ?
3. Pour trouver le point commun, résous l'équation $kx + b = bx + k$. Regroupe les termes en $x$ d'un côté.
4. Tu arrives à $(k - b)x = k - b$. Tu sais que $k \neq b$ : que peux-tu en faire ?
5. Autre chemin, plus rapide : calcule $f(1)$ et $g(1)$.

## Solution

**a) Les trois cas.**

Le coefficient directeur de $d_f$ est $k$, celui de $d_g$ est $b$. Deux droites sont parallèles exactement lorsqu'elles ont le même coefficient directeur. Il y a donc deux situations.

*Si $k \neq b$ :* les coefficients directeurs sont différents, les droites ne sont pas parallèles. Elles se coupent donc en un seul point.

*Si $k = b$ :* les deux expressions deviennent
$$f(x) = kx + k \qquad \text{et} \qquad g(x) = kx + k.$$
Ce sont les mêmes ! Les deux droites sont **confondues**.

Conclusion surprenante : le cas « parallèles sans point commun » **n'arrive jamais**. Dès que ces deux droites sont parallèles, elles sont confondues.

**b) L'abscisse du point d'intersection.**

On se place dans le cas $k \neq b$. Un point commun aux deux droites a une abscisse $x$ pour laquelle les deux fonctions prennent la même valeur :

$$kx + b = bx + k.$$

On regroupe les termes en $x$ à gauche et les autres à droite :

$$kx - bx = k - b,$$
$$(k - b)\,x = k - b.$$

Comme $k \neq b$, le nombre $k - b$ n'est pas nul : on peut diviser les deux membres par $k - b$, ce qui donne

$$x = 1.$$

**Une deuxième façon de voir, sans calcul.**

Calculons les deux fonctions en $x = 1$ :

$$f(1) = k \times 1 + b = k + b, \qquad g(1) = b \times 1 + k = k + b.$$

Les deux valeurs sont égales, donc le point de coordonnées $(1\,;\,k+b)$ appartient aux deux droites. Comme deux droites non parallèles n'ont qu'un seul point commun, c'est bien celui-là.

**Conclusion.**

Ces deux droites ne sont jamais parallèles sans être confondues : elles sont confondues si $k = b$, et sinon elles se coupent en un seul point, dont l'abscisse vaut toujours $1$, quels que soient $k$ et $b$.

## Going further

1. Quelle est l'ordonnée de ce point d'intersection ?
2. Toutes les paires $(k\,;\,b)$ de somme $5$ donnent des droites qui se coupent au même point. Lequel, et pourquoi ?
3. Mêmes questions pour les droites d'équations $y = kx + b$ et $y = bx - k$.
