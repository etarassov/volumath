---
id: "3022"
title: "7^p + 3^p − 4 n'est jamais un carré"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [carres, restes, puissances, nombres-premiers, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Fermat's Thm"
  reference: "Handout-3291-2885.pdf, exercice 15 (JBMO 2007)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3291-2885.pdf"
---

## Statement

Soit $p$ un nombre premier. Montrer que

$$7^p + 3^p - 4$$

n'est jamais le carré d'un entier.

## Hints

1. Calcule la valeur pour $p = 2$, $p = 3$, $p = 5$ : $54$, $366$, $17\,046$. Que remarques-tu sur leur reste dans la division par $4$ ?
2. Quels restes un carré parfait peut-il laisser dans la division par $4$ ? Traite séparément le cas d'un nombre pair et celui d'un nombre impair.
3. Modulo $4$, les nombres $7$ et $3$ sont tous les deux égaux à $-1$. C'est ce qui rend le calcul très court.
4. Attention : $p = 2$ est premier lui aussi. Vérifie que ton argument le couvre.

## Solution

**Les restes possibles d'un carré modulo 4.**

Soit $m$ un entier.

- Si $m$ est pair, $m = 2q$ et $m^2 = 4q^2 \equiv 0 \pmod 4$.
- Si $m$ est impair, $m = 2q+1$ et $m^2 = 4q^2 + 4q + 1 = 4q(q+1) + 1 \equiv 1 \pmod 4$.

Un carré parfait laisse donc toujours le reste $0$ ou $1$ dans la division par $4$. **Jamais
le reste 2.**

**Le reste de notre nombre modulo 4.**

Posons $N = 7^p + 3^p - 4$. Modulo $4$ :

$$7 = 4 + 3 \equiv 3 \equiv -1 \qquad \text{et} \qquad 3 \equiv -1,$$

donc

$$N \equiv (-1)^p + (-1)^p - 0 = 2 \times (-1)^p \pmod 4.$$

Deux cas :

- si $p$ est impair (c'est le cas de tous les nombres premiers sauf $2$), alors
  $2 \times (-1)^p = -2 \equiv 2 \pmod 4$ ;
- si $p = 2$, alors $2 \times (-1)^2 = 2 \equiv 2 \pmod 4$.

Dans les deux cas,

$$N \equiv 2 \pmod 4.$$

**Conclusion.**

$N$ laisse le reste $2$ dans la division par $4$, alors qu'un carré parfait laisse toujours
le reste $0$ ou $1$. Donc $7^p + 3^p - 4$ n'est jamais un carré parfait.

Vérification sur les petites valeurs : $p = 2$ donne $49 + 9 - 4 = 54 = 4 \times 13 + 2$ ;
$p = 3$ donne $343 + 27 - 4 = 366 = 4 \times 91 + 2$ ; $p = 5$ donne
$16\,807 + 243 - 4 = 17\,046 = 4 \times 4261 + 2$.

## Going further

Remarque que l'hypothèse « $p$ premier » n'a servi à rien : le résultat est vrai pour
**tout** entier $p \geq 1$, premier ou non. Par exemple $p = 4$ donne
$2401 + 81 - 4 = 2478 = 4 \times 619 + 2$. Dans un concours, l'énoncé impose souvent des
hypothèses plus fortes que nécessaire — repérer celles qui ne servent pas fait partie du
travail.
