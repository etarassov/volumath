---
id: "8051"
title: "La plus petite constante qui majore la racine cubique"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 35
tags: [derivee, maximum, racine cubique, changement de variable, inegalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017, cours de Groupe B"
  reference: "stage_ete_2017.pdf, « Groupe B : algèbre », lundi 21 après-midi (Mathieu Barré), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

On cherche les nombres réels $k > 0$ tels que l'inégalité

$$\sqrt[3]{x} \ \leq \ k\,(x+1)$$

soit vraie pour **tous** les réels $x \geq 0$.

Certains $k$ conviennent (par exemple $k = 1$), d'autres non (par exemple $k = \text{0,1}$).
Déterminer le plus petit $k$ qui convient.

## Hints

1. Commence par reformuler : pour $x > 0$, l'inégalité se réécrit
   $k \geq \dfrac{\sqrt[3]{x}}{x+1}$. Que doit donc être le plus petit $k$ qui convient ?
2. La fonction $x \mapsto \dfrac{\sqrt[3]{x}}{x+1}$ n'est pas agréable à dériver. Pose
   $t = \sqrt[3]{x}$ : quand $x$ parcourt $[0\,;+\infty[$, que parcourt $t$ ? Et que devient
   l'expression ?
3. Tu dois maintenant chercher le maximum de $g(t) = \dfrac{t}{t^3+1}$ pour $t \geq 0$. C'est
   un quotient de deux polynômes, et le dénominateur ne s'annule jamais.
4. Une fois le maximum trouvé, n'oublie pas de dire pourquoi il est **atteint** : c'est ce qui
   garantit que le plus petit $k$ existe bel et bien.

## Solution

La réponse est

$$\boxed{k = \frac{\sqrt[3]{4}}{3} \approx \text{0,529} , \qquad \text{et donc } k^3 = \frac{4}{27} .}$$

### Reformulation

Pour $x = 0$, l'inégalité s'écrit $0 \leq k$ : elle est vraie pour tout $k > 0$ et ne
renseigne sur rien.

Pour $x > 0$, on a $x + 1 > 0$, donc l'inégalité $\sqrt[3]{x} \leq k(x+1)$ équivaut à

$$k \ \geq \ \frac{\sqrt[3]{x}}{x+1} .$$

Un nombre $k$ convient donc exactement lorsqu'il majore toutes les valeurs de la fonction

$$f(x) = \frac{\sqrt[3]{x}}{x+1} , \qquad x > 0 .$$

Le plus petit $k$ qui convient est donc la plus grande valeur prise par $f$, si cette plus
grande valeur est atteinte.

### Un changement de variable qui simplifie tout

Posons $t = \sqrt[3]{x}$, c'est-à-dire $x = t^3$. Quand $x$ parcourt tous les réels
strictement positifs, $t$ fait de même, et

$$f(x) = \frac{t}{t^3 + 1} .$$

On est ramené à chercher le maximum de

$$g(t) = \frac{t}{t^3+1} \qquad \text{pour } t \geq 0 .$$

C'est maintenant un simple quotient de polynômes, et son dénominateur vaut au moins $1$ : il
ne s'annule jamais sur $[0\,;+\infty[$.

### L'étude de $g$

En dérivant le quotient,

$$g'(t) = \frac{1 \times (t^3+1) - t \times 3t^2}{(t^3+1)^2}
        = \frac{t^3 + 1 - 3t^3}{(t^3+1)^2}
        = \frac{1 - 2t^3}{(t^3+1)^2} .$$

Le dénominateur est strictement positif, donc $g'(t)$ a le signe de $1 - 2t^3$ :

- $g'(t) > 0$ lorsque $t^3 < \tfrac12$,
- $g'(t) < 0$ lorsque $t^3 > \tfrac12$.

La fonction $g$ croît puis décroît, et atteint donc son maximum au point $t_0$ tel que
$t_0^3 = \tfrac12$, c'est-à-dire

$$t_0 = \frac{1}{\sqrt[3]{2}} .$$

Sa valeur maximale est

$$g(t_0) = \frac{t_0}{\tfrac12 + 1} = \frac{t_0}{\tfrac32} = \frac{2}{3}\,t_0
        = \frac{2}{3\sqrt[3]{2}} .$$

Il reste à écrire ce nombre plus joliment. En multipliant en haut et en bas par
$\sqrt[3]{4}$, et puisque $\sqrt[3]{2} \times \sqrt[3]{4} = \sqrt[3]{8} = 2$ :

$$\frac{2}{3\sqrt[3]{2}} = \frac{2\sqrt[3]{4}}{3 \times 2} = \frac{\sqrt[3]{4}}{3} .$$

### Conclusion

Le maximum de $g$ vaut $\dfrac{\sqrt[3]{4}}{3}$ et il est **atteint**, en $t_0$,
c'est-à-dire en

$$x_0 = t_0^3 = \frac12 .$$

Donc :

- tout $k \geq \dfrac{\sqrt[3]{4}}{3}$ convient ;
- aucun $k$ plus petit ne convient, puisque pour $x = \tfrac12$ l'inégalité deviendrait fausse.

Le plus petit $k$ cherché vaut $\dfrac{\sqrt[3]{4}}{3}$, et son cube vaut

$$k^3 = \frac{4}{27} .$$

Vérifions en $x = \tfrac12$ : à gauche $\sqrt[3]{\text{0,5}} \approx \text{0,7937}$, à droite
$\dfrac{\sqrt[3]{4}}{3} \times \dfrac32 = \dfrac{\sqrt[3]{4}}{2} \approx \text{0,7937}$. Les
deux membres coïncident bien.

## Going further

Il y a une deuxième route, sans dérivée, qui explique d'où sort le $\tfrac12$. L'inégalité
arithmético-géométrique pour trois nombres positifs dit que
$u + v + w \geq 3\sqrt[3]{uvw}$. En découpant astucieusement $x+1$ en **trois** morceaux :

$$x + 1 = x + \frac12 + \frac12 \ \geq \ 3\sqrt[3]{x \times \frac12 \times \frac12}
        = 3\,\frac{\sqrt[3]{x}}{\sqrt[3]{4}} ,$$

d'où aussitôt $\sqrt[3]{x} \leq \dfrac{\sqrt[3]{4}}{3}(x+1)$. L'inégalité
arithmético-géométrique est une égalité exactement quand les trois morceaux sont égaux, donc
ici quand $x = \tfrac12$ : on retrouve le point $x_0$.

Le découpage en trois morceaux n'est pas un hasard : c'est parce qu'on vise une racine
**cubique** à droite.
