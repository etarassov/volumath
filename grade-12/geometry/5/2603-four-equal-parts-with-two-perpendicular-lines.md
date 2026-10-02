---
id: "2603"
title: "Quatre parts égales avec deux droites perpendiculaires"
grade: 12
theme: geometry
difficulty: 5
duration_min: 50
tags: [aire, continuite, valeurs-intermediaires, polygone, symetrie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II Circle, Fair Divisions (Prof. Igor Pak)"
  reference: "Handout-589-683.pdf, Problem 6"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-589-683.pdf"
---

## Statement

Soit $Q$ un polygone convexe du plan.

Montrer qu'il existe deux droites **perpendiculaires** $\ell_1$ et $\ell_2$ qui découpent $Q$ en quatre morceaux de même aire.

On pourra utiliser le résultat suivant, déjà démontré : *pour toute direction donnée, il existe une droite de cette direction qui partage $Q$ en deux morceaux de même aire.*

## Hints

1. Fixe une direction, repérée par un angle $\theta$. Prends la droite $\ell_1(\theta)$ de direction $\theta$ qui coupe $Q$ en deux aires égales, et la droite $\ell_2(\theta)$ de direction $\theta + \tfrac{\pi}{2}$ qui fait de même. Elles sont perpendiculaires et découpent $Q$ en quatre morceaux.
2. Appelle $a(\theta), b(\theta), c(\theta), d(\theta)$ les aires de ces quatre morceaux, dans l'ordre en tournant. Écris ce que disent les deux conditions « aires égales » sur ces quatre nombres.
3. Tu devrais trouver $a = c$ et $b = d$ automatiquement. Il ne reste donc **qu'une seule** égalité à obtenir : $a = b$.
4. Que devient la figure si tu remplaces $\theta$ par $\theta + \tfrac{\pi}{2}$ ? Les deux droites sont les mêmes, mais les quatre morceaux ont tourné d'un cran. Qu'est-ce que cela dit de $a(\theta) - b(\theta)$ ?
5. Théorème des valeurs intermédiaires sur $\left[0, \tfrac{\pi}{2}\right]$.

## Solution

Notons $\mathcal{A}$ l'aire de $Q$.

**Étape 1 : pour chaque direction, la droite qui coupe en deux est unique.**

Fixons une direction et un repère où elle est verticale. Pour $t$ réel, soit $f(t)$ l'aire de la partie de $Q$ à gauche de la droite $x = t$.

$Q$ est convexe, donc pour $t$ strictement compris entre l'abscisse minimale $a$ et l'abscisse maximale $b$ de $Q$, la droite $x = t$ coupe l'intérieur de $Q$ selon un segment de longueur strictement positive. Si $s < t$ sont tous deux dans $]a, b[$, la bande $s \leq x \leq t$ rencontre l'intérieur de $Q$ en une partie d'aire strictement positive, donc
$$f(s) < f(t).$$

La fonction $f$ est donc **strictement croissante** sur $[a, b]$, continue (voir l'exercice sur la direction imposée), avec $f(a) = 0$ et $f(b) = \mathcal{A}$. Il existe donc **un seul** $t$ tel que $f(t) = \mathcal{A}/2$.

Pour chaque angle $\theta$, notons $\ell_1(\theta)$ l'unique droite de direction $\theta$ qui coupe $Q$ en deux aires égales, et $\ell_2(\theta) = \ell_1\!\left(\theta + \tfrac{\pi}{2}\right)$ celle de la direction perpendiculaire. Ces deux droites sont perpendiculaires et découpent $Q$ en quatre morceaux.

**Étape 2 : nommer les quatre morceaux.**

Orientons $\ell_1(\theta)$ par le vecteur $\vec u = (\cos\theta, \sin\theta)$ et $\ell_2(\theta)$ par $\vec v = (-\sin\theta, \cos\theta)$, qui s'obtient à partir de $\vec u$ par un quart de tour direct. Les deux droites se coupent en un point $O$ et découpent le plan en quatre quadrants. Numérotons-les dans le sens direct en partant de celui qui contient les points $O + x\vec u + y \vec v$ avec $x > 0$ et $y > 0$, et notons $a(\theta), b(\theta), c(\theta), d(\theta)$ les aires des morceaux de $Q$ correspondants.

**Étape 3 : deux égalités sont gratuites.**

La droite $\ell_1(\theta)$ sépare les quadrants $1$ et $2$ des quadrants $3$ et $4$, et elle coupe $Q$ en deux aires égales :
$$a + b = \frac{\mathcal{A}}{2}.$$

La droite $\ell_2(\theta)$ sépare les quadrants $2$ et $3$ des quadrants $4$ et $1$, et elle aussi coupe $Q$ en deux aires égales :
$$b + c = \frac{\mathcal{A}}{2}.$$

En soustrayant : $a = c$. Comme $a + b + c + d = \mathcal{A}$, on en déduit aussi $b = d$.

**Il ne reste donc qu'à trouver un $\theta$ pour lequel $a(\theta) = b(\theta)$** : les quatre morceaux vaudront alors tous $\mathcal{A}/4$.

**Étape 4 : le changement $\theta \mapsto \theta + \tfrac{\pi}{2}$.**

Remplaçons $\theta$ par $\theta' = \theta + \tfrac{\pi}{2}$. Alors $\vec u(\theta') = \vec v(\theta)$ et $\vec v(\theta') = -\vec u(\theta)$.

Les deux droites sont donc **les mêmes qu'avant**, simplement échangées : $\ell_1(\theta') = \ell_2(\theta)$ et $\ell_2(\theta') = \ell_1(\theta)$. Les quatre quadrants sont donc les mêmes, mais la numérotation a tourné d'un cran :
$$a(\theta') = b(\theta), \quad b(\theta') = c(\theta), \quad c(\theta') = d(\theta), \quad d(\theta') = a(\theta).$$

Posons $\varphi(\theta) = a(\theta) - b(\theta)$. Alors
$$\varphi\!\left(\theta + \frac{\pi}{2}\right) = b(\theta) - c(\theta) = b(\theta) - a(\theta) = -\varphi(\theta),$$
où l'on a utilisé $c = a$ (étape 3).

**Étape 5 : continuité.**

Il faut savoir que $\varphi$ est continue, c'est-à-dire que les quatre aires varient continûment avec $\theta$. Le point à justifier est que la position de $\ell_1(\theta)$ dépend continûment de $\theta$.

Notons $m(\theta)$ la distance algébrique de l'origine à $\ell_1(\theta)$, et $F(\theta, m)$ l'aire de $Q$ du côté « gauche » de la droite de direction $\theta$ à distance algébrique $m$. Les majorations des deux exercices précédents donnent, pour une constante $K$ ne dépendant que de $Q$,
$$|F(\theta', m') - F(\theta, m)| \leq K\big(|\theta' - \theta| + |m' - m|\big),$$
donc $F$ est continue. Fixons $\theta_0$ et $\varepsilon > 0$. Par stricte croissance (étape 1),
$$F(\theta_0, m(\theta_0) - \varepsilon) < \frac{\mathcal{A}}{2} < F(\theta_0, m(\theta_0) + \varepsilon).$$
Par continuité de $F$, ces deux inégalités strictes restent vraies quand on remplace $\theta_0$ par un $\theta$ assez proche. Comme $m \mapsto F(\theta, m)$ est strictement croissante et vaut $\mathcal{A}/2$ en $m(\theta)$, on en tire
$$m(\theta_0) - \varepsilon < m(\theta) < m(\theta_0) + \varepsilon .$$
Donc $m$ est continue en $\theta_0$, et les aires des quatre morceaux, obtenues à partir de $F$ et de $m$, le sont aussi.

**Étape 6 : conclusion.**

$\varphi$ est continue sur $\left[0, \tfrac{\pi}{2}\right]$ et $\varphi\!\left(\tfrac{\pi}{2}\right) = -\varphi(0)$.

- Si $\varphi(0) = 0$, l'angle $\theta_0 = 0$ convient.
- Sinon $\varphi(0)$ et $\varphi\!\left(\tfrac{\pi}{2}\right)$ sont de signes contraires, et le théorème des valeurs intermédiaires fournit $\theta_0 \in ]0, \tfrac{\pi}{2}[$ tel que $\varphi(\theta_0) = 0$.

Pour cet angle $\theta_0$ on a $a = b$, et avec l'étape 3, $a = b = c = d$. Leur somme vaut $\mathcal{A}$, donc chacun vaut $\mathcal{A}/4$.

**Les droites $\ell_1(\theta_0)$ et $\ell_2(\theta_0)$ sont perpendiculaires et découpent $Q$ en quatre morceaux de même aire.**

## Going further

En remplaçant le quart de tour par un tiers de tour, on peut se demander s'il existe deux droites faisant un angle de $60°$ qui découpent $Q$ en quatre morceaux de même aire. Cette fois la réponse est non en général : l'argument de symétrie ci-dessus tombe, parce que trois droites à $60°$ ne se ramènent pas les unes aux autres par une rotation qui permute les quatre morceaux.
