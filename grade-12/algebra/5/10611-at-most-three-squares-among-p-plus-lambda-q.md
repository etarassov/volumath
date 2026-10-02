---
id: "10611"
title: "Au plus trois carrés dans la famille P + λQ"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [polynome, divisibilite, derivee, degre, hors-programme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, Exercices Seniors, exercice 18 ; corrigé 2020-01_corrige-commente-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Soient $P$ et $Q$ deux polynômes à coefficients réels, non constants et premiers entre eux. Montrer qu'il existe au plus trois réels $\lambda$ tels que $P + \lambda Q$ soit le carré d'un polynôme à coefficients réels, c'est-à-dire tels que

$$P + \lambda Q = R^2$$

pour un certain polynôme $R$.

## Hints

1. Raisonne par l'absurde : suppose qu'il y a quatre réels distincts $\lambda_1, \ldots, \lambda_4$ et quatre polynômes $R_1, \ldots, R_4$ avec $P + \lambda_i Q = R_i^2$.
2. Dérive l'égalité $P + \lambda_i Q = R_i^2$. Combine-la avec l'égalité de départ pour faire disparaître $\lambda_i$ : le polynôme $W = PQ' - P'Q$ est divisible par chaque $R_i$.
3. Montre que deux $R_i$ différents n'ont pas de diviseur commun non constant. Déduis-en que le produit $R_1 R_2 R_3 R_4$ divise $W$.
4. Compare les degrés. Attention au cas où le degré de $P + \lambda Q$ baisse pour une valeur particulière de $\lambda$ : remplacer $P$ par $P + \lambda_1 Q$ ne change pas $W$.
5. Enfin, si $W = 0$, montre que $P$ divise $P'$. Pourquoi est-ce impossible ?

## Solution

**Rappel.** L'arithmétique des polynômes ressemble à celle des entiers. On dit que $A$ **divise** $B$ s'il existe un polynôme $C$ tel que $B = AC$. Si $A$ divise un polynôme $B$ non nul, alors $\deg A \leqslant \deg B$. Deux polynômes sont **premiers entre eux** si leurs seuls diviseurs communs sont les constantes non nulles. Comme pour les entiers, on dispose du **lemme de Gauss** : si $A$ divise $BC$ et si $A$ est premier avec $B$, alors $A$ divise $C$. Il entraîne la propriété suivante : si des polynômes deux à deux premiers entre eux divisent tous un même polynôme $W$, alors leur produit divise aussi $W$. On utilise enfin la dérivée d'un polynôme, avec la règle $(R^2)' = 2RR'$.

**Étape 1. Hypothèse de départ.**

Supposons qu'il existe quatre réels distincts $\lambda_1$, $\lambda_2$, $\lambda_3$, $\lambda_4$ et quatre polynômes $R_1$, $R_2$, $R_3$, $R_4$ tels que $P + \lambda_i Q = R_i^2$ pour $i = 1, 2, 3, 4$. Aucun $R_i$ n'est nul : sinon $P = -\lambda_i Q$, et $Q$, qui n'est pas constant, serait un diviseur commun de $P$ et $Q$.

Posons $W = PQ' - P'Q$.

**Étape 2. Chaque $R_i$ divise $W$.**

En dérivant $P + \lambda_i Q = R_i^2$, on obtient $P' + \lambda_i Q' = 2R_i R_i'$. Donc

$$W = PQ' - P'Q = (R_i^2 - \lambda_i Q)\,Q' - (2R_iR_i' - \lambda_i Q')\,Q = R_i^2 Q' - 2R_iR_i' Q = R_i\,(R_i Q' - 2R_i' Q)$$

Les termes en $\lambda_i$ se sont simplifiés, et $R_i$ divise $W$.

**Étape 3. Les $R_i$ sont deux à deux premiers entre eux.**

Soit $T$ un diviseur commun de $R_i$ et $R_j$, avec $i \neq j$. Alors $T$ divise $R_i^2 - R_j^2 = (\lambda_i - \lambda_j)\,Q$, et comme $\lambda_i \neq \lambda_j$, $T$ divise $Q$. Il divise aussi $R_i^2 - \lambda_i Q = P$. Comme $P$ et $Q$ sont premiers entre eux, $T$ est constant.

Par le rappel, le produit $R_1 R_2 R_3 R_4$ divise donc $W$.

**Étape 4. $W$ est nul.**

Supposons $W \neq 0$. Alors $\deg(R_1R_2R_3R_4) \leqslant \deg W$. Notons $n = \max(\deg P, \deg Q)$, qui vaut au moins $1$.

Pour un réel $\lambda$, le polynôme $P + \lambda Q$ est de degré $n$, sauf peut-être pour une seule valeur de $\lambda$ : celle qui fait disparaître le terme de degré $n$, ce qui n'est possible que si $\deg P = \deg Q = n$.

- **Si les quatre polynômes $P + \lambda_i Q$ sont de degré $n$**, chaque $R_i$ est de degré $\frac{n}{2}$, et $\deg(R_1R_2R_3R_4) = 2n$. Or $\deg W \leqslant \deg P + \deg Q - 1 \leqslant 2n - 1$, car les termes de plus haut degré de $PQ'$ et $P'Q$ sont de degré au plus $\deg P + \deg Q - 1$. C'est une contradiction.

- **Sinon, l'un d'eux, disons $P + \lambda_1 Q$, est de degré $m < n$**, et alors $\deg P = \deg Q = n$. Posons $P_1 = P + \lambda_1 Q$, de degré $m$. Le calcul donne $P_1 Q' - P_1' Q = PQ' + \lambda_1 QQ' - P'Q - \lambda_1 Q'Q = W$. Donc $\deg W \leqslant \deg P_1 + \deg Q - 1 = m + n - 1$. Par ailleurs $R_1$ est de degré $\frac{m}{2}$ et les trois autres sont de degré $\frac{n}{2}$, donc

$$\deg(R_1R_2R_3R_4) = \frac{m}{2} + \frac{3n}{2}$$

Or $\frac{m}{2} + \frac{3n}{2} > m + n - 1$ revient à $\frac{n}{2} + 1 > \frac{m}{2}$, ce qui est vrai car $m < n$. C'est encore une contradiction.

Donc $W = 0$.

**Étape 5. La contradiction finale.**

On a $PQ' = P'Q$. Ainsi $P$ divise $P'Q$, et comme $P$ est premier avec $Q$, le lemme de Gauss dit que $P$ divise $P'$. Mais $P$ n'est pas constant, donc $P'$ n'est pas nul et son degré est $\deg P - 1 < \deg P$. Un polynôme ne peut pas diviser un polynôme non nul de degré plus petit. C'est absurde.

**Conclusion : l'hypothèse de départ est fausse. Il existe au plus trois réels $\lambda$ tels que $P + \lambda Q$ soit le carré d'un polynôme.**
