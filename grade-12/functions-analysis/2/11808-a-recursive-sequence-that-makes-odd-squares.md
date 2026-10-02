---
id: "11808"
title: "Une suite récurrente qui fabrique des carrés impairs"
grade: 12
theme: functions-analysis
difficulty: 2
duration_min: 20
tags: [suite-recurrente, recurrence, conjecture, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 10 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

On définit une suite $(x_n)$ par $x_0 = 0$, $x_1 = 1$ et, pour tout entier naturel $n$,

$$x_{n+2} = 3x_{n+1} - 2x_n .$$

On pose aussi $y_n = x_n^2 + 2^{n+2}$ pour tout entier naturel $n$.

Montrer que, pour tout entier $n \geqslant 1$, le nombre $y_n$ est le carré d'un entier impair.

## Hints

1. Calcule $x_2$, $x_3$, $x_4$, $x_5$. Reconnais-tu ces nombres ? Ajoute-leur $1$.
2. Conjecture une formule pour $x_n$ et démontre-la par récurrence. Comme la relation fait intervenir deux termes consécutifs, la propriété à transmettre porte sur deux rangs à la fois.
3. Remplace $x_n$ par sa formule dans $y_n$, développe, et reconnais une identité remarquable.

## Solution

**Conjecture.** On calcule les premiers termes :
$$x_2 = 3 - 0 = 3, \quad x_3 = 9 - 2 = 7, \quad x_4 = 21 - 6 = 15, \quad x_5 = 45 - 14 = 31 .$$
Ce sont les nombres $2^n - 1$. On conjecture que $x_n = 2^n - 1$ pour tout $n$.

**Démonstration par récurrence.** Pour tout entier naturel $n$, notons $\mathcal{P}(n)$ la propriété « $x_n = 2^n - 1$ et $x_{n+1} = 2^{n+1} - 1$ ».

- *Initialisation.* $x_0 = 0 = 2^0 - 1$ et $x_1 = 1 = 2^1 - 1$, donc $\mathcal{P}(0)$ est vraie.
- *Hérédité.* Supposons $\mathcal{P}(n)$ vraie. La première égalité de $\mathcal{P}(n+1)$, à savoir $x_{n+1} = 2^{n+1} - 1$, est la seconde de $\mathcal{P}(n)$ : elle est acquise. Calculons $x_{n+2}$ avec la relation de récurrence :
$$x_{n+2} = 3\,(2^{n+1} - 1) - 2\,(2^n - 1) = 3 \times 2^{n+1} - 3 - 2^{n+1} + 2 = 2 \times 2^{n+1} - 1 = 2^{n+2} - 1 .$$
Donc $\mathcal{P}(n+1)$ est vraie.

Par récurrence, $x_n = 2^n - 1$ pour tout entier naturel $n$.

**Calcul de $y_n$.** Pour tout $n$ :
$$y_n = (2^n - 1)^2 + 2^{n+2} = 2^{2n} - 2 \times 2^n + 1 + 4 \times 2^n = 2^{2n} + 2 \times 2^n + 1 = (2^n + 1)^2 .$$

**Conclusion.** Pour $n \geqslant 1$, le nombre $2^n$ est pair, donc $2^n + 1$ est impair, et $y_n = (2^n + 1)^2$ est bien le carré d'un entier impair. (Pour $n = 0$, on trouve $y_0 = 4 = 2^2$, le carré d'un nombre pair : c'est pourquoi l'énoncé demande $n \geqslant 1$.)

## Going further

Soit $(u_n)$ définie par $u_0 = a$, $u_1 = b$ et $u_{n+2} = 3u_{n+1} - 2u_n$. Montre que $u_n = \alpha + \beta\, 2^n$ pour des nombres $\alpha$ et $\beta$ que tu exprimeras en fonction de $a$ et $b$.
