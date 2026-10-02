---
id: "8623"
title: "Cinq points dans un carré de côté 1"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [tiroirs, decoupage, diagonales, distance]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Principe des tiroirs » (Maena), exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On place $5$ points dans un carré de côté $1$.

Montrer que deux d'entre eux sont à une distance inférieure à $\dfrac{3}{4}$.

## Hints

1. C'est un énoncé du type « parmi cinq objets, deux se ressemblent ». Cherche donc quatre tiroirs.
2. Découpe le carré en quatre morceaux identiques.
3. Deux points rangés dans le même morceau sont proches. Mais à quel point ? Quelle est la plus grande distance possible entre deux points d'un petit carré ?
4. Compare cette distance avec $\dfrac34 = \text{0,75}$.

## Solution

**Le découpage.** Joignons les milieux des côtés opposés du grand carré. On obtient quatre petits carrés de côté $\dfrac12$, qui recouvrent entièrement le grand carré. Ce sont nos quatre tiroirs.

**Le principe des tiroirs.** Chacun des $5$ points appartient à au moins l'un des quatre petits carrés (si un point tombe sur une ligne de découpe, on l'attribue à l'un des petits carrés qui le contiennent, peu importe lequel).

Comme $5 > 4$, deux au moins de nos points se trouvent dans le même petit carré.

**La distance dans un petit carré.** Dans un carré, la plus grande distance entre deux points est celle qui sépare deux sommets opposés, c'est-à-dire la longueur de la diagonale. Pour un carré de côté $\dfrac12$, le théorème de Pythagore donne une diagonale de longueur

$$\sqrt{\left(\frac12\right)^2 + \left(\frac12\right)^2} = \sqrt{\frac14 + \frac14} = \sqrt{\frac12} = \frac{\sqrt 2}{2} .$$

**La comparaison.** Il reste à voir que cette longueur est plus petite que $\dfrac34$. Les deux nombres étant positifs, comparons leurs carrés :

$$\left(\frac{\sqrt2}{2}\right)^2 = \frac{1}{2} = \frac{8}{16} \qquad \text{et} \qquad \left(\frac{3}{4}\right)^2 = \frac{9}{16} .$$

Comme $\dfrac{8}{16} < \dfrac{9}{16}$, on a bien $\dfrac{\sqrt2}{2} < \dfrac34$. (Numériquement, $\dfrac{\sqrt2}{2} \approx \text{0,707}$ contre $\text{0,75}$.)

**Conclusion.** Les deux points situés dans le même petit carré sont à une distance au plus $\dfrac{\sqrt2}{2}$, donc strictement inférieure à $\dfrac34$.

## Going further

La démonstration donne en réalité un résultat plus fort que l'énoncé : deux des cinq points sont à distance au plus $\dfrac{\sqrt2}{2} \approx \text{0,707}$, et non seulement $\text{0,75}$.

Peut-on encore améliorer ? Avec $5$ points, la meilleure valeur possible est exactement $\dfrac{\sqrt2}{2}$ : il suffit de placer les quatre sommets et le centre pour que toutes les distances soient au moins égales à cette valeur. En revanche, avec $10$ points, quel découpage choisirais-tu ?
