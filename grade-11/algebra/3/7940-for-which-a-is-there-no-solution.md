---
id: "7940"
title: "Pour quels a l'équation n'a-t-elle aucune solution ?"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [second degre, discriminant, parametre, signe d un trinome]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, cours de Groupe A"
  reference: "stage_ete_2016.pdf, « Groupe A : stratégies de base », vendredi 19 matin (Wassim Trabelsi), exercice 5 (p. 44). Le polycopié contient deux erreurs sur cet exercice : le discriminant y est écrit 5a² − 10a au lieu de 5a² − 8a, et le cas a = 0, où l'équation n'est plus du second degré, n'est pas examiné. La réponse imprimée, 0 < a < 2, doit être remplacée par 0 ≤ a < 8/5."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Pour quelles valeurs du réel $a$ l'équation d'inconnue $x$

$$\left(a^2 + 2a\right)x^2 + 3a\,x + 1 = 0$$

n'admet-elle aucune solution réelle ?

## Hints

1. Attention au piège : cette équation n'est du second degré que si le coefficient de $x^2$ n'est pas nul. Pour quelles valeurs de $a$ s'annule-t-il ?
2. Traite d'abord ces valeurs particulières : à quoi l'équation se réduit-elle alors ? A-t-elle une solution ?
3. Dans le cas du second degré, calcule le discriminant $\Delta$ avec soin, puis étudie son signe : c'est encore un trinôme, en $a$ cette fois.

## Solution

**La réponse : $0 \le a < \dfrac{8}{5}$.**

**Étape 1 : les valeurs de $a$ qui font disparaître le degré 2.**

Le coefficient de $x^2$ est $a^2 + 2a = a(a+2)$. Il s'annule pour $a = 0$ et pour $a = -2$. Ces deux cas doivent être traités à part.

- **$a = 0$ :** l'équation devient $0 \times x^2 + 0 \times x + 1 = 0$, c'est-à-dire $1 = 0$. Elle n'a **aucune** solution. La valeur $a = 0$ convient donc.
- **$a = -2$ :** l'équation devient $0 \times x^2 - 6x + 1 = 0$, c'est-à-dire $-6x + 1 = 0$. Elle a la solution $x = \dfrac16$. La valeur $a = -2$ **ne convient pas**.

**Étape 2 : le cas du second degré.**

Supposons maintenant $a \ne 0$ et $a \ne -2$, de sorte que $a^2 + 2a \ne 0$. L'équation est alors du second degré et son discriminant vaut

$$\Delta = (3a)^2 - 4 \times \left(a^2+2a\right) \times 1 = 9a^2 - 4a^2 - 8a = 5a^2 - 8a .$$

L'équation n'a aucune solution réelle si et seulement si $\Delta < 0$.

**Étape 3 : le signe de $\Delta$.**

$$\Delta = 5a^2 - 8a = a\,(5a - 8) .$$

Ce produit s'annule pour $a = 0$ et $a = \dfrac85$. Comme le coefficient dominant $5$ est positif, le trinôme est négatif **entre** ses racines :

$$\Delta < 0 \qquad \Longleftrightarrow \qquad 0 < a < \frac{8}{5} .$$

Ces valeurs sont bien différentes de $0$ et de $-2$ : elles sont donc toutes acceptables.

**Étape 4 : on rassemble.**

- $a = 0$ convient (étape 1) ;
- les $a$ tels que $0 < a < \dfrac85$ conviennent (étapes 2 et 3) ;
- $a = -2$ ne convient pas, et aucune autre valeur non plus.

**Conclusion.** L'équation n'a aucune solution réelle si et seulement si

$$0 \le a < \frac{8}{5} .$$

*Deux vérifications.* Pour $a = 1$ : l'équation est $3x^2 + 3x + 1 = 0$, de discriminant $9 - 12 = -3 < 0$, donc sans solution. ✓ Pour $a = 1{,}8$, qui est au-delà de $\frac85 = 1{,}6$ : l'équation est $6{,}84 x^2 + 5{,}4x + 1 = 0$, de discriminant $29{,}16 - 27{,}36 = 1{,}8 > 0$, donc avec deux solutions. ✓
