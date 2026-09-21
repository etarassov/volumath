---
id: "8806"
title: "2025 nombres au tableau"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [divisibilite, somme, construction, maximum]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2025 (dans le polycopié du stage olympique de Valbonne 2025)"
  reference: "Poly-2025-compresse.pdf, chapitre II « Coupe Animath de printemps 2025 », exercice 7 (collégiens) et exercice 13 (lycéens), p. 26 et 34"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Au tableau sont écrits $2025$ entiers strictement positifs. Ils ne sont pas forcément tous différents : un même nombre peut apparaître plusieurs fois.

Ces nombres ont la propriété suivante : **quels que soient les $2023$ nombres que l'on choisit** parmi les $2025$, chacun des deux nombres restants divise la somme des $2023$ nombres choisis.

Combien peut-il y avoir, au maximum, de valeurs différentes écrites au tableau ?

## Hints

1. Un problème de maximum se répond toujours en deux parties : montrer qu'on ne peut pas faire mieux qu'une certaine valeur, et donner un exemple qui atteint cette valeur. Ne négligez ni l'une ni l'autre.
2. Notez $S$ la somme des $2025$ nombres. Si on laisse de côté deux nombres $a$ et $b$, la somme des autres vaut $S - a - b$. Récrivez la condition « $a$ divise $S-a-b$ » plus simplement.
3. Vous devriez arriver à : $a \mid S - b$ pour tout couple de nombres $a$, $b$ pris à deux endroits différents du tableau. Que se passe-t-il si on garde le même $a$ et qu'on change $b$ ?
4. Pour l'exemple, essayez de n'utiliser que deux valeurs, dont l'une est $1$, et arrangez-vous pour que la somme des $1$ soit intéressante.

## Solution

Notons $S$ la somme des $2025$ nombres écrits au tableau.

### Partie 1 : il y a au plus deux valeurs différentes

Prenons deux nombres $a$ et $b$ écrits à deux endroits différents du tableau. La somme des $2023$ autres vaut $S - a - b$. L'hypothèse dit que $a$ divise ce nombre :
$$a \mid S - a - b .$$
Comme $a$ divise aussi $a$, il divise la somme $(S - a - b) + a$, c'est-à-dire
$$a \mid S - b . \qquad (\star)$$

Supposons maintenant, par l'absurde, qu'il y ait au moins **trois** valeurs différentes au tableau, disons $a > b > c$. Ces trois nombres occupent trois cases différentes, donc on peut appliquer $(\star)$ aux couples $(a, b)$ et $(a, c)$ :
$$a \mid S - b \qquad \text{et} \qquad a \mid S - c .$$

Un nombre qui divise deux entiers divise leur différence :
$$a \mid (S - c) - (S - b) = b - c .$$

Or $b > c$ donc $b - c > 0$, et $b < a$ donc $b - c < a$. Autrement dit $b - c$ est un entier strictement compris entre $0$ et $a$ : il ne peut pas être un multiple de $a$. Contradiction.

Il y a donc **au plus deux** valeurs différentes au tableau.

### Partie 2 : deux valeurs différentes sont possibles

Il reste à construire un exemple. Écrivons au tableau :
$$\underbrace{1, \; 1, \; \dots, \; 1}_{2024 \text{ fois}}, \qquad 2023 .$$

Cela fait bien $2025$ nombres, et deux valeurs différentes. Vérifions la propriété. On choisit $2023$ nombres ; deux restent. Deux cas.

- **Le nombre $2023$ fait partie des $2023$ choisis.** Alors les deux nombres restants sont deux $1$. Et $1$ divise n'importe quel entier, donc la condition est vérifiée.
- **Le nombre $2023$ est l'un des deux restants.** Alors les $2023$ nombres choisis sont tous des $1$, et leur somme vaut $2023$. Les deux nombres restants sont $2023$ et un $1$. Or $1$ divise $2023$, et $2023$ divise $2023$. La condition est encore vérifiée.

Cet exemple convient donc.

**Conclusion.** Le nombre maximal de valeurs différentes au tableau est $\boxed{2}$.

### Un piège à signaler

Beaucoup de solutions commencent par croire que la réponse est $1$, c'est-à-dire que tous les nombres doivent être égaux. Montrer qu'un exemple particulier à deux valeurs ne marche pas ne prouve rien du tout : il faut chercher plus longtemps avant de conclure qu'une construction est impossible.

## Going further

Même question avec $n$ nombres au tableau dont on retire $2$, pour un entier $n \geqslant 3$ quelconque. La réponse dépend-elle de $n$ ?
