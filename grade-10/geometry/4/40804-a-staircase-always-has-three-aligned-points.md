---
id: "40804"
title: "Trois points alignés, mais pas forcément une infinité"
grade: 10
theme: geometry
difficulty: 4
duration_min: 45
tags: [alignement, coordonnees, equation-de-droite, partie-entiere, irrationnel, construction, contre-exemple, disjonction-de-cas]
adapted_from: null
see_also: ["40805", "40806", "40807"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2022, mathématiques"
  reference: "cg-2022-s-sujet.pdf, problème 2 « Garder le cap », partie 1 « Étude des petites valeurs de n », questions 1 et 2, et partie 7 « Vers l'infini, et au-delà ! », question 19"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2022-s-sujet.pdf"
---

## Statement

Soit $(O ; \vec{\imath}, \vec{\jmath})$ un repère orthonormé du plan. On étudie une suite de points
$(M_k)_{k \geqslant 0}$ telle que $M_0 = O$ et que, pour tout entier $k \geqslant 0$, le vecteur
$\overrightarrow{M_k M_{k+1}}$ soit égal à $\vec{\imath}$ ou à $\vec{\jmath}$. Autrement dit, on
part de l'origine et, à chaque pas, on avance d'une unité vers la droite ou d'une unité vers le
haut : on dessine un escalier infini, dont les marches peuvent être irrégulières.

Deux points sont toujours alignés, donc une telle suite contient toujours deux points alignés.

1. Démontrer que la suite $(M_k)_{k \geqslant 0}$ contient toujours trois points alignés.
2. La suite $(M_k)_{k \geqslant 0}$ contient-elle nécessairement une infinité de points alignés ?

## Hints

1. **Question 1.** Que se passe-t-il si deux pas consécutifs sont les mêmes ? Et sinon, à quoi
   ressemble l'escalier ?
2. **Question 2.** Notons $u_k$ l'abscisse de $M_k$. Comme chaque pas augmente de $1$ la somme
   des deux coordonnées, $M_k$ a pour coordonnées $(u_k ; k - u_k)$, et $u_{k+1}$ vaut $u_k$
   ou $u_k + 1$.
3. **Question 2.** Si une droite d'équation $\alpha x + \beta y = \gamma$ contient une infinité de
   points $M_k$, montrer que $u_k = sk + t$ pour une infinité d'entiers $k$, avec $s$ et $t$ deux
   réels fixés. Il faut donc construire un escalier qui « suit une droite de pente irrationnelle ».
4. **Question 2.** Prendre $\theta = \sqrt{2} - 1$ et poser $u_k = \mathrm{E}(k\theta)$, où
   $\mathrm{E}$ désigne la partie entière. Vérifier que cela définit bien un escalier, puis
   montrer qu'aucune droite n'en contient une infinité de points.
5. **Question 2.** On a $k\theta - 1 < u_k \leqslant k\theta$. Si $u_k = sk + t$ pour une
   infinité de $k$, comparer $s$ et $\theta$ en faisant grandir $k$, puis utiliser que $\theta$
   est irrationnel.

## Solution

**1.** Deux cas sont possibles.

- *Deux pas consécutifs sont égaux* : il existe $k$ tel que
  $\overrightarrow{M_k M_{k+1}} = \overrightarrow{M_{k+1} M_{k+2}}$. Alors les points $M_k$,
  $M_{k+1}$ et $M_{k+2}$ sont alignés (sur une droite horizontale ou verticale).
- *Deux pas consécutifs sont toujours différents* : les pas alternent,
  $\vec{\imath}, \vec{\jmath}, \vec{\imath}, \vec{\jmath}, \ldots$ ou
  $\vec{\jmath}, \vec{\imath}, \vec{\jmath}, \vec{\imath}, \ldots$ Dans les deux cas,
  $\overrightarrow{M_0 M_2} = \overrightarrow{M_2 M_4} = \vec{\imath} + \vec{\jmath}$, donc
  $M_0$, $M_2$ et $M_4$ sont alignés.

**Conclusion :** la suite contient toujours trois points alignés, et on peut même les trouver
parmi $M_0, M_1, \ldots, M_4$.

**2.** La réponse est **non**. Construisons un escalier qui ne contient pas une infinité de points
alignés.

*Coordonnées des points.* Pour un escalier quelconque, notons $u_k$ l'abscisse de $M_k$. Chaque pas
augmente de $1$ soit l'abscisse, soit l'ordonnée, donc la somme des coordonnées de $M_k$ vaut $k$ :
$M_k$ a pour coordonnées $(u_k ; k - u_k)$. Le pas numéro $k$ est $\vec{\imath}$ si
$u_{k+1} = u_k + 1$, et $\vec{\jmath}$ si $u_{k+1} = u_k$. Inversement, toute suite d'entiers
$(u_k)$ telle que $u_0 = 0$ et $u_{k+1} - u_k \in \{0 ; 1\}$ pour tout $k$ définit un escalier.

*Une droite qui contient une infinité de points.* Soit $d$ une droite d'équation
$\alpha x + \beta y = \gamma$, avec $\alpha$ et $\beta$ non tous les deux nuls. Le point $M_k$ est
sur $d$ si et seulement si $\alpha u_k + \beta(k - u_k) = \gamma$, c'est-à-dire
$$(\alpha - \beta)\, u_k = \gamma - \beta k.$$
Si $\alpha = \beta$, alors $\alpha \neq 0$ et la condition devient $\alpha k = \gamma$ : elle est
vraie pour au plus une valeur de $k$. Donc, si $d$ contient une infinité de points de l'escalier,
on a $\alpha \neq \beta$ et, pour une infinité d'entiers $k$,
$$u_k = sk + t, \quad \text{avec} \quad s = \frac{-\beta}{\alpha - \beta} \quad \text{et} \quad
t = \frac{\gamma}{\alpha - \beta}.$$

*Le contre-exemple.* Posons $\theta = \sqrt{2} - 1$. On a $0 < \theta < 1$, et $\theta$ est
irrationnel puisque $\sqrt{2}$ l'est. Pour tout $k \geqslant 0$, posons $u_k = \mathrm{E}(k\theta)$,
où $\mathrm{E}(x)$ désigne la partie entière de $x$ (le plus grand entier inférieur ou égal à
$x$).

- $u_0 = \mathrm{E}(0) = 0$.
- Soit $k \geqslant 0$. On a $u_k \leqslant k\theta < u_k + 1$, donc
  $u_k \leqslant k\theta < (k+1)\theta = k\theta + \theta < u_k + 1 + 1$. Ainsi l'entier
  $u_{k+1} = \mathrm{E}((k+1)\theta)$ vérifie $u_k \leqslant u_{k+1} < u_k + 2$ : il vaut $u_k$
  ou $u_k + 1$.

La suite $(u_k)$ définit donc bien un escalier. Supposons qu'une droite contienne une infinité de
ses points. D'après ce qui précède, il existe deux réels $s$ et $t$ tels que $u_k = sk + t$ pour
une infinité d'entiers $k$. Pour ces entiers, $k\theta - 1 < u_k \leqslant k\theta$ donne
$$k\theta - 1 < sk + t \leqslant k\theta, \quad \text{c'est-à-dire} \quad
-1 - t < (s - \theta)\, k \leqslant -t.$$

- Si $s \neq \theta$, le nombre $(s - \theta)k$ reste compris entre $-1 - t$ et $-t$ pour une
  infinité d'entiers $k$, qui deviennent aussi grands qu'on veut. C'est impossible : dès que
  $k > \frac{\lvert t \rvert + 1}{\lvert s - \theta \rvert}$, on a
  $\lvert (s - \theta)k \rvert > \lvert t \rvert + 1$.
- Donc $s = \theta$. Prenons alors deux entiers différents $k$ et $k'$ de la liste :
  $u_k - u_{k'} = \theta(k - k')$, donc $\theta = \frac{u_k - u_{k'}}{k - k'}$ est un quotient
  d'entiers. C'est impossible, car $\theta$ est irrationnel.

Aucune droite ne contient donc une infinité de points de cet escalier.

**Conclusion :** non, un tel escalier ne contient pas nécessairement une infinité de points
alignés.

**Bilan.** Tout escalier contient trois points alignés, parmi ses cinq premiers points. En revanche,
l'escalier qui suit au plus près la droite de pente irrationnelle $y = \frac{1-\theta}{\theta}x$,
avec $\theta = \sqrt{2} - 1$, ne contient jamais une infinité de points sur une même droite.

## Going further

- Dans le sujet, ces deux questions encadraient un long problème (exercices 40805, 40806 et 40807)
  dont le résultat principal est : pour tout entier $n \geqslant 2$, un escalier contient toujours
  $n$ points alignés, et même parmi ses $n \times 2^{32 n^4}$ premiers points.
- Avec un ordinateur, chercher le plus grand nombre de points alignés parmi les $N$ premiers points
  de l'escalier $u_k = \mathrm{E}(k\theta)$. Il augmente avec $N$, comme le prédit le théorème,
  mais il n'y a jamais une infinité de points sur une même droite.
- La question 1 trouve trois points alignés parmi les cinq premiers points. Trouver un escalier
  dont les quatre premiers points ne contiennent pas trois points alignés. Pour quatre points
  alignés : trouver un escalier dont les neuf premiers points $M_0, \ldots, M_8$ n'en contiennent
  pas quatre. (Une recherche exhaustive par ordinateur montre que, parmi les dix premiers points,
  il y en a toujours quatre alignés.)
