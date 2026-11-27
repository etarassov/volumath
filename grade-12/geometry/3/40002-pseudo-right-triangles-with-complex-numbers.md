---
id: "40002"
title: "Triangles pseudo-rectangles et nombres complexes : deux hyperboles"
grade: 12
theme: geometry
difficulty: 3
duration_min: 40
tags: [nombres-complexes, maths-expertes, triangle, angles-orientes, hyperbole, lieu-geometrique, rotation]
adapted_from: null
see_also: ["40001", "40003", "40004", "40005", "40006", "40007", "40008", "40009", "40010"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2002, mathématiques, série S"
  reference: "cg-2002-s-sujet.pdf, problème unique (triangles pseudo-rectangles), première partie, question 6 (a à d)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2002.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2002-s-sujet.pdf"
---

## Statement

Dans un triangle $ABC$ (les points $A$, $B$, $C$ ne sont pas alignés), on note $\widehat{A}$,
$\widehat{B}$, $\widehat{C}$ les mesures en radians de ses angles, comprises entre $0$ et $\pi$.
On dit que le triangle $ABC$ est **pseudo-rectangle en $A$** si
$$\lvert \widehat{B} - \widehat{C} \rvert = \frac{\pi}{2}.$$

Le plan est muni d'un repère orthonormé direct $(O\,; \vec{u}, \vec{v})$. On note $\alpha$, $\beta$,
$\gamma$ les affixes des points $A$, $B$, $C$, et on pose
$$Z = \frac{(\alpha - \beta)(\alpha - \gamma)}{(\beta - \gamma)^2}.$$

1. Donner une condition nécessaire et suffisante sur $Z$ pour que le triangle $ABC$ soit
   pseudo-rectangle en $A$.
2. On suppose $\beta = -\gamma = e^{i\pi/4}$. Déterminer l'ensemble $(E_1)$ des points $A$ du plan
   tels que le triangle $ABC$ soit pseudo-rectangle en $A$.
3. On suppose $\beta = -\gamma = 1$. Déterminer l'ensemble $(E_2)$ des points $A$ du plan tels que
   le triangle $ABC$ soit pseudo-rectangle en $A$.
4. Par quelle transformation géométrique simple passe-t-on de $(E_2)$ à $(E_1)$ ?

## Hints

1. **Question 1.** Écrire $Z$ comme le produit de $-1$ et de deux quotients :
   $\frac{\alpha - \beta}{\gamma - \beta}$ et $\frac{\alpha - \gamma}{\beta - \gamma}$. Quels angles
   orientés leurs arguments représentent-ils ?
2. **Question 1.** Si le triangle $ABC$ est direct, l'angle orienté $(\overrightarrow{BC}, \overrightarrow{BA})$
   mesure $\widehat{B}$ et l'angle orienté $(\overrightarrow{CB}, \overrightarrow{CA})$ mesure
   $-\widehat{C}$.
3. **Question 2.** Avec $\gamma = -\beta$, on trouve $Z = \frac{\alpha^2 - \beta^2}{4\beta^2}$, et ici
   $\beta^2 = i$. Poser $\alpha = x + iy$.
4. **Question 2.** Ne pas oublier que $A$ ne doit pas être sur la droite $(BC)$.
5. **Question 4.** Une rotation conserve les angles.

## Solution

**1.** On remarque que
$$Z = -\,\frac{\alpha - \beta}{\gamma - \beta} \times \frac{\alpha - \gamma}{\beta - \gamma},$$
car $(\gamma - \beta)(\beta - \gamma) = -(\beta - \gamma)^2$. Un argument de
$\frac{\alpha - \beta}{\gamma - \beta}$ est une mesure de l'angle orienté
$(\overrightarrow{BC}, \overrightarrow{BA})$, et un argument de $\frac{\alpha - \gamma}{\beta - \gamma}$
est une mesure de $(\overrightarrow{CB}, \overrightarrow{CA})$.

Si le triangle $ABC$ est direct, $(\overrightarrow{BC}, \overrightarrow{BA}) = \widehat{B}$ et
$(\overrightarrow{CB}, \overrightarrow{CA}) = -\widehat{C}$ (à $2\pi$ près), donc
$$\arg Z = \pi + \widehat{B} - \widehat{C} \pmod{2\pi}.$$
Si le triangle est indirect, tous les signes changent et $\arg Z = \pi - (\widehat{B} - \widehat{C})$
modulo $2\pi$.

Le nombre $Z$ n'est jamais nul. Il est imaginaire pur si et seulement si son argument vaut
$\frac{\pi}{2}$ ou $-\frac{\pi}{2}$ modulo $2\pi$, c'est-à-dire, dans les deux cas, si et seulement si
$\widehat{B} - \widehat{C} = \pm \frac{\pi}{2}$ modulo $2\pi$. Comme $\widehat{B} - \widehat{C}$ est
compris strictement entre $-\pi$ et $\pi$, cela revient à $\lvert \widehat{B} - \widehat{C} \rvert = \frac{\pi}{2}$.

**Conclusion :** $ABC$ est pseudo-rectangle en $A$ si et seulement si $Z$ est imaginaire pur,
c'est-à-dire $\mathrm{Re}(Z) = 0$.

**2.** Avec $\gamma = -\beta$ :
$$Z = \frac{(\alpha - \beta)(\alpha + \beta)}{(2\beta)^2} = \frac{\alpha^2 - \beta^2}{4\beta^2}.$$
Ici $\beta^2 = e^{i\pi/2} = i$, donc $Z = \frac{\alpha^2 - i}{4i} = \frac{-i\alpha^2 - 1}{4}$. Avec
$\alpha = x + iy$, on a $\alpha^2 = x^2 - y^2 + 2ixy$ et $-i\alpha^2 = 2xy - i(x^2 - y^2)$. Donc
$$\mathrm{Re}(Z) = \frac{2xy - 1}{4}, \qquad \mathrm{Re}(Z) = 0 \iff xy = \frac{1}{2}.$$
Il faut encore que $A$ ne soit pas sur la droite $(BC)$, qui est la droite d'équation $y = x$. Sur
cette droite, $xy = \frac{1}{2}$ donne $x^2 = \frac{1}{2}$, c'est-à-dire les points $B$ et $C$
eux-mêmes.

**Conclusion :** $(E_1)$ est l'hyperbole d'équation $xy = \frac{1}{2}$, privée des points $B$ et $C$.

**3.** Avec $\beta = 1$ et $\gamma = -1$, la même formule donne $Z = \frac{\alpha^2 - 1}{4}$, donc
$\mathrm{Re}(Z) = \frac{x^2 - y^2 - 1}{4}$. La droite $(BC)$ est l'axe des abscisses, qui coupe la
courbe $x^2 - y^2 = 1$ en $(1\,;0) = B$ et $(-1\,;0) = C$.

**Conclusion :** $(E_2)$ est l'hyperbole d'équation $x^2 - y^2 = 1$, privée des points $B$ et $C$.

**4.** La rotation $r$ de centre $O$ et d'angle $\frac{\pi}{4}$, d'écriture complexe
$z \mapsto e^{i\pi/4} z$, envoie les points d'affixes $1$ et $-1$ sur ceux d'affixes $e^{i\pi/4}$ et
$-e^{i\pi/4}$. Une rotation conserve les angles géométriques : le triangle d'affixes $(\alpha, 1, -1)$
est pseudo-rectangle en son premier sommet si et seulement si son image, d'affixes
$(e^{i\pi/4}\alpha, e^{i\pi/4}, -e^{i\pi/4})$, l'est aussi. Donc $r(E_2) = E_1$.

On le vérifie par le calcul : si $\alpha' = e^{i\pi/4}\alpha$, alors $\alpha'^2 = i\alpha^2$, et
$\mathrm{Im}(\alpha'^2) = \mathrm{Re}(\alpha^2)$, donc $x^2 - y^2 = 1$ pour $\alpha$ équivaut à
$2x'y' = 1$ pour $\alpha'$.

**Conclusion :** on passe de $(E_2)$ à $(E_1)$ par la rotation de centre $O$ et d'angle $\frac{\pi}{4}$.

**Bilan.** Le quotient $Z$ ne change pas quand on déplace, tourne ou agrandit la figure, et il
caractérise la forme du triangle. Être pseudo-rectangle en $A$ revient à dire que $Z$ est
imaginaire pur. Quand $B$ et $C$ sont fixés, les sommets $A$ qui conviennent forment une hyperbole
qui passe par $B$ et $C$, ces deux points exclus.

## Going further

- Que vaut la partie réelle de $Z$ quand le triangle est rectangle en $A$ ? On pourra placer $B$ et
  $C$ en $1$ et $-1$ et retrouver le cercle de diamètre $[BC]$.
- Avec $B(1\,;0)$ et $C(-1\,;0)$, la suite du sujet calculait l'aire comprise entre l'hyperbole
  $x^2 - y^2 = 1$ et une corde verticale, et comparait l'aire d'un triangle pseudo-rectangle à celle
  de la partie qu'il découpe sous l'hyperbole : voir l'exercice 40007.
