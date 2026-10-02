---
id: "12010"
title: "Le milieu de [EF] sur la corde commune de deux cercles"
grade: 12
theme: geometry
difficulty: 5
duration_min: 90
tags: [quadrilatere, cercle, projete orthogonal, produit scalaire, puissance d un point, axe radical, quart de tour]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2012"
  reference: "2017-10_ofm-2011-2012-test-mars-2.pdf, exercice 6 ; corrigé 2017-10_ofm-2011-2012-test-mars-corrige.pdf (le corrigé fait une chasse aux angles qui dépend de la figure ; solution réécrite avec le produit scalaire, valable dans tous les cas). Il s'agit, semble-t-il, du problème G3 de la liste courte (shortlist) de l'OIM 2011."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2011-2012-test-mars-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2011-2012-test-mars-2.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère convexe dont les droites $(AD)$ et $(BC)$ ne sont pas parallèles. On suppose que les cercles de diamètres $[AB]$ et $[CD]$ se coupent en deux points $E$ et $F$ situés à l'intérieur de $ABCD$.

On note $\Gamma_E$ le cercle qui passe par les projetés orthogonaux de $E$ sur les droites $(AB)$, $(BC)$ et $(CD)$, et $\Gamma_F$ le cercle qui passe par les projetés orthogonaux de $F$ sur les droites $(CD)$, $(DA)$ et $(AB)$.

![Le quadrilatère ABCD, les demi-cercles de diamètres [AB] et [CD] en pointillés, qui se coupent en E et F, et les cercles ΓE et ΓF avec les projetés qui les définissent](12010-figure-1.svg)

Démontrer que le milieu de $[EF]$ appartient à la droite qui passe par les deux points d'intersection de $\Gamma_E$ et $\Gamma_F$.

## Hints

1. Le produit scalaire est un bon outil ici. Un point $M$ est sur le cercle de diamètre $[XY]$ si et seulement si $\overrightarrow{MX} \cdot \overrightarrow{MY} = 0$. Pour un point $M$ quelconque, comparez $\overrightarrow{MX} \cdot \overrightarrow{MY}$ à $MO^2 - r^2$, où $O$ est le centre et $r$ le rayon.
2. La perpendiculaire à $(BC)$ passant par $E$ coupe $(AD)$ en un point $E_1$, et la perpendiculaire à $(AD)$ passant par $E$ coupe $(BC)$ en un point $E_2$. Montrez que le projeté de $E$ sur $(BC)$ est sur le cercle de diamètre $[E_1 E_2]$.
3. Soit $Q$ le projeté de $E$ sur $(AB)$. Les triangles $QAE$ et $QEB$ sont semblables : un quart de tour de centre $Q$, suivi d'un agrandissement, envoie $A$ sur $E$ et $E$ sur $B$. Où envoie-t-il $E_1$ ? Concluez que $\Gamma_E$ est le cercle de diamètre $[E_1 E_2]$.
4. Soit $U$ le point où la perpendiculaire à $(AD)$ passant par $E$ coupe la perpendiculaire à $(BC)$ passant par $F$. Comparez $\overrightarrow{UE_1} \cdot \overrightarrow{UE_2}$ et $\overrightarrow{UF_1} \cdot \overrightarrow{UF_2}$, où $F_1$ et $F_2$ sont construits à partir de $F$ comme $E_1$ et $E_2$ à partir de $E$.

## Solution

On commence par trois outils, puis on démontre le résultat en cinq étapes.

**Outil 1 : la puissance d'un point.** Soit $\mathcal{C}$ un cercle de diamètre $[XY]$, de centre $O$ et de rayon $r$. Pour tout point $M$ du plan,

$$\overrightarrow{MX} \cdot \overrightarrow{MY} = MO^2 - r^2 .$$

En effet $\overrightarrow{OY} = -\overrightarrow{OX}$, donc $\overrightarrow{MX} \cdot \overrightarrow{MY} = (\overrightarrow{MO} + \overrightarrow{OX}) \cdot (\overrightarrow{MO} - \overrightarrow{OX}) = MO^2 - OX^2 = MO^2 - r^2$. Ce nombre s'appelle la *puissance* de $M$ par rapport à $\mathcal{C}$ ; on le note $p_{\mathcal{C}}(M)$. Il est nul exactement quand $M$ est sur le cercle.

