---
id: "7939"
title: "Une équation de degré 4 qui se lit dans les deux sens"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [equation-reciproque, changement-de-variable, second-degre, discriminant]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, cours de Groupe A"
  reference: "stage_ete_2016.pdf, « Groupe A : stratégies de base », vendredi 19 matin (Wassim Trabelsi), exercice 9 (p. 45)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Résoudre dans $\mathbb{R}$ l'équation

$$x^4 - 4x^3 + 3x^2 - 4x + 1 = 0 .$$

## Hints

1. Regarde la liste des coefficients : $1, -4, 3, -4, 1$. Que remarques-tu si tu la lis à l'envers ?
2. Vérifie d'abord que $0$ n'est pas solution. Tu pourras alors diviser toute l'équation par $x^2$.
3. Après division, fais apparaître les quantités $x + \dfrac{1}{x}$ et $x^2 + \dfrac{1}{x^2}$. Comment relier la seconde à la première ?
4. Pose $y = x + \dfrac1x$ et résous en $y$. Attention : toutes les valeurs de $y$ ne redonnent pas des $x$ réels.

## Solution

**La réponse : deux solutions,**

$$x = \frac{2 + \sqrt{3} \ \pm \ \sqrt{3 + 4\sqrt{3}}}{2} .$$

**Étape 1 : $0$ n'est pas solution.**

En remplaçant $x$ par $0$, le membre de gauche vaut $1 \ne 0$. On peut donc supposer $x \ne 0$ et diviser l'équation par $x^2$ :

$$x^2 - 4x + 3 - \frac{4}{x} + \frac{1}{x^2} = 0 ,$$

soit, en regroupant les termes symétriques,

$$\left(x^2 + \frac{1}{x^2}\right) - 4\left(x + \frac{1}{x}\right) + 3 = 0 .$$

**Étape 2 : le changement de variable.**

Posons

$$y = x + \frac{1}{x} .$$

En élevant au carré : $y^2 = x^2 + 2 + \dfrac{1}{x^2}$, donc $x^2 + \dfrac{1}{x^2} = y^2 - 2$.

L'équation devient

$$y^2 - 2 - 4y + 3 = 0 , \qquad \text{c'est-à-dire} \qquad y^2 - 4y + 1 = 0 .$$

**Étape 3 : on résout en $y$.**

Le discriminant vaut $\Delta = 16 - 4 = 12$, donc $\sqrt{\Delta} = 2\sqrt{3}$ et

$$y = \frac{4 \pm 2\sqrt{3}}{2} = 2 \pm \sqrt{3} .$$

**Étape 4 : on revient à $x$.**

L'égalité $x + \dfrac1x = y$ se réécrit, après multiplication par $x$,

$$x^2 - y x + 1 = 0 .$$

Son discriminant vaut $y^2 - 4$. Il y a des solutions réelles si et seulement si $y^2 \ge 4$, c'est-à-dire $|y| \ge 2$.

- Pour $y = 2 - \sqrt{3}$ : comme $\sqrt{3} \approx \text{1,73}$, on a $y \approx \text{0,27}$, donc $|y| < 2$. Aucune solution réelle.
- Pour $y = 2 + \sqrt{3} \approx \text{3,73}$ : on a bien $|y| > 2$. Calculons le discriminant :
  $$y^2 - 4 = \left(2+\sqrt{3}\right)^2 - 4 = 4 + 4\sqrt{3} + 3 - 4 = 3 + 4\sqrt{3} .$$
  Les deux solutions sont donc
  $$x = \frac{y \pm \sqrt{y^2-4}}{2} = \frac{2 + \sqrt{3} \ \pm \ \sqrt{3 + 4\sqrt{3}}}{2} .$$

**Étape 5 : valeurs approchées et vérification.**

On a $\sqrt{3} \approx \text{1,732}$ et $\sqrt{3 + 4\sqrt{3}} = \sqrt{\text{9,928}} \approx \text{3,151}$. Les deux solutions valent donc environ

$$x_1 \approx \text{3,44} \qquad \text{et} \qquad x_2 \approx \text{0,29} .$$

On peut vérifier que leur produit vaut $1$, ce qui est normal : dans $x^2 - yx + 1 = 0$, le produit des racines vaut le terme constant, soit $1$.

**Conclusion.** L'équation a exactement deux solutions réelles, $\dfrac{2 + \sqrt{3} + \sqrt{3+4\sqrt{3}}}{2}$ et $\dfrac{2 + \sqrt{3} - \sqrt{3+4\sqrt{3}}}{2}$.

## Going further

Une équation dont les coefficients se lisent pareil dans les deux sens s'appelle une **équation réciproque**. Si $x$ en est solution, $\dfrac1x$ l'est aussi : les solutions vont par paires de produit $1$. C'est exactement ce qui rend le changement de variable $y = x + \frac1x$ si efficace, et le même truc marche pour tous les degrés pairs.
