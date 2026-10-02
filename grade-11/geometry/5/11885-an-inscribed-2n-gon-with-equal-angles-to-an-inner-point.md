---
id: "11885"
title: "Un polygone inscrit à 2n côtés et des angles tous égaux"
grade: 11
theme: geometry
difficulty: 5
duration_min: 60
tags: [polygone inscrit, angle inscrit, puissance d un point, rotation, triangles semblables, produit]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Seniors, exercice 17 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. Même idée que le corrigé (points B_i, rotation d'angle 2γ, triangles semblables), avec la puissance du point P pour conclure sans racines carrées."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier, et soit $A_1A_2 \ldots A_{2n}$ un polygone convexe à $2n$ côtés dont les sommets sont sur un même cercle. On suppose qu'il existe un point $P$ à l'intérieur du polygone tel que
$$\widehat{PA_1A_2} = \widehat{PA_2A_3} = \cdots = \widehat{PA_{2n-1}A_{2n}} = \widehat{PA_{2n}A_1}.$$
Montrer que le produit des côtés de rang impair est égal au produit des côtés de rang pair :
$$A_1A_2 \times A_3A_4 \times \cdots \times A_{2n-1}A_{2n} = A_2A_3 \times A_4A_5 \times \cdots \times A_{2n}A_1.$$

## Hints

1. Prolonger chaque droite $(A_iP)$ jusqu'au point $B_{i+1}$ où elle recoupe le cercle. Quelle est la mesure de l'arc qui va de $A_{i+1}$ à $B_{i+1}$ ?
2. On obtient que le polygone $B_1B_2 \ldots B_{2n}$ est l'image de $A_1A_2 \ldots A_{2n}$ par une rotation. D'autre part, le produit $PA_i \times PB_{i+1}$ ne dépend pas de $i$.
3. Comparer les triangles $PA_iA_{i+1}$ et $PB_{i+2}B_{i+1}$. En déduire une formule pour le quotient de deux côtés qui se suivent, $\dfrac{A_iA_{i+1}}{A_{i+1}A_{i+2}}$, en fonction de $PA_i$ et $PA_{i+1}$.
4. Multiplier ces formules pour $i$ impair, puis pour $i$ pair, et comparer.

## Solution

**Notations.** On note $\Omega$ le cercle, $O$ son centre et $R$ son rayon. On numérote les sommets dans le sens direct, et on lit les indices en tournant : $A_{2n+1} = A_1$, $A_{2n+2} = A_2$, et ainsi de suite. On pose
$$s_i = A_iA_{i+1}, \qquad x_i = PA_i,$$
et on note $\gamma$ l'angle commun $\widehat{PA_iA_{i+1}}$. Il s'agit de montrer que le quotient
$$Q = \frac{s_1 \times s_3 \times \cdots \times s_{2n-1}}{s_2 \times s_4 \times \cdots \times s_{2n}}$$
vaut $1$.

**Étape 1 : les points $B_i$ et la puissance du point $P$.** Le point $P$ est à l'intérieur du polygone, donc à l'intérieur du disque. La droite $(A_iP)$ recoupe donc $\Omega$ en un second point, qu'on note $B_{i+1}$, et $P$ est entre $A_i$ et $B_{i+1}$.

*Lemme.* Si une corde $[AB]$ de $\Omega$ passe par $P$, alors $PA \times PB = R^2 - OP^2$.

En effet, soit $M$ le milieu de $[AB]$, qui est aussi le pied de la perpendiculaire à $(AB)$ issue de $O$. Comme $P$ est sur $[AB]$, l'une des longueurs $PA$, $PB$ vaut $MA + MP$ et l'autre $MA - MP$. Avec le théorème de Pythagore dans les triangles $OMA$ et $OMP$ :
$$PA \times PB = MA^2 - MP^2 = (R^2 - OM^2) - (OP^2 - OM^2) = R^2 - OP^2.$$

On pose $k = R^2 - OP^2 > 0$. Le lemme donne, pour tout $i$ :
$$PB_{i+1} = \frac{k}{x_i}.$$

**Étape 2 : une rotation.** Le point $P$ est à l'intérieur de l'angle $\widehat{A_{i+1}A_iA_{i-1}}$ du polygone convexe. Donc $B_{i+1}$ est sur l'arc qui va de $A_{i+1}$ à $A_{i-1}$ dans le sens direct, sans passer par $A_i$. L'angle inscrit $\widehat{A_{i+1}A_iB_{i+1}} = \gamma$ intercepte l'arc de $A_{i+1}$ à $B_{i+1}$ qui ne contient pas $A_i$. D'après le théorème de l'angle inscrit, cet arc mesure $2\gamma$.

Autrement dit, on passe de $A_{i+1}$ à $B_{i+1}$ en tournant de $2\gamma$ autour de $O$ dans le sens direct, et cela pour tout $i$. Le polygone $B_1B_2 \ldots B_{2n}$ est donc l'image de $A_1A_2 \ldots A_{2n}$ par la rotation de centre $O$ et d'angle $2\gamma$. Une rotation conserve les longueurs, donc
$$B_{i+1}B_{i+2} = A_{i+1}A_{i+2} = s_{i+1}.$$

**Étape 3 : deux côtés qui se suivent.** Comparons les triangles $PA_iA_{i+1}$ et $PB_{i+2}B_{i+1}$.

- Le point $B_{i+1}$ est sur le prolongement de $[A_iP]$ au-delà de $P$, et $B_{i+2}$ sur le prolongement de $[A_{i+1}P]$ au-delà de $P$. Les angles $\widehat{A_iPA_{i+1}}$ et $\widehat{B_{i+2}PB_{i+1}}$ sont donc opposés par le sommet, et égaux.
- Avec l'étape 1 :
$$\frac{PA_i}{PB_{i+2}} = \frac{x_i}{k / x_{i+1}} = \frac{x_ix_{i+1}}{k}, \qquad \frac{PA_{i+1}}{PB_{i+1}} = \frac{x_{i+1}}{k / x_i} = \frac{x_ix_{i+1}}{k}.$$

Les deux triangles ont un angle égal compris entre des côtés proportionnels : ils sont semblables, dans le rapport $x_ix_{i+1}/k$. Le troisième côté suit le même rapport, et avec l'étape 2 cela donne, pour tout $i$ :
$$(\star) \qquad \frac{s_i}{s_{i+1}} = \frac{A_iA_{i+1}}{B_{i+2}B_{i+1}} = \frac{x_ix_{i+1}}{k}.$$

**Étape 4 : les produits.** Notons $X = x_1x_2 \cdots x_{2n}$.

Multiplions $(\star)$ pour $i = 1, 3, 5, \ldots, 2n - 1$. À gauche on obtient
$$\frac{s_1}{s_2} \times \frac{s_3}{s_4} \times \cdots \times \frac{s_{2n-1}}{s_{2n}} = Q,$$
et à droite
$$\frac{(x_1x_2)(x_3x_4)\cdots(x_{2n-1}x_{2n})}{k^n} = \frac{X}{k^n}.$$

Multiplions maintenant $(\star)$ pour $i = 2, 4, \ldots, 2n$. À gauche, comme $s_{2n+1} = s_1$,
$$\frac{s_2}{s_3} \times \frac{s_4}{s_5} \times \cdots \times \frac{s_{2n}}{s_1} = \frac{1}{Q},$$
et à droite, comme $x_{2n+1} = x_1$, on trouve encore
$$\frac{(x_2x_3)(x_4x_5)\cdots(x_{2n}x_1)}{k^n} = \frac{X}{k^n}.$$

Donc $Q = X/k^n = 1/Q$, d'où $Q^2 = 1$, et comme $Q > 0$, $Q = 1$.

**Conclusion.** $A_1A_2 \times A_3A_4 \times \cdots \times A_{2n-1}A_{2n} = A_2A_3 \times A_4A_5 \times \cdots \times A_{2n}A_1$.

## Going further

Pour un triangle $ABC$, un point $P$ tel que $\widehat{PAB} = \widehat{PBC} = \widehat{PCA}$ existe toujours : c'est un des deux *points de Brocard* du triangle. Pour un quadrilatère inscrit $ABCD$, l'exercice montre qu'un tel point ne peut exister que si $AB \times CD = BC \times DA$. En déduire qu'un rectangle qui n'est pas un carré n'a pas de tel point.
