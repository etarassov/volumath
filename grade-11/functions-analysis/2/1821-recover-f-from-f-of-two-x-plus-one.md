---
id: "1821"
title: "Retrouver f à partir de f(2x + 1)"
grade: 11
theme: functions-analysis
difficulty: 2
duration_min: 20
tags: [fonctions, changement-de-variable, trinome]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Functions and Quadratic Equations"
  reference: "Handout-1598-1504.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1598-1504.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs réelles telles que

$$f(2x+1) = 4x^2 + 14x + 7 \qquad \text{pour tout réel } x.$$

## Hints

1. L'énoncé ne donne pas $f(t)$, mais $f(\text{quelque chose})$. Il faut donc renommer ce « quelque chose ».
2. Pose $t = 2x+1$. Quand $x$ parcourt tout $\mathbb{R}$, que parcourt $t$ ? C'est ce point qui garantit que $f$ est déterminée partout.
3. Exprime $x$ en fonction de $t$, puis remplace dans le membre de droite.
4. Le calcul est plus court si tu écris $4x^2+14x+7$ en fonction de $2x$ : remarque que $4x^2 = (2x)^2$ et essaie de faire apparaître $2x+1$.
5. N'oublie pas la réciproque : vérifie que la fonction trouvée convient bien.

## Solution

**Le changement de variable.**

Posons $t = 2x+1$. Lorsque $x$ parcourt $\mathbb{R}$, le nombre $t = 2x+1$ parcourt lui aussi tout $\mathbb{R}$ : pour tout réel $t$, il suffit de prendre

$$x = \frac{t-1}{2}$$

pour obtenir $2x+1 = t$. La relation de l'énoncé détermine donc $f(t)$ pour **tout** réel $t$, et pas seulement sur une partie de $\mathbb{R}$.

**Le calcul.**

Remplaçons $x$ par $\dfrac{t-1}{2}$ dans le membre de droite :

$$f(t) = 4 \left(\frac{t-1}{2}\right)^2 + 14 \times \frac{t-1}{2} + 7 = 4 \times \frac{(t-1)^2}{4} + 7(t-1) + 7 = (t-1)^2 + 7(t-1) + 7.$$

Développons :

$$f(t) = t^2 - 2t + 1 + 7t - 7 + 7 = t^2 + 5t + 1.$$

**Réciproque.**

Vérifions que la fonction $f : t \mapsto t^2+5t+1$ convient. Pour tout réel $x$ :

$$f(2x+1) = (2x+1)^2 + 5(2x+1) + 1 = 4x^2 + 4x + 1 + 10x + 5 + 1 = 4x^2 + 14x + 7.$$

C'est bien le membre de droite demandé.

**Conclusion.** Il existe une seule fonction convenable :

$$\boxed{f(x) = x^2 + 5x + 1.}$$

**Remarque : pourquoi « une seule » ?** Le changement de variable ne laisse aucune liberté : pour chaque réel $t$ il existe un $x$, et un seul, tel que $2x+1 = t$, donc la valeur $f(t)$ est imposée. Si le membre de gauche avait été $f(x^2)$ au lieu de $f(2x+1)$, l'histoire aurait été différente : $x^2$ ne prend que des valeurs positives, et $f$ ne serait pas déterminée sur les négatifs.

## Going further

1. Détermine toutes les fonctions $f$ telles que $f(3x-2) = 9x^2 - 6x + 5$ pour tout réel $x$.
2. Détermine toutes les fonctions $f$ telles que $f(x+1) - f(x) = 2x$ pour tout réel $x$ et $f(0) = 0$. Combien y en a-t-il cette fois ?
