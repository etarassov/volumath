---
id: "7913"
title: "Une suite qui avance à pas constant"
grade: 11
theme: algebra
difficulty: 2
duration_min: 15
tags: [suite-arithmetique, relation-de-recurrence, raison]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires lycéens », exercice 5 (énoncé p. 22, solution p. 27)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soit $u_1, u_2, u_3, \ldots$ une suite de nombres réels telle que

$$u_1 = 7, \qquad u_{2016} = 6102, \qquad \text{et} \qquad u_{n+2} + u_n = 2u_{n+1} \ \text{ pour tout } n \ge 1 .$$

Déterminer $u_{4031}$.

## Hints

1. Récris la relation $u_{n+2} + u_n = 2u_{n+1}$ en mettant d'un côté $u_{n+2} - u_{n+1}$.
2. Que dit alors la relation sur les écarts entre deux termes consécutifs ? Quelle sorte de suite est $(u_n)$ ?
3. Tu peux calculer la raison, mais il y a plus rapide : compare $4031 - 1$ et $2016 - 1$.

## Solution

**La réponse : $u_{4031} = 12\,197$.**

**Étape 1 : la suite est arithmétique.**

La relation $u_{n+2} + u_n = 2u_{n+1}$ se réécrit

$$u_{n+2} - u_{n+1} = u_{n+1} - u_n .$$

L'écart entre deux termes consécutifs est donc toujours le même : $(u_n)$ est une suite **arithmétique**. Notons $r$ sa raison, de sorte que

$$u_n = u_1 + (n-1)\,r .$$

**Étape 2 : la remarque qui évite tout calcul pénible.**

On a

$$4031 - 1 = 4030 = 2 \times 2015 = 2 \times (2016 - 1) .$$

Autrement dit, pour aller de $u_1$ à $u_{4031}$, on fait exactement deux fois le chemin qui mène de $u_1$ à $u_{2016}$. Donc

$$u_{4031} - u_1 = 2\left(u_{2016} - u_1\right) ,$$

c'est-à-dire

$$u_{4031} = 2\,u_{2016} - u_1 = 2 \times 6102 - 7 = 12\,204 - 7 = 12\,197 .$$

**Conclusion.** $u_{4031} = \boxed{12\,197}$.

*Pour ceux qui préfèrent la raison :* $r = \dfrac{u_{2016} - u_1}{2015} = \dfrac{6095}{2015}$, puis $u_{4031} = 7 + 4030 \times \dfrac{6095}{2015} = 7 + 2 \times 6095 = 12\,197$. On retrouve bien le même résultat.
