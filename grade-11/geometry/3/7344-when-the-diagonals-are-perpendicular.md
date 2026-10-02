---
id: "7344"
title: "Quand les diagonales sont perpendiculaires"
grade: 11
theme: geometry
difficulty: 3
duration_min: 35
tags: [produit-scalaire, quadrilatere, diagonales, perpendicularite, vecteurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la première mi-temps », en TD, géométrie, exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère, avec $A \neq C$ et $B \neq D$.

Montrer que les droites $(AC)$ et $(BD)$ sont perpendiculaires **si et seulement si**
$$AB^2 + CD^2 = BC^2 + AD^2 .$$

*(Le quadrilatère n'a pas besoin d'être convexe, ni même non croisé : seules comptent les quatre positions des points.)*

## Hints

1. Une égalité de carrés de longueurs et une perpendicularité : le produit scalaire relie exactement ces deux choses.
2. Choisis un point origine $O$ et note $\vec{a} = \vec{OA}$, $\vec{b} = \vec{OB}$, etc. Comment s'écrit $AB^2$ ?
3. Calcule $AB^2 + CD^2 - BC^2 - AD^2$ en développant tout. Beaucoup de termes disparaissent : lesquels ?
4. Ce qui reste doit se factoriser. Regroupe les termes contenant $\vec{b}$, puis ceux contenant $\vec{d}$.
5. Tu devrais tomber sur un produit scalaire de deux vecteurs bien reconnaissables.

## Solution

### Le calcul

Choisissons un point $O$ quelconque comme origine et posons
$$\vec{a} = \vec{OA}, \qquad \vec{b} = \vec{OB}, \qquad \vec{c} = \vec{OC}, \qquad \vec{d} = \vec{OD} .$$

Alors $\vec{AB} = \vec{b} - \vec{a}$, et $AB^2 = \left(\vec{b} - \vec{a}\right)^2 = \vec{b}^{\,2} - 2\,\vec{a} \cdot \vec{b} + \vec{a}^{\,2}$, où $\vec{u}^{\,2}$ désigne $\vec{u} \cdot \vec{u}$.

Écrivons les quatre carrés :
$$AB^2 = \vec{a}^{\,2} + \vec{b}^{\,2} - 2\,\vec{a}\cdot\vec{b} , \qquad CD^2 = \vec{c}^{\,2} + \vec{d}^{\,2} - 2\,\vec{c}\cdot\vec{d} ,$$
$$BC^2 = \vec{b}^{\,2} + \vec{c}^{\,2} - 2\,\vec{b}\cdot\vec{c} , \qquad AD^2 = \vec{a}^{\,2} + \vec{d}^{\,2} - 2\,\vec{a}\cdot\vec{d} .$$

Formons la différence. **Les quatre carrés $\vec{a}^{\,2}, \vec{b}^{\,2}, \vec{c}^{\,2}, \vec{d}^{\,2}$ apparaissent une fois de chaque côté et disparaissent** :

$$AB^2 + CD^2 - BC^2 - AD^2 = -2\,\vec{a}\cdot\vec{b} - 2\,\vec{c}\cdot\vec{d} + 2\,\vec{b}\cdot\vec{c} + 2\,\vec{a}\cdot\vec{d} .$$

Regroupons : les deux termes contenant $\vec{b}$ d'un côté, les deux contenant $\vec{d}$ de l'autre.

$$AB^2 + CD^2 - BC^2 - AD^2 = 2[ \vec{b}\cdot\vec{c} - \vec{b}\cdot\vec{a} + \vec{a}\cdot\vec{d} - \vec{c}\cdot\vec{d} ]$$
$$= 2[ \vec{b}\cdot\left(\vec{c} - \vec{a}\right) - \vec{d}\cdot\left(\vec{c} - \vec{a}\right) ]$$
$$= 2\left(\vec{b} - \vec{d}\right)\cdot\left(\vec{c} - \vec{a}\right) .$$

Or $\vec{b} - \vec{d} = \vec{DB}$ et $\vec{c} - \vec{a} = \vec{AC}$. On obtient donc l'identité

$$\boxed{\;AB^2 + CD^2 - BC^2 - AD^2 = 2 \; \vec{DB} \cdot \vec{AC} \;}$$

valable pour quatre points quelconques du plan (et même de l'espace).

### La conclusion

Comme $A \neq C$ et $B \neq D$, les vecteurs $\vec{AC}$ et $\vec{DB}$ ne sont pas nuls. Leur produit scalaire est donc nul exactement quand ils sont orthogonaux, c'est-à-dire quand les droites $(AC)$ et $(BD)$ sont perpendiculaires.

L'identité ci-dessus donne alors les deux implications d'un coup :

$$(AC) \perp (BD) \iff \vec{DB} \cdot \vec{AC} = 0 \iff AB^2 + CD^2 - BC^2 - AD^2 = 0 \iff AB^2 + CD^2 = BC^2 + AD^2 .$$

### Un moyen de retenir l'énoncé

Dans $AB^2 + CD^2 = BC^2 + AD^2$, on compare les deux paires de **côtés opposés** du quadrilatère. La somme des carrés d'une paire égale celle de l'autre paire exactement quand les diagonales se croisent à angle droit. Le carré, le losange et le cerf-volant en sont des exemples familiers.

## Going further

1. Vérifie l'énoncé sur un losange de côté $5$, puis sur un rectangle de côtés $3$ et $4$ — dans ce dernier cas, l'égalité est-elle vraie ?
2. Que devient l'identité si $D = A$ ? Retrouve alors un résultat connu sur le triangle $ABC$.
3. Utilise l'identité pour démontrer que dans un tétraèdre, si deux paires d'arêtes opposées sont perpendiculaires, la troisième l'est aussi.
4. Un quadrilatère dont les diagonales sont perpendiculaires s'appelle parfois un quadrilatère **orthodiagonal**. Montre que les milieux de ses quatre côtés forment un rectangle.
