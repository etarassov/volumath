---
id: "8740"
title: "Deux nombres premiers dont le produit vaut 2ᵖ² + 7"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombres premiers, petit theoreme de fermat, congruences]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, groupe B, entraînement de fin de parcours, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Trouver tous les couples de nombres premiers $(p, q)$ tels que
$$p\,q = 2^{p^2} + 7 .$$

## Hints

1. Commence par la parité. Le membre de droite est-il pair ou impair ? Qu'est-ce que cela
   impose à $p$ et à $q$ ?
2. Le nombre $p$ divise le membre de gauche. Il divise donc le membre de droite. Regarde toute
   l'égalité modulo $p$.
3. Pour calculer $2^{p^2}$ modulo $p$, le petit théorème de Fermat donne $2^{p-1} \equiv 1$.
   Il reste à écrire l'exposant $p^2$ en fonction de $p-1$.
4. Remarque que $p^2 = (p-1)(p+1) + 1$. Que devient alors $2^{p^2}$ modulo $p$ ?
5. Tu trouveras que $p$ divise $9$. Il ne reste plus qu'une valeur possible pour $p$, puis un
   calcul, puis une vérification à ne pas oublier.

## Solution

**Étape 1 : $p$ et $q$ sont impairs.**

Comme $p$ est premier, $p \geq 2$, donc $p^2 \geq 4 \geq 1$ et $2^{p^2}$ est pair. Le nombre
$2^{p^2} + 7$ est donc impair.

Le produit $pq$ est donc impair, ce qui force $p$ et $q$ à être tous les deux impairs. En
particulier $p \neq 2$, et $2$ n'est pas divisible par $p$.

**Étape 2 : l'égalité modulo $p$.**

Le membre de gauche $pq$ est un multiple de $p$, donc
$$2^{p^2} + 7 \equiv 0 \pmod p .$$

Calculons $2^{p^2}$ modulo $p$. Puisque $p$ est premier et ne divise pas $2$, le petit théorème
de Fermat donne
$$2^{p-1} \equiv 1 \pmod p .$$

Or l'exposant se décompose :
$$p^2 = p^2 - 1 + 1 = (p-1)(p+1) + 1 .$$

Donc
$$2^{p^2} = 2^{(p-1)(p+1)} \times 2 = \left(2^{\,p-1}\right)^{p+1} \times 2 \equiv 1^{\,p+1} \times 2 = 2 \pmod p .$$

En reportant :
$$0 \equiv 2^{p^2} + 7 \equiv 2 + 7 = 9 \pmod p .$$

**Étape 3 : $p$ divise 9.**

Ainsi $p$ divise $9$. Les diviseurs de $9$ sont $1$, $3$ et $9$, et le seul qui soit premier est
$3$. Donc $p = 3$.

**Étape 4 : on en déduit $q$.**

Avec $p = 3$ :
$$3q = 2^{3^2} + 7 = 2^9 + 7 = 512 + 7 = 519 .$$
Donc $q = 519 / 3 = 173$.

**Étape 5 : vérifier que 173 est bien premier.**

Ce n'est pas facultatif : l'énoncé demande que $q$ soit premier. Comme $13^2 = 169 < 173$ et
$17^2 = 289 > 173$, il suffit de tester les nombres premiers jusqu'à $13$ :

| diviseur testé | $173$ divisé par ce nombre |
|---|---|
| $2$ | $173$ est impair |
| $3$ | $1 + 7 + 3 = 11$ n'est pas un multiple de $3$ |
| $5$ | $173$ ne finit ni par $0$ ni par $5$ |
| $7$ | $173 = 7 \times 24 + 5$ |
| $11$ | $173 = 11 \times 15 + 8$ |
| $13$ | $173 = 13 \times 13 + 4$ |

Aucun ne convient, donc $173$ est premier.

**Conclusion.** Le seul couple est
$$\boxed{(p, q) = (3, 173)} ,$$
et on vérifie bien que $3 \times 173 = 519 = 512 + 7 = 2^{9} + 7$.

## Going further

1. Où la démonstration utilise-t-elle que $q$ est premier ? Que se passerait-il si on cherchait
   seulement des entiers $q \geq 1$ ?
2. Reprends la même méthode pour l'équation $pq = 2^{p^2} + 6$. *Indication : commence encore par
   la parité, elle donne cette fois un résultat différent. La réponse est $(p, q) = (2, 11)$.*
3. Montre plus généralement que pour tout nombre premier impair $p$, on a
   $2^{p^2} \equiv 2 \pmod p$. Le raisonnement de l'étape 2 est déjà la preuve complète.
