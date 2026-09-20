---
id: "5912"
title: "La règle coupée en trois morceaux"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [probabilites, loi-uniforme, probabilite-geometrique, aires, triangle]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Probability (Elgin Johnston)"
  reference: "EJohnstonProbability.pdf, problème 7"
  url: "https://mathcircles.org/activity/probability/"
  original_language: "en"
  local_copy: "sources/originals/namc/EJohnstonProbability.pdf"
---

## Statement

Marc possède une règle en bois de $90$ cm de long. Sa cousine Marta, qui s'entraîne au sabre, donne deux coups nets à des endroits pris au hasard sur la règle et la coupe en trois morceaux.

On modélise ainsi : les deux points de coupe sont tirés au hasard, indépendamment l'un de l'autre, selon la loi uniforme sur la règle.

Quelle est la probabilité que les trois morceaux puissent former un triangle ?

## Hints

1. Trois longueurs forment un triangle exactement quand chacune est plus petite que la somme des deux autres. Réécris cette condition en utilisant le fait que la somme des trois longueurs est fixée.
2. Tu devrais arriver à : les trois morceaux forment un triangle si et seulement si **chaque morceau mesure moins que la moitié de la règle**.
3. Note $X$ et $Y$ les positions des deux coupes, mesurées depuis l'extrémité gauche. Le couple $(X, Y)$ est un point tiré au hasard dans un carré. Lequel ?
4. La probabilité cherchée est alors le rapport de deux aires : l'aire de la partie favorable du carré, divisée par l'aire du carré.
5. Traite d'abord le cas $X < Y$, dessine la région favorable dans ce demi-carré, puis utilise la symétrie.

## Solution

**Réponse : la probabilité vaut $\dfrac{1}{4}$.**

Notons $L = 90$ la longueur de la règle. Le résultat ne dépendra pas de $L$.

### Étape 1. La condition « former un triangle »

Trois longueurs positives $u$, $v$, $w$ sont les côtés d'un triangle si et seulement si chacune est strictement plus petite que la somme des deux autres.

Ici $u + v + w = L$. La condition $u < v + w$ s'écrit donc $u < L - u$, c'est-à-dire $u < \tfrac{L}{2}$. De même pour $v$ et pour $w$.

> **Les trois morceaux forment un triangle si et seulement si chacun mesure moins que $\tfrac{L}{2}$.**

### Étape 2. Le modèle

Notons $X$ et $Y$ les abscisses des deux coupes, mesurées depuis l'extrémité gauche. Ce sont deux variables aléatoires indépendantes de loi uniforme sur $[0, L]$.

Le couple $(X, Y)$ est donc un point tiré au hasard, uniformément, dans le carré $[0,L] \times [0,L]$, d'aire $L^2$. La probabilité d'un événement se lit comme l'aire de la région correspondante divisée par $L^2$.

### Étape 3. La région favorable

Traitons d'abord le cas $X < Y$, c'est-à-dire le demi-carré situé au-dessus de la diagonale. Les trois morceaux mesurent alors
$$X, \qquad Y - X, \qquad L - Y.$$

La condition « chaque morceau mesure moins que $\tfrac{L}{2}$ » devient
$$X < \frac{L}{2}, \qquad Y - X < \frac{L}{2}, \qquad Y > \frac{L}{2}.$$

Ces trois inégalités décrivent un triangle du plan, de sommets
$$\left(0, \frac{L}{2}\right), \qquad \left(\frac{L}{2}, \frac{L}{2}\right), \qquad \left(\frac{L}{2}, L\right).$$

C'est un triangle rectangle dont les deux côtés de l'angle droit mesurent $\tfrac{L}{2}$. Son aire vaut
$$\frac{1}{2} \times \frac{L}{2} \times \frac{L}{2} = \frac{L^2}{8}.$$

Le cas $Y < X$ se traite de la même façon : il suffit d'échanger les rôles de $X$ et $Y$, ce qui revient à faire la symétrie par rapport à la diagonale du carré. On obtient un second triangle, d'aire $\tfrac{L^2}{8}$ lui aussi, et disjoint du premier.

(Le cas $X = Y$ a une probabilité nulle et ne change rien : un morceau serait de longueur nulle.)

### Étape 4. La conclusion

L'aire favorable totale vaut
$$\frac{L^2}{8} + \frac{L^2}{8} = \frac{L^2}{4},$$
donc la probabilité cherchée vaut
$$\frac{L^2/4}{L^2} = \frac{1}{4}.$$

**Conclusion.** Il y a une chance sur quatre que les trois morceaux forment un triangle, et cela ne dépend ni de la longueur de la règle, ni du système d'unités.

## Going further

1. Modifie le modèle : on coupe d'abord la règle en un point au hasard, puis on coupe **le plus long des deux morceaux** en un point au hasard. La probabilité d'obtenir un triangle est-elle encore $\tfrac{1}{4}$ ?
2. Autre modèle encore : on coupe la règle en un point au hasard, puis on coupe au hasard **l'un des deux morceaux tiré à pile ou face**. Que devient la probabilité ?
3. Quelle est la probabilité que les trois morceaux forment un triangle dont les trois angles sont aigus ?
4. Quelle est la longueur moyenne du plus grand des trois morceaux ?
