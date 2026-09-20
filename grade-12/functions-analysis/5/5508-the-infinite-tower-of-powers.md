---
id: "5508"
title: "La tour de puissances infinie"
grade: 12
theme: functions-analysis
difficulty: 5
duration_min: 50
tags: [suites, convergence, recurrence, exponentielle, point fixe]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 4, problème 35 (« What is going on here ? », sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

Un élève écrit au tableau la « tour de puissances infinie »
$$x^{x^{x^{\cdots}}}$$
et raisonne ainsi :

> « Supposons que cette tour vaille $2$. L'exposant du $x$ du bas est lui-même la tour entière, donc il vaut $2$. L'égalité devient $x^2 = 2$, d'où $x = \sqrt{2}$. »

Puis il recommence :

> « Supposons maintenant que la tour vaille $4$. Le même raisonnement donne $x^4 = 4$, d'où $x = 4^{1/4} = \sqrt{2}$. »

Le même nombre $x = \sqrt{2}$ donnerait donc à la fois $2$ et $4$. Il y a un problème. L'objet de l'exercice est de le trouver.

Pour donner un sens précis à la tour, on définit, pour un réel $x > 0$, la suite $(u_n)$ par
$$u_0 = x \qquad \text{et} \qquad u_{n+1} = x^{\,u_n} \quad \text{pour tout } n \geqslant 0 ,$$
et on dit que la tour vaut $L$ lorsque la suite $(u_n)$ converge vers $L$.

On prend désormais $x = \sqrt{2}$.

**a)** Calculer des valeurs approchées de $u_0$, $u_1$, $u_2$, $u_3$.

**b)** Démontrer que pour tout $n$, $u_n < 2$.

**c)** Démontrer que la suite $(u_n)$ est croissante.

**d)** En déduire qu'elle converge, puis déterminer sa limite. On pourra étudier la fonction $g$ définie sur $[\sqrt{2}\,;\,2]$ par $g(t) = 2^{t/2} - t$.

**e)** Conclure : que vaut réellement la tour pour $x = \sqrt{2}$ ? Où est l'erreur du raisonnement de l'élève ?

## Hints

1. Toutes les démonstrations se font par récurrence, en utilisant la fonction $\varphi$ définie par $\varphi(t) = (\sqrt{2})^{\,t}$.
2. Cette fonction est **strictement croissante**, car sa base $\sqrt{2}$ est supérieure à $1$. C'est l'outil de tout l'exercice.
3. Question b) : que vaut $\varphi(2)$ ? Si $u_n$ est plus petit que $2$, que dire de $\varphi(u_n)$ ?
4. Question c) : commence par comparer $u_1$ et $u_0$, puis applique $\varphi$ des deux côtés pour passer au rang suivant.
5. Question d) : une suite croissante et majorée converge. Pour trouver la limite, passe à la limite dans la relation $u_{n+1} = \varphi(u_n)$ en utilisant la continuité de $\varphi$.
6. L'équation obtenue est $L = (\sqrt{2})^{\,L}$, autrement dit $2^{L/2} = L$. Elle a deux solutions. Laquelle des deux la suite peut-elle atteindre ?

## Solution

On note $\varphi(t) = (\sqrt{2})^{\,t} = 2^{t/2}$, de sorte que $u_{n+1} = \varphi(u_n)$. Comme $\sqrt{2} > 1$, la fonction $\varphi$ est strictement croissante et continue sur $\mathbb{R}$.

**a) Les premiers termes.**

$$u_0 = \sqrt{2} \approx \text{1,414}, \qquad u_1 = (\sqrt{2})^{\sqrt{2}} \approx \text{1,633}, \qquad u_2 \approx \text{1,761}, \qquad u_3 \approx \text{1,840} .$$

La suite semble croître et s'approcher de $2$.

**b) La suite est majorée par 2.**

Démonstration par récurrence.

*Initialisation :* $u_0 = \sqrt{2} < 2$.

*Hérédité :* supposons $u_n < 2$. Comme $\varphi$ est strictement croissante,
$$u_{n+1} = \varphi(u_n) < \varphi(2) = (\sqrt{2})^2 = 2 .$$

