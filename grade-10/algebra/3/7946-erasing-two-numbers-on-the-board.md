---
id: "7946"
title: "On efface deux nombres et on les remplace"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [invariant, factorielle, identites-remarquables, processus]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 9, niveau 1 (énoncé p. 280 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Les nombres $1, 2, 3, \ldots, n$ sont écrits au tableau. À chaque étape, on choisit deux nombres distincts $a$ et $b$ du tableau, on les efface, puis on écrit à leur place le nombre

$$ab + a + b .$$

On recommence jusqu'à ce qu'il ne reste plus qu'un seul nombre.

Que vaut ce dernier nombre ?

## Hints

1. Essaie avec $n = 2$, puis $n = 3$ en changeant l'ordre des choix. Que remarques-tu ?
2. Chaque étape fait perdre un nombre au tableau : combien d'étapes y a-t-il en tout ?
3. Cherche une quantité qui ne change pas au cours du processus. Regarde $ab+a+b$ et essaie d'ajouter $1$.
4. Une fois l'invariant trouvé, calcule sa valeur au départ, puis à l'arrivée.

## Solution

**La réponse : le dernier nombre vaut $(n+1)! - 1$.**

**Étape 1 : la bonne quantité.**

Ajoutons $1$ au nombre écrit :

$$(ab + a + b) + 1 = ab + a + b + 1 = (a+1)(b+1) .$$

Voilà l'idée : **si l'on ajoute $1$ à chaque nombre du tableau, l'opération devient une simple multiplication.**

**Étape 2 : l'invariant.**

Considérons la quantité

$$Q = \prod_{x \text{ au tableau}} (x + 1) ,$$

c'est-à-dire le produit de tous les nombres du tableau augmentés de $1$.

Lors d'une étape, on retire $a$ et $b$ et on écrit $ab+a+b$. Le produit $Q$ est donc divisé par $(a+1)(b+1)$ et multiplié par $(ab+a+b)+1$. Or ces deux quantités sont égales d'après l'étape 1 : **$Q$ ne change pas.**

**Étape 3 : la valeur de $Q$ au départ.**

Au début, le tableau contient $1, 2, \ldots, n$, donc

$$Q = (1+1)(2+1)\cdots(n+1) = 2 \times 3 \times \cdots \times (n+1) = (n+1)! .$$

(On reconnaît $(n+1)!$ car le facteur $1$ manquant ne change rien au produit.)

**Étape 4 : la valeur de $Q$ à l'arrivée.**

Chaque étape fait disparaître un nombre du tableau : on part de $n$ nombres et, après $n-1$ étapes, il n'en reste qu'un, appelons-le $N$. À ce moment-là,

$$Q = N + 1 .$$

**Étape 5 : on conclut.**

Comme $Q$ n'a pas changé,

$$N + 1 = (n+1)! , \qquad \text{donc} \qquad N = (n+1)! - 1 .$$

**Conclusion.** Quel que soit l'ordre des choix, le dernier nombre écrit vaut toujours $\boxed{(n+1)! - 1}$.

*Contrôle avec $n = 3$ :* le tableau contient $1, 2, 3$. Si l'on choisit d'abord $1$ et $2$, on écrit $1\times2+1+2 = 5$ ; puis avec $5$ et $3$ on écrit $15+5+3 = 23$. Si l'on choisit d'abord $2$ et $3$, on écrit $6+2+3 = 11$ ; puis avec $11$ et $1$ on écrit $11+11+1 = 23$. Et $(3+1)! - 1 = 24 - 1 = 23$. ✓
