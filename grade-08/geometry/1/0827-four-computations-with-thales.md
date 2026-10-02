---
id: "0827"
title: "Quatre calculs avec le théorème de Thalès"
grade: 8
theme: geometry
difficulty: 1
duration_min: 20
tags: [thales, paralleles, longueurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 7"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

$ABC$ est un triangle. Le point $D$ est sur le côté $[AB]$, le point $E$ est sur le côté $[AC]$, et les droites $(DE)$ et $(BC)$ sont parallèles.

![Le triangle ABC, le point D sur [AB], le point E sur [AC] et le segment [DE] parallèle à [BC]](0827-figure-1.svg)

Dans chacun des quatre cas suivants, calculer les trois longueurs demandées.

1. $AB = 12$, $AC = 16$ et $AD = 8$ : calculer $AE$, $DB$ et $EC$.
2. $AB = 30$, $AD = 24$ et $AE = 8$ : calculer $AC$, $DB$ et $EC$.
3. $AC = 12$, $DB = 9$ et $AE = 8$ : calculer $AB$, $AD$ et $EC$.
4. $EC = 15$, $AD = 16$ et $DB = 12$ : calculer $AB$, $AC$ et $AE$.

## Hints

1. Le théorème de Thalès donne trois rapports égaux :
   $$\frac{AD}{AB} = \frac{AE}{AC} = \frac{DE}{BC}.$$
   Commence toujours par calculer celui de ces rapports que les données permettent d'obtenir.
2. Attention à ne pas confondre : $D$ est entre $A$ et $B$, donc $AD + DB = AB$. De même $AE + EC = AC$.
3. Dans les questions 3 et 4, on ne connaît pas d'abord le rapport $\dfrac{AD}{AB}$, mais un rapport qui lui ressemble, $\dfrac{DB}{AB}$ ou $\dfrac{EC}{AC}$. Or $\dfrac{AD}{AB} + \dfrac{DB}{AB} = 1$.

## Solution

Comme $(DE)$ et $(BC)$ sont parallèles, le théorème de Thalès dans le triangle $ABC$ donne

$$\frac{AD}{AB} = \frac{AE}{AC} = \frac{DE}{BC}.$$

Appelons $k$ cette valeur commune. On a aussi, en passant aux morceaux restants,

$$\frac{DB}{AB} = 1 - k \qquad \text{et} \qquad \frac{EC}{AC} = 1 - k.$$

**Cas 1.** $k = \dfrac{AD}{AB} = \dfrac{8}{12} = \dfrac{2}{3}$. Donc

$$AE = \frac{2}{3} \times 16 = \frac{32}{3}, \qquad DB = 12 - 8 = 4, \qquad EC = 16 - \frac{32}{3} = \frac{16}{3}.$$

($AE$ vaut environ 10,7 et $EC$ environ 5,3.)

**Cas 2.** $k = \dfrac{AD}{AB} = \dfrac{24}{30} = \dfrac{4}{5}$. De $\dfrac{AE}{AC} = \dfrac{4}{5}$ on tire

$$AC = 8 \times \frac{5}{4} = 10, \qquad DB = 30 - 24 = 6, \qquad EC = 10 - 8 = 2.$$

**Cas 3.** Ici c'est le rapport $\dfrac{AE}{AC} = \dfrac{8}{12} = \dfrac{2}{3}$ que l'on obtient en premier, donc $k = \dfrac{2}{3}$. Alors

$$\frac{DB}{AB} = 1 - \frac{2}{3} = \frac{1}{3},$$

et comme $DB = 9$, on obtient $AB = 27$. Il reste

$$AD = 27 - 9 = 18, \qquad EC = 12 - 8 = 4.$$

**Cas 4.** On connaît les deux morceaux du côté $[AB]$, donc $AB = 16 + 12 = 28$ et

$$k = \frac{AD}{AB} = \frac{16}{28} = \frac{4}{7}.$$

Alors $\dfrac{EC}{AC} = 1 - \dfrac{4}{7} = \dfrac{3}{7}$, et comme $EC = 15$,

$$AC = 15 \times \frac{7}{3} = 35, \qquad AE = 35 - 15 = 20.$$

**Récapitulatif.**

| cas | résultats |
|---|---|
| 1 | $AE = \frac{32}{3}$, $DB = 4$, $EC = \frac{16}{3}$ |
| 2 | $AC = 10$, $DB = 6$, $EC = 2$ |
| 3 | $AB = 27$, $AD = 18$, $EC = 4$ |
| 4 | $AB = 28$, $AC = 35$, $AE = 20$ |

## Going further

Dans le cas 2, calculer aussi le rapport $\dfrac{DE}{BC}$, puis la longueur $DE$ sachant que $BC = 15$.
