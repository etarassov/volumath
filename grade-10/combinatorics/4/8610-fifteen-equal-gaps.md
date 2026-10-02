---
id: "8610"
title: "Quinze écarts identiques"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [principe-des-tiroirs, raisonnement-par-l-absurde, majoration, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023"
  reference: "valbonne-2023.pdf, Coupe Animath de printemps 2023, exercices lycéens, exercice 11"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $a_1, a_2, \ldots, a_{100}$ des entiers rangés dans l'ordre strictement croissant, tous compris entre $1$ et $400$ :

$$1 \leqslant a_1 < a_2 < \cdots < a_{100} \leqslant 400 .$$

On note $d_i = a_{i+1} - a_i$ l'écart entre deux termes consécutifs, pour $1 \leqslant i \leqslant 99$.

Montrer que parmi les $99$ écarts $d_1, d_2, \ldots, d_{99}$, il y en a au moins $15$ qui sont égaux.

## Hints

1. Raisonne par l'absurde : suppose qu'aucune valeur n'apparaît $15$ fois parmi les écarts, autrement dit que chaque valeur apparaît au plus $14$ fois.
2. Les écarts sont des entiers $\geqslant 1$. Si la valeur $1$ apparaît au plus $14$ fois, combien d'écarts peuvent valoir $1$ ? Et les autres ?
3. Range les $99$ écarts dans l'ordre croissant : $e_1 \leqslant e_2 \leqslant \cdots \leqslant e_{99}$. Que peux-tu dire de $e_{15}$ ? de $e_{29}$ ?
4. La somme $d_1 + d_2 + \cdots + d_{99}$ se simplifie énormément : écris-la et regarde ce qui disparaît.
5. Minore la somme grâce à l'étape 3, majore-la grâce à $a_{100} - a_1 \leqslant 399$, et compare.

## Solution

**La somme des écarts se télescope.**

$$d_1 + d_2 + \cdots + d_{99} = (a_2 - a_1) + (a_3 - a_2) + \cdots + (a_{100} - a_{99}) = a_{100} - a_1 .$$

Comme $1 \leqslant a_1$ et $a_{100} \leqslant 400$, on obtient la majoration

$$(\star) \qquad d_1 + d_2 + \cdots + d_{99} = a_{100} - a_1 \leqslant 400 - 1 = 399 .$$

**Le raisonnement par l'absurde.**

Supposons qu'aucune valeur n'apparaisse $15$ fois ou plus parmi les écarts : chaque valeur apparaît donc **au plus $14$ fois**.

Rangeons les $99$ écarts dans l'ordre croissant et appelons-les $e_1 \leqslant e_2 \leqslant \cdots \leqslant e_{99}$ (c'est la même famille de nombres, simplement triée ; leur somme est inchangée).

Les $a_i$ sont des entiers strictement croissants, donc chaque écart vaut au moins $1$ : $e_1 \geqslant 1$.

*Pourquoi $e_{15} \geqslant 2$.* Si l'on avait $e_{15} = 1$, alors $e_1, e_2, \ldots, e_{15}$ seraient tous compris entre $1$ et $1$, donc tous égaux à $1$ : la valeur $1$ apparaîtrait $15$ fois, ce qui est exclu. Donc $e_{15} \geqslant 2$.

*Pourquoi $e_{29} \geqslant 3$.* Si l'on avait $e_{29} = 2$, alors $e_{15}, e_{16}, \ldots, e_{29}$ seraient tous compris entre $2$ et $2$ : cela ferait $15$ écarts égaux à $2$, encore exclu. Donc $e_{29} \geqslant 3$.

En continuant de la même façon, quinze indices plus loin à chaque fois :

$$e_1 \geqslant 1, \quad e_{15} \geqslant 2, \quad e_{29} \geqslant 3, \quad e_{43} \geqslant 4, \quad e_{57} \geqslant 5, \quad e_{71} \geqslant 6, \quad e_{85} \geqslant 7, \quad e_{99} \geqslant 8 .$$

Comme la suite $(e_i)$ est croissante, on en déduit une minoration terme à terme : les termes $e_1$ à $e_{14}$ valent au moins $1$, les termes $e_{15}$ à $e_{28}$ valent au moins $2$, ..., les termes $e_{85}$ à $e_{98}$ valent au moins $7$, et $e_{99}$ vaut au moins $8$. Cela fait sept paquets de $14$ termes, plus le dernier terme tout seul :

$$e_1 + \cdots + e_{99} \geqslant 14 \times (1 + 2 + 3 + 4 + 5 + 6 + 7) + 8 = 14 \times 28 + 8 = 392 + 8 = 400 .$$

**La contradiction.** On vient d'obtenir que la somme des écarts vaut au moins $400$, alors que $(\star)$ affirme qu'elle vaut au plus $399$. C'est impossible.

**Conclusion.** L'hypothèse était absurde : il existe forcément une valeur prise par au moins $15$ des écarts $d_1, \ldots, d_{99}$.

## Going further

La marge est d'exactement $1$ : la démonstration donne $400$ contre $399$. Cela veut dire que l'énoncé est serré, et qu'avec $a_{100} \leqslant 401$ au lieu de $400$ le résultat tomberait.

Vérifie-le en construisant $100$ entiers de $1$ à $401$ dont aucun écart ne se répète $15$ fois : prends $14$ écarts égaux à $1$, puis $14$ égaux à $2$, et ainsi de suite jusqu'à $14$ égaux à $7$, puis un dernier écart égal à $8$.
