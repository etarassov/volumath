---
id: "8655"
title: "Jamais une somme de trois carrés"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, carres, modulo-huit, somme-de-carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Modulos » (Elsa), exercice 12"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n$ un entier naturel. Montrer que le nombre $8n - 1$ ne peut jamais s'écrire comme une somme de trois carrés d'entiers.

*Autrement dit : il n'existe aucun triplet d'entiers $(a, b, c)$ tel que $a^2 + b^2 + c^2 = 8n - 1$.*

## Hints

1. Essaie d'abord sur les premiers cas : $7$, $15$, $23$, $31$. Cherche honnêtement, tu ne trouveras pas.
2. Les nombres $8n - 1$ ont tous le même reste dans la division par $8$. Lequel ?
3. Regarde donc l'égalité modulo $8$. Il faut d'abord savoir quels restes un carré peut avoir modulo $8$.
4. Un entier s'écrit $8k + r$ avec $r$ entre $0$ et $7$. Calcule $r^2$ modulo $8$ pour les huit valeurs de $r$ : tu n'obtiendras que trois restes différents.
5. Il ne reste qu'à faire toutes les sommes de trois de ces trois restes, et à voir que le reste cherché n'apparaît jamais.

## Solution

**Le reste de $8n - 1$.** On a $8n - 1 = 8(n-1) + 7$, donc

$$8n - 1 \equiv 7 \pmod 8 .$$

Tout revient donc à montrer qu'une somme de trois carrés n'est jamais $\equiv 7$ modulo $8$.

**Les carrés modulo $8$.** Le reste de $a^2$ modulo $8$ ne dépend que du reste de $a$ modulo $8$. Testons les huit valeurs :

| $a \bmod 8$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|---|
| $a^2 \bmod 8$ | $0$ | $1$ | $4$ | $1$ | $0$ | $1$ | $4$ | $1$ |

On n'obtient que trois valeurs :

$$a^2 \equiv 0, \ 1 \ \text{ou} \ 4 \pmod 8 \qquad \text{pour tout entier } a .$$

**Les sommes de trois carrés modulo $8$.** Il faut donc additionner trois nombres pris, avec répétitions possibles, dans $\{0, 1, 4\}$. Faisons la liste complète des sommes obtenues, en ne tenant pas compte de l'ordre :

| les trois restes | somme | somme modulo $8$ |
|---|---|---|
| $0+0+0$ | $0$ | $0$ |
| $0+0+1$ | $1$ | $1$ |
| $0+0+4$ | $4$ | $4$ |
| $0+1+1$ | $2$ | $2$ |
| $0+1+4$ | $5$ | $5$ |
| $0+4+4$ | $8$ | $0$ |
| $1+1+1$ | $3$ | $3$ |
| $1+1+4$ | $6$ | $6$ |
| $1+4+4$ | $9$ | $1$ |
| $4+4+4$ | $12$ | $4$ |

Les dix cas donnent les restes $0, 1, 2, 3, 4, 5, 6$. **Le reste $7$ n'apparaît jamais.**

**Conclusion.** Si l'on avait $a^2 + b^2 + c^2 = 8n - 1$, le membre de gauche serait un des restes du tableau et le membre de droite serait $7$ : impossible.

$$\boxed{8n - 1 \text{ n'est jamais la somme de trois carrés d'entiers.}}$$

## Going further

Remarque que la démonstration ne suppose rien sur $a$, $b$, $c$ : ils peuvent être nuls, négatifs, égaux entre eux. L'argument couvre tout.

Le résultat est en fait la partie facile d'un grand théorème. **Gauss** et **Legendre** ont démontré qu'un entier positif est une somme de trois carrés **si et seulement si** il ne s'écrit pas sous la forme $4^k(8m + 7)$. Le cas $k = 0$ est exactement celui que tu viens de traiter ; la réciproque, elle, est bien plus difficile.

Pour t'entraîner : montre avec la même méthode que $4^k(8m+7)$ n'est jamais une somme de trois carrés non plus. *Indication : si $a^2+b^2+c^2$ est divisible par $4$, que peut-on dire de la parité de $a$, $b$ et $c$ ?*
