---
id: "8259"
title: "f(x − f(y)) = 1 − x − y"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation-fonctionnelle, substitution, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », deuxième partie, « Équations fonctionnelles » (Vincent Jugé), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$
telles que, pour tous réels $x$ et $y$,

$$f(x - f(y)) = 1 - x - y .$$

## Hints

1. L'inconnue $f$ apparaît deux fois, dont une **à l'intérieur** d'elle-même. Cherche une
   substitution qui fasse disparaître l'emboîtement.
2. Que se passe-t-il si tu choisis $x$ de façon que $x - f(y)$ vaille $0$ ?
3. Pose $x = f(y)$. Tu obtiens une formule qui donne $f(y)$ en fonction de $y$ et de la seule
   constante $f(0)$.
4. Il reste à trouver la valeur de cette constante : applique la formule obtenue en $y = 0$.
5. Et n'oublie pas la vérification.

## Solution

**Analyse.**

Supposons que $f$ convienne. L'égalité vaut pour tous $x$ et $y$ ; fixons $y$ et prenons
$x = f(y)$. Le membre de gauche devient $f(0)$ :

$$f(0) = 1 - f(y) - y .$$

On en tire, pour tout réel $y$,

$$f(y) = 1 - y - f(0) .$$

Notons $c = f(0)$. Alors $f(y) = 1 - c - y$ pour tout $y$.

**On détermine la constante.**

Appliquons cette formule en $y = 0$ : elle donne $f(0) = 1 - c - 0 = 1 - c$. Or $f(0) = c$ par
définition de $c$. Donc

$$c = 1 - c, \qquad \text{d'où} \qquad c = \frac{1}{2} .$$

La seule candidate est donc

$$f(y) = 1 - \frac{1}{2} - y = \frac{1}{2} - y .$$

**Synthèse : on vérifie.**

Prenons $f : x \mapsto \dfrac{1}{2} - x$ et calculons, pour $x$ et $y$ réels quelconques :

$$x - f(y) = x - \left(\frac{1}{2} - y\right) = x - \frac{1}{2} + y ,$$

puis

$$f(x - f(y)) = \frac{1}{2} - \left(x - \frac{1}{2} + y\right) = 1 - x - y .$$

C'est bien l'égalité voulue.

**Conclusion.**

$$\boxed{\text{L'unique solution est } f : x \mapsto \frac{1}{2} - x .}$$

## Going further

1. Pourquoi la phase de vérification était-elle indispensable ? Qu'aurait-on démontré si on
   s'était arrêté à l'analyse ?
2. Résoudre de la même façon $f(x - f(y)) = 2 - 3x - 9y$.
3. Montrer en revanche que $f(x - f(y)) = 2 - x - 3y$ n'a **aucune** solution.
   (Indication : que vaut la pente de $f$, lue sur le membre de droite en faisant varier $x$,
   puis en faisant varier $y$ ?)
