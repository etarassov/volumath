---
id: "6104"
title: "Quatre points, deux distances seulement"
grade: 10
theme: geometry
difficulty: 5
duration_min: 60
tags: [distances, classification, triangle-equilateral, mediatrice, pentagone-regulier, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular Winter 2012, rubrique « In Session »"
  reference: "MTCircularWinter2012.pdf, « In Session: What is Like a Square? », séance d'Alon Amit rapportée par Joshua Zucker. Le magazine pose la question et n'en publie pas la réponse."
  url: "https://mathteacherscircle.org/newsletter"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularWinter2012.pdf"
---

## Statement

Prends les quatre sommets d'un carré et mesure les six distances entre les couples de sommets : tu trouves quatre fois le côté et deux fois la diagonale. Il n'y a donc que **deux** longueurs différentes.

Quels autres ensembles de quatre points du plan ont cette propriété : parmi les six distances deux à deux, il n'y a que deux valeurs différentes ?

Trouve-les tous, et démontre qu'il n'y en a pas d'autres.

*(Deux configurations qui se déduisent l'une de l'autre par un déplacement, une symétrie ou un agrandissement comptent pour une seule.)*

## Hints

1. Appelons $a$ la plus petite des deux longueurs et $b$ la plus grande, donc $a < b$. Chacune des six distances vaut $a$ ou $b$. Commence par dessiner : combien de fois $a$ peut-elle apparaître ?
2. Un fait à garder sous la main : dans le plan, on ne peut pas placer quatre points deux à deux à la même distance. Donc $a$ apparaît entre une et cinq fois.
3. Range les cas par le nombre de segments de longueur $a$, puis, à nombre égal, par la **forme** du dessin formé par ces segments : deux segments peuvent être disjoints ou partager une extrémité, trois segments peuvent former un triangle, une chaîne ou une étoile...
4. Deux outils reviennent sans cesse. Si trois points sont deux à deux à la même distance, ils forment un triangle équilatéral. Si un point est à égale distance de deux autres, il est sur leur médiatrice.
5. N'oublie pas de vérifier à chaque fois que la configuration trouvée respecte bien $a < b$ : plusieurs cas se contredisent eux-mêmes sur ce point, et c'est ce qui les élimine.
6. Il y a six configurations en tout. L'une d'elles se cache dans le pentagone régulier.

## Solution

**Mise en place.**

Notons $a < b$ les deux longueurs. Parmi les six segments joignant deux des quatre points, appelons *courts* ceux de longueur $a$ et *longs* ceux de longueur $b$.

Rappelons d'abord un fait : **on ne peut pas placer quatre points du plan deux à deux à la même distance.** En effet, trois points deux à deux à distance $a$ forment un triangle équilatéral ; il n'y a alors que deux points à distance $a$ de deux des sommets, et ce sont les deux autres sommets. Donc un quatrième point à distance $a$ des trois est impossible.

Par conséquent il y a entre $1$ et $5$ segments courts (et donc entre $1$ et $5$ segments longs).

Nous allons parcourir tous les cas selon le nombre de segments courts et la forme du dessin qu'ils font. Deux outils servent partout :

- trois points deux à deux à la même distance forment un triangle équilatéral ;
- un point à égale distance de deux points $C$ et $D$ est sur la médiatrice de $[CD]$.

**Cas 1 : cinq segments courts.**

Les points $A$, $B$, $C$, $D$ sont tels que seul $[CD]$ est long. Alors $ABC$ et $ABD$ sont deux triangles équilatéraux de côté $a$ construits sur le même segment $[AB]$. Il n'y a que deux points à distance $a$ de $A$ et de $B$, symétriques par rapport à la droite $(AB)$ : donc $D$ est le symétrique de $C$. La figure est un **losange formé de deux triangles équilatéraux**, et $CD = a\sqrt{3} > a$, ce qui est bien cohérent.

**Première configuration : le losange à angles de 60 degrés.** Cinq distances valent $a$, la sixième vaut $a\sqrt{3}$.

**Cas 2 : un seul segment court.**

C'est le cas précédent avec les rôles échangés : $ACD$ et $BCD$ sont équilatéraux de côté $b$, donc $AB = b\sqrt{3} > b$. Mais $AB$ devrait valoir $a < b$. **Impossible.**

**Cas 3 : quatre segments courts.**

Il y a deux segments longs, et deux possibilités.

*(a) Les deux longs n'ont pas d'extrémité commune.* Disons $AC$ et $BD$ longs, et $AB = BC = CD = DA = a$. Les points $B$ et $D$ sont tous deux à distance $a$ de $A$ et de $C$ : ce sont donc les deux points d'intersection des cercles de centre $A$ et de centre $C$ et de rayon $a$, et ils sont symétriques par rapport à la droite $(AC)$. Le quadrilatère $ABCD$ est donc un losange de côté $a$, de diagonales $[AC]$ et $[BD]$, qui sont ici de même longueur $b$. Un losange à diagonales égales est un **carré**, et alors $b = a\sqrt{2} > a$ : cohérent.

**Deuxième configuration : le carré.**

*(b) Les deux longs partagent une extrémité.* Disons $AC$ et $AD$ longs. Les quatre autres segments sont courts : $BC = BD = CD = a$, donc $BCD$ est équilatéral de côté $a$, et $AB = a$.

Comme $AC = AD$, le point $A$ est sur la médiatrice de $[CD]$. Cette médiatrice passe par $B$ (car $BC = BD$) et par le milieu $M$ de $[CD]$. Le point $A$ est donc sur la droite $(BM)$, à distance $a$ de $B$ : il n'y a que deux positions, une de chaque côté de $B$.

Avec $BM = \dfrac{a\sqrt{3}}{2} \approx 0{,}87\,a$ et $CM = \dfrac{a}{2}$ :

- si $A$ est du côté opposé à $M$, alors $AM = a + \dfrac{a\sqrt{3}}{2}$ et, par le théorème de Pythagore dans le triangle $AMC$ rectangle en $M$,
$$AC^2 = \left(a + \frac{a\sqrt{3}}{2}\right)^2 + \left(\frac{a}{2}\right)^2 = a^2\left(1 + \sqrt{3} + \frac{3}{4} + \frac{1}{4}\right) = a^2\left(2 + \sqrt{3}\right),$$
donc $AC = a\sqrt{2 + \sqrt{3}} \approx 1{,}93\,a > a$ : cohérent.
- si $A$ est du côté de $M$, alors $AM = \left|a - \dfrac{a\sqrt{3}}{2}\right|$ et le même calcul donne $AC = a\sqrt{2 - \sqrt{3}} \approx 0{,}52\,a < a$. Mais $AC$ devait être la **grande** longueur. Ce sous-cas est donc à rejeter ici.

**Troisième configuration : un triangle équilatéral $BCD$ et un point $A$ placé sur l'axe de symétrie, au-delà du sommet $B$, à distance $a$ de $B$.** Quatre distances valent $a$, deux valent $a\sqrt{2+\sqrt{3}}$.

**Cas 4 : deux segments courts.**

C'est le cas 3 avec les rôles de $a$ et $b$ échangés, et il faut donc reprendre les deux sous-cas en vérifiant le sens de l'inégalité.

*(a) Les deux courts sans extrémité commune.* On obtient comme en 3(a) un carré de côté $b$ dont les diagonales valent $a$, donc $a = b\sqrt{2} > b$. **Impossible.**

*(b) Les deux courts partagent une extrémité.* Disons $AC = AD = a$ et $BC = BD = CD = AB = b$. Comme en 3(b), $BCD$ est équilatéral de côté $b$ et $A$ est sur la droite $(BM)$ à distance $b$ de $B$. Cette fois il faut $AC < b$, donc c'est la position rejetée plus haut qui convient : $A$ du côté de $M$, et même **au-delà** de $M$, puisque $BM \approx 0{,}87\,b < b$. On trouve $AC = b\sqrt{2 - \sqrt{3}} \approx 0{,}52\,b < b$ : cohérent.

**Quatrième configuration : un triangle équilatéral $BCD$ et un point $A$ placé sur l'axe de symétrie, de l'autre côté du côté $[CD]$, à distance $b$ de $B$.** Deux distances valent $b\sqrt{2-\sqrt{3}}$, quatre valent $b$.

Les troisième et quatrième configurations se ressemblent, mais ce sont bien deux figures différentes : dans l'une le point isolé est au-delà du sommet, dans l'autre au-delà du côté opposé.

**Cas 5 : trois segments courts (et donc trois longs).**

Trois segments sur quatre points peuvent former trois figures : un triangle, une étoile (trois segments issus d'un même point), ou une chaîne de trois segments. Examinons les trois.

*(a) Les courts forment un triangle.* Disons $ABC$ équilatéral de côté $a$, et $DA = DB = DC = b$. Le point $D$ est à égale distance des trois sommets : c'est le centre du triangle, et alors $b = \dfrac{a}{\sqrt{3}} < a$. **Impossible**, car $b$ doit être la grande longueur.

*(b) Les courts forment une étoile.* Disons $DA = DB = DC = a$ et $AB = BC = CA = b$. C'est la même figure que précédemment avec les rôles échangés : $ABC$ est équilatéral de côté $b$ et $D$ est son centre, avec $a = \dfrac{b}{\sqrt{3}} < b$ : cohérent.

**Cinquième configuration : un triangle équilatéral et son centre.** Trois distances valent $a$, trois valent $a\sqrt{3}$.

*(c) Les courts forment une chaîne.* Nommons les points de sorte que $AB = BC = CD = a$, et alors $AC = BD = AD = b$.

Plaçons un repère avec $B\left(-\dfrac{a}{2}\,;\,0\right)$ et $C\left(\dfrac{a}{2}\,;\,0\right)$, et notons $s$ la symétrie par rapport à l'axe des ordonnées, qui échange $B$ et $C$.

Le point $A$ est à distance $a$ de $B$ et à distance $b$ de $C$ : il est donc l'un des (au plus) deux points d'intersection de ces deux cercles, et ces deux points sont symétriques par rapport à l'axe des abscisses. Le point $D$, lui, est à distance $a$ de $C$ et à distance $b$ de $B$ : c'est donc l'image par $s$ de l'un de ces deux mêmes points. Posons $A(p\,;\,q)$. Il n'y a que deux possibilités : $D(-p\,;\,q)$ ou $D(-p\,;\,-q)$.

*Écartons $D(-p\,;\,-q)$.* On aurait

$$AB^2 = \left(p + \frac{a}{2}\right)^2 + q^2 = a^2, \qquad AC^2 = \left(p - \frac{a}{2}\right)^2 + q^2 = b^2,$$
$$AD^2 = (2p)^2 + (2q)^2 = 4\left(p^2 + q^2\right) = b^2 .$$

En additionnant les deux premières égalités, les termes en $p$ se simplifient :

$$2p^2 + \frac{a^2}{2} + 2q^2 = a^2 + b^2, \quad \text{donc} \quad 4\left(p^2 + q^2\right) = a^2 + 2b^2 .$$

En comparant avec la troisième égalité, $a^2 + 2b^2 = b^2$, c'est-à-dire $a^2 + b^2 = 0$ : impossible.

*Il reste $D(-p\,;\,q)$.* Quitte à changer le sens de l'axe des ordonnées, écrivons $A(-t\,;\,-h)$ et $D(t\,;\,-h)$ avec $t > 0$. La figure est alors un **trapèze isocèle** de petite base $[BC]$ et de grande base $[AD]$, et $AD = 2t = b$. Les conditions restantes s'écrivent

$$AB^2 = \left(t - \frac{a}{2}\right)^2 + h^2 = a^2, \qquad AC^2 = \left(t + \frac{a}{2}\right)^2 + h^2 = b^2 = 4t^2 .$$

En soustrayant la première de la seconde, les $h^2$ disparaissent :

$$\left(t + \frac{a}{2}\right)^2 - \left(t - \frac{a}{2}\right)^2 = 4t^2 - a^2, \quad \text{c'est-à-dire} \quad 2at = 4t^2 - a^2 .$$

C'est une équation du second degré en $t$ : $4t^2 - 2at - a^2 = 0$, de discriminant $4a^2 + 16a^2 = 20a^2$, d'où

$$t = \frac{2a + 2a\sqrt{5}}{8} = \frac{a\left(1 + \sqrt{5}\right)}{4} \quad \text{(la racine négative est à rejeter)} .$$

Donc $b = 2t = \dfrac{1 + \sqrt{5}}{2}\,a$, c'est-à-dire le nombre d'or fois $a$, et $b > a$ : cohérent. On vérifie enfin que $h^2 = a^2 - \left(t - \frac{a}{2}\right)^2$ est bien strictement positif, donc la figure existe.

On reconnaît cette figure : ce sont **quatre sommets consécutifs d'un pentagone régulier**. Trois de ses six segments sont des côtés du pentagone et les trois autres sont des diagonales ; or dans un pentagone régulier le rapport de la diagonale au côté vaut exactement le nombre d'or.

**Sixième configuration : le trapèze formé de quatre sommets consécutifs d'un pentagone régulier.**

**Conclusion.**

Tous les cas ont été parcourus, et il y a exactement **six** configurations :

| Configuration | Répartition des six distances |
|---|---|
| Le losange fait de deux triangles équilatéraux | $5$ fois $a$, $1$ fois $a\sqrt{3}$ |
| Le carré | $4$ fois $a$, $2$ fois $a\sqrt{2}$ |
| Triangle équilatéral, plus un point sur l'axe au-delà du sommet | $4$ fois $a$, $2$ fois $a\sqrt{2+\sqrt{3}}$ |
| Triangle équilatéral, plus un point sur l'axe au-delà du côté opposé | $2$ fois $a$, $4$ fois $b$, avec $a = b\sqrt{2-\sqrt{3}}$ |
| Triangle équilatéral et son centre | $3$ fois $a$, $3$ fois $a\sqrt{3}$ |
| Quatre sommets consécutifs d'un pentagone régulier | $3$ fois $a$, $3$ fois $a$ fois le nombre d'or |

Le carré n'est donc que l'une des six réponses, et c'est la seule dont les deux longueurs soient dans un rapport aussi simple que $\sqrt{2}$.

## Going further

La même question pour $n$ points est un problème célèbre et difficile. Pour cinq points du plan, il n'existe qu'une seule configuration à deux distances : les cinq sommets d'un pentagone régulier. Et il est impossible de placer six points du plan en n'utilisant que deux distances : cinq est le maximum.

On peut aussi changer la question : quel est le plus petit nombre de distances différentes que peuvent réaliser $n$ points du plan ? C'est le problème des distances distinctes d'Erdős, resté ouvert pendant plus de soixante ans.
