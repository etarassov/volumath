---
id: "40163"
title: "Un quart de disque sous un arc d'hyperbole : π/2 (1 − √a)² ≤ 1 − a + a ln a"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [hyperbole, cercle, points-d-intersection, integrale, logarithme, aire, inegalite, valeurs-intermediaires, disjonction-de-cas]
adapted_from: null
see_also: ["40162", "40164", "40165", "40166", "40167"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2006, mathématiques, série S"
  reference: "cg-2006-s-sujet.pdf, exercice 2, partie I, questions 4 et 5"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2006.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2006-s-sujet.pdf"
---

## Statement

Soit $a$ un nombre réel tel que $0 < a < 1$. Dans le plan muni d'un repère orthonormé d'origine
$O$, on note $\mathcal{H}_1$ l'ensemble des points $M(x\,;\,y)$ tels que
$$(1 - x)(1 - y) = a, \qquad 0 \leq x \leq 1, \qquad 0 \leq y \leq 1 .$$
C'est un arc d'hyperbole qui va du point $(0\,;\,1 - a)$ au point $(1 - a\,;\,0)$. En posant
$X = 1 - x$, ses points sont exactement les points $\left(1 - X\,;\,1 - \frac{a}{X}\right)$ avec
$a \leq X \leq 1$.

On a montré dans une partie précédente que, pour tout point $M(x\,;\,y)$ de $\mathcal{H}_1$, en
notant $s = x + y$ :
$$s \leq 2 - 2\sqrt{a} \qquad \text{et} \qquad x^2 + y^2 = (s - 1)^2 + 1 - 2a .$$

On note $\mathcal{C}$ le cercle de centre $O$ et de rayon $R = \sqrt{2}\,(1 - \sqrt{a})$.

1. Déterminer, selon la valeur de $a$, le nombre de points communs à $\mathcal{H}_1$ et à
   $\mathcal{C}$.
2. a) Calculer l'aire $\mathcal{A}$ du domaine limité par $\mathcal{H}_1$ et les deux axes de
   coordonnées.
   b) En déduire que, pour $a \in [\frac{1}{4}, 1[$,
$$\frac{\pi}{2}\,(1 - \sqrt{a})^2 \leq 1 - a + a \ln a .$$
   c) L'équation
$$\frac{\pi}{2}\,(1 - \sqrt{a})^2 = 1 - a + a \ln a$$
   admet-elle une solution dans l'intervalle $]0, 1[$ ?

## Hints

1. **Question 1.** Un point de $\mathcal{H}_1$ est sur $\mathcal{C}$ si et seulement si
   $(s - 1)^2 = (1 - 2\sqrt{a})^2$. Il y a donc deux valeurs possibles pour $s$.
2. **Question 1.** Pour chaque valeur de $s$, revenir à $X$ : on a $s = 2 - X - \frac{a}{X}$, ce qui
   donne une équation du second degré en $X$. Combien a-t-elle de solutions dans $[a, 1]$ ?
3. **Question 1.** Pour l'équation $X^2 - (2 - 2\sqrt{a})X + a = 0$, le produit des racines vaut
   $a$ : la plus petite est dans $[a, 1]$ exactement quand la plus grande est inférieure ou égale
   à $1$.
4. **Question 2.** Pour a), $\mathcal{H}_1$ est la courbe de la fonction
   $x \mapsto 1 - \frac{a}{1 - x}$ sur $[0, 1 - a]$.
5. **Question 2.** Pour b), montrer que, si $a \geq \frac{1}{4}$, tous les points de
   $\mathcal{H}_1$ sont à une distance au moins $R$ de $O$. Le quart de disque de centre $O$, de
   rayon $R$, situé dans le quart de plan $x \geq 0$, $y \geq 0$, est alors contenu dans le
   domaine.
6. **Question 2.** Pour c), étudier le signe de
   $h(a) = 1 - a + a \ln a - \frac{\pi}{2}(1 - \sqrt{a})^2$ près de $0$ et en $\frac{1}{4}$.

## Solution

