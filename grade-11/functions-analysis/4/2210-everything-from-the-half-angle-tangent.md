---
id: "2210"
title: "Tout depuis la tangente de l'angle moitié"
grade: 11
theme: functions-analysis
difficulty: 4
duration_min: 35
tags: [trigonometrie, duplication, tangente, identite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Trigonometry #1"
  reference: "Handout-834-918.pdf, problème 9 « Uniformization »"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-834-918.pdf"
---

## Statement

Soit $\theta$ un réel tel que $\cos\dfrac{\theta}{2} \neq 0$. On pose

$$t = \tan\frac{\theta}{2}.$$

1. Montrer que $\cos^2\dfrac{\theta}{2} = \dfrac{1}{1 + t^2}$.
2. En déduire les trois égalités

$$\sin\theta = \frac{2t}{1 + t^2}, \qquad \cos\theta = \frac{1 - t^2}{1 + t^2}, \qquad \tan\theta = \frac{2t}{1 - t^2} \ \ (\text{lorsque } t^2 \neq 1).$$

3. Application : sachant que $\tan\dfrac{\theta}{2} = \dfrac{1}{3}$, calculer $\sin\theta$ et $\cos\theta$ sans chercher $\theta$.

## Hints

1. Pour la question 1, pars de $\sin^2 u + \cos^2 u = 1$ et divise tout par $\cos^2 u$. Que reconnais-tu ?
2. Les formules de duplication sont $\sin\theta = 2\sin\dfrac{\theta}{2}\cos\dfrac{\theta}{2}$ et $\cos\theta = \cos^2\dfrac{\theta}{2} - \sin^2\dfrac{\theta}{2}$.
3. Dans $2\sin\dfrac{\theta}{2}\cos\dfrac{\theta}{2}$, fais apparaître $\tan\dfrac{\theta}{2}$ en mettant $\cos^2\dfrac{\theta}{2}$ en facteur.
4. Même idée pour le cosinus : mets $\cos^2\dfrac{\theta}{2}$ en facteur dans la différence.

## Solution

Notons $u = \dfrac{\theta}{2}$ pour alléger l'écriture, de sorte que $t = \tan u$ et $\theta = 2u$.

**1. L'expression de $\cos^2 u$.**

On part de l'identité fondamentale $\sin^2 u + \cos^2 u = 1$ et on divise les deux membres par $\cos^2 u$, ce qui est licite puisque $\cos u \neq 0$ :

$$\frac{\sin^2 u}{\cos^2 u} + 1 = \frac{1}{\cos^2 u}, \qquad \text{c'est-à-dire} \qquad 1 + t^2 = \frac{1}{\cos^2 u}.$$

En prenant l'inverse (le membre de gauche vaut au moins $1$, il n'est donc jamais nul) :

$$\cos^2 u = \frac{1}{1 + t^2}.$$

**2. Les trois formules.**

*Le sinus.* La formule de duplication donne $\sin\theta = 2\sin u \cos u$. On met $\cos^2 u$ en facteur :

$$\sin\theta = 2\sin u \cos u = 2 \times \frac{\sin u}{\cos u} \times \cos^2 u = 2t \cos^2 u = \frac{2t}{1 + t^2}.$$

*Le cosinus.* La formule de duplication donne $\cos\theta = \cos^2 u - \sin^2 u$. On met encore $\cos^2 u$ en facteur :

$$\cos\theta = \cos^2 u - \sin^2 u = \cos^2 u \left(1 - \frac{\sin^2 u}{\cos^2 u}\right) = \cos^2 u \left(1 - t^2\right) = \frac{1 - t^2}{1 + t^2}.$$

*La tangente.* Il suffit de diviser, ce qui est possible dès que $\cos\theta \neq 0$, c'est-à-dire dès que $t^2 \neq 1$ :

$$\tan\theta = \frac{\sin\theta}{\cos\theta} = \frac{2t}{1+t^2} \times \frac{1+t^2}{1 - t^2} = \frac{2t}{1 - t^2}.$$

**Vérification.** Les deux premières formules doivent être compatibles avec $\sin^2\theta + \cos^2\theta = 1$ :

$$\left(\frac{2t}{1+t^2}\right)^2 + \left(\frac{1-t^2}{1+t^2}\right)^2 = \frac{4t^2 + 1 - 2t^2 + t^4}{\left(1+t^2\right)^2} = \frac{t^4 + 2t^2 + 1}{\left(1+t^2\right)^2} = \frac{\left(1+t^2\right)^2}{\left(1+t^2\right)^2} = 1 . \quad \checkmark$$

**3. L'application.**

Avec $t = \dfrac{1}{3}$ on a $t^2 = \dfrac{1}{9}$ et $1 + t^2 = \dfrac{10}{9}$, donc

$$\sin\theta = \frac{2 \times \frac{1}{3}}{\frac{10}{9}} = \frac{2}{3} \times \frac{9}{10} = \frac{3}{5}, \qquad \cos\theta = \frac{1 - \frac{1}{9}}{\frac{10}{9}} = \frac{8}{9} \times \frac{9}{10} = \frac{4}{5}.$$

On retrouve le triangle $3$, $4$, $5$ : $\left(\dfrac35\right)^2 + \left(\dfrac45\right)^2 = \dfrac{9 + 16}{25} = 1$.

**Ce qu'il faut retenir.** Un seul nombre, $t = \tan\dfrac{\theta}{2}$, suffit à écrire $\sin\theta$, $\cos\theta$ et $\tan\theta$ comme des **fractions rationnelles** en $t$. C'est ce qui rend cette substitution si utile : elle transforme une expression trigonométrique en une expression algébrique ordinaire.

## Going further

1. Que deviennent les trois formules quand $t \to +\infty$ ? Comparer avec la valeur de $\theta$ correspondante.
2. Retrouver la valeur exacte de $\tan\dfrac{\pi}{8}$ en écrivant que $\tan\dfrac{\pi}{4} = 1$ et en résolvant l'équation $\dfrac{2t}{1-t^2} = 1$.
3. En posant $t = \tan\dfrac{x}{2}$, montrer que $\dfrac{1 - \cos x}{\sin x} = t$. Cette égalité donne un moyen rapide de retrouver $t$ à partir de $\sin x$ et $\cos x$.
