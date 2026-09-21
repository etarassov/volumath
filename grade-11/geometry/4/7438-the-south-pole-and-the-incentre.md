---
id: "7438"
title: "Le pôle Sud et le centre du cercle inscrit"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [cercle-circonscrit, bissectrice, angle-inscrit, isocele]
adapted_from: null
see_also: ["7225"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, incontournable : géométrie"
  reference: "stage_ete_2011.pdf, « Troisième période », incontournable géométrie, second TD, exercice 2 (« théorème du pôle Sud ») ; repris dans stage_ete_2010.pdf, groupe des débutants, TD de géométrie, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Soit $ABC$ un triangle et $\Gamma$ son cercle circonscrit. On note $I$ le centre de son cercle
inscrit, c'est-à-dire le point d'intersection des trois bissectrices intérieures.

La bissectrice intérieure issue de $A$ coupe $\Gamma$ une seconde fois en un point $D$.

Montrer que
$$DB = DC = DI.$$

## Hints

1. Pour $DB = DC$ : la bissectrice issue de $A$ coupe le cercle au milieu de l'arc $BC$ qui ne
   contient pas $A$. Pourquoi ? Pense au théorème de l'angle inscrit : deux angles inscrits égaux
   interceptent deux arcs de même longueur.
2. Pour $DI = DB$, il suffit de montrer que le triangle $DBI$ est isocèle en $D$, donc que
   $\widehat{DBI} = \widehat{DIB}$.
3. Note $\alpha$, $\beta$, $\gamma$ les angles du triangle en $A$, $B$, $C$. Exprime
   $\widehat{DBI}$ puis $\widehat{DIB}$ en fonction de $\alpha$ et $\beta$. Pour le second, passe
   par l'angle $\widehat{AIB}$, qui est le supplémentaire de $\widehat{DIB}$.

## Solution

Notons $\alpha = \widehat{BAC}$, $\beta = \widehat{ABC}$ et $\gamma = \widehat{BCA}$, de sorte que
$\alpha + \beta + \gamma = 180°$.

Comme $(AD)$ est la bissectrice issue de $A$, on a
$$\widehat{BAD} = \widehat{DAC} = \frac{\alpha}{2}.$$

### Première partie : $DB = DC$

Les angles inscrits $\widehat{BAD}$ et $\widehat{DAC}$ interceptent respectivement les arcs $BD$
et $DC$ (ceux qui ne contiennent pas $A$). Étant égaux, ils interceptent des arcs de même
longueur :
$$\overset{\frown}{BD} = \overset{\frown}{DC}.$$

À arcs égaux correspondent des cordes égales, donc
$$DB = DC.$$

Autrement dit, $D$ est le milieu de l'arc $BC$ ne contenant pas $A$ : c'est le **pôle Sud** du
triangle relativement à $A$.

### Seconde partie : $DI = DB$

Montrons que le triangle $DBI$ est isocèle en $D$, en calculant ses deux angles à la base.

**L'angle $\widehat{DBI}$.**

Cet angle se décompose en
$$\widehat{DBI} = \widehat{DBC} + \widehat{CBI}.$$

*Le premier morceau.* Les angles inscrits $\widehat{DBC}$ et $\widehat{DAC}$ interceptent le même
arc $DC$, donc ils sont égaux :
$$\widehat{DBC} = \widehat{DAC} = \frac{\alpha}{2}.$$

*Le second morceau.* Le point $I$ est sur la bissectrice issue de $B$, donc
$$\widehat{CBI} = \frac{\beta}{2}.$$

Donc
$$\widehat{DBI} = \frac{\alpha}{2} + \frac{\beta}{2}.$$

**L'angle $\widehat{DIB}$.**

Les points $A$, $I$, $D$ sont alignés dans cet ordre, puisque $I$ est sur le segment
$[AD]$ (le centre du cercle inscrit est à l'intérieur du triangle, donc entre $A$ et le point $D$
du cercle circonscrit). Les angles $\widehat{AIB}$ et $\widehat{DIB}$ sont donc supplémentaires :
$$\widehat{DIB} = 180° - \widehat{AIB}.$$

Or dans le triangle $AIB$, la somme des angles vaut $180°$, et
$$\widehat{IAB} = \frac{\alpha}{2}, \qquad \widehat{ABI} = \frac{\beta}{2},$$
donc
$$\widehat{AIB} = 180° - \frac{\alpha}{2} - \frac{\beta}{2}.$$

D'où
$$\widehat{DIB} = 180° - \left(180° - \frac{\alpha}{2} - \frac{\beta}{2}\right)
= \frac{\alpha}{2} + \frac{\beta}{2}.$$

**Conclusion partielle.**

On a trouvé
$$\widehat{DBI} = \frac{\alpha + \beta}{2} = \widehat{DIB}.$$

Le triangle $DBI$ a donc deux angles égaux : il est isocèle en $D$, et
$$DI = DB.$$

### Conclusion

En rassemblant les deux parties :
$$\boxed{DB = DC = DI}.$$

*Comment retenir ce résultat.* Le point $D$, milieu de l'arc $BC$, est le centre d'un cercle qui
passe par $B$, par $C$ et par le centre du cercle inscrit. On l'appelle parfois le « cercle du
pôle Sud ».

## Going further

Notons $I_A$ le centre du cercle exinscrit dans l'angle $A$, c'est-à-dire l'intersection de la
bissectrice intérieure issue de $A$ et des bissectrices **extérieures** issues de $B$ et de $C$.
Montrer que $DI_A = DB$ également, autrement dit que $I$ et $I_A$ sont sur le même cercle de
centre $D$. (Indication : les bissectrices intérieure et extérieure d'un même angle sont
perpendiculaires, donc $\widehat{IBI_A} = 90°$.)