**1.** Soit $M(x\,;\,y)$ un point de $\mathcal{H}_1$ et $s = x + y$. Comme
$R^2 = 2(1 - \sqrt{a})^2 = 2 - 4\sqrt{a} + 2a$, on a
$$M \in \mathcal{C} \iff (s - 1)^2 + 1 - 2a = 2 - 4\sqrt{a} + 2a \iff (s - 1)^2 = 1 - 4\sqrt{a} + 4a = (1 - 2\sqrt{a})^2 .$$
Donc $s - 1 = 1 - 2\sqrt{a}$ ou $s - 1 = -(1 - 2\sqrt{a})$, c'est-à-dire
$$s = 2 - 2\sqrt{a} \qquad \text{ou} \qquad s = 2\sqrt{a} .$$
Écrivons $M = \left(1 - X\,;\,1 - \frac{a}{X}\right)$ avec $a \leq X \leq 1$ ; alors
$s = 2 - X - \frac{a}{X}$. À deux valeurs différentes de $X$ correspondent deux points
différents.

*Première valeur.* $s = 2 - 2\sqrt{a}$ équivaut à $X + \frac{a}{X} = 2\sqrt{a}$, soit
$X^2 - 2\sqrt{a}\,X + a = 0$, soit $(X - \sqrt{a})^2 = 0$. Une seule solution, $X = \sqrt{a}$, qui
est bien dans $[a, 1]$. Cela donne toujours le point $P(1 - \sqrt{a}\,;\,1 - \sqrt{a})$.

*Seconde valeur.* $s = 2\sqrt{a}$ équivaut à $X + \frac{a}{X} = 2 - 2\sqrt{a}$, soit
$$X^2 - (2 - 2\sqrt{a})\,X + a = 0 .$$
Son discriminant est $\Delta = 4(1 - \sqrt{a})^2 - 4a = 4(1 - 2\sqrt{a})$.

- Si $a > \frac{1}{4}$, alors $\Delta < 0$ : pas de solution.
- Si $a = \frac{1}{4}$, alors $2\sqrt{a} = 2 - 2\sqrt{a} = 1$ : les deux valeurs de $s$ sont les
  mêmes, et on retrouve seulement le point $P$.
- Si $a < \frac{1}{4}$, il y a deux racines distinctes
  $X_1 < X_2$, avec $X_1 X_2 = a$ et $X_2 = 1 - \sqrt{a} + \sqrt{1 - 2\sqrt{a}}$. Comme
  $X_1 = \frac{a}{X_2}$, on a $X_1 \geq a$ si et seulement si $X_2 \leq 1$, et $X_2 \geq a$ si et
  seulement si $X_1 \leq 1$, ce qui est vrai car $X_1 < \sqrt{X_1 X_2} = \sqrt{a} < 1$. Les deux
  racines sont donc dans $[a, 1]$ si et seulement si $X_2 \leq 1$, et sinon aucune ne l'est. Or
$$X_2 \leq 1 \iff \sqrt{1 - 2\sqrt{a}} \leq \sqrt{a} \iff 1 - 2\sqrt{a} \leq a \iff (1 + \sqrt{a})^2 \geq 2 \iff a \geq 3 - 2\sqrt{2}.$$
  Dans ce cas, on obtient deux points (symétriques par rapport à la droite $y = x$), différents de
  $P$ puisque leur valeur de $s$ est différente.

**Conclusion :** $\mathcal{H}_1$ et $\mathcal{C}$ ont

- **un** point commun, $P$, si $0 < a < 3 - 2\sqrt{2}$ ou si $\frac{1}{4} \leq a < 1$ ;
- **trois** points communs si $3 - 2\sqrt{2} \leq a < \frac{1}{4}$.

