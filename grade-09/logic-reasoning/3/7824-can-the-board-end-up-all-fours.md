---
id: "7824"
title: "Le canard pouêt-pouêt peut-il n'écrire que des 4 ?"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, somme, moyenne, impossibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de mi-parcours du vendredi 21 août, groupe A, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Mathieu choisit un entier $n$ strictement supérieur à $7$ et écrit au tableau tous les nombres
de $1$ à $n$.

Un canard nommé Pouêt-Pouêt choisit alors deux nombres $a$ et $b$ écrits au tableau, efface
les deux, et écrit à leur place **deux copies** de leur moyenne $\dfrac{a+b}{2}$. Il y a donc
toujours $n$ nombres au tableau.

Le canard recommence cette opération autant de fois qu'il le souhaite.

Peut-il arriver à un tableau où **tous** les nombres écrits valent $4$ ?

## Hints

1. Lis très attentivement l'énoncé : les deux nombres $a$ et $b$ sont **tous les deux**
   remplacés par $\dfrac{a+b}{2}$. Le nombre de nombres au tableau ne change donc jamais.
2. Ne cherche pas à simuler le jeu. Cherche plutôt une quantité qui ne change **jamais**, quels
   que soient les coups joués : un *invariant*.
3. Une opération ne touche que deux nombres. Que vaut la somme des deux nouveaux nombres,
   comparée à la somme des deux anciens ?
4. Calcule la somme de départ, puis la somme qu'aurait le tableau final. Ces deux sommes
   doivent être égales : cela donne une équation en $n$.

## Solution

**Étape 1 : on cherche un invariant.**

Une opération remplace $a$ et $b$ par deux copies de $\dfrac{a+b}{2}$. La contribution de ces
deux cases à la somme totale passe de
$$a + b \qquad \text{à} \qquad \frac{a+b}{2} + \frac{a+b}{2} = a + b .$$

Elle ne change pas. Tous les autres nombres sont laissés intacts. Donc :

> **La somme de tous les nombres écrits au tableau ne change jamais.**

C'est notre invariant.

**Étape 2 : la somme de départ.**

Au départ, le tableau porte $1, 2, \ldots, n$, donc la somme vaut
$$S = 1 + 2 + \cdots + n = \frac{n(n+1)}{2}.$$

**Étape 3 : la somme d'arrivée.**

Il y a toujours $n$ nombres au tableau. Si tous valaient $4$, la somme vaudrait $4n$.

**Étape 4 : on compare.**

Pour que l'objectif soit atteignable, il faudrait
$$\frac{n(n+1)}{2} = 4n .$$

Comme $n > 7$, on a $n \neq 0$, et on peut diviser les deux membres par $n$ :
$$\frac{n+1}{2} = 4, \qquad \text{donc} \qquad n + 1 = 8, \qquad \text{donc} \qquad n = 7 .$$

Or l'énoncé impose $n > 7$. L'égalité est donc impossible.

**Conclusion.** Non, le canard Pouêt-Pouêt ne peut pas y arriver : la somme des nombres écrits
resterait égale à $\dfrac{n(n+1)}{2}$, qui est différente de $4n$ dès que $n > 7$.

*Remarque.* Le nombre $7$ de l'énoncé n'est pas choisi au hasard : c'est exactement la valeur
pour laquelle la somme colle. Et pour $n = 7$ le canard y arrive effectivement, puisque la
moyenne de $1, 2, \ldots, 7$ vaut bien $4$ — il suffit de quelques coups bien choisis.
