---
id: "12809"
title: "f(x + f(y)) = f(x) + f(y) et les droites y = qx"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [equation-fonctionnelle, rationnels, partie-entiere, divisibilite, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2023"
  reference: "2023-01_Enonce-Web-Test-2.pdf, test senior, exercice 6 ; corrigé 2023-01_Corrige-Web-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-01_Enonce-Web-Test-2.pdf"
---

## Statement

On note $\mathcal{F}$ l'ensemble des fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que, pour tous réels $x$ et $y$,

$$f\left(x + f(y)\right) = f(x) + f(y).$$

Trouver tous les nombres rationnels $q$ ayant la propriété suivante : pour **toute** fonction $f$ de $\mathcal{F}$, il existe **au moins un** réel $z$ tel que $f(z) = qz$.

## Hints

1. Lisez bien l'énoncé : $q$ doit marcher pour toutes les fonctions de $\mathcal{F}$, mais pour chacune il suffit d'un seul $z$. Cherchez d'abord quelques fonctions de $\mathcal{F}$ : les fonctions $x \mapsto x + c$, la fonction nulle... mais il y en a d'autres, beaucoup plus étranges.
2. Montrez par récurrence que $f(x + k f(y)) = f(x) + k f(y)$ pour tout entier $k \geq 0$, puis pour tout entier $k$ négatif.
3. Prenez $x = y = 0$ et $z = k f(0)$. Quels nombres $q$ obtenez-vous ainsi ?
4. Pour montrer qu'aucun autre rationnel ne convient, il faut fabriquer, pour chaque $q = a/b$ restant, une fonction de $\mathcal{F}$ dont le graphe ne rencontre jamais la droite $y = qx$. Essayez une fonction à valeurs entières qui vérifie $f(t + 1) = f(t) + 1$ : pourquoi est-elle automatiquement dans $\mathcal{F}$ ?
5. Une telle fonction est connue dès qu'on la connaît sur $[0, 1[$. Prenez $f(t) = \lfloor t \rfloor$ partout, sauf sur quelques points bien choisis où l'on ajoute $1$.

## Solution

La réponse : les rationnels qui conviennent sont exactement les nombres

$$q = 1 + \frac{1}{k}, \qquad k \text{ entier non nul},$$

c'est-à-dire $2, \frac{3}{2}, \frac{4}{3}, \ldots$ et $0, \frac{1}{2}, \frac{2}{3}, \frac{3}{4}, \ldots$ Remarquons tout de suite que $q = 1$ n'en fait pas partie.

### Étape 1 : itérer l'équation

Soit $f \in \mathcal{F}$, et fixons $y$. Montrons par récurrence sur $k \geq 0$ que

$$f\left(x + k f(y)\right) = f(x) + k f(y) \qquad \text{pour tout réel } x. \qquad (E_k)$$

Pour $k = 0$, c'est évident. Si $(E_k)$ est vraie, alors en appliquant l'équation de départ au réel $x + k f(y)$ :

$$f\left(x + (k+1) f(y)\right) = f\left(x + k f(y)\right) + f(y) = f(x) + (k+1) f(y).$$

Pour $k \geq 0$, appliquons maintenant $(E_k)$ au réel $x - k f(y)$ : on obtient $f(x) = f\left(x - k f(y)\right) + k f(y)$, c'est-à-dire $f\left(x - k f(y)\right) = f(x) - k f(y)$. Donc $(E_k)$ est vraie pour tout entier relatif $k$.

### Étape 2 : les nombres 1 + 1/k conviennent

Soit $k$ un entier non nul et $f \in \mathcal{F}$. Posons $z = k f(0)$. L'égalité $(E_k)$ avec $x = y = 0$ donne

$$f(z) = f(0) + k f(0) = (k + 1) f(0) = \frac{k+1}{k}\, z = \left(1 + \frac{1}{k}\right) z.$$

(Si $f(0) = 0$, alors $z = 0$ et l'égalité dit $f(0) = 0$, ce qui est vrai.) Ainsi, pour toute $f \in \mathcal{F}$, le réel $z = kf(0)$ convient : **chaque $q = 1 + \frac{1}{k}$ a la propriété demandée.**

### Étape 3 : quels rationnels restent ?

Écrivons un rationnel $q$ sous forme irréductible $q = \frac{a}{b}$, avec $b \geq 1$ et $a$, $b$ sans diviseur commun autre que $1$. Alors

$$q = 1 + \frac{1}{k} \iff \frac{a - b}{b} = \frac{1}{k} \iff b = k(a - b).$$

Si $a - b = \pm 1$, on prend $k = \pm b$ et $q$ est bien de cette forme. Réciproquement, si $b = k(a - b)$, alors $a - b$ divise $b$, donc divise aussi $a = b + (a - b)$ ; il divise donc le seul diviseur commun de $a$ et $b$, qui est $1$, et $a - b = \pm 1$.

Il reste donc à montrer que **si $b - a \neq 1$ et $b - a \neq -1$, alors $q = a/b$ ne convient pas** (le cas $b = a$, c'est-à-dire $q = 1$, en fait partie). Fixons un tel $q = a/b$ et posons $d = b - a$.

### Étape 4 : une famille de fonctions étranges dans F

Commençons par une remarque. Soit $f$ une fonction **à valeurs entières** telle que $f(t + 1) = f(t) + 1$ pour tout réel $t$. Alors $f(t + m) = f(t) + m$ pour tout entier $m$ (par récurrence, dans les deux sens). Comme $f(y)$ est un entier,

$$f\left(x + f(y)\right) = f(x) + f(y) \qquad \text{pour tous } x, y,$$

donc $f \in \mathcal{F}$.

Définissons une telle fonction. Tout réel $t$ s'écrit de façon unique $t = m + u$ avec $m = \lfloor t \rfloor$ entier et $0 \leq u < 1$. On pose

- $f(m + u) = m + 1$ si $au$ est un entier multiple de $d$,
- $f(m + u) = m$ sinon.

La condition ne dépend que de $u$, qui ne change pas quand on ajoute $1$ à $t$ : on a bien $f(t + 1) = f(t) + 1$, et $f$ est à valeurs entières. Donc $f \in \mathcal{F}$.

(Quand $d = 0$, « multiple de $0$ » veut dire « égal à $0$ ».)

### Étape 5 : le graphe de f ne rencontre pas la droite y = qx

Supposons qu'il existe un réel $t = m + u$ (avec $m$ entier, $0 \leq u < 1$) tel que $f(t) = \frac{a}{b}\, t$, c'est-à-dire

$$b\, f(t) = a m + a u.$$

Comme $b f(t)$ et $am$ sont des entiers, $au$ est un entier. Deux cas.

- **Si $au$ n'est pas un multiple de $d$**, alors $f(t) = m$, et l'égalité devient $bm = am + au$, c'est-à-dire $au = (b - a) m = dm$. Donc $au$ est un multiple de $d$ : contradiction.
- **Si $au$ est un multiple de $d$**, alors $f(t) = m + 1$, et l'égalité devient $b(m + 1) = am + au$, c'est-à-dire
$$au = (b - a) m + b = dm + b.$$
Comme $au$ et $dm$ sont des multiples de $d$, $b$ est un multiple de $d$. Si $d = 0$, cela donne $b = 0$, impossible. Sinon $d$ divise $b$, donc aussi $a = b - d$, donc $d$ divise $1$ et $d = \pm 1$, ce qui est exclu.

Dans les deux cas on aboutit à une contradiction. Pour cette fonction $f \in \mathcal{F}$, il n'existe aucun réel $z$ tel que $f(z) = qz$ : **$q$ ne convient pas.**

### Conclusion

Les rationnels cherchés sont exactement les nombres $q = 1 + \frac{1}{k}$ avec $k$ entier non nul, autrement dit les fractions irréductibles $\frac{a}{b}$ telles que $a - b = 1$ ou $a - b = -1$.

*Exemple.* Pour $q = 1$ ($d = 0$), la fonction de l'étape 4 vaut $\lfloor t \rfloor + 1$ quand $t$ est entier et $\lfloor t \rfloor$ sinon : elle ne vérifie jamais $f(t) = t$. C'est un bon exercice de le vérifier directement.

## Going further

1. Les fonctions $x \mapsto x + c$ sont dans $\mathcal{F}$. Pourquoi est-ce une erreur de conclure, à partir de $f(f(y)) = f(y) + f(0)$, que ce sont les seules ? (Indice : sur quel ensemble de réels cette égalité donne-t-elle la valeur de $f$ ?)
