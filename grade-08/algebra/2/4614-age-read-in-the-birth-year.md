---
id: "4614"
title: "L'âge qui se lit dans l'année de naissance"
grade: 8
theme: algebra
difficulty: 2
duration_min: 20
tags: [age, equation, chiffres, siecle]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners, Geometry"
  reference: "Handout-1175-1188.pdf, problème d'échauffement (réponse dans Handout-1180-1188.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1175-1188.pdf"
---

## Statement

« En $1932$, j'avais exactement l'âge que forment les deux derniers chiffres de mon année de
naissance. Quand j'ai raconté cette curiosité à mon grand-père, il m'a répondu que c'était aussi
son cas. Je croyais que c'était impossible… »

« Mais non, c'est tout à fait possible », dit une jeune femme.

Quel âge avaient le petit-fils et le grand-père en $1932$ ?

## Hints

1. Le petit-fils est né au vingtième siècle : son année de naissance s'écrit $1900 + x$, où $x$
   est un nombre compris entre $0$ et $99$.
2. Quel âge a-t-il en $1932$ ? Écris l'équation que traduit l'énoncé, puis résous-la.
3. Le grand-père ne peut pas être né au vingtième siècle, sinon il aurait le même âge que son
   petit-fils. Où est-il né alors ?
4. Recommence le même calcul avec $1800 + y$.

## Solution

On suppose, comme l'énoncé y invite, que les anniversaires sont déjà passés en $1932$, de sorte
que l'âge vaut simplement l'année $1932$ moins l'année de naissance.

**Le petit-fils.**

Il est né au vingtième siècle. Notons $x$ le nombre formé par les deux derniers chiffres de son
année de naissance, de sorte que celle-ci vaut $1900 + x$, avec $0 \leqslant x \leqslant 99$.

Son âge en $1932$ vaut
$$1932 - (1900 + x) = 32 - x .$$

L'énoncé dit que cet âge est égal à $x$ :
$$32 - x = x, \qquad \text{donc} \qquad 2x = 32, \qquad \text{donc} \qquad x = 16 .$$

Le petit-fils est né en $1916$ et avait $16$ ans en $1932$.

**Le grand-père.**

Il ne peut pas être né au vingtième siècle : le calcul ci-dessus donnerait $1916$ pour lui aussi,
et il aurait le même âge que son petit-fils. C'est là qu'est la surprise du problème : il suffit
de changer de siècle.

Notons $y$ le nombre formé par les deux derniers chiffres de son année de naissance, avec
$1800 + y$ comme année de naissance. Son âge en $1932$ vaut
$$1932 - (1800 + y) = 132 - y .$$

L'énoncé donne
$$132 - y = y, \qquad \text{donc} \qquad 2y = 132, \qquad \text{donc} \qquad y = 66 .$$

Le grand-père est né en $1866$ et avait $66$ ans en $1932$.

**Vérification.** $1916 + 16 = 1932$ et $1866 + 66 = 1932$. Les deux derniers chiffres de $1916$
forment bien $16$, ceux de $1866$ forment bien $66$.

**Conclusion.** Le petit-fils avait **$16$ ans** et le grand-père **$66$ ans**.

## Going further

Cherche à quelle époque le même jeu redevient possible. En l'an $2050$, par exemple, une personne
née en $1900 + x$ a $150 - x$ ans, donc $x = 75$ : une personne née en $1975$ aura $75$ ans
en $2050$. Et une personne née en $2000 + z$ a $50 - z$ ans, donc $z = 25$ : née en $2025$, elle
aura $25$ ans. Les deux coïncidences se produisent toujours à la même année, à condition de
regarder deux siècles voisins.
