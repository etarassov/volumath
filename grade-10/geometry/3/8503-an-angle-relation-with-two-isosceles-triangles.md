---
id: "8503"
title: "Deux triangles isocèles posés sur [BC]"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [angles, triangle-isocele, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: ["0663"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, Coupe Animath de printemps 2022"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre II, exercice 4 (sujet collégiens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

$ABC$ est un triangle dont le côté $[BC]$ est strictement plus long que les deux autres :
$BC > AB$ et $BC > AC$.

Sur le segment $[BC]$, on place :

- le point $P$ tel que $BP = AB$ ;
- le point $Q$ tel que $CQ = AC$.

Démontrer que

$$\widehat{BAC} + 2\,\widehat{PAQ} = 180° .$$

## Hints

1. Fais une figure. Sur ta figure, dans quel ordre se placent les quatre points $B$, $P$, $Q$, $C$ ? L'inégalité triangulaire permet de le démontrer.
2. Les égalités $BP = AB$ et $CQ = AC$ donnent deux triangles isocèles. Écris la somme des angles dans chacun.
3. Nomme les angles : $\alpha = \widehat{BAC}$, $\beta = \widehat{ABC}$, $\gamma = \widehat{ACB}$. Exprime $\widehat{BAP}$ et $\widehat{CAQ}$ en fonction de $\beta$ et $\gamma$.
4. Enfin, découpe l'angle $\widehat{BAC}$ : que vaut $\widehat{BAP} + \widehat{PAQ} + \widehat{QAC}$ par rapport à $\widehat{BAC}$ ? Attention, les deux morceaux $\widehat{BAP}$ et $\widehat{QAC}$ se chevauchent.

## Solution

Posons, comme d'habitude,

$$\alpha = \widehat{BAC}, \qquad \beta = \widehat{ABC}, \qquad \gamma = \widehat{ACB},
\qquad \text{avec } \alpha + \beta + \gamma = 180° .$$

**Le triangle $ABP$.** Comme $BP = AB$, il est isocèle en $B$. Ses deux angles à la base sont
donc égaux : $\widehat{BAP} = \widehat{BPA}$. La somme des angles donne

$$\beta + 2\,\widehat{BAP} = 180°, \qquad \text{donc} \qquad
\widehat{BAP} = \frac{180° - \beta}{2} = 90° - \frac{\beta}{2} .$$

**Le triangle $ACQ$.** Comme $CQ = AC$, il est isocèle en $C$, et de la même façon

$$\gamma + 2\,\widehat{CAQ} = 180°, \qquad \text{donc} \qquad
\widehat{CAQ} = 90° - \frac{\gamma}{2} .$$

**Où sont $P$ et $Q$ ?** L'inégalité triangulaire donne $BC < AB + AC = BP + CQ$. Les deux
segments $[BP]$ et $[QC]$, posés l'un depuis $B$ et l'autre depuis $C$, ont donc une longueur
totale plus grande que $[BC]$ : ils se chevauchent. L'ordre des quatre points sur la droite
est donc $B$, $Q$, $P$, $C$.

**Le découpage de l'angle en $A$.** Vu du point $A$, les demi-droites se succèdent dans
l'ordre $[AB)$, $[AQ)$, $[AP)$, $[AC)$. On a donc

$$\widehat{BAP} = \widehat{BAQ} + \widehat{QAP}
\qquad \text{et} \qquad
\widehat{QAC} = \widehat{QAP} + \widehat{PAC} .$$

En additionnant ces deux égalités, et en remarquant que
$\widehat{BAQ} + \widehat{QAP} + \widehat{PAC} = \widehat{BAC}$ :

$$\widehat{BAP} + \widehat{QAC} = \widehat{BAC} + \widehat{PAQ} ,$$

c'est-à-dire

$$\widehat{PAQ} = \widehat{BAP} + \widehat{QAC} - \alpha .$$

**On termine.** En remplaçant :

$$\widehat{PAQ} = \left(90° - \frac{\beta}{2}\right) + \left(90° - \frac{\gamma}{2}\right)
- \alpha = 180° - \frac{\beta + \gamma}{2} - \alpha .$$

Or $\beta + \gamma = 180° - \alpha$, donc

$$\widehat{PAQ} = 180° - \frac{180° - \alpha}{2} - \alpha = 90° + \frac{\alpha}{2} - \alpha
= 90° - \frac{\alpha}{2} .$$

En multipliant par $2$ :

$$2\,\widehat{PAQ} = 180° - \alpha ,$$

c'est-à-dire

$$\widehat{BAC} + 2\,\widehat{PAQ} = 180° .$$

C'est bien l'égalité demandée.
