---
id: "7427"
title: "Dix segments et un triangle"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [inegalite-triangulaire, fibonacci, absurde, croissance]
adapted_from: null
see_also: ["0357"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 41 (résolu par Chloé Papin). L'énoncé imprimé autorise des longueurs jusqu'à 55 cm, ce qui est faux de justesse : 1, 1, 2, 3, 5, 8, 13, 21, 34, 55 ne donne que des triangles plats. La borne est ramenée ici à 50 cm, et le contre-exemple est proposé en prolongement."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On dispose de dix segments. Chacun a une longueur entière, en centimètres, comprise entre
$1\ \text{cm}$ et $50\ \text{cm}$.

Montrer qu'on peut toujours en choisir trois qui forment les trois côtés d'un vrai triangle.

*Rappel (inégalité triangulaire) : trois longueurs $a \leq b \leq c$ sont les côtés d'un vrai
triangle si et seulement si $a + b > c$. Quand $a + b = c$, le « triangle » est plat : les trois
sommets sont alignés, et cela ne compte pas.*

## Hints

1. Raisonne par l'absurde : suppose qu'**aucun** choix de trois segments ne donne un triangle.
2. Range les dix longueurs dans l'ordre croissant : $\ell_1 \leq \ell_2 \leq \dots \leq
   \ell_{10}$. Écris ce que l'hypothèse absurde dit sur trois longueurs **consécutives** de cette
   liste.
3. Tu obtiendras $\ell_{k+2} \geq \ell_k + \ell_{k+1}$. Fais croître la liste à partir des plus
   petites valeurs possibles et regarde jusqu'où elle monte. Une suite célèbre va apparaître.

## Solution

**Raisonnons par l'absurde.**

Supposons qu'aucun choix de trois des dix segments ne forme un triangle.

Rangeons les longueurs dans l'ordre croissant :
$$1 \leq \ell_1 \leq \ell_2 \leq \dots \leq \ell_{10} \leq 50.$$

**Ce que dit l'hypothèse absurde.**

Prenons trois indices consécutifs $k$, $k+1$, $k+2$, avec $1 \leq k \leq 8$. Les trois longueurs
$\ell_k \leq \ell_{k+1} \leq \ell_{k+2}$ ne forment pas un triangle, donc l'inégalité
triangulaire n'est pas vérifiée :
$$\ell_k + \ell_{k+1} \leq \ell_{k+2}.$$

**On fait croître la liste.**

Les longueurs valent au moins $1$, donc $\ell_1 \geq 1$ et $\ell_2 \geq 1$. Appliquons la relation
de proche en proche :
$$\ell_3 \geq \ell_1 + \ell_2 \geq 2, \qquad
\ell_4 \geq \ell_2 + \ell_3 \geq 1 + 2 = 3, \qquad
\ell_5 \geq \ell_3 + \ell_4 \geq 2 + 3 = 5,$$
$$\ell_6 \geq 3 + 5 = 8, \qquad
\ell_7 \geq 5 + 8 = 13, \qquad
\ell_8 \geq 8 + 13 = 21,$$
$$\ell_9 \geq 13 + 21 = 34, \qquad
\ell_{10} \geq 21 + 34 = 55.$$

On reconnaît la suite de Fibonacci $1, 1, 2, 3, 5, 8, 13, 21, 34, 55$ : c'est la croissance la
plus lente possible sous la contrainte imposée.

**La contradiction.**

On obtient $\ell_{10} \geq 55$, alors que par hypothèse $\ell_{10} \leq 50$. C'est impossible.

**Conclusion.** L'hypothèse absurde est fausse : parmi dix segments de longueurs entières
comprises entre $1\ \text{cm}$ et $50\ \text{cm}$, **trois au moins forment un triangle**.

*Remarque.* On n'a comparé que des triplets de longueurs **consécutives** dans la liste ordonnée.
C'est suffisant : si un triplet quelconque $\ell_i \leq \ell_j \leq \ell_k$ formait un triangle, on
aurait gagné ; on a seulement eu besoin de supposer que les triplets consécutifs n'en forment pas.

## Going further

Que se passe-t-il si l'on autorise des longueurs jusqu'à $55\ \text{cm}$ ? Trouve dix longueurs
entières entre $1$ et $55$ telles qu'aucun triplet ne forme un vrai triangle, et vérifie-le pour
**tous** les triplets, pas seulement les consécutifs. (Indication : la suite de Fibonacci est
exactement le cas limite.)

Plus généralement : avec $n$ segments de longueurs entières comprises entre $1$ et $L$, quelle
condition sur $L$ garantit qu'on puisse former un triangle ?
