---
id: "7057"
title: "Un système de trois produits"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [systeme, equation-de-degre-trois, symetrie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Pierre-lès-Nemours 2009"
  reference: "stage_junior_2009.pdf, « Expressions algébriques », factorisation d'expressions polynomiales, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2009.pdf"
---

## Statement

Trouver tous les triplets $(x ; y ; z)$ de nombres réels vérifiant
$$(x+1)\,yz = 12, \qquad (y+1)\,zx = 4, \qquad (z+1)\,xy = 4 .$$

## Hints

1. Développe les trois équations et fais apparaître partout la quantité $P = xyz$.
2. Tu obtiens $yz = 12 - P$, $zx = 4 - P$ et $xy = 4 - P$.
3. Les deux dernières donnent $zx = xy$. Qu'en déduis-tu ? Attention au cas $x = 0$.
4. Une fois $y = z$ acquis, exprime tout en fonction de $P$ et obtiens une équation de degré
   $3$ en $P$.
5. Cette équation admet $P = 3$ comme racine évidente. Factorise.

## Solution

**Faire apparaître le produit $xyz$.**

Développons les trois équations :
$$xyz + yz = 12, \qquad xyz + zx = 4, \qquad xyz + xy = 4 .$$

Posons $P = xyz$. Le système devient
$$(1) \quad yz = 12 - P, \qquad (2) \quad zx = 4 - P, \qquad (3) \quad xy = 4 - P .$$

**Première conséquence : $y = z$.**

Les équations $(2)$ et $(3)$ donnent $zx = xy$, donc $x(z - y) = 0$, donc $x = 0$ ou $z = y$.

Si $x = 0$, alors $P = xyz = 0$, et $(3)$ donnerait $0 = 4 - 0 = 4$, ce qui est faux. Donc
$$y = z .$$

Remarquons aussi que $y \neq 0$ : sinon $(1)$ donnerait $0 = 12 - P$ et $P = 12$, alors que
$P = xyz = 0$.

**Une équation en $P$ seul.**

Avec $z = y$, les équations deviennent
$$y^2 = 12 - P \qquad \text{et} \qquad xy = 4 - P .$$

Par ailleurs $P = xyz = (xy) \times z = (4 - P)\,y$.

Si $P = 4$, cette relation donnerait $P = 0$, contradiction. Donc $P \neq 4$ et
$$y = \frac{P}{4 - P} .$$

En reportant dans $y^2 = 12 - P$ :
$$\frac{P^2}{(4-P)^2} = 12 - P , \qquad \text{donc} \qquad P^2 = (12 - P)(4 - P)^2 .$$

**Résoudre.**

Développons le membre de droite :
$$(12-P)(16 - 8P + P^2) = 192 - 96P + 12P^2 - 16P + 8P^2 - P^3
= -P^3 + 20P^2 - 112P + 192 .$$

L'équation $P^2 = -P^3 + 20P^2 - 112P + 192$ s'écrit
$$P^3 - 19P^2 + 112P - 192 = 0 .$$

On essaie les petits entiers : $P = 3$ donne $27 - 171 + 336 - 192 = 0$. C'est une racine. En
factorisant,
$$P^3 - 19P^2 + 112P - 192 = (P - 3)(P^2 - 16P + 64) = (P-3)(P-8)^2 .$$

Donc $P = 3$ ou $P = 8$.

**Les deux triplets.**

*Cas $P = 3$.* Alors $y = \dfrac{3}{4-3} = 3$, donc $z = 3$, et $xy = 4 - 3 = 1$ donne
$x = \dfrac13$.

*Cas $P = 8$.* Alors $y = \dfrac{8}{4-8} = -2$, donc $z = -2$, et $xy = 4 - 8 = -4$ donne
$x = \dfrac{-4}{-2} = 2$.

**Vérification.**

Pour $\left(\dfrac13 ; 3 ; 3\right)$ :
$$(x+1)yz = \frac43 \times 9 = 12, \quad (y+1)zx = 4 \times 3 \times \frac13 = 4, \quad
(z+1)xy = 4 \times \frac13 \times 3 = 4 . \ \checkmark$$

Pour $(2 ; -2 ; -2)$ :
$$(x+1)yz = 3 \times 4 = 12, \quad (y+1)zx = (-1) \times (-2) \times 2 = 4, \quad
(z+1)xy = (-1) \times 2 \times (-2) = 4 . \ \checkmark$$

**Conclusion.** Les solutions sont
$$\boxed{\left(\tfrac13 ; 3 ; 3\right) \quad \text{et} \quad (2 ; -2 ; -2) .}$$

## Going further

Deux choses méritent d'être retenues.

D'abord, l'astuce d'introduire $P = xyz$ : les trois équations, apparemment mélangées,
deviennent trois équations où $P$ joue le rôle d'un paramètre. C'est la symétrie du système
qui l'autorise.

Ensuite, la façon dont l'énoncé a été fabriqué : le polynôme $(P-3)(P-8)^2$ est choisi pour
avoir des racines entières. Devant une équation de degré $3$ à coefficients entiers, cherche
toujours d'abord les racines entières, et parmi elles les diviseurs du terme constant. Ici
$192 = 2^6 \times 3$, ce qui laisse peu de candidats raisonnables.
