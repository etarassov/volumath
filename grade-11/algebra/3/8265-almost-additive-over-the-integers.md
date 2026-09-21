---
id: "8265"
title: "Presque additive sur les entiers"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [equation fonctionnelle, additivite, recurrence, entiers relatifs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », deuxième partie, « TD d'algèbre » (Lilou Wattez, Auguste de Lambilly), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{Z}$ et à valeurs dans $\mathbb{Z}$
telles que, pour tous entiers $x$ et $y$,

$$f(x+y) = f(x) + f(y) + 2 .$$

## Hints

1. Le « $+2$ » gêne. Essaie de le faire disparaître en changeant de fonction : pose
   $g(x) = f(x) + c$ pour une constante $c$ bien choisie.
2. Avec $g(x) = f(x) + 2$, que devient l'équation ?
3. Tu obtiens $g(x+y) = g(x) + g(y)$. Commence par calculer $g(0)$, puis $g(n)$ pour $n$ entier
   positif par récurrence, puis $g(-n)$.
4. N'oublie pas la vérification finale.

## Solution

**Réponse : les solutions sont les fonctions $f(x) = a x - 2$, où $a$ est un entier
quelconque.**

**On se débarrasse du $+2$.**

Posons $g(x) = f(x) + 2$ pour tout entier $x$. Alors, pour tous $x$ et $y$ :

$$g(x+y) = f(x+y) + 2 = (f(x) + f(y) + 2) + 2 = (f(x)+2) + (f(y)+2) =
g(x) + g(y) .$$

La fonction $g$ vérifie donc l'équation **additive**

$$g(x+y) = g(x) + g(y) \qquad \text{pour tous entiers } x, y .$$

**On résout l'équation additive sur $\mathbb{Z}$.**

*La valeur en $0$.* Avec $x = y = 0$ : $g(0) = g(0) + g(0)$, donc $g(0) = 0$.

*Les entiers positifs.* Notons $a = g(1)$. Montrons par récurrence que $g(n) = a n$ pour tout
entier $n \ge 0$.

- Pour $n = 0$ : $g(0) = 0 = a \times 0$. ✓
- Si $g(n) = an$ pour un certain $n \ge 0$, alors, en prenant $x = n$ et $y = 1$,
  $$g(n+1) = g(n) + g(1) = an + a = a(n+1) . \ \checkmark$$

La propriété est donc vraie pour tout entier $n \ge 0$.

*Les entiers négatifs.* Pour $n \ge 0$, prenons $x = n$ et $y = -n$ :

$$g(0) = g(n) + g(-n), \qquad \text{donc} \qquad g(-n) = -g(n) = -an = a \times (-n) .$$

La formule $g(x) = ax$ vaut donc pour **tout** entier $x$.

**On revient à $f$.**

$$f(x) = g(x) - 2 = a x - 2 \qquad \text{pour tout entier } x .$$

**Synthèse : on vérifie.**

Soit $a$ un entier et $f(x) = ax - 2$. Alors, pour tous entiers $x$ et $y$ :

$$f(x+y) = a(x+y) - 2 ,$$
$$f(x) + f(y) + 2 = (ax - 2) + (ay - 2) + 2 = a(x+y) - 2 .$$

Les deux membres sont égaux. ✓ Et $f$ est bien à valeurs entières puisque $a$ est un entier.

**Conclusion.**

$$\boxed{\text{Les solutions sont les } f : x \mapsto a x - 2, \ a \in \mathbb{Z} .}$$

## Going further

1. Pourquoi a-t-on choisi la constante $2$ dans le changement $g(x) = f(x) + c$ ? Que se
   serait-il passé avec $c = 1$ ?
2. Le même énoncé pour des fonctions de $\mathbb{Q}$ dans $\mathbb{Q}$ : montrer que la réponse
   est encore $f(x) = ax - 2$, avec cette fois $a$ rationnel. (Commencer par calculer
   $g\!\left(\frac{1}{n}\right)$.)
3. Pour des fonctions de $\mathbb{R}$ dans $\mathbb{R}$, la même conclusion est en fait
   **fausse** sans hypothèse supplémentaire, mais aucun contre-exemple ne peut être écrit
   explicitement. Que faut-il ajouter comme hypothèse pour retrouver $f(x) = ax - 2$ ?
