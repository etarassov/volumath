---
id: "8851"
title: "Cinq nombres et trois moyennes"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, somme, produit, moyenne, processus]
adapted_from: null
see_also: ["8629"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Invariants et coloriage » (Lilas et Paul A), exercice 8, p. 124"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Au tableau sont écrits les cinq nombres
$$1, \quad 3, \quad 8, \quad 6, \quad 11 .$$

À chaque étape, on choisit trois de ces nombres, disons $a$, $b$ et $c$, et on les remplace par leurs trois moyennes arithmétiques deux à deux :
$$\frac{a+b}{2}, \qquad \frac{a+c}{2}, \qquad \frac{b+c}{2} .$$

Il y a donc toujours cinq nombres au tableau.

**1.** Peut-on obtenir les nombres $2, 4, 5, 7, 9$ après un nombre fini d'opérations ?

**2.** Même question si l'on remplace les moyennes arithmétiques par les moyennes **géométriques** $\sqrt{ab}$, $\sqrt{ac}$, $\sqrt{bc}$.

## Hints

1. Pour la question 1, calcule la somme des trois nouveaux nombres et compare-la à $a+b+c$.
2. Que devient alors la somme des cinq nombres du tableau ?
3. Pour la question 2, remplace « somme » par « produit » et refais le même calcul.
4. Un produit ne se compare pas comme une somme : regarde plutôt sa décomposition en facteurs premiers, par exemple la puissance de $2$ qu'il contient.

## Solution

### 1. Avec les moyennes arithmétiques

**L'invariant, c'est la somme.** Calculons la somme des trois nouveaux nombres :
$$\frac{a+b}{2} + \frac{a+c}{2} + \frac{b+c}{2} = \frac{2a+2b+2c}{2} = a+b+c .$$

Les trois nombres remplacés avaient pour somme $a+b+c$ : la somme des cinq nombres du tableau **ne change pas**.

**On compare.** Au départ,
$$1 + 3 + 8 + 6 + 11 = 29 .$$
La cible donnerait
$$2 + 4 + 5 + 7 + 9 = 27 .$$

Comme $29 \neq 27$, c'est impossible.

### 2. Avec les moyennes géométriques

**L'invariant, c'est le produit.** Calculons le produit des trois nouveaux nombres :
$$\sqrt{ab} \times \sqrt{ac} \times \sqrt{bc} = \sqrt{a^2b^2c^2} = abc$$
(les nombres du tableau sont positifs, donc les racines ont un sens et $\sqrt{a^2b^2c^2} = abc$).

Le produit des cinq nombres du tableau **ne change pas**.

**On compare.** Au départ,
$$1 \times 3 \times 8 \times 6 \times 11 = 1584 .$$
La cible donnerait
$$2 \times 4 \times 5 \times 7 \times 9 = 2520 .$$

Comme $1584 \neq 2520$, c'est impossible.

*(On peut conclure sans calculer les deux produits : $8 = 2^3$ et $6 = 2 \times 3$ donnent au moins $2^4$ dans le premier produit, alors que $2 \times 4 = 2^3$ est tout ce que le second apporte comme puissances de $2$. Les deux produits ne peuvent donc pas être égaux.)*

### Conclusion

Dans les deux cas, la réponse est **non**.

### Le même réflexe, deux outils différents

Quand une opération fabrique des **moyennes arithmétiques**, cherchez ce qui est conservé du côté des sommes ; quand elle fabrique des **moyennes géométriques**, cherchez du côté des produits. C'est le même raisonnement, transposé par le passage du $+$ au $\times$.

## Going further

Avec les moyennes arithmétiques, peut-on obtenir $1, 3, 8, 6, 11$ dans un autre ordre après une ou plusieurs opérations ? Et peut-on obtenir cinq nombres tous égaux ?
