---
id: "11818"
title: "Un polygone à 15 côtés et un petit triangle"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [polygone, aire, perimetre, raisonnement-par-l-absurde, moyenne, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 5 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

On considère un polygone à $15$ côtés dont le périmètre vaut $21$ cm.

Montrer qu'on peut choisir trois de ses sommets qui forment un triangle d'aire au plus $1$ cm².

## Hints

1. Essayer avec trois sommets **consécutifs** $A$, $B$, $C$. Comparer l'aire du triangle $ABC$ avec le produit $AB \times BC$.
2. La hauteur issue de $C$ dans le triangle $ABC$ est plus courte que $BC$. Puis, pour deux nombres positifs, $xy \leqslant \left(\frac{x + y}{2}\right)^2$.
3. Il suffit de trouver deux côtés consécutifs dont la somme vaut au plus $2\sqrt{2}$. Raisonner par l'absurde et additionner.

## Solution

On note $A_1, A_2, \ldots, A_{15}$ les sommets dans l'ordre, et on convient que $A_{16} = A_1$ et $A_0 = A_{15}$. On va montrer que l'un des $15$ triangles $A_{i-1} A_i A_{i+1}$, formés de trois sommets consécutifs, convient.

**Étape 1 : majorer l'aire d'un tel triangle.** Notons $x = A_{i-1} A_i$ et $y = A_i A_{i+1}$. Dans le triangle $A_{i-1} A_i A_{i+1}$, prenons $[A_{i-1} A_i]$ comme base. La hauteur correspondante est la distance de $A_{i+1}$ à la droite $(A_{i-1} A_i)$ ; elle est au plus égale à $A_i A_{i+1} = y$, car la perpendiculaire est le plus court chemin d'un point à une droite. Donc

$$\text{aire}(A_{i-1} A_i A_{i+1}) \leqslant \frac{x y}{2}.$$

Ensuite, $(x - y)^2 \geqslant 0$ donne $4xy \leqslant (x + y)^2$, c'est-à-dire $xy \leqslant \frac{(x + y)^2}{4}$. Finalement

$$\text{aire}(A_{i-1} A_i A_{i+1}) \leqslant \frac{(x + y)^2}{8}.$$

Si $x + y \leqslant 2\sqrt{2}$, alors $(x + y)^2 \leqslant 8$ et l'aire est au plus $1$. Il suffit donc de trouver deux côtés consécutifs dont la somme des longueurs vaut au plus $2\sqrt{2}$.

**Étape 2 : il existe deux tels côtés.** Raisonnons par l'absurde, et supposons que pour chaque $i$ de $1$ à $15$ :

$$A_{i-1} A_i + A_i A_{i+1} > 2\sqrt{2}.$$

Additionnons ces $15$ inégalités. À gauche, chaque côté du polygone apparaît exactement deux fois, donc la somme vaut deux fois le périmètre, $42$. On obtient

$$42 > 15 \times 2\sqrt{2} = 30\sqrt{2}.$$

Or ces deux nombres sont positifs et $42^2 = 1764$, alors que $(30\sqrt{2})^2 = 900 \times 2 = 1800$. Donc $30\sqrt{2} > 42$, ce qui contredit l'inégalité précédente.

**Conclusion.** Il existe deux côtés consécutifs $A_{i-1} A_i$ et $A_i A_{i+1}$ de longueur totale au plus $2\sqrt{2}$, et le triangle $A_{i-1} A_i A_{i+1}$ a une aire **au plus égale à $1$ cm²**.

## Going further

- Le même raisonnement marche-t-il pour un polygone à $14$ côtés de périmètre $21$ cm ? Et à $16$ côtés ? Trouver le plus petit nombre de côtés pour lequel il fonctionne encore.
