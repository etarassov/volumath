---
id: "0386"
title: "La bissectrice et les aires"
grade: 9
theme: geometry
difficulty: 4
duration_min: 30
tags: [aire, bissectrice, triangle, rapport, proportionnalite]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (А. А. Аксёнов, А. А. Севастьянов)"
  reference: "AU2.pdf, листок 7 «Равные площади», задача 2"
  url: "https://mmmf.msu.ru/for_schools/AU2.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

$ABC$ est un triangle. La bissectrice de l'angle $\widehat{ABC}$ coupe le côté $[AC]$ en un point $L$.

![Le triangle ABC et la bissectrice issue de B, qui coupe le côté [AC] au point L](0386-figure-1.svg)

On note $\mathcal{A}(ABL)$ l'aire du triangle $ABL$, et ainsi de suite.

1. Montrer que $\mathcal{A}(ABL) : \mathcal{A}(BCL) = AL : CL$.
2. Montrer que $\mathcal{A}(ABL) : \mathcal{A}(BCL) = AB : BC$.
3. En déduire que $\dfrac{AL}{CL} = \dfrac{AB}{BC}$.
4. Calculer $AB$ sachant que $BC = 9$, $AL = \text{7,5}$ et $CL = \text{4,5}$.
5. Calculer $LC$ sachant que $AB = 30$, $AL = 20$ et $BC = 16$.

## Hints

1. Question 1 : les triangles $ABL$ et $BCL$ ont le même sommet $B$, et leurs bases $[AL]$ et $[CL]$ sont portées par la même droite. Que peux-tu dire de leurs hauteurs issues de $B$ ?
2. Question 2 : recommence le même travail, mais en prenant cette fois $[AB]$ et $[BC]$ comme bases. Quelles sont alors les hauteurs correspondantes ?
3. Question 2 : le point $L$ est sur la bissectrice de l'angle $\widehat{ABC}$. Que sait-on des distances d'un point de la bissectrice aux deux côtés de l'angle ?
4. Questions 4 et 5 : la relation de la question 3 est une égalité de deux quotients. Le produit en croix donne la longueur cherchée.

## Solution

**Question 1. On prend $[AL]$ et $[CL]$ comme bases.**

Les triangles $ABL$ et $BCL$ ont le même sommet $B$, et leurs bases $[AL]$ et $[CL]$ sont portées par la même droite $(AC)$. La hauteur issue de $B$ est donc la même pour les deux : c'est la distance de $B$ à la droite $(AC)$. Notons-la $h$. Alors

$$\mathcal{A}(ABL) = \frac{AL \times h}{2} \qquad \text{et} \qquad \mathcal{A}(BCL) = \frac{CL \times h}{2},$$

et en faisant le quotient, $h$ se simplifie :

$$\frac{\mathcal{A}(ABL)}{\mathcal{A}(BCL)} = \frac{AL}{CL}.$$

**Question 2. On change de base, et c'est là qu'intervient la bissectrice.**

Reprenons les deux mêmes triangles, mais prenons maintenant $[AB]$ comme base du premier et $[BC]$ comme base du second. Les hauteurs correspondantes sont alors :

- pour le triangle $ABL$, la distance du point $L$ à la droite $(AB)$ ;
- pour le triangle $BCL$, la distance du point $L$ à la droite $(BC)$.

Or $L$ est un point de la bissectrice de l'angle $\widehat{ABC}$, et **tout point de la bissectrice d'un angle est à la même distance des deux côtés de cet angle**. Ces deux distances sont donc égales ; notons $d$ leur valeur commune. Alors

$$\mathcal{A}(ABL) = \frac{AB \times d}{2} \qquad \text{et} \qquad \mathcal{A}(BCL) = \frac{BC \times d}{2},$$

et cette fois c'est $d$ qui se simplifie :

$$\frac{\mathcal{A}(ABL)}{\mathcal{A}(BCL)} = \frac{AB}{BC}.$$

**Question 3. On rapproche les deux résultats.**

Les questions 1 et 2 donnent deux écritures du même rapport d'aires. Donc

$$\frac{AL}{CL} = \frac{AB}{BC}.$$

Autrement dit, **la bissectrice issue de $B$ partage le côté opposé dans le rapport des deux côtés qui entourent l'angle $B$.**

**Question 4. On calcule $AB$.**

On sait que $BC = 9$, $AL = \text{7,5}$ et $CL = \text{4,5}$. La relation de la question 3 s'écrit

$$\frac{\text{7,5}}{\text{4,5}} = \frac{AB}{9},$$

d'où, par produit en croix,

$$AB = \frac{\text{7,5} \times 9}{\text{4,5}} = \frac{\text{67,5}}{\text{4,5}} = 15 .$$

**Question 5. On calcule $LC$.**

On sait que $AB = 30$, $AL = 20$ et $BC = 16$. La relation donne

$$\frac{20}{LC} = \frac{30}{16},$$

d'où

$$LC = \frac{20 \times 16}{30} = \frac{320}{30} = \frac{32}{3} = 10 + \frac{2}{3} .$$

**Conclusion.** La bissectrice issue de $B$ coupe $[AC]$ en un point $L$ tel que $\dfrac{AL}{CL} = \dfrac{AB}{BC}$. Avec les données de la question 4 on trouve $AB = 15$, et avec celles de la question 5, $LC = \dfrac{32}{3}$, c'est-à-dire un peu moins de $\text{10,7}$.

**Ce qu'il faut retenir.** Une même paire de triangles peut se regarder de deux façons, en changeant la base choisie. Chaque façon donne une information ; c'est en les comparant que l'on obtient le résultat.

## Going further

1. Dans un triangle où $AB = 6$, $BC = 4$ et $AC = 8$, calculer $AL$ et $CL$.
2. La bissectrice issue de $B$ coupe $[AC]$ en son milieu. Que peut-on dire du triangle $ABC$ ?
3. Retrouver le résultat de la question 3 sans utiliser les aires : on trace la parallèle à $(BL)$ passant par $C$, on appelle $D$ son point d'intersection avec la droite $(AB)$, on montre que le triangle $BDC$ est isocèle, puis on applique le théorème de Thalès.
