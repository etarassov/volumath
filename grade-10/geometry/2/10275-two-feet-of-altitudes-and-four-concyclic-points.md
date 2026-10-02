---
id: "10275"
title: "Deux pieds de hauteurs et quatre points cocycliques"
grade: 10
theme: geometry
difficulty: 2
duration_min: 15
tags: [hauteur, triangle-rectangle, triangles-semblables, cocyclicite, quadrilatere-inscrit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 1 (géométrie)"
  reference: "2024-11_Sujet-envoi-1-2024-2025.pdf, Exercices Juniors, exercice 3 (repris en Exercices Seniors, exercice 12) ; corrigé 2025-01_Corrige-envoi-1-2024-2025.pdf (le corrigé fait une chasse aux angles dans le quadrilatère inscrit AEDF ; la solution ci-dessous passe par les longueurs, la chasse aux angles est donnée en remarque)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/11/Sujet-envoi-1-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-11_Sujet-envoi-1-2024-2025.pdf"
---

## Statement

Soit $ABC$ un triangle qui n'a d'angle droit ni en $B$ ni en $C$. On note $D$ le pied de la hauteur issue de $A$.

On note $E$ le pied de la hauteur issue de $D$ dans le triangle $ABD$, et $F$ le pied de la hauteur issue de $D$ dans le triangle $ACD$.

Montrer que les points $B$, $C$, $E$ et $F$ sont sur un même cercle.

![Le triangle ABC, la hauteur [AD], et les projetés E et F de D sur (AB) et (AC)](10275-figure-1.svg)

## Hints

1. Le triangle $ABD$ est rectangle en $D$, et $E$ est le pied de la hauteur issue de l'angle droit. Trouvez deux triangles semblables qui relient $AE$, $AD$ et $AB$.
2. Vous devriez obtenir $AE \times AB = AD^2$. Faites de même dans le triangle $ACD$, et comparez.
3. Avec $AE \times AB = AF \times AC$, comparez les triangles $AEF$ et $ACB$, puis regardez les angles du quadrilatère $BEFC$.

## Solution

*Rappels.*

- *Triangles semblables.* Deux triangles qui ont deux angles égaux sont semblables, et leurs côtés correspondants sont proportionnels. Deux triangles qui ont un angle égal compris entre des côtés proportionnels sont semblables.
- *Quadrilatère inscrit.* Un quadrilatère convexe dont deux angles opposés sont supplémentaires (leur somme fait $180°$) a ses quatre sommets sur un même cercle.

Comme l'angle en $B$ n'est pas droit, $D \neq B$, et le triangle $ABD$ est un vrai triangle, rectangle en $D$. De même pour $ACD$.

**Étape 1 : $AE \times AB = AD^2$.** Le pied de la hauteur issue de l'angle droit tombe sur l'hypoténuse, donc $E$ est sur le segment $[AB]$. Les triangles $AED$ et $ADB$ sont rectangles, en $E$ et en $D$, et ils ont en commun l'angle $\widehat{DAB}$. Ils sont donc semblables, ce qui donne

$$\frac{AE}{AD} = \frac{AD}{AB}, \qquad \text{donc} \qquad AE \times AB = AD^2.$$

**Étape 2 : $AF \times AC = AD^2$.** Exactement de la même façon dans le triangle $ACD$, rectangle en $D$ : $F$ est sur le segment $[AC]$ et $AF \times AC = AD^2$.

**Étape 3 : les triangles $AEF$ et $ACB$.** Des deux étapes on tire $AE \times AB = AF \times AC$, c'est-à-dire

$$\frac{AE}{AC} = \frac{AF}{AB}.$$

Les triangles $AEF$ et $ACB$ ont le même angle en $A$, compris entre des côtés proportionnels ($AE$ correspond à $AC$, et $AF$ à $AB$). Ils sont donc semblables, et l'angle en $E$ du premier est égal à l'angle en $C$ du second :

$$\widehat{AEF} = \widehat{ACB}.$$

**Étape 4 : le quadrilatère $BEFC$.** Comme $E$ est sur $[AB]$ et $F$ sur $[AC]$, le quadrilatère $BEFC$ est le triangle $ABC$ auquel on a enlevé le petit triangle $AEF$ : il est convexe. Ses angles en $E$ et en $C$ sont opposés, et

$$\widehat{BEF} = 180° - \widehat{AEF} = 180° - \widehat{ACB} = 180° - \widehat{BCF}.$$

Les angles $\widehat{BEF}$ et $\widehat{BCF}$ sont donc supplémentaires.

**Conclusion.** Le quadrilatère convexe $BEFC$ a deux angles opposés supplémentaires, donc les points $B$, $C$, $E$ et $F$ sont sur un même cercle.

![Le cercle qui passe par B, C, E et F, et le segment [EF]](10275-figure-2.svg)

*Remarques.*

- Quand $D$ est sur le segment $[BC]$, on peut aussi tout faire avec des angles. Les angles $\widehat{AED}$ et $\widehat{AFD}$ sont droits, donc $E$ et $F$ sont sur le cercle de diamètre $[AD]$. Dans ce cercle, $\widehat{AEF} = \widehat{ADF}$ (angles inscrits qui interceptent le même arc). Enfin $\widehat{ADF} = 90° - \widehat{FAD} = \widehat{ACD}$, en regardant les triangles rectangles $AFD$ et $ADC$. On retrouve $\widehat{AEF} = \widehat{ACB}$.
- Les étapes 3 et 4 démontrent en fait un résultat général, la réciproque de la puissance d'un point : si $E$ est sur $[AB]$, $F$ sur $[AC]$, et $AE \times AB = AF \times AC$, alors $B$, $C$, $E$ et $F$ sont sur un même cercle.
