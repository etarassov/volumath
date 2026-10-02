---
id: "8328"
title: "n − 1 divise n³ + 4"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, factorisation, diviseurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Trouver tous les entiers $n$ strictement positifs tels que

$$n - 1 \; \text{divise} \; n^3 + 4 .$$

## Hints

1. Teste $n = 1, 2, 3, 4, 5, 6, 7$ à la main pour deviner la réponse.
2. L'idée générale : si $n-1$ divise deux nombres, il divise leur différence. Trouve un nombre proche de $n^3 + 4$ dont tu sais déjà qu'il est divisible par $n-1$.
3. Connais-tu la factorisation de $n^3 - 1$ ?
4. $n^3 - 1 = (n-1)(n^2+n+1)$, donc $n-1$ divise $n^3 - 1$. Soustrais.
5. Tu obtiens que $n - 1$ divise un nombre fixe, qui ne dépend plus de $n$. Énumère alors ses diviseurs, et n'oublie pas de vérifier les valeurs trouvées.

## Solution

**On se ramène à un nombre fixe.**

L'identité $a^3 - b^3 = (a-b)(a^2+ab+b^2)$, appliquée avec $b = 1$, donne

$$n^3 - 1 = (n-1)(n^2 + n + 1) .$$

Donc $n - 1$ divise $n^3 - 1$, quel que soit $n$.

Supposons maintenant que $n - 1$ divise aussi $n^3 + 4$. Alors $n-1$ divise la différence :

$$(n^3 + 4) - (n^3 - 1) = 5 .$$

Donc

$$n - 1 \;\text{divise}\; 5 .$$

**On énumère.**

Comme $n$ est un entier strictement positif, $n - 1 \geqslant 0$.

Le cas $n = 1$ est à écarter : il faudrait que $0$ divise $1^3 + 4 = 5$, or $0$ ne divise que
$0$.

Pour $n \geqslant 2$, le nombre $n-1$ est un diviseur positif de $5$ :

$$n - 1 = 1 \qquad \text{ou} \qquad n - 1 = 5 ,$$

c'est-à-dire $n = 2$ ou $n = 6$.

**Vérification.**

- $n = 2$ : $n - 1 = 1$ et $n^3 + 4 = 12$. Or $1$ divise $12$. C'est bon.
- $n = 6$ : $n - 1 = 5$ et $n^3 + 4 = 216 + 4 = 220 = 5 \times 44$. C'est bon.

**Conclusion.** Les entiers cherchés sont

$$\boxed{n = 2 \quad \text{et} \quad n = 6} .$$

## Going further

Le même mécanisme donne une méthode générale. Pour savoir quand $n - a$ divise une expression
$P(n)$, il suffit de calculer $P(a)$ : en effet $n \equiv a \pmod{n-a}$, donc
$P(n) \equiv P(a) \pmod{n-a}$, et la condition devient « $n - a$ divise $P(a)$ ».

Ici $a = 1$ et $P(n) = n^3 + 4$, donc $P(1) = 5$ : on retrouve directement que $n-1$ doit diviser
$5$, sans même écrire de factorisation.

Applique la méthode : pour quels $n$ strictement positifs $n+2$ divise-t-il $n^3 + 3$ ?
