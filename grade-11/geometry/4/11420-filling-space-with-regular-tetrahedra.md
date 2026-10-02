---
id: "11420"
title: "Remplir l'espace avec des tétraèdres réguliers"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [espace, tetraedre, pavage, raisonnement-par-l-absurde, trigonometrie]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 4 (combinatoire)"
  reference: "2021-01_sujet-envoi-4.pdf, Exercices Seniors, exercice 17 ; corrigé 2021-03_Corrige-envoi-4.pdf ; le corrigé montre que l'angle n'est pas un multiple rationnel de 180°, ici on compare seulement à 60° et 72°, ce qui suffit"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-01_sujet-envoi-4.pdf"
---

## Statement

On dispose d'autant de tétraèdres réguliers que l'on veut. Deux tétraèdres sont dits **juxtaposés**
s'ils ont une face en commun.

Peut-on remplir tout l'espace, sans trou et sans chevauchement, avec des tétraèdres réguliers
juxtaposés ? Autrement dit, de l'autre côté de chaque face d'un tétraèdre, il doit y avoir un autre
tétraèdre qui a exactement cette face en commun avec lui.

## Hints

1. Regarde ce qui se passe autour d'une arête d'un tétraèdre. Les tétraèdres qui contiennent cette
   arête tournent autour d'elle comme les quartiers d'une orange.
2. Calcule l'angle entre deux faces d'un tétraèdre régulier. Prends le milieu $M$ d'une arête et
   utilise la formule d'Al-Kashi dans un triangle bien choisi.
3. Combien de tétraèdres faudrait-il pour faire un tour complet autour de l'arête ? Compare l'angle
   trouvé à $60^\circ$ et à $72^\circ$. On pourra utiliser $\cos 72^\circ = \frac{\sqrt{5} - 1}{4}$.

## Solution

**La réponse est non.** On raisonne par l'absurde : supposons qu'un tel remplissage existe.

**Étape 1 : l'angle entre deux faces.** Soit $XYZW$ un tétraèdre régulier d'arête $1$, et $M$ le
milieu de l'arête $[YW]$. Les triangles $XYW$ et $ZYW$ sont équilatéraux, donc leurs médianes
$[XM]$ et $[ZM]$ sont aussi des hauteurs : elles sont perpendiculaires à $[YW]$ et mesurent
$\frac{\sqrt{3}}{2}$. L'angle entre les faces $XYW$ et $ZYW$ est donc l'angle $\theta = \widehat{XMZ}$.

Dans le triangle $XMZ$, la formule d'Al-Kashi donne

$$XZ^2 = XM^2 + MZ^2 - 2 \cdot XM \cdot MZ \cdot \cos \theta,$$

soit $1 = \frac{3}{4} + \frac{3}{4} - \frac{3}{2} \cos \theta$, d'où $\cos \theta = \frac{1}{3}$.

**Étape 2 : encadrer cet angle.** On a $\cos 60^\circ = \frac{1}{2}$ et
$\cos 72^\circ = \frac{\sqrt{5} - 1}{4}$ (voir plus bas). Or

$$\frac{\sqrt{5} - 1}{4} < \frac{1}{3} \iff 3\sqrt{5} < 7 \iff 45 < 49,$$

ce qui est vrai. Donc $\cos 72^\circ < \cos \theta < \cos 60^\circ$. Comme le cosinus est
décroissant entre $0^\circ$ et $180^\circ$, on obtient $60^\circ < \theta < 72^\circ$, et donc

$$5\theta < 360^\circ < 6\theta.$$

**Étape 3 : tourner autour d'une arête.** Prenons un tétraèdre $T_0$ du remplissage et une de ses
arêtes $e$. Coupons l'espace par le plan perpendiculaire à $e$ en son milieu. Près de ce milieu,
$T_0$ occupe dans ce plan un secteur d'angle $\theta$ (étape 1).

Une des deux faces de $T_0$ qui contiennent $e$ a, de l'autre côté, un tétraèdre $T_1$ qui a
exactement cette face en commun avec $T_0$. Le tétraèdre $T_1$ contient donc aussi l'arête $e$ et
occupe le secteur d'angle $\theta$ suivant. On recommence avec l'autre face de $T_1$ qui contient
$e$, et on obtient $T_2$, puis $T_3$, $T_4$, $T_5$. En mesurant les angles à partir d'un bord de
$T_0$, le tétraèdre $T_i$ occupe le secteur qui va de $i\theta$ à $(i + 1)\theta$.

Le tétraèdre $T_5$ occupe le secteur de $5\theta$ à $6\theta$. Comme $5\theta < 360^\circ < 6\theta$,
ce secteur dépasse le tour complet et empiète sur le secteur de $T_0$, qui va de $0^\circ$ à
$\theta$. De plus $T_5$ n'est pas $T_0$, car leurs secteurs ne commencent pas au même endroit. Deux
tétraèdres différents se chevauchent donc, ce qui est interdit.

**Conclusion.** On ne peut pas remplir l'espace avec des tétraèdres réguliers juxtaposés : autour
d'une arête, cinq tétraèdres laissent un vide, et six se chevauchent.

**Annexe : la valeur de $\cos 72^\circ$.** Soit $ABC$ un triangle isocèle en $A$ avec
$\widehat{A} = 36^\circ$, donc $\widehat{B} = \widehat{C} = 72^\circ$, et $AB = AC = 1$. Posons
$x = BC$. La bissectrice de l'angle $\widehat{B}$ coupe $[AC]$ en $D$.

- Dans le triangle $BDC$, on a $\widehat{DBC} = 36^\circ$ et $\widehat{C} = 72^\circ$, donc
  $\widehat{BDC} = 72^\circ$ : ce triangle est isocèle en $B$ et $BD = BC = x$.
- Dans le triangle $ABD$, on a $\widehat{ABD} = 36^\circ = \widehat{A}$ : il est isocèle en $D$ et
  $AD = BD = x$, donc $DC = 1 - x$.
- Les triangles $ABC$ et $BDC$ ont les mêmes angles, donc ils sont semblables :
  $\frac{BC}{AB} = \frac{DC}{BC}$, soit $x^2 = 1 - x$.

La solution positive de $x^2 + x - 1 = 0$ est $x = \frac{\sqrt{5} - 1}{2}$. Enfin, le pied $H$ de
la hauteur issue de $A$ est le milieu de $[BC]$, et dans le triangle rectangle $AHC$,
$\cos 72^\circ = \frac{HC}{AC} = \frac{x}{2} = \frac{\sqrt{5} - 1}{4}$.

## Going further

Avec cinq tétraèdres réguliers autour d'une arête, il reste un petit vide d'environ $7^\circ$.
Pourtant, on sait remplir l'espace avec des tétraèdres réguliers et des octaèdres réguliers
juxtaposés. Combien de tétraèdres et d'octaèdres se rencontrent autour d'une arête ? On pourra
calculer l'angle entre deux faces voisines d'un octaèdre régulier.
