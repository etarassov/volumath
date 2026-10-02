---
id: "0838"
title: "L'aire d'un quadrilatère dans un losange"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [losange, aire, milieu]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 41, d'après les stages Animath 2015, éliminatoires"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

$ABCD$ est un losange dont les diagonales mesurent $BD = 50$ et $AC = 100$. Le point $M$ est le milieu de $[BC]$ et le point $N$ est le milieu de $[AD]$.

![Le losange ABCD, ses diagonales, les milieux M de [BC] et N de [AD], et le quadrilatère grisé ABMN](0838-figure-1.svg)

Déterminer l'aire du quadrilatère $ABMN$.

## Hints

1. Commence par l'aire du losange entier. Ses diagonales sont perpendiculaires et se coupent en leur milieu : elles le découpent en quatre triangles rectangles superposables.
2. Appelle $O$ le centre du losange, c'est-à-dire le point où les diagonales se coupent. Que devient le point $M$ par la symétrie de centre $O$ ?
3. Dans le triangle $ABC$, le point $O$ est le milieu de $[AC]$ et $M$ le milieu de $[BC]$. Applique le théorème des milieux au segment $[OM]$.
4. Tu obtiendras que $NM$ est parallèle à $AB$ et de même longueur. Quelle sorte de quadrilatère est alors $ABMN$ ? Et comment une diagonale partage-t-elle un tel quadrilatère ?

## Solution

**L'aire du losange.** Les diagonales d'un losange sont perpendiculaires et se coupent en leur milieu $O$. Elles découpent donc le losange en quatre triangles rectangles superposables, dont les côtés de l'angle droit mesurent

$$\frac{AC}{2} = 50 \qquad \text{et} \qquad \frac{BD}{2} = 25.$$

Chacun a pour aire $\dfrac{50 \times 25}{2} = 625$, donc

$$\mathcal{A}(ABCD) = 4 \times 625 = 2500.$$

(C'est la formule habituelle : l'aire d'un losange est le produit des diagonales divisé par $2$, ici $\dfrac{100 \times 50}{2} = 2500$.)

**Les points $N$, $O$, $M$ sont alignés.** Le point $O$ est centre de symétrie du losange : la symétrie de centre $O$ échange $B$ et $D$, ainsi que $A$ et $C$. Elle transforme donc le segment $[BC]$ en le segment $[DA]$, et le milieu $M$ de $[BC]$ en le milieu de $[DA]$, c'est-à-dire en $N$. Autrement dit, $O$ est le milieu de $[MN]$.

**$ABMN$ est un parallélogramme.** Dans le triangle $ABC$, le point $O$ est le milieu de $[AC]$ et le point $M$ est le milieu de $[BC]$. Le théorème des milieux donne

$$(OM) \parallel (AB) \qquad \text{et} \qquad OM = \frac{AB}{2}.$$

Comme $O$ est le milieu de $[MN]$, on a $NM = 2 \times OM = AB$, et la droite $(NM)$ est la droite $(OM)$, donc elle est parallèle à $(AB)$.

Le quadrilatère $ABMN$ a donc deux côtés opposés, $[AB]$ et $[NM]$, parallèles et de même longueur : c'est un parallélogramme.

**L'aire cherchée.** La diagonale $[AM]$ partage le parallélogramme $ABMN$ en deux triangles superposables, donc

$$\mathcal{A}(ABMN) = 2 \times \mathcal{A}(ABM).$$

Dans le triangle $ABC$, le segment $[AM]$ est la médiane issue de $A$, puisque $M$ est le milieu de $[BC]$. Les triangles $ABM$ et $ACM$ ont la même base ($BM = MC$) et la même hauteur issue de $A$, donc la même aire :

$$\mathcal{A}(ABM) = \frac{\mathcal{A}(ABC)}{2}.$$

Enfin la diagonale $[AC]$ partage le losange en deux triangles superposables, donc $\mathcal{A}(ABC) = \dfrac{2500}{2} = 1250$, d'où

$$\mathcal{A}(ABM) = 625 \qquad \text{et} \qquad \mathcal{A}(ABMN) = 2 \times 625 = 1250.$$

**Réponse : l'aire de $ABMN$ vaut $1250$, c'est-à-dire exactement la moitié de l'aire du losange.**

## Going further

Rien dans la démonstration n'a utilisé les longueurs $50$ et $100$, ni même le fait que les diagonales soient perpendiculaires. Montrer que dans n'importe quel parallélogramme $ABCD$, si $M$ est le milieu de $[BC]$ et $N$ le milieu de $[AD]$, alors l'aire de $ABMN$ est la moitié de celle de $ABCD$.
