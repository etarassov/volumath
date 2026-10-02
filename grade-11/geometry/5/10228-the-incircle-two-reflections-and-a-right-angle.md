---
id: "10228"
title: "Le cercle inscrit, deux symétriques et un angle droit"
grade: 11
theme: geometry
difficulty: 5
duration_min: 50
tags: [cercle-inscrit, cercle-exinscrit, tangente, produit-scalaire, vecteurs, parallelogramme, perpendiculaire, puissance-d-un-point]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 1 (géométrie)"
  reference: "2020-10_Sujet-envoi-1.pdf, Exercices Seniors, exercice 18 ; corrigé 2020-11_corrige-envoi-1.pdf (le corrigé utilise les axes radicaux ou les coordonnées barycentriques ; solution refaite avec le produit scalaire)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-10_Sujet-envoi-1.pdf"
---

## Statement

Soit $ABC$ un triangle. Son cercle inscrit touche les côtés $[BC]$, $[CA]$ et $[AB]$ en $D$, $E$ et $F$. On note $M$ le milieu du segment $[EF]$ et $G$ le point d'intersection des droites $(BE)$ et $(CF)$.

Soit $B'$ le symétrique du point $F$ par rapport au point $B$, et $C'$ le symétrique du point $E$ par rapport au point $C$.

Montrer que la droite $(MG)$ est perpendiculaire à la droite $(B'C')$.

![Le triangle ABC, son cercle inscrit, les points D, E, F, M, G, B′, C′, la droite (MG) et le segment [B′C′]](10228-figure-1.svg)

## Hints