Donc pour tout entier $n$, $u_n < 2$.

**c) La suite est croissante.**

Démonstration par récurrence sur la propriété $u_{n+1} > u_n$.

*Initialisation :* $u_1 = (\sqrt{2})^{\sqrt{2}}$ et $u_0 = \sqrt{2} = (\sqrt{2})^1$. Comme $\sqrt{2} > 1$ et que $\varphi$ est strictement croissante, $u_1 > u_0$.

*Hérédité :* supposons $u_{n+1} > u_n$. En appliquant $\varphi$, qui conserve l'ordre,
$$u_{n+2} = \varphi(u_{n+1}) > \varphi(u_n) = u_{n+1} .$$

Donc la suite est strictement croissante.

**d) La limite.**

La suite $(u_n)$ est croissante et majorée par $2$ : d'après le théorème de la limite monotone, elle converge vers un réel $L$, avec
$$\sqrt{2} = u_0 \leqslant L \leqslant 2 .$$

La fonction $\varphi$ est continue, donc en passant à la limite dans $u_{n+1} = \varphi(u_n)$ :
$$L = \varphi(L) = 2^{L/2} .$$

Il reste à résoudre cette équation sur l'intervalle $[\sqrt{2}\,;\,2]$. Posons $g(t) = 2^{t/2} - t$. Cette fonction est dérivable et
$$g'(t) = \frac{\ln 2}{2}\, 2^{t/2} - 1 .$$
Pour $t \leqslant 2$, on a $2^{t/2} \leqslant 2$, donc
$$g'(t) \leqslant \frac{\ln 2}{2} \times 2 - 1 = \ln 2 - 1 < 0 ,$$
car $\ln 2 \approx \text{0,693} < 1$. La fonction $g$ est donc strictement décroissante sur $[\sqrt{2}\,;\,2]$, et elle s'annule au plus une fois. Or
$$g(2) = 2^1 - 2 = 0 .$$

La seule solution de $2^{L/2} = L$ dans $[\sqrt{2}\,;\,2]$ est donc $L = 2$, et
$$\lim_{n \to +\infty} u_n = 2 .$$

**e) Conclusion, et l'erreur de l'élève.**

Pour $x = \sqrt{2}$, la tour vaut $2$. Elle ne vaut pas $4$, et elle ne peut pas valoir $4$ : la suite est majorée par $2$ dès le départ.

L'erreur n'est pas dans le calcul de l'élève, elle est dans ce qu'il suppose sans le dire. Son raisonnement démontre seulement ceci :

> **si** la tour a une valeur $L$, **alors** $x^L = L$.

C'est une condition nécessaire, pas une condition suffisante. L'équation $2^{L/2} = L$ a exactement deux solutions, $L = 2$ et $L = 4$ (on vérifie : $2^{4/2} = 4$). Le raisonnement de l'élève ne fait que retrouver ces deux solutions possibles, sans dire laquelle est atteinte. Le travail des questions b), c) et d) montre que seule $L = 2$ l'est.

Autrement dit : l'équation « la tour vaut $2$ » a bien la solution $x = \sqrt{2}$, tandis que l'équation « la tour vaut $4$ » **n'a aucune solution**. Le $\sqrt{2}$ trouvé dans le deuxième calcul est une solution parasite, apparue parce qu'on a supposé l'existence d'une limite qui n'existe pas.

C'est exactement la même prudence que pour une équation où l'on élève au carré : on trouve des candidats, il faut ensuite vérifier lesquels conviennent.

## Going further

1. Que se passe-t-il pour $x = 2$ ? Calcule $u_0$, $u_1$, $u_2$ et démontre que la suite tend vers $+\infty$.
2. Montre que si la tour converge vers $L$, alors $x = L^{1/L}$. Étudie la fonction $L \mapsto L^{1/L}$ pour $L > 0$ : quel est son maximum, et pour quelle valeur de $L$ ?
3. Déduis-en que la tour ne peut converger que si $x \leqslant e^{1/e} \approx \text{1,4447}$. Quelle valeur de $x$ faudrait-il pour que la tour vaille $4$ ? Que vaut-elle en réalité pour ce $x$ ?
