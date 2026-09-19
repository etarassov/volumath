---
id: "1614"
title: "Le minimum de |x − 1| + |2x − 1| + ⋯ + |119x − 1|"
grade: 11
theme: functions-analysis
difficulty: 5
duration_min: 45
tags: [valeur-absolue, fonction-affine-par-morceaux, minimum, somme-dentiers, second-degre]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2A, Group Competition"
  reference: "Handout-2698-2323.pdf, problème 19 (AMC 12A 2010, problème 22 ; réponse dans Handout-2710-2323.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2698-2323.pdf"
---

## Statement

On définit, pour tout réel $x$,
$$f(x) = |x - 1| + |2x - 1| + |3x - 1| + \cdots + |119x - 1| = \sum_{m=1}^{119} |mx - 1| .$$

Quelle est la valeur minimale de $f$ ?

## Hints

1. Commence par un cas minuscule : $g(x) = |x-1| + |2x-1|$. Trace le graphe. Où se trouve le minimum ? Recommence avec trois termes.
2. Chaque terme $|mx-1|$ est une fonction affine par morceaux, qui « casse » en $x = \frac1m$. Entre deux cassures consécutives, que peut-on dire de $f$ ?
3. Entre deux cassures, $f$ est affine. Son minimum est donc atteint en une cassure, c'est-à-dire en un point $x = \frac1m$. Reste à savoir lequel.
4. Calcule le coefficient directeur de $f$ juste après le point $\frac1m$ : chaque terme apporte $+m'$ si sa cassure est déjà franchie, et $-m'$ sinon. Tu tomberas sur une expression du second degré en $m$.
5. Rappelle-toi que $1 + 2 + \cdots + 119 = \dfrac{119 \times 120}{2} = 7140$.

## Solution

**L'idée : $f$ est affine par morceaux, donc son minimum est atteint en un point de cassure.
Il suffit ensuite de repérer l'endroit où la pente change de signe.**

**Étape 1. La forme de $f$.**

Chaque fonction $x \mapsto |mx - 1|$ est affine pour $x \le \frac1m$ (de coefficient
directeur $-m$) et affine pour $x \ge \frac1m$ (de coefficient directeur $+m$).

Les $119$ points de cassure sont donc
$$1,\ \frac12,\ \frac13,\ \ldots,\ \frac{1}{119} .$$

Entre deux cassures consécutives, $f$ est une somme de fonctions affines, donc affine. Une
fonction affine sur un intervalle atteint son minimum à l'une des deux bornes. De plus, pour
$x \le 0$ tous les termes décroissent et pour $x \ge 1$ tous croissent, donc le minimum est
atteint sur $\left[\frac{1}{119}, 1\right]$.

**Le minimum de $f$ est donc atteint en l'un des points $\dfrac1m$, avec $1 \le m \le 119$.**

**Étape 2. La pente de $f$ juste après le point $\frac1m$.**

Plaçons-nous en un point $x$ légèrement supérieur à $\frac1m$ (et inférieur à la cassure
suivante, $\frac{1}{m-1}$). Pour un indice $m'$ :

- si $m' \ge m$, alors $\frac{1}{m'} \le \frac1m < x$ : la cassure est franchie, le terme
  $|m'x-1|$ contribue pour $+m'$ ;
- si $m' < m$, alors $\frac{1}{m'} > \frac{1}{m}$, et comme $x$ est plus petit que la cassure
  suivante, le terme contribue pour $-m'$.

Le coefficient directeur de $f$ sur cet intervalle vaut donc
$$p(m) = \sum_{m'=m}^{119} m' \;-\; \sum_{m'=1}^{m-1} m'
= \sum_{m'=1}^{119} m' \;-\; 2\sum_{m'=1}^{m-1} m' .$$

Avec $\displaystyle\sum_{m'=1}^{119} m' = \frac{119 \times 120}{2} = 7140$ et
$\displaystyle\sum_{m'=1}^{m-1} m' = \frac{(m-1)m}{2}$ :
$$p(m) = 7140 - m(m-1) = 7140 - m^2 + m .$$

**Étape 3. Où la pente change-t-elle de signe ?**

$p(m)$ est une expression du second degré en $m$, de coefficient dominant négatif : elle
décroît quand $m$ grandit (pour $m \ge 1$). Cherchons quand elle s'annule :
$$-m^2 + m + 7140 = 0 \iff m^2 - m - 7140 = 0 .$$
Le discriminant vaut $1 + 4 \times 7140 = 28561 = 169^2$, d'où
$$m = \frac{1 + 169}{2} = 85 \qquad\text{ou}\qquad m = \frac{1 - 169}{2} = -84 .$$

Donc $p(m) > 0$ pour $m \le 84$ et $p(m) < 0$ pour $m \ge 86$, avec $p(85) = 0$.

**Interprétons.** Attention : quand $x$ **augmente**, l'indice $m$ de la cassure
$\frac1m$ **diminue**. En parcourant l'axe de gauche à droite, on rencontre les cassures dans
l'ordre $m = 119, 118, \ldots, 2, 1$, et la pente de $f$ après la cassure $\frac1m$ vaut
$p(m)$ :

- pour $m \ge 86$ (donc $x$ petit), la pente est négative : $f$ décroît ;
- sur l'intervalle $\left[\frac{1}{85}, \frac{1}{84}\right]$, la pente vaut $p(85) = 0$ :
  $f$ est constante ;
- pour $m \le 84$ (donc $x$ plus grand), la pente est positive : $f$ croît.

Le minimum est donc atteint sur tout le segment $\left[\dfrac{1}{85}, \dfrac{1}{84}\right]$.

**Étape 4. Calculer la valeur minimale.**

Prenons $x = \dfrac{1}{85}$. Pour $m \le 85$ on a $mx \le 1$, donc $|mx - 1| = 1 - \frac{m}{85}$ ;
pour $m \ge 85$ on a $|mx-1| = \frac{m}{85} - 1$. D'où

$$f\!\left(\frac{1}{85}\right)
= \sum_{m=1}^{85}\left(1 - \frac{m}{85}\right) + \sum_{m=86}^{119}\left(\frac{m}{85} - 1\right).$$

Premier morceau : $85 - \dfrac{1}{85}\cdot\dfrac{85 \times 86}{2} = 85 - 43 = 42$.

Second morceau : il y a $119 - 86 + 1 = 34$ termes, et
$\displaystyle\sum_{m=86}^{119} m = 7140 - \frac{85 \times 86}{2} = 7140 - 3655 = 3485$, donc
ce morceau vaut $\dfrac{3485}{85} - 34 = 41 - 34 = 7$.

$$f\!\left(\frac{1}{85}\right) = 42 + 7 = 49 .$$

**Conclusion : le minimum de $f$ vaut $49$, atteint pour tout $x$ de
$\left[\dfrac{1}{85}, \dfrac{1}{84}\right]$.**

## Going further

Le même calcul en $x = \frac{1}{84}$ redonne $49$, comme annoncé.

On peut vérifier numériquement : un programme qui évalue $f\left(\frac1m\right)$ pour
$m = 1, \ldots, 119$ trouve la valeur minimale $49$, atteinte en $m = 84$ et $m = 85$.

La valeur $85$ n'est pas arrivée par hasard : la condition $p(m) \ge 0$ s'écrit
$m(m-1) \le 7140 = 1 + 2 + \cdots + 119$. Autrement dit, la cassure optimale est celle qui
équilibre au mieux la somme des indices de part et d'autre : c'est une **médiane pondérée**,
où chaque cassure $\frac1m$ est comptée avec le poids $m$.
