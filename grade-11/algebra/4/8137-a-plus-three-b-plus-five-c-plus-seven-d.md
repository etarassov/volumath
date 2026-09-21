---
id: "8137"
title: "a + 3b + 5c + 7d = 14, et la plus petite somme de carrés"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, minimum, somme-de-carres, identite-remarquable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe B"
  reference: "stage_ete_2018.pdf, Groupe B, « Algèbre – Ensembles, calcul et inégalités », exercice 6 (proposé comme application de l'inégalité de Cauchy-Schwarz)"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soient $a$, $b$, $c$ et $d$ quatre nombres réels vérifiant

$$a + 3b + 5c + 7d = 14.$$

Quelle est la plus petite valeur possible de

$$a^2 + b^2 + c^2 + d^2 \ ?$$

## Hints

1. Commence par chercher la réponse, quitte à la démontrer ensuite. Essaie des quadruplets $(a,b,c,d)$ proportionnels aux coefficients $(1, 3, 5, 7)$ : pose $a = t$, $b = 3t$, $c = 5t$, $d = 7t$.
2. La contrainte détermine alors $t$. Calcule la somme des carrés correspondante : ce sera ton candidat.
3. Pour la démonstration, appelle $(a_0, b_0, c_0, d_0)$ le quadruplet trouvé, et pars de l'inégalité évidente
   $$(a - a_0)^2 + (b - b_0)^2 + (c - c_0)^2 + (d - d_0)^2 \geq 0.$$
4. Développe. Le terme du milieu fait apparaître $a + 3b + 5c + 7d$ à un facteur près : c'est exactement la contrainte.

## Solution

**Le candidat.**

Cherchons d'abord un quadruplet qui devrait réaliser le minimum, en le prenant proportionnel aux coefficients : $a = t$, $b = 3t$, $c = 5t$, $d = 7t$. La contrainte donne

$$t + 9t + 25t + 49t = 84t = 14, \qquad \text{donc} \qquad t = \frac{1}{6}.$$

Le quadruplet est donc

$$a_0 = \frac{1}{6}, \qquad b_0 = \frac{1}{2}, \qquad c_0 = \frac{5}{6}, \qquad d_0 = \frac{7}{6},$$

et la somme de ses carrés vaut

$$a_0^2 + b_0^2 + c_0^2 + d_0^2 = t^2(1 + 9 + 25 + 49) = \frac{84}{36} = \frac{7}{3}.$$

**La minoration.**

Montrons maintenant que $\dfrac{7}{3}$ est bien le minimum. Une somme de carrés est positive ou nulle :

$$\left(a - \frac{1}{6}\right)^2 + \left(b - \frac{1}{2}\right)^2 + \left(c - \frac{5}{6}\right)^2 + \left(d - \frac{7}{6}\right)^2 \geq 0.$$

Développons chaque carré :

$$a^2 + b^2 + c^2 + d^2 \;-\; \left(\frac{a}{3} + b + \frac{5c}{3} + \frac{7d}{3}\right) \;+\; \left(\frac{1}{36} + \frac{1}{4} + \frac{25}{36} + \frac{49}{36}\right) \geq 0.$$

Traitons les deux parenthèses.

*Le terme du milieu.* On reconnaît la contrainte à un facteur $\dfrac{1}{3}$ près :

$$\frac{a}{3} + b + \frac{5c}{3} + \frac{7d}{3} = \frac{1}{3}\left(a + 3b + 5c + 7d\right) = \frac{14}{3}.$$

*Le terme constant.* En mettant tout sur $36$ :

$$\frac{1}{36} + \frac{9}{36} + \frac{25}{36} + \frac{49}{36} = \frac{84}{36} = \frac{7}{3}.$$

L'inégalité devient donc

$$a^2 + b^2 + c^2 + d^2 - \frac{14}{3} + \frac{7}{3} \geq 0, \qquad \text{c'est-à-dire} \qquad a^2 + b^2 + c^2 + d^2 \geq \frac{7}{3}.$$

**Le cas d'égalité.**

Il y a égalité exactement quand les quatre carrés de départ sont nuls, c'est-à-dire pour le quadruplet $\left(\frac{1}{6}, \frac{1}{2}, \frac{5}{6}, \frac{7}{6}\right)$, qui vérifie bien la contrainte.

**La plus petite valeur possible est $\dfrac{7}{3}$.**

## Going further

Cette démonstration est le cas particulier d'un résultat général, l'**inégalité de Cauchy-Schwarz** :

$$(a_1b_1 + \cdots + a_nb_n)^2 \leq (a_1^2 + \cdots + a_n^2)(b_1^2 + \cdots + b_n^2).$$

Appliquée ici avec $(a_i) = (1,3,5,7)$ et $(b_i) = (a,b,c,d)$, elle donne directement

$$14^2 \leq 84 \times (a^2+b^2+c^2+d^2), \qquad \text{donc} \qquad a^2+b^2+c^2+d^2 \geq \frac{196}{84} = \frac{7}{3}.$$

Le déplacement du repère utilisé plus haut est une façon de redémontrer ce cas particulier sans rien admettre.
