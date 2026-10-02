---
id: "7019"
title: "La somme et le produit donnent les cubes"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [identites-remarquables, somme-et-produit, developpement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, jeudi 28 octobre (algèbre), cours du matin, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soient $u$ et $v$ deux nombres. On note
$$s = u + v \qquad \text{et} \qquad p = uv .$$

Exprimer $u^3 + v^3$ en fonction de $s$ et de $p$ seulement.

## Hints

1. Développe $(u+v)^3$. Combien de termes obtiens-tu ?
2. Dans ce développement, les deux termes du milieu ont un facteur commun. Lequel ?
3. Tu vas voir apparaître $uv(u+v)$, c'est-à-dire $ps$.

## Solution

**Développons $s^3$.**

$$s^3 = (u+v)^3 = u^3 + 3u^2 v + 3uv^2 + v^3 .$$

**Regroupons les deux termes du milieu.**

$$3u^2v + 3uv^2 = 3uv(u+v) = 3ps .$$

Donc
$$s^3 = u^3 + v^3 + 3ps .$$

**Conclusion.**
$$\boxed{\,u^3 + v^3 = s^3 - 3ps\,}$$

*Vérification :* prenons $u = 2$ et $v = 3$. Alors $s = 5$, $p = 6$, et
$$s^3 - 3ps = 125 - 3 \times 6 \times 5 = 125 - 90 = 35 = 2^3 + 3^3 . \checkmark$$

## Going further

La même méthode donne $u^2 + v^2 = s^2 - 2p$, puis, de proche en proche,
$$u^4 + v^4 = s^4 - 4ps^2 + 2p^2 .$$

Plus généralement, si l'on note $S_n = u^n + v^n$, on a la relation de récurrence
$$S_{n+1} = s\,S_n - p\,S_{n-1} ,$$
qui permet de tout calculer sans jamais connaître $u$ ni $v$ séparément. C'est
particulièrement commode quand $u$ et $v$ sont les deux racines d'un trinôme : on lit $s$ et
$p$ sur les coefficients.
