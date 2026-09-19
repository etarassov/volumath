---
id: "0765"
title: "Deux relations pour la hauteur"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [pythagore, hauteur, triangle-rectangle, demonstration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 43 (section « Théorème de Pythagore »)"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Le triangle $ABC$ est rectangle en $A$, et $[AD]$ est sa hauteur issue de $A$ : le point $D$ appartient à $[BC]$ et $(AD) \perp (BC)$.

Démontre les deux relations suivantes :

$$\textbf{(a)} \quad \frac{1}{AD^2} = \frac{1}{AB^2} + \frac{1}{AC^2}
\qquad\qquad
\textbf{(b)} \quad \frac{DB}{DC} = \frac{AB^2}{AC^2}$$

## Hints

1. Il n'y a que des angles droits sur la figure : trois triangles rectangles, $ABD$, $ACD$ et $ABC$. Écris le théorème de Pythagore dans chacun des trois.
2. Dans le triangle $ABC$, remplace $BC$ par $DB + DC$ et développe. Compare avec ce que donnent les deux autres triangles additionnés.
3. Tu devrais arriver à $AD^2 = DB \times DC$. C'est la clé : garde-la de côté.
4. Reprends $AB^2 = AD^2 + DB^2$ et remplace $AD^2$ par $DB \times DC$. Factorise par $DB$. Que reconnais-tu dans la parenthèse ?
5. Une fois obtenues $AB^2 = DB \times BC$ et $AC^2 = DC \times BC$, les deux relations demandées se lisent presque directement.

## Solution

**Le point $D$ est bien entre $B$ et $C$.** Les angles $\widehat{ABC}$ et $\widehat{ACB}$ ont pour somme $90°$, donc ils sont tous les deux aigus. Le pied de la perpendiculaire issue de $A$ tombe donc strictement entre $B$ et $C$, et

$$DB + DC = BC,$$

avec $DB > 0$ et $DC > 0$.

**Étape 1 : trois fois Pythagore.**

Le triangle $ABD$ est rectangle en $D$, le triangle $ACD$ aussi, et le triangle $ABC$ est rectangle en $A$ :

$$AB^2 = AD^2 + DB^2 \qquad (1)$$
$$AC^2 = AD^2 + DC^2 \qquad (2)$$
$$AB^2 + AC^2 = BC^2 \qquad (3)$$

**Étape 2 : la relation $AD^2 = DB \times DC$.**

Additionnons $(1)$ et $(2)$ :

$$AB^2 + AC^2 = 2\,AD^2 + DB^2 + DC^2.$$

Par ailleurs, d'après $(3)$ et $BC = DB + DC$ :

$$AB^2 + AC^2 = BC^2 = (DB + DC)^2 = DB^2 + 2\,DB \times DC + DC^2.$$

Les deux membres de droite sont donc égaux :

$$2\,AD^2 + DB^2 + DC^2 = DB^2 + 2\,DB \times DC + DC^2.$$

En simplifiant par $DB^2 + DC^2$, puis en divisant par $2$ :

$$AD^2 = DB \times DC. \qquad (4)$$

**Étape 3 : exprimer $AB^2$ et $AC^2$.**

Dans $(1)$, remplaçons $AD^2$ par $DB \times DC$ :

$$AB^2 = DB \times DC + DB^2 = DB\,(DC + DB) = DB \times BC. \qquad (5)$$

De la même façon, à partir de $(2)$ :

$$AC^2 = DC \times BC. \qquad (6)$$

**Étape 4 : les deux relations demandées.**

*Relation (b).* En divisant $(5)$ par $(6)$ :

$$\frac{AB^2}{AC^2} = \frac{DB \times BC}{DC \times BC} = \frac{DB}{DC}.$$

*Relation (a).* À partir de $(5)$ et $(6)$ :

$$\frac{1}{AB^2} + \frac{1}{AC^2} = \frac{1}{DB \times BC} + \frac{1}{DC \times BC} = \frac{1}{BC}\left(\frac{1}{DB} + \frac{1}{DC}\right) = \frac{1}{BC} \times \frac{DC + DB}{DB \times DC}.$$

Or $DC + DB = BC$, donc

$$\frac{1}{AB^2} + \frac{1}{AC^2} = \frac{1}{BC} \times \frac{BC}{DB \times DC} = \frac{1}{DB \times DC} = \frac{1}{AD^2},$$

la dernière égalité venant de $(4)$. Les deux relations sont démontrées.

**Vérification sur un exemple.** Prenons $AB = 6$ et $AC = 8$. Alors $BC = 10$, et l'aire du triangle donne $AD = \dfrac{6 \times 8}{10} = \text{4,8}$. Les relations $(5)$ et $(6)$ donnent $DB = \dfrac{36}{10} = \text{3,6}$ et $DC = \dfrac{64}{10} = \text{6,4}$, dont la somme vaut bien $10$.

- $\dfrac{1}{AD^2} = \dfrac{1}{\text{23,04}} \approx \text{0,043403}$, et $\dfrac{1}{36} + \dfrac{1}{64} \approx \text{0,027778} + \text{0,015625} = \text{0,043403}$.
- $\dfrac{DB}{DC} = \dfrac{\text{3,6}}{\text{6,4}} = \dfrac{9}{16}$, et $\dfrac{AB^2}{AC^2} = \dfrac{36}{64} = \dfrac{9}{16}$.

## Going further

La relation $(4)$, $AD^2 = DB \times DC$, dit que la hauteur est la **moyenne géométrique** des deux morceaux de l'hypoténuse. Sers-t'en pour construire à la règle et au compas un segment de longueur $\sqrt{n}$ à partir d'un segment de longueur $1$.