**Outil 2 : les points de même puissance.** Soient $\mathcal{C}_1$ et $\mathcal{C}_2$ deux cercles de centres distincts $O_1$ et $O_2$, de rayons $r_1$ et $r_2$, qui se coupent en deux points distincts $X$ et $Y$. Alors tout point $M$ tel que $p_{\mathcal{C}_1}(M) = p_{\mathcal{C}_2}(M)$ est sur la droite $(XY)$.

En effet, soit $J$ le milieu de $[O_1 O_2]$. On a $MO_1^2 - MO_2^2 = (\overrightarrow{MO_1} - \overrightarrow{MO_2}) \cdot (\overrightarrow{MO_1} + \overrightarrow{MO_2}) = \overrightarrow{O_2 O_1} \cdot 2\overrightarrow{MJ} = 2\,\overrightarrow{JM} \cdot \overrightarrow{O_1 O_2}$. Donc

$$p_{\mathcal{C}_1}(M) = p_{\mathcal{C}_2}(M) \iff \overrightarrow{JM} \cdot \overrightarrow{O_1 O_2} = \frac{r_1^2 - r_2^2}{2} .$$

Les points $X$ et $Y$ ont une puissance nulle par rapport aux deux cercles, donc ils vérifient cette égalité. Si $M$ la vérifie aussi, en faisant la différence on obtient $\overrightarrow{XM} \cdot \overrightarrow{O_1 O_2} = 0$ et $\overrightarrow{XY} \cdot \overrightarrow{O_1 O_2} = 0$. Les vecteurs $\overrightarrow{XM}$ et $\overrightarrow{XY}$ sont tous deux orthogonaux au vecteur non nul $\overrightarrow{O_1 O_2}$, donc ils sont colinéaires : $M$ est sur $(XY)$.

**Outil 3 : le quart de tour.** Dans un repère orthonormé, on pose $\rho(x, y) = (-y, x)$ pour tout vecteur $(x, y)$. On vérifie en coordonnées que $\rho$ respecte les sommes et les produits par un réel, que $\rho(\vec u)$ est orthogonal à $\vec u$ et de même longueur, que $\rho(\rho(\vec u)) = -\vec u$, et enfin que pour une droite $d$ :

- si $\vec u$ est parallèle à $d$, alors $\rho(\vec u)$ est orthogonal à $d$ ;
- si $\vec u$ est orthogonal à $d$, alors $\rho(\vec u)$ est parallèle à $d$.

L'application $-\rho$ (le quart de tour dans l'autre sens) a exactement les mêmes propriétés.

**Étape 1 : les droites $(AD)$ et $(BC)$ ne sont pas perpendiculaires.** Elles se coupent en un point $K$. Comme $ABCD$ est convexe, quitte à échanger les noms $A \leftrightarrow D$ et $B \leftrightarrow C$ (ce qui ne change pas le problème), on peut supposer que $A$ est sur le segment $[KD]$ et $B$ sur le segment $[KC]$. Le quadrilatère $ABCD$ est alors contenu dans le triangle $KCD$, et $E$ est strictement à l'intérieur de ce triangle.

La droite $(DE)$ coupe donc le segment $[KC]$ en un point $W$ strictement entre $K$ et $C$, et $E$ est entre $D$ et $W$. L'angle $\widehat{CED}$ est un angle extérieur du triangle $ECW$, donc $\widehat{CED} = \widehat{EWC} + \widehat{ECW} > \widehat{EWC} = \widehat{DWC}$. De même, $\widehat{DWC}$ est un angle extérieur du triangle $DKW$, donc $\widehat{DWC} = \widehat{WKD} + \widehat{KDW} > \widehat{CKD}$. Ainsi

$$\widehat{CKD} < \widehat{CED} = 90^\circ,$$

car $E$ est sur le cercle de diamètre $[CD]$. Les droites $(AD)$ et $(BC)$ ne sont donc pas perpendiculaires.

