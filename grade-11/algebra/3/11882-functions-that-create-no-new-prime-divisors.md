---
id: "11882"
title: "Les fonctions qui ne créent pas de nouveaux diviseurs premiers"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [equation fonctionnelle, nombres premiers, divisibilite, injectivite, contraposee]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Seniors, exercice 11 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. La solution ici remplace la récurrence du corrigé par un argument direct sur deux différences consécutives."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Trouver toutes les fonctions $f : \mathbb{Z} \to \mathbb{Z}$ telles que, pour tous entiers $a$ et $b$ et pour tout nombre premier $p$ :
$$\text{si } p \text{ divise } f(a) - f(b), \text{ alors } p \text{ divise } a - b.$$

## Hints

1. Tout nombre premier divise $0$. Que peut-on en déduire si $f(a) = f(b)$ ?
2. Prendre $b = a + 1$. Quels sont les entiers qui n'ont aucun diviseur premier ?
3. On sait maintenant que $f(n + 1) - f(n)$ vaut $1$ ou $-1$. Que se passe-t-il si cette différence change de signe entre deux rangs consécutifs ?

## Solution

**Les fonctions $x \mapsto c + x$ et $x \mapsto c - x$ conviennent**, pour tout entier $c$. En effet, $f(a) - f(b)$ vaut alors $a - b$ ou $-(a - b)$, et un nombre premier qui divise l'un divise l'autre.

Réciproquement, soit $f$ une fonction qui convient.

**Étape 1 : $f$ ne prend jamais deux fois la même valeur.** Supposons $f(a) = f(b)$. Alors chaque nombre premier $p$ divise $f(a) - f(b) = 0$, donc divise $a - b$. Si $a - b$ n'était pas nul, un nombre premier $p > |a - b|$ (il y a une infinité de nombres premiers) ne pourrait pas diviser $a - b$. Donc $a = b$.

**Étape 2 : deux valeurs consécutives diffèrent de $\pm 1$.** Soit $n$ un entier. Si un nombre premier $p$ divisait $f(n + 1) - f(n)$, il diviserait $(n + 1) - n = 1$, ce qui est impossible. Le nombre $f(n + 1) - f(n)$ est donc un entier sans aucun diviseur premier. Il n'est pas nul (par l'étape 1, ou parce que tout nombre premier divise $0$), et tout entier de valeur absolue au moins $2$ a un diviseur premier. Donc
$$f(n + 1) - f(n) = 1 \quad \text{ou} \quad f(n + 1) - f(n) = -1.$$

**Étape 3 : c'est toujours le même signe.** Supposons que deux différences consécutives soient de signes opposés : $f(n + 1) - f(n) = \varepsilon$ et $f(n + 2) - f(n + 1) = -\varepsilon$. En additionnant, $f(n + 2) = f(n)$, ce qui contredit l'étape 1. Donc toutes les différences $f(n + 1) - f(n)$, pour $n \in \mathbb{Z}$, sont égales à un même $\varepsilon \in \{1, -1\}$.

**Étape 4 : la formule.** On pose $c = f(0)$. Pour $n \geqslant 1$, en ajoutant les différences de $0$ à $n$ :
$$f(n) - f(0) = (f(1) - f(0)) + \cdots + (f(n) - f(n - 1)) = n\varepsilon,$$
et de même $f(0) - f(-n) = n\varepsilon$. Donc $f(n) = c + \varepsilon n$ pour tout entier $n$.

**Conclusion.** Les solutions sont exactement les fonctions $x \mapsto c + x$ et $x \mapsto c - x$, où $c$ est un entier quelconque.

## Going further

Que se passe-t-il si l'on demande seulement l'implication dans l'autre sens : « si $p$ divise $a - b$, alors $p$ divise $f(a) - f(b)$ » pour tout nombre premier $p$ ? Les fonctions constantes conviennent, et aussi $x \mapsto x^2$. Le problème devient beaucoup plus difficile.
