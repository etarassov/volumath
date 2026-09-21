---
id: "8202"
title: "Partie entière fois partie décimale"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [partie entiere, partie decimale, equation, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, Coupe Animath de printemps 2019"
  reference: "PolycopieV1-1.pdf, chapitre II « Coupe Animath de printemps 2019 », énoncés destinés aux élèves de collège, exercice 1"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Pour un nombre réel $x$, on note $\lfloor x \rfloor$ sa **partie entière**, c'est-à-dire le plus grand entier inférieur ou égal à $x$, et $\{x\}$ sa **partie décimale**, définie par

$$\{x\} = x - \lfloor x \rfloor .$$

Par exemple $\lfloor \text{3,1} \rfloor = 3$ et $\{\text{3,1}\} = \text{3,1} - 3 = \text{0,1}$.

Attention aux nombres négatifs : $\lfloor -\text{2,7} \rfloor = -3$ (et non $-2$, car $-2$ est plus grand que $-\text{2,7}$), donc $\{-\text{2,7}\} = -\text{2,7} - (-3) = \text{0,3}$.

Trouver tous les nombres réels $x$ tels que

$$\lfloor x \rfloor \times \{ x \} = 2019 \, x .$$

## Hints

1. Donne un nom aux deux morceaux : pose $n = \lfloor x \rfloor$ et $y = \{x\}$. Deux choses sont alors vraies et te serviront tout le temps : $n$ est un **entier**, et $0 \le y < 1$.
2. Réécris $x$ en fonction de $n$ et $y$, puis l'équation entière en fonction de $n$ et $y$ seulement.
3. Tu obtiens $ny = 2019(n+y)$. Regroupe les termes en $y$ d'un côté.
4. Tu arrives à $(n - 2019)\,y = 2019\,n$. Traite d'abord à part le cas $n = 2019$ : que devient l'égalité ?
5. Sinon tu peux isoler $y$. Sépare maintenant selon le signe de $n$ et compare avec l'encadrement $0 \le y < 1$. Trois cas suffisent : $n > 2019$, puis $0 < n < 2019$, puis $n \le 0$.
6. Dans le dernier cas, pose $n = -m$ avec $m \ge 0$ entier : l'inégalité $y < 1$ devient une inégalité toute simple sur $m$, qui ne laisse que deux valeurs.

## Solution

**Mise en place.**

Posons

$$n = \lfloor x \rfloor \qquad \text{et} \qquad y = \{x\} .$$

Par définition, $n$ est un entier, $x = n + y$, et surtout

$$0 \le y < 1 .$$

C'est cet encadrement qui va tout décider.

L'équation $\lfloor x \rfloor \times \{x\} = 2019x$ devient

$$n\,y = 2019\,(n + y) ,$$

soit, en rassemblant les termes en $y$ à gauche,

$$n y - 2019 y = 2019 n, \qquad \text{c'est-à-dire} \qquad (n - 2019)\,y = 2019\,n . \qquad (\star)$$

**Le cas $n = 2019$ est impossible.**

Si $n = 2019$, le membre de gauche de $(\star)$ vaut $0$, et le membre de droite vaut $2019 \times 2019$, qui n'est pas nul. Donc $n \neq 2019$, et on peut diviser :

$$y = \frac{2019\,n}{n - 2019} .$$

**Le cas $n > 2019$ est impossible.**

Supposons $n > 2019$. Alors $n - 2019 > 0$, donc $y > 0$. Mais comparons plus finement le numérateur et le dénominateur :

$$2019\,n > n > n - 2019 > 0 .$$

Une fraction dont le numérateur dépasse strictement le dénominateur, tous deux positifs, est strictement plus grande que $1$. Donc $y > 1$, ce qui contredit $y < 1$.

**Le cas $0 < n < 2019$ est impossible.**

Cette fois $n - 2019 < 0$ tandis que $2019n > 0$. La fraction est donc strictement négative : $y < 0$, ce qui contredit $y \ge 0$.

**Il reste $n \le 0$.**

Posons $n = -m$, où $m$ est un entier avec $m \ge 0$. Alors

$$y = \frac{2019 \times (-m)}{-m - 2019} = \frac{-2019\,m}{-(m + 2019)} = \frac{2019\,m}{m + 2019} .$$

Cette fraction est bien positive ou nulle, donc la condition $y \ge 0$ est respectée. Imposons maintenant $y < 1$ :

$$\frac{2019\,m}{m + 2019} < 1 .$$

Le dénominateur $m + 2019$ est strictement positif, on peut donc multiplier sans changer le sens :

$$2019\,m < m + 2019, \qquad \text{soit} \qquad 2018\,m < 2019, \qquad \text{soit} \qquad m < \frac{2019}{2018} .$$

Comme $\dfrac{2019}{2018}$ est à peine plus grand que $1$, les seuls entiers $m \ge 0$ qui conviennent sont

$$m = 0 \qquad \text{et} \qquad m = 1 .$$

**Les deux solutions.**

*Si $m = 0$*, alors $n = 0$ et $y = \dfrac{0}{2019} = 0$, donc $x = n + y = 0$.

*Si $m = 1$*, alors $n = -1$ et

$$y = \frac{2019}{1 + 2019} = \frac{2019}{2020},$$

donc

$$x = n + y = -1 + \frac{2019}{2020} = -\frac{1}{2020} .$$

**Vérification.**

Pour $x = 0$ : $\lfloor 0 \rfloor \times \{0\} = 0 \times 0 = 0$ et $2019 \times 0 = 0$. C'est bien une solution.

Pour $x = -\dfrac{1}{2020}$ : ce nombre est strictement compris entre $-1$ et $0$, donc $\lfloor x \rfloor = -1$ et

$$\{x\} = -\frac{1}{2020} - (-1) = \frac{2019}{2020} .$$

Le produit vaut $(-1) \times \dfrac{2019}{2020} = -\dfrac{2019}{2020}$, et de l'autre côté $2019 x = -\dfrac{2019}{2020}$. C'est bien une solution.

**Conclusion.** L'équation a exactement deux solutions :

$$\boxed{x = 0 \qquad \text{et} \qquad x = -\frac{1}{2020}} .$$

## Going further

Refaire le même travail avec l'équation $\lfloor x \rfloor \times \{x\} = k\,x$, où $k$ est un entier strictement positif quelconque. On trouvera toujours deux solutions ; laquelle dépend de $k$, et laquelle n'en dépend pas ?