Par conséquent, la perpendiculaire à $(BC)$ passant par $E$ n'est pas parallèle à $(AD)$, et la perpendiculaire à $(AD)$ passant par $E$ n'est pas parallèle à $(BC)$. On peut donc définir :

- $E_1$ : le point d'intersection de $(AD)$ et de la perpendiculaire à $(BC)$ passant par $E$ ;
- $E_2$ : le point d'intersection de $(BC)$ et de la perpendiculaire à $(AD)$ passant par $E$ ;
- $F_1$ et $F_2$ : les points construits de la même façon à partir de $F$.

**Étape 2 : $\Gamma_E$ est le cercle de diamètre $[E_1 E_2]$.** Notons $Q$, $R$, $S$, $P$ les projetés orthogonaux de $E$ sur $(AB)$, $(BC)$, $(CD)$, $(DA)$. Montrons que ces quatre points sont sur le cercle de diamètre $[E_1 E_2]$, c'est-à-dire que $\overrightarrow{ME_1} \cdot \overrightarrow{ME_2} = 0$ pour $M = Q, R, S, P$.

*Le point $R$.* Les points $R$ et $E_2$ sont sur $(BC)$, donc $\overrightarrow{RE_2}$ est parallèle à $(BC)$. Les points $R$ et $E_1$ sont sur la perpendiculaire à $(BC)$ passant par $E$, donc $\overrightarrow{RE_1}$ est orthogonal à $(BC)$. Le produit scalaire est nul. Le même raisonnement, avec $(AD)$ à la place de $(BC)$, s'applique au point $P$.

*Le point $Q$.* Comme $E$ est sur le cercle de diamètre $[AB]$ et distinct de $A$ et $B$, le triangle $AEB$ est rectangle en $E$. Ses angles en $A$ et en $B$ sont aigus, donc le pied $Q$ de la hauteur issue de $E$ est strictement entre $A$ et $B$. Par Pythagore dans les triangles $AQE$, $BQE$ et $AEB$ :

$$(QA + QB)^2 = AB^2 = AE^2 + BE^2 = QA^2 + QB^2 + 2\,QE^2, \qquad \text{donc} \qquad QE^2 = QA \cdot QB .$$

Le vecteur $\rho(\overrightarrow{QA})$ est orthogonal à $(AB)$, donc porté par la droite $(QE)$. Quitte à remplacer $\rho$ par $-\rho$, il a le même sens que $\overrightarrow{QE}$, et en posant $\lambda = \dfrac{QE}{QA}$ :

$$\overrightarrow{QE} = \lambda\, \rho(\overrightarrow{QA}) .$$

Alors $\rho(\overrightarrow{QE}) = \lambda\,\rho(\rho(\overrightarrow{QA})) = -\lambda\,\overrightarrow{QA}$ a le sens de $\overrightarrow{QB}$ (car $Q$ est entre $A$ et $B$) et la longueur $QE$. Donc $\overrightarrow{QB} = \dfrac{QB}{QE}\,\rho(\overrightarrow{QE})$, et comme $\dfrac{QB}{QE} = \dfrac{QE}{QA} = \lambda$ :

$$\overrightarrow{QB} = \lambda\, \rho(\overrightarrow{QE}) .$$

Soit $Z$ le point tel que $\overrightarrow{QZ} = \lambda\,\rho(\overrightarrow{QE_1})$. En utilisant les deux égalités ci-dessus :

- $\overrightarrow{EZ} = \overrightarrow{QZ} - \overrightarrow{QE} = \lambda\,\rho(\overrightarrow{QE_1} - \overrightarrow{QA}) = \lambda\,\rho(\overrightarrow{AE_1})$. Comme $A$ et $E_1$ sont sur $(AD)$, ce vecteur est orthogonal à $(AD)$ : $Z$ est sur la perpendiculaire à $(AD)$ passant par $E$.
- $\overrightarrow{BZ} = \overrightarrow{QZ} - \overrightarrow{QB} = \lambda\,\rho(\overrightarrow{QE_1} - \overrightarrow{QE}) = \lambda\,\rho(\overrightarrow{EE_1})$. Comme $\overrightarrow{EE_1}$ est orthogonal à $(BC)$, ce vecteur est parallèle à $(BC)$ : $Z$ est sur $(BC)$.

