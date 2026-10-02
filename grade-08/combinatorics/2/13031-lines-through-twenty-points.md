---
id: "13031"
title: "Les droites qui passent par vingt points"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 10
tags: [denombrement, double comptage, paires, droites]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire collégiens"
  reference: "2017-09_coupe_automne_2015_elim_college.pdf, exercice 4 ; corrigé 2017-09_coupe_automne_2015_elim_college_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_college.pdf"
---

## Statement

On place $20$ points dans le plan, de sorte que trois d'entre eux ne soient jamais alignés.

Combien de droites différentes peut-on tracer qui passent par deux de ces points ?

## Hints

1. Fais le dessin avec $3$ points, puis $4$, puis $5$, et compte les droites.
2. Par un point donné, combien de ces droites passent ?
3. Si tu ajoutes les nombres trouvés pour chacun des $20$ points, chaque droite est comptée combien de fois ?

## Solution

**Une droite, c'est deux points.** Une droite tracée passe par deux des points, et pas par un troisième puisque trois points ne sont jamais alignés. Chaque droite correspond donc à une paire de points, et deux paires différentes donnent deux droites différentes. Il suffit de compter les paires de points.

**On compte depuis chaque point.** Depuis un point donné, on peut tracer une droite vers chacun des $19$ autres. En faisant cela pour les $20$ points, on obtient
$$20 \times 19 = 380$$
droites, mais chaque droite a été comptée **deux fois** : la droite qui passe par $P$ et $Q$ est comptée une fois depuis $P$ et une fois depuis $Q$.

**Conclusion.** Le nombre de droites est
$$\frac{20 \times 19}{2} = 190 .$$

## Going further

1. On place $n$ points, jamais trois alignés. Combien de droites obtient-on ? Pour quelle valeur de $n$ en obtient-on exactement $2016$ ?
2. On place encore $20$ points, mais cette fois $5$ d'entre eux sont sur une même droite, et il n'y a aucun autre groupe de trois points alignés. Combien de droites passent par au moins deux des points ?
