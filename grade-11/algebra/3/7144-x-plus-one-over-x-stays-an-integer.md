---
id: "7144"
title: "x plus un sur x reste entier"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [recurrence forte, identites, puissances, entiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Débutants : stratégies de base », mercredi après-midi (Pierre Bertin), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Soit $x$ un nombre réel non nul tel que $x + \dfrac{1}{x}$ soit un entier.

Montrer que pour tout entier $n \geqslant 1$, le nombre

$$x^n + \frac{1}{x^n}$$

est lui aussi un entier.

## Hints

1. Essaie d'abord $n = 2$ : développe $\left(x + \frac{1}{x}\right)^2$ et regarde ce qui
   apparaît.
2. Essaie ensuite $n = 3$ : multiplie $x + \frac1x$ par $x^2 + \frac1{x^2}$ et développe.
3. Le calcul de la question 2 se généralise. Multiplie $x + \frac1x$ par
   $x^n + \frac{1}{x^n}$ et regroupe les quatre termes obtenus.
4. Tu obtiendras une relation entre les rangs $n+1$, $n$ et $n-1$. Une récurrence ordinaire
   ne suffira pas : il faut une récurrence qui suppose le résultat aux **deux** rangs
   précédents.

## Solution

Posons, pour tout entier $n \geqslant 0$,

$$u_n = x^n + \frac{1}{x^n} .$$

Remarquons que $u_0 = 1 + 1 = 2$ et que $u_1 = x + \frac1x$ est un entier par hypothèse.

**La relation clé.** Développons le produit $u_1 \times u_n$ :

$$\left(x + \frac{1}{x}\right)\left(x^n + \frac{1}{x^n}\right)
= x^{n+1} + \frac{x}{x^n} + \frac{x^n}{x} + \frac{1}{x^{n+1}}
= x^{n+1} + \frac{1}{x^{n+1}} + x^{n-1} + \frac{1}{x^{n-1}} ,$$

c'est-à-dire

$$u_1 \, u_n = u_{n+1} + u_{n-1}, \qquad \text{donc} \qquad u_{n+1} = u_1 u_n - u_{n-1} . \qquad (\star)$$

Cette relation vaut pour tout $n \geqslant 1$.

**La récurrence.** Montrons par récurrence forte que $u_n$ est entier pour tout
$n \geqslant 0$.

*Initialisation.* $u_0 = 2$ est entier, et $u_1$ est entier par hypothèse.

*Hérédité.* Soit $n \geqslant 1$ et supposons que $u_{n-1}$ et $u_n$ sont entiers. D'après
$(\star)$,

$$u_{n+1} = u_1 u_n - u_{n-1}$$

est une somme et un produit d'entiers, donc un entier.

**Conclusion.** Pour tout $n \geqslant 1$, le nombre $x^n + \dfrac{1}{x^n}$ est un entier.

## Going further

La relation $(\star)$ montre bien plus que l'énoncé : elle permet de **calculer** $u_n$ sans
connaître $x$. Par exemple si $u_1 = 3$ :

$$u_2 = 3 \times 3 - 2 = 7, \quad u_3 = 3 \times 7 - 3 = 18, \quad u_4 = 3 \times 18 - 7 = 47, \ \ldots$$

Le nombre $x$ lui-même vaut ici $\frac{3 + \sqrt 5}{2}$, un irrationnel ; pourtant toutes les
quantités $x^n + \frac{1}{x^n}$ sont des entiers.

Le cas $u_1 = 1$ est amusant : on trouve $u_2 = -1$, $u_3 = -2$, $u_4 = -1$, $u_5 = 1$,
$u_6 = 2$, puis la suite se répète avec une période de $6$. Ce n'est pas un hasard : quand
$x + \frac1x = 1$, le nombre $x$ vérifie $x^2 - x + 1 = 0$, donc $x^6 = 1$.

Une question pour continuer : le même argument marche-t-il pour $x^n - \dfrac{1}{x^n}$ ?