(On a $3 - 2\sqrt{2} \approx \text{0,172}$. Pour $a = 3 - 2\sqrt{2}$, les deux points
supplémentaires sont les extrémités $(0\,;\,1 - a)$ et $(1 - a\,;\,0)$ de l'arc.)

**2. a)** L'arc $\mathcal{H}_1$ est la courbe de la fonction $g(x) = 1 - \frac{a}{1 - x}$ sur
$[0, 1 - a]$, qui est positive sur cet intervalle. L'aire cherchée est donc
$$\mathcal{A} = \int_0^{1 - a} \left(1 - \frac{a}{1 - x}\right) dx = \Big[\, x + a \ln(1 - x) \,\Big]_0^{1 - a} = 1 - a + a \ln a .$$
(Une primitive de $x \mapsto \frac{1}{1 - x}$ sur $[0, 1[$ est $x \mapsto -\ln(1 - x)$.)

**b)** Soit $a \in [\frac{1}{4}, 1[$.

*Tout point de $\mathcal{H}_1$ est à une distance au moins $R$ de $O$.* Pour un point de
$\mathcal{H}_1$, on a $s - 1 \leq 1 - 2\sqrt{a} \leq 0$, donc $(s - 1)^2 \geq (1 - 2\sqrt{a})^2$ (si
$u \leq v \leq 0$ alors $u^2 \geq v^2$). D'où $x^2 + y^2 \geq (1 - 2\sqrt{a})^2 + 1 - 2a = R^2$.

*Le quart de disque est dans le domaine.* Notons $\mathcal{Q}$ le quart de disque
$\{x \geq 0,\ y \geq 0,\ x^2 + y^2 \leq R^2\}$ et $\mathcal{D}$ le domaine
$\{0 \leq x \leq 1 - a,\ 0 \leq y \leq g(x)\}$. Soit $(x\,;\,y)$ un point de $\mathcal{Q}$.

- Si l'on avait $x > 1 - a$, alors $x^2 + y^2 > (1 - a)^2 \geq R^2$, car l'extrémité
  $(1 - a\,;\,0)$ est un point de $\mathcal{H}_1$, donc à distance au moins $R$ de $O$. Impossible.
- Donc $x \leq 1 - a$. Si l'on avait $y > g(x)$, le point $(x\,;\,g(x))$ de $\mathcal{H}_1$
  vérifierait $x^2 + g(x)^2 < x^2 + y^2 \leq R^2$ (car $0 \leq g(x) < y$). Impossible.

Donc $\mathcal{Q} \subset \mathcal{D}$, et l'aire de $\mathcal{Q}$ est au plus celle de
$\mathcal{D}$ :
$$\frac{\pi R^2}{4} = \frac{\pi}{2}\,(1 - \sqrt{a})^2 \leq 1 - a + a \ln a .$$

**c)** Posons $h(a) = 1 - a + a \ln a - \frac{\pi}{2}(1 - \sqrt{a})^2$ pour $a \in\ ]0, 1[$. La
fonction $h$ est continue sur $]0, 1[$.

- Quand $a$ tend vers $0$, $a \ln a$ tend vers $0$ (croissances comparées), donc $h(a)$ tend vers
  $1 - \frac{\pi}{2} < 0$. Il existe donc $a_0 \in\ ]0, \frac{1}{4}[$ tel que $h(a_0) < 0$ (par
  exemple $h(\text{0,01}) \approx -\text{0,33}$, à la calculatrice).
- En $a = \frac{1}{4}$ : $h\left(\frac{1}{4}\right) = \frac{3}{4} - \frac{\ln 4}{4} - \frac{\pi}{8} \approx \text{0,011} > 0$.

D'après le théorème des valeurs intermédiaires, $h$ s'annule entre $a_0$ et $\frac{1}{4}$.
**Oui**, l'équation a une solution dans $]0, 1[$ ; à la calculatrice, on trouve
$a \approx \text{0,206}$. (Pour $a < \frac{1}{4}$, l'argument de b) ne marche plus : le cercle
$\mathcal{C}$ recoupe l'arc, et le quart de disque dépasse du domaine.)

**Bilan.** Le cercle de rayon $\sqrt{2}(1 - \sqrt{a})$ passe toujours par le point de l'arc situé
sur la droite $y = x$ ; il recoupe l'arc en deux autres points exactement quand
$3 - 2\sqrt{2} \leq a < \frac{1}{4}$. Pour $a \geq \frac{1}{4}$, il reste sous l'arc, ce qui
compare l'aire d'un quart de disque à l'aire $1 - a + a\ln a$ sous l'arc ; l'inégalité obtenue
devient fausse pour certaines valeurs plus petites de $a$.

## Going further

- Montrer que l'inégalité de b) est en fait stricte pour $a \in [\frac{1}{4}, 1[$.
- L'équation de c) a-t-elle une seule solution dans $]0, 1[$ ? (À explorer à la calculatrice.)
- Les deux premières questions de cette partie du sujet font l'objet de l'exercice 40162.
