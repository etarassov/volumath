---
id: "7933"
title: "Deux divisibilités qui se répondent"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, congruences, encadrement, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, test de fin de parcours"
  reference: "stage_ete_2016.pdf, test de fin de parcours du mercredi 24 août, Groupe A, exercice 3 (énoncé p. 211, solution p. 212). La liste finale imprimée dans le polycopié, « (0,0), (1,1), (3,3), (1,3), (0,2) », comporte deux erreurs : le couple (1,1) est exclu par l'énoncé lui-même et ne vérifie pas la seconde divisibilité, tandis que le couple (2,2), obtenu par la solution du polycopié deux lignes plus haut, a été oublié."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Déterminer tous les couples $(a, b)$ d'entiers naturels, avec $b \ge 2$, tels que

$$a + 1 \ \text{ divise } \ a^3 b - 1 \qquad \text{et} \qquad b - 1 \ \text{ divise } \ b^3 a + 1 .$$

## Hints

1. Pour la première condition, remplace $a$ par $-1$ : c'est ce que dit « travailler modulo $a+1$ ». Que devient $a^3b - 1$ ?
2. Fais la même chose pour la seconde, en remplaçant $b$ par $1$ modulo $b-1$.
3. Tu obtiens deux divisibilités enchaînées : $b-1$ divise $a+1$, qui divise $b+1$. Qu'en déduis-tu sur $b-1$ et $b+1$ ?
4. Il ne reste que deux valeurs possibles pour $b$. Traite-les l'une après l'autre.

## Solution

**La réponse : les couples $(0, 2)$, $(2, 2)$, $(1, 3)$ et $(3, 3)$.**

**Étape 1 : on simplifie la première condition.**

Travaillons modulo $a+1$. On a $a \equiv -1$, donc

$$a^3 b - 1 \equiv (-1)^3 b - 1 = -(b+1) \pmod{a+1} .$$

Par conséquent

$$a+1 \ \text{ divise } \ a^3b - 1 \qquad \Longleftrightarrow \qquad a+1 \ \text{ divise } \ b+1 .$$

**Étape 2 : on simplifie la seconde condition.**

Travaillons modulo $b-1$ (qui vaut au moins $1$ puisque $b \ge 2$). On a $b \equiv 1$, donc

$$b^3 a + 1 \equiv 1^3 a + 1 = a+1 \pmod{b-1} .$$

Par conséquent

$$b-1 \ \text{ divise } \ b^3a + 1 \qquad \Longleftrightarrow \qquad b-1 \ \text{ divise } \ a+1 .$$

**Étape 3 : on enchaîne.**

Les deux conditions réunies donnent

$$b - 1  \mid a+1 \qquad \text{et} \qquad a+1  \mid b+1 ,$$

donc, par transitivité, $b - 1$ divise $b+1$. Comme $b+1 = (b-1) + 2$, le nombre $b-1$ divise aussi $2$.

Avec $b \ge 2$, on a $b - 1 \ge 1$, donc

$$b - 1 = 1 \quad \text{ou} \quad b - 1 = 2 , \qquad \text{c'est-à-dire} \qquad b = 2 \quad \text{ou} \quad b = 3 .$$

**Étape 4 : le cas $b = 2$.**

La seconde condition devient « $1$ divise $a+1$ » : elle est toujours vraie.

La première devient « $a+1$ divise $3$ », donc $a+1 \in \{1, 3\}$, c'est-à-dire

$$a = 0 \quad \text{ou} \quad a = 2 .$$

**Étape 5 : le cas $b = 3$.**

La première condition devient « $a+1$ divise $4$ », donc $a + 1 \in \{1, 2, 4\}$, soit $a \in \{0, 1, 3\}$.

La seconde devient « $2$ divise $a+1$ », donc $a+1$ est pair, ce qui élimine $a = 0$. Il reste

$$a = 1 \quad \text{ou} \quad a = 3 .$$

**Étape 6 : vérification.**

Comme les deux étapes 1 et 2 sont des équivalences, tous les couples trouvés conviennent. Vérifions-le tout de même sur l'énoncé de départ :

| $(a, b)$ | $a+1$ | $a^3b-1$ | $b-1$ | $b^3a+1$ |
|---|---|---|---|---|
| $(0, 2)$ | $1$ | $-1$ | $1$ | $1$ |
| $(2, 2)$ | $3$ | $15$ | $1$ | $17$ |
| $(1, 3)$ | $2$ | $2$ | $2$ | $28$ |
| $(3, 3)$ | $4$ | $80$ | $2$ | $82$ |

Dans chaque ligne, $a+1$ divise bien $a^3b-1$ et $b-1$ divise bien $b^3a+1$. ✓

**Conclusion.** Les couples solutions sont $\boxed{(0,2), \ (2,2), \ (1,3), \ (3,3)}$.

## Going further

L'énoncé du stage autorisait aussi $b = 0$. Le nombre $b - 1$ vaut alors $-1$, qui divise tout : la seconde condition est automatique, et la première impose $a+1 \mid 1$, donc $a = 0$. Le couple $(0,0)$ est alors une solution de plus.