1. Calculez les longueurs $BD$, $CD$, $CE$, $BF$ en fonction des côtés du triangle (deux tangentes issues d'un même point ont la même longueur).
2. On place les points $B''$ et $C''$ tels que $\overrightarrow{BB''} = \overrightarrow{CE}$ et $\overrightarrow{CC''} = \overrightarrow{BF}$. Montrez que $M$ est le milieu de $[B''C'']$ et que $\overrightarrow{C''B''} = \overrightarrow{C'B'}$. Avec le produit scalaire, montrez qu'il suffit alors de prouver que $GB'' = GC''$.
3. Utilisez le cercle exinscrit dans l'angle $\widehat{A}$, de centre $J$ et de rayon $\rho$. Pour un point $P$, posez $\varphi(P) = PB''^2 - PJ^2 + \rho^2$. Montrez que $\varphi(B) = \varphi(E) = 0$, puis que $\varphi$ est nul en tout point de la droite $(BE)$.

## Solution

*Rappels.*

- *Tangentes issues d'un point.* Si deux droites issues d'un point $U$ touchent un cercle de centre $Z$ et de rayon $\rho$ en $V$ et en $W$, alors $UV = UW$, et $UV^2 = UZ^2 - \rho^2$ (Pythagore dans le triangle $UVZ$, rectangle en $V$).
- *Une identité du produit scalaire.* Pour trois points $X$, $Y$, $Z$, si $K$ est le milieu de $[XY]$, alors
$$ZX^2 - ZY^2 = (\overrightarrow{ZX} - \overrightarrow{ZY}) \cdot (\overrightarrow{ZX} + \overrightarrow{ZY}) = \overrightarrow{YX} \cdot 2\,\overrightarrow{ZK}.$$
- *Cercle exinscrit.* Les bissectrices des angles extérieurs du triangle en $B$ et en $C$ se coupent en un point $J$. Un point d'une bissectrice est à la même distance des deux côtés de l'angle, donc $J$ est à la même distance $\rho$ des trois droites $(AB)$, $(BC)$, $(CA)$. Le cercle $\omega_A$ de centre $J$ et de rayon $\rho$ est donc tangent aux trois droites. Il touche le segment $[BC]$ en un point $D'$, la demi-droite $[AB)$ au-delà de $B$ en un point $F'$, et la demi-droite $[AC)$ au-delà de $C$ en un point $E'$.

On note $a = BC$, $b = CA$, $c = AB$ et $s = \frac{a + b + c}{2}$ le demi-périmètre.

**Étape 1 : les longueurs des tangentes.** Pour le cercle inscrit, le premier rappel donne $AE = AF = x$, $BD = BF = y$ et $CD = CE = z$. Alors $x + y = c$, $y + z = a$, $z + x = b$, donc $x + y + z = s$ et

$$x = s - a, \qquad y = s - b, \qquad z = s - c.$$

Pour le cercle $\omega_A$, on a de même $AE' = AF'$, $BD' = BF'$ et $CD' = CE'$. Comme $F'$ est au-delà de $B$ et $E'$ au-delà de $C$,

$$AF' + AE' = (AB + BF') + (AC + CE') = c + b + (BD' + CD') = a + b + c,$$

donc $AF' = AE' = s$, puis $BD' = BF' = s - c$ et $CD' = CE' = s - b$. On retient :

$$BD' = s - c = CE, \qquad CD' = s - b = BF, \qquad EE' = AE' - AE = a, \qquad FF' = AF' - AF = a.$$

(Pour $EE'$ : sur la demi-droite $[AC)$, on a $AE = s - a < AE' = s$.)

**Étape 2 : deux points auxiliaires.** On place $B''$ et $C''$ tels que $\overrightarrow{BB''} = \overrightarrow{CE}$ et $\overrightarrow{CC''} = \overrightarrow{BF}$.

- *$M$ est le milieu de $[B''C'']$.* On a $\overrightarrow{MB''} = \overrightarrow{MB} + \overrightarrow{CE}$ et $\overrightarrow{MC''} = \overrightarrow{MC} + \overrightarrow{BF}$, donc
$$\overrightarrow{MB''} + \overrightarrow{MC''} = (\overrightarrow{MB} + \overrightarrow{BF}) + (\overrightarrow{MC} + \overrightarrow{CE}) = \overrightarrow{MF} + \overrightarrow{ME} = \vec{0}.$$
- *$\overrightarrow{C''B''} = \overrightarrow{C'B'}$.* Le point $B$ est le milieu de $[FB']$ et $C$ celui de $[EC']$, donc $\overrightarrow{BB'} = \overrightarrow{FB}$ et $\overrightarrow{C'C} = \overrightarrow{CE}$. Alors
$$\overrightarrow{C'B'} = \overrightarrow{C'C} + \overrightarrow{CB} + \overrightarrow{BB'} = \overrightarrow{CE} + \overrightarrow{CB} + \overrightarrow{FB},$$
$$\overrightarrow{C''B''} = \overrightarrow{C''C} + \overrightarrow{CB} + \overrightarrow{BB''} = \overrightarrow{FB} + \overrightarrow{CB} + \overrightarrow{CE}.$$
- *Deux longueurs.* $\overrightarrow{EB''} = \overrightarrow{EC} + \overrightarrow{CB} + \overrightarrow{BB''} = \overrightarrow{CB}$, donc $EB'' = a$. De même $\overrightarrow{FC''} = \overrightarrow{FB} + \overrightarrow{BC} + \overrightarrow{CC''} = \overrightarrow{BC}$, donc $FC'' = a$. Enfin $BB'' = CE = s - c$ et $CC'' = BF = s - b$.

**Étape 3 : il suffit de montrer que $GB'' = GC''$.** On applique le deuxième rappel avec $Z = G$, $X = B''$, $Y = C''$ et $K = M$ :

$$GB''^2 - GC''^2 = 2\,\overrightarrow{C''B''} \cdot \overrightarrow{GM} = 2\,\overrightarrow{C'B'} \cdot \overrightarrow{GM}.$$

Les points $G$ et $M$ sont distincts : sinon $M$ serait sur $(BE)$ et sur $(EF)$, donc égal à $E$, ce qui est impossible puisque $E \neq F$. Donc $(MG) \perp (B'C')$ si et seulement si $\overrightarrow{C'B'} \cdot \overrightarrow{GM} = 0$, c'est-à-dire si et seulement si $GB'' = GC''$.

**Étape 4 : une fonction nulle sur la droite $(BE)$.** Pour tout point $P$ du plan, on pose

$$\varphi(P) = PB''^2 - PJ^2 + \rho^2.$$

*Sur la droite $(BE)$, $\varphi$ se comporte comme une fonction affine.* Soit $K$ le milieu de $[B''J]$. Le deuxième rappel donne $\varphi(P) = 2\,\overrightarrow{JB''} \cdot \overrightarrow{PK} + \rho^2$. Si $P$ est sur $(BE)$, avec $\overrightarrow{BP} = t\,\overrightarrow{BE}$, alors $\overrightarrow{PK} = \overrightarrow{BK} - t\,\overrightarrow{BE}$, donc

$$\varphi(P) = \varphi(B) - 2t\,\overrightarrow{JB''} \cdot \overrightarrow{BE}.$$

Pour $t = 1$, cela donne $\varphi(E) = \varphi(B) - 2\,\overrightarrow{JB''} \cdot \overrightarrow{BE}$, et donc $\varphi(P) = (1 - t)\,\varphi(B) + t\,\varphi(E)$.

*$\varphi(B) = 0$ et $\varphi(E) = 0$.* La droite $(BC)$ est tangente à $\omega_A$ en $D'$, donc $BJ^2 - \rho^2 = BD'^2$ (premier rappel). Avec les étapes 1 et 2 :

$$\varphi(B) = BB''^2 - BD'^2 = (s - c)^2 - (s - c)^2 = 0.$$

De même, $(AC)$ est tangente à $\omega_A$ en $E'$, donc $EJ^2 - \rho^2 = EE'^2 = a^2$, et

$$\varphi(E) = EB''^2 - EE'^2 = a^2 - a^2 = 0.$$

Donc $\varphi$ est nulle en tout point de $(BE)$, en particulier en $G$ :

$$GB''^2 = GJ^2 - \rho^2.$$

**Étape 5 : la même chose sur la droite $(CF)$.** On pose $\psi(P) = PC''^2 - PJ^2 + \rho^2$. Le même calcul montre que, sur la droite $(CF)$, $\psi$ est de la forme $(1 - t)\,\psi(C) + t\,\psi(F)$. Or $CJ^2 - \rho^2 = CD'^2$ et $FJ^2 - \rho^2 = FF'^2$, donc

$$\psi(C) = CC''^2 - CD'^2 = (s - b)^2 - (s - b)^2 = 0, \qquad \psi(F) = FC''^2 - FF'^2 = a^2 - a^2 = 0.$$

Donc $\psi(G) = 0$, c'est-à-dire $GC''^2 = GJ^2 - \rho^2$.

**Conclusion.** Les étapes 4 et 5 donnent $GB''^2 = GJ^2 - \rho^2 = GC''^2$, donc $GB'' = GC''$. D'après l'étape 3, **la droite $(MG)$ est perpendiculaire à la droite $(B'C')$.**

![Les points B″ et C″, le segment [B″C″] qui passe par M et qui est parallèle à [B′C′], et une partie du cercle exinscrit ωA avec ses points de contact D′, E′, F′](10228-figure-2.svg)

*Remarque.* Le nombre $PJ^2 - \rho^2$ s'appelle la puissance du point $P$ par rapport au cercle $\omega_A$. Le corrigé officiel voit $B''$ et $C''$ comme des cercles de rayon nul : la droite $(BE)$ est l'ensemble des points qui ont la même puissance par rapport à $\omega_A$ et à $B''$ (c'est l'axe radical de ces deux « cercles »), la droite $(CF)$ joue le même rôle pour $\omega_A$ et $C''$, et $G$, qui est sur les deux, a la même puissance par rapport aux trois. Les étapes 4 et 5 font ce raisonnement sans le vocabulaire des axes radicaux. Le corrigé propose aussi une solution en coordonnées barycentriques.

## Going further

1. Montrer que l'ensemble des points $P$ tels que $\varphi(P) = 0$ est exactement la droite $(BE)$ (c'est une droite perpendiculaire à $(JB'')$).
2. Montrer que les droites $(AD)$, $(BE)$, $(CF)$ sont concourantes, et donc que $G$ est aussi sur $(AD)$.
