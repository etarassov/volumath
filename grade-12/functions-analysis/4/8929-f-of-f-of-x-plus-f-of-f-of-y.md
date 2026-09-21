---
id: "8929"
title: "f(f(x)) + f(f(y)) = 2y + f(x − y)"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 30
tags: [equation-fonctionnelle, substitution, analyse-synthese]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe C"
  reference: "Poly-Valbonne-2026.pdf, chapitre V « Groupe C », entraînement de mi-parcours, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$ et à valeurs dans $\mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f(f(x)) + f(f(y)) = 2y + f(x - y).$$

Aucune hypothèse de continuité n'est faite.

## Hints

1. Le terme $f(x-y)$ est le plus gênant. Quelle substitution le rend inoffensif ?
2. Prenez $x = y$. Vous obtiendrez une formule pour $f(f(x))$ toute seule.
3. Remplacez cette formule dans l'équation de départ. Il ne reste plus de composée, seulement $f(x-y)$.
4. Prenez alors $y = 0$ : $f$ est complètement déterminée, à une constante près.
5. N'oubliez pas la vérification finale : toutes les fonctions trouvées ne conviennent pas forcément.

## Solution

Notons $P(x,y)$ l'égalité de l'énoncé.

### Analyse

**Étape 1 : on calcule $f \circ f$.**

Prenons $x = y$, ce qui fait disparaître la différence : $P(x,x)$ donne

$$f(f(x)) + f(f(x)) = 2x + f(0),$$

c'est-à-dire

$$f(f(x)) = x + \dfrac{f(0)}{2} \qquad \text{pour tout réel } x.$$

**Étape 2 : on s'en sert pour éliminer les composées.**

Notons $c = f(0)$. En reportant dans l'équation de départ, le membre de gauche devient

$$\left(x + \dfrac{c}{2}\right) + \left(y + \dfrac{c}{2}\right) = x + y + c.$$

L'équation s'écrit donc, pour tous réels $x$ et $y$,

$$x + y + c = 2y + f(x-y), \qquad \text{c'est-à-dire} \qquad f(x-y) = x - y + c.$$

**Étape 3 : on lit le résultat.**

Quand $x$ et $y$ parcourent tous les réels, la différence $x-y$ parcourt aussi tous les réels (prendre $y = 0$ et $x = t$ donne $x - y = t$). Donc

$$f(t) = t + c \qquad \text{pour tout réel } t.$$

La fonction $f$ est donc forcément de la forme $t \mapsto t + c$.

### Synthèse

Il reste à voir quelles constantes $c$ conviennent. Si $f(t) = t + c$, alors $f(f(x)) = f(x+c) = x + 2c$, et l'équation de départ devient

$$(x + 2c) + (y + 2c) = 2y + \big((x-y) + c\big),$$

c'est-à-dire

$$x + y + 4c = x + y + c.$$

Cela force $4c = c$, donc $c = 0$.

Réciproquement, pour $c = 0$, c'est-à-dire pour $f = \mathrm{id}$ : le membre de gauche vaut $x + y$ et le membre de droite $2y + (x-y) = x+y$. L'égalité est bien vérifiée.

### Conclusion

$$\boxed{\text{La seule solution est la fonction identité } f(x) = x.}$$

*Le point de méthode.* Dans une équation fonctionnelle, la première question est : **quelle substitution simplifie le plus ?** Ici, $x = y$ annule un terme entier et livre immédiatement $f \circ f$. Notons aussi que l'analyse seule ne suffisait pas : elle donnait toute une famille de candidats $t \mapsto t + c$, et c'est la synthèse qui a éliminé tous les $c$ sauf un.

## Going further

1. Que devient la réponse si l'on remplace $2y$ par $2x$ dans le membre de droite ?
2. La relation $f(f(x)) = x + \dfrac{c}{2}$ obtenue à l'étape 1 suffit déjà à montrer que $f$ est bijective. Pourquoi ?