Le point $Z$ est donc l'intersection de $(BC)$ et de la perpendiculaire à $(AD)$ passant par $E$ : $Z = E_2$. Ainsi $\overrightarrow{QE_2} = \lambda\,\rho(\overrightarrow{QE_1})$ est orthogonal à $\overrightarrow{QE_1}$, et $\overrightarrow{QE_1} \cdot \overrightarrow{QE_2} = 0$.

*Le point $S$.* On refait exactement la même chose dans le triangle $DEC$, rectangle en $E$ car $E$ est sur le cercle de diamètre $[CD]$, avec $D$ à la place de $A$, $C$ à la place de $B$ et $S$ à la place de $Q$. On obtient un réel $\mu > 0$ et un quart de tour $\rho'$ (égal à $\rho$ ou à $-\rho$) tels que $\overrightarrow{SE} = \mu\,\rho'(\overrightarrow{SD})$ et $\overrightarrow{SC} = \mu\,\rho'(\overrightarrow{SE})$. Le point $Z'$ défini par $\overrightarrow{SZ'} = \mu\,\rho'(\overrightarrow{SE_1})$ vérifie $\overrightarrow{EZ'} = \mu\,\rho'(\overrightarrow{DE_1})$, orthogonal à $(AD)$, et $\overrightarrow{CZ'} = \mu\,\rho'(\overrightarrow{EE_1})$, parallèle à $(BC)$. Donc $Z' = E_2$ et $\overrightarrow{SE_1} \cdot \overrightarrow{SE_2} = 0$.

*Conclusion de l'étape.* Les points $Q$, $R$, $S$ sont sur le cercle de diamètre $[E_1 E_2]$. (On a $E_1 \ne E_2$ : sinon $\overrightarrow{QE_1} \cdot \overrightarrow{QE_2} = QE_1^2 = 0$, de même pour $R$ et $S$, et les trois projetés seraient confondus.) Comme $\Gamma_E$ est le cercle qui passe par $Q$, $R$ et $S$, **$\Gamma_E$ est le cercle de diamètre $[E_1 E_2]$.**

Le point $F$ vérifie les mêmes hypothèses que $E$, donc ses quatre projetés sur les côtés sont sur le cercle de diamètre $[F_1 F_2]$. En particulier **$\Gamma_F$ est le cercle de diamètre $[F_1 F_2]$.**

**Étape 3 : deux points qui ont la même puissance par rapport aux deux cercles.** Les droites $(AD)$ et $(BC)$ ne sont pas parallèles, donc leurs perpendiculaires non plus. On peut définir :

- $U$ : l'intersection de la perpendiculaire à $(AD)$ passant par $E$ et de la perpendiculaire à $(BC)$ passant par $F$ ;
- $V$ : l'intersection de la perpendiculaire à $(BC)$ passant par $E$ et de la perpendiculaire à $(AD)$ passant par $F$.

*Le point $U$.* Les points $U$ et $E_2$ sont sur la perpendiculaire à $(AD)$ passant par $E$, donc $\overrightarrow{UE_2}$ est orthogonal à $(AD)$. Les points $U$ et $F_1$ sont sur la perpendiculaire à $(BC)$ passant par $F$, donc $\overrightarrow{UF_1}$ est orthogonal à $(BC)$. D'après l'outil 1 et l'étape 2 :

$$p_{\Gamma_E}(U) = \overrightarrow{UE_1} \cdot \overrightarrow{UE_2} = \left(\overrightarrow{UF_1} + \overrightarrow{F_1 E_1}\right) \cdot \overrightarrow{UE_2} = \overrightarrow{UF_1} \cdot \overrightarrow{UE_2},$$

car $\overrightarrow{F_1 E_1}$ est parallèle à $(AD)$, donc orthogonal à $\overrightarrow{UE_2}$. De même

$$p_{\Gamma_F}(U) = \overrightarrow{UF_1} \cdot \overrightarrow{UF_2} = \overrightarrow{UF_1} \cdot \left(\overrightarrow{UE_2} + \overrightarrow{E_2 F_2}\right) = \overrightarrow{UF_1} \cdot \overrightarrow{UE_2},$$

car $\overrightarrow{E_2 F_2}$ est parallèle à $(BC)$, donc orthogonal à $\overrightarrow{UF_1}$. Ainsi $p_{\Gamma_E}(U) = p_{\Gamma_F}(U)$.

*Le point $V$.* Cette fois $\overrightarrow{VE_1}$ est orthogonal à $(BC)$ et $\overrightarrow{VF_2}$ est orthogonal à $(AD)$. Donc

$$p_{\Gamma_E}(V) = \overrightarrow{VE_1} \cdot \left(\overrightarrow{VF_2} + \overrightarrow{F_2 E_2}\right) = \overrightarrow{VE_1} \cdot \overrightarrow{VF_2} \qquad \text{et} \qquad p_{\Gamma_F}(V) = \left(\overrightarrow{VE_1} + \overrightarrow{E_1 F_1}\right) \cdot \overrightarrow{VF_2} = \overrightarrow{VE_1} \cdot \overrightarrow{VF_2},$$

car $\overrightarrow{F_2 E_2}$ est parallèle à $(BC)$ et $\overrightarrow{E_1 F_1}$ parallèle à $(AD)$. Ainsi $p_{\Gamma_E}(V) = p_{\Gamma_F}(V)$.

**Étape 4 : $U$ et $V$ sont sur la droite cherchée.** Les cercles $\Gamma_E$ et $\Gamma_F$ se coupent en deux points $X$ et $Y$. Ils sont distincts, donc leurs centres sont distincts (deux cercles distincts de même centre ne se coupent pas). D'après l'outil 2, les points $U$ et $V$ sont sur la droite $(XY)$.

**Étape 5 : le milieu de $[EF]$ est le milieu de $[UV]$.** Soit $\vec a$ un vecteur non nul orthogonal à $(AD)$ et $\vec b$ un vecteur non nul orthogonal à $(BC)$. Ils ne sont pas colinéaires. Par construction de $U$ et $V$, il existe des réels $s$, $t$, $s'$, $t'$ tels que

$$\overrightarrow{EU} = s\,\vec a, \qquad \overrightarrow{FU} = t\,\vec b, \qquad \overrightarrow{EV} = s'\,\vec b, \qquad \overrightarrow{FV} = t'\,\vec a .$$

On écrit $\overrightarrow{EF}$ de deux façons :

$$\overrightarrow{EF} = \overrightarrow{EU} - \overrightarrow{FU} = s\,\vec a - t\,\vec b \qquad \text{et} \qquad \overrightarrow{EF} = \overrightarrow{EV} - \overrightarrow{FV} = -t'\,\vec a + s'\,\vec b .$$

Comme $\vec a$ et $\vec b$ ne sont pas colinéaires, on peut identifier : $s = -t'$ et $s' = -t$. Alors

$$\overrightarrow{EU} + \overrightarrow{EV} = s\,\vec a + s'\,\vec b = s\,\vec a - t\,\vec b = \overrightarrow{EF} .$$

Soit $I$ le milieu de $[EF]$. On a $\overrightarrow{EI} = \tfrac12\,\overrightarrow{EF} = \tfrac12\left(\overrightarrow{EU} + \overrightarrow{EV}\right)$ : le point $I$ est aussi le milieu de $[UV]$. (Autrement dit, $EUFV$ est un parallélogramme.)

**Conclusion.** Les points $U$ et $V$ sont sur la droite $(XY)$ qui passe par les deux points d'intersection de $\Gamma_E$ et $\Gamma_F$. Le milieu $I$ de $[EF]$, qui est le milieu de $[UV]$, est donc lui aussi sur cette droite.

## Going further

L'étape 2 montre un peu plus que ce qui était demandé : les **quatre** projetés de $E$ sur les côtés de $ABCD$ sont sur un même cercle, et ce cercle a pour diamètre $[E_1 E_2]$. Cela vient seulement des deux angles droits $\widehat{AEB}$ et $\widehat{CED}$.

La droite $(XY)$ formée des points qui ont la même puissance par rapport à deux cercles s'appelle l'*axe radical* des deux cercles. C'est un outil classique des olympiades.
