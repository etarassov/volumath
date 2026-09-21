---
id: "8270"
title: "Trois nombres premiers qui divisent les produits des autres"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [nombres premiers, divisibilite, encadrement, symetrie, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, La Muraille"
  reference: "PolycopieV1-1.pdf, chapitre IX « La Muraille », exercice 21 (niveau 1). La Muraille ne publie pas de solutions ; l'unicité de {2, 3, 5} a été confirmée par recherche exhaustive jusqu'à 200."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Trouver tous les triplets de nombres premiers **deux à deux distincts** $p$, $q$, $r$ tels que

$$p \mid qr - 1, \qquad q \mid pr - 1, \qquad r \mid pq - 1 .$$

## Hints

1. Cherche d'abord un exemple à la main, avec de petits nombres premiers.
2. Les trois conditions sont symétriques, mais chacune ne parle que d'un seul des trois
   nombres. Essaie de fabriquer **un seul** nombre que $p$, $q$ et $r$ divisent tous les trois.
3. Considère $N = pq + qr + rp - 1$. Que vaut $N$ modulo $p$ ?
4. Tu obtiendras que $pqr$ divise $N$. Range maintenant les trois premiers : $p < q < r$. Que
   peux-tu dire de la taille de $N$ par rapport à $qr$ ?
5. Tu en déduiras $p = 2$. Il reste alors une équation en $q$ et $r$ qui se factorise.

## Solution

**Réponse : le seul triplet est $\{2, 3, 5\}$, dans n'importe quel ordre.**

Vérifions-le d'abord : $2 \mid 3 \times 5 - 1 = 14$, $\ 3 \mid 2 \times 5 - 1 = 9$, et
$5 \mid 2 \times 3 - 1 = 5$. ✓

**Un nombre divisible par les trois.**

Posons

$$N = pq + qr + rp - 1 .$$

Regardons $N$ modulo $p$. Les termes $pq$ et $rp$ sont des multiples de $p$, donc

$$N \equiv qr - 1 \pmod p .$$

Or $p$ divise $qr - 1$ par hypothèse, donc $p$ divise $N$. Par symétrie, $q$ divise $N$ et $r$
divise $N$.

Comme $p$, $q$, $r$ sont des nombres premiers **distincts**, leur produit divise $N$ :

$$pqr \mid N .$$

**Un encadrement de $N$.**

Rangeons les trois nombres : quitte à les renommer, supposons $p < q < r$. Alors

$$pq < qr \qquad (\text{car } p < r), \qquad rp < rq \qquad (\text{car } p < q) ,$$

donc

$$0 \ < \ N = pq + qr + rp - 1 \ < \ qr + qr + qr = 3qr .$$

($N$ est bien strictement positif : c'est au moins $2 \times 3 + 3 \times 5 + 5 \times 2 - 1$.)

**On en déduit $p = 2$.**

$N$ est un multiple strictement positif de $pqr$, donc $N \ge pqr$. Avec l'encadrement
précédent :

$$pqr \ \le \ N \ < \ 3qr, \qquad \text{donc} \qquad p < 3 .$$

Le seul nombre premier strictement plus petit que $3$ est $2$ : **$p = 2$**.

**On termine.**

Avec $p = 2$, on a $N = 2q + qr + 2r - 1$, et $2qr$ divise $N$. Or $0 < N < 3qr$, et le seul
multiple de $2qr$ strictement compris entre $0$ et $3qr$ est $2qr$ lui-même. Donc

$$2q + qr + 2r - 1 = 2qr .$$

Réarrangeons :

$$qr - 2q - 2r + 1 = 0 .$$

Pour factoriser, ajoutons $3$ des deux côtés :

$$qr - 2q - 2r + 4 = 3, \qquad \text{c'est-à-dire} \qquad (q-2)(r-2) = 3 .$$

Comme $q$ et $r$ sont des nombres premiers différents de $p = 2$, on a $q \ge 3$ et $r \ge 3$,
donc $q - 2$ et $r - 2$ sont des entiers strictement positifs. Le nombre $3$ étant premier, la
seule décomposition est $3 = 1 \times 3$, et comme $q < r$ :

$$q - 2 = 1 \quad \text{et} \quad r - 2 = 3, \qquad \text{donc} \qquad q = 3, \ r = 5 .$$

**Conclusion.**

$$\boxed{\{p, q, r\} = \{2, 3, 5\}}$$

et c'est le seul triplet possible.

## Going further

1. Où a-t-on utilisé que les trois nombres sont **premiers** ? Et où a-t-on utilisé qu'ils sont
   **distincts** ?
2. L'astuce centrale est de fabriquer $N = pq + qr + rp - 1$. D'où vient-elle ? Essayer de
   deviner le bon $N$ pour la variante $p \mid qr + 1$, $q \mid pr + 1$, $r \mid pq + 1$.
3. Que se passe-t-il si l'on cherche seulement deux nombres premiers distincts $p$, $q$ tels
   que $p \mid q - 1$ et $q \mid p - 1$ ?
