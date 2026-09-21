---
id: "8262"
title: "La somme et le produit donnent la même valeur"
grade: 11
theme: algebra
difficulty: 1
duration_min: 10
tags: [equation fonctionnelle, substitution, fonction constante]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », deuxième partie, « TD d'algèbre » (Lilou Wattez, Auguste de Lambilly), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$
telles que, pour tous réels $a$ et $b$,

$$f(a+b) = f(ab) .$$

## Hints

1. L'égalité doit être vraie pour **tous** les couples $(a, b)$. On peut donc choisir $b$ comme
   on veut.
2. Cherche une valeur de $b$ pour laquelle le produit $ab$ ne dépend plus de $a$.

## Solution

**Réponse : les solutions sont exactement les fonctions constantes.**

**Analyse.**

Supposons que $f$ convienne, et prenons $b = 0$. Pour tout réel $a$ :

$$f(a + 0) = f(a \times 0), \qquad \text{c'est-à-dire} \qquad f(a) = f(0) .$$

Tous les réels ont donc la même image, celle de $0$ : la fonction $f$ est constante.

**Synthèse.**

Réciproquement, si $f$ est la fonction constante égale à $k$, alors $f(a+b) = k$ et
$f(ab) = k$ pour tous $a$ et $b$ : l'égalité est bien vérifiée.

**Conclusion.**

$$\boxed{\text{Les solutions sont les fonctions constantes } f : x \mapsto k, \ k \in
\mathbb{R}.}$$

## Going further

1. Le choix $b = 0$ règle tout. Qu'aurait donné le choix $b = 1$ ? Et $b = 2$ ?
2. Même question pour les fonctions de $\mathbb{N}^*$ dans $\mathbb{R}$, c'est-à-dire quand
   $a$ et $b$ ne peuvent prendre que des valeurs entières strictement positives. La réponse
   est-elle la même ? (Commencer par $b = 1$.)
3. Déterminer toutes les fonctions de $\mathbb{R}$ dans $\mathbb{R}$ telles que
   $f(a+b) = f(a) \, f(ab)$ pour tous $a$, $b$.
