---
id: "7148"
title: "Une équation qui se replie sur elle-même"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [equation, changement de variable, polynome, symetrie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Avancés : algèbre », mercredi après-midi (Jean-Louis Tu), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Résoudre dans $\mathbb{R}$ l'équation

$$x^4 - 3x^3 + 4x^2 - 3x + 1 = 0 .$$

## Hints

1. Regarde la liste des coefficients : $1, -3, 4, -3, 1$. Que remarques-tu ?
2. Est-ce que $x = 0$ est solution ? Si non, tu peux diviser toute l'équation par $x^2$ sans
   rien perdre.
3. Après cette division, regroupe les termes deux par deux : ceux en $x^2$ et $\frac{1}{x^2}$,
   puis ceux en $x$ et $\frac1x$.
4. Pose $y = x + \dfrac1x$ et exprime $x^2 + \dfrac{1}{x^2}$ en fonction de $y$.

## Solution

**Zéro n'est pas solution.** En remplaçant $x$ par $0$, le membre de gauche vaut $1 \neq 0$.
On peut donc diviser par $x^2$, qui est non nul :

$$\frac{x^4 - 3x^3 + 4x^2 - 3x + 1}{x^2} = x^2 - 3x + 4 - \frac{3}{x} + \frac{1}{x^2} = 0 .$$

**Le regroupement.** Regroupons les termes symétriques :

$$\left(x^2 + \frac{1}{x^2}\right) - 3\left(x + \frac{1}{x}\right) + 4 = 0 .$$

**Le changement de variable.** Posons $y = x + \dfrac1x$. Alors

$$y^2 = x^2 + 2 + \frac{1}{x^2}, \qquad \text{donc} \qquad x^2 + \frac{1}{x^2} = y^2 - 2 .$$

L'équation devient

$$(y^2 - 2) - 3y + 4 = 0, \qquad \text{c'est-à-dire} \qquad y^2 - 3y + 2 = 0 .$$

**On résout en $y$.** Le discriminant vaut $9 - 8 = 1$, et les racines sont

$$y = \frac{3 - 1}{2} = 1 \qquad \text{et} \qquad y = \frac{3 + 1}{2} = 2 .$$

**On revient à $x$.**

*Cas $y = 2$.* Alors $x + \dfrac1x = 2$, donc $x^2 + 1 = 2x$, c'est-à-dire $(x-1)^2 = 0$, donc
$x = 1$.

*Cas $y = 1$.* Alors $x + \dfrac1x = 1$, donc $x^2 - x + 1 = 0$. Or

$$x^2 - x + 1 = \left(x - \frac12\right)^2 + \frac34 \geqslant \frac34 > 0 ,$$

donc cette équation n'a aucune solution réelle.

**Vérification.** Pour $x = 1$ : $1 - 3 + 4 - 3 + 1 = 0$. ✔

**Conclusion.** L'unique solution réelle est $\boxed{x = 1}$.

## Going further

Une équation dont la liste des coefficients se lit pareil à l'endroit et à l'envers s'appelle
une **équation réciproque**. La méthode ci-dessus les résout toutes : diviser par la moitié du
degré, regrouper, poser $y = x + \frac1x$. Le degré est ainsi divisé par deux, ce qui est un
gain considérable.

La raison de fond est une symétrie : si $x$ est solution, alors $\frac1x$ l'est aussi. Ici
l'unique solution est $x = 1$, qui est son propre inverse ; c'est cohérent.

Une question pour continuer : résous $x^4 - 5x^3 + 8x^2 - 5x + 1 = 0$.
