---
id: "10668"
title: "Les fonctions de Z[X] qui respectent la divisibilité"
grade: 12
theme: algebra
difficulty: 5
duration_min: 120
tags: [polynome, divisibilite, equation-fonctionnelle, division-euclidienne, racines, limite, hors-programme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Seniors, exercice 18 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf. Le corrigé écrit |g(k)| = |ĝ(Ck)| pour tout k, alors que ce n'est établi que pour les k où f(C) ne s'annule pas en kC ; il saute aussi l'équivalence entre a^n | b^n et a | b dans la réciproque. La solution ci-dessous suit le corrigé en comblant ces points."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

On note $\mathbb{Z}[X]$ l'ensemble des polynômes à coefficients entiers. Pour un polynôme $F$ et un entier $r$, on note $F(r)$ la valeur de $F$ en $r$.

Trouver toutes les fonctions $f : \mathbb{Z}[X] \to \mathbb{Z}[X]$ telles que, pour tous polynômes $P, Q \in \mathbb{Z}[X]$ et tout entier $r$,

$$P(r) \text{ divise } Q(r) \iff f(P)(r) \text{ divise } f(Q)(r)$$

## Hints

1. Si $|P(r)| = |Q(r)|$, montre que $|f(P)(r)| = |f(Q)(r)|$. Remarque qu'un polynôme $P$ et le polynôme constant égal à $P(r)$ prennent la même valeur en $r$ : tout va dépendre des images des constantes.
2. Montre que $f(Q)$ n'est le polynôme nul que si $Q$ est le polynôme nul.
3. Si $U(r)$ divise $V(r)$ pour une infinité d'entiers $r$, montre que $U$ divise $V$ parmi les polynômes à coefficients rationnels. Utilise la division euclidienne et compare les tailles.
4. Pour une constante $c \neq 0$, compare $f(c)$ et $f(X)$. Choisis une constante $C$ pour laquelle le degré de $f(C)$ est le plus grand possible.
5. Montre que $f(P) = \pm G(P) \cdot f(C)$ pour un polynôme fixe $G$, puis que $G$ est de la forme $bX^d$ en étudiant $\frac{G(kn)}{G(n)}$ quand $n$ devient grand.

## Solution

**Rappel.** On utilise quatre faits sur les polynômes et les entiers.

- Un polynôme non nul de degré $d$ a au plus $d$ racines. Donc un polynôme qui s'annule en une infinité de nombres est le polynôme nul, et le produit de deux polynômes non nuls n'est pas nul (les degrés s'ajoutent).
- **Division euclidienne des polynômes.** Si $V$ et $U \neq 0$ sont des polynômes à coefficients rationnels, il existe des polynômes $W$ et $R$ à coefficients rationnels tels que $V = UW + R$, avec $R = 0$ ou $\deg R < \deg U$. Elle se calcule comme une division posée entre entiers. Quand $R = 0$, on dit que $U$ **divise** $V$ dans $\mathbb{Q}[X]$.
- Si $\deg R < \deg U$, le quotient $\frac{R(r)}{U(r)}$ tend vers $0$ quand $r$ tend vers $+\infty$ ou vers $-\infty$. Donc $|R(r)| < |U(r)|$ dès que $|r|$ est assez grand.
- Pour des entiers $a$, $b$ et un entier $d \geqslant 1$, $a^d$ divise $b^d$ si et seulement si $a$ divise $b$. Si $a$ et $b$ sont non nuls, cela se voit sur les décompositions en facteurs premiers, où chaque exposant est multiplié par $d$. Si $a$ ou $b$ est nul, on vérifie directement.

Rappelons aussi que $0$ ne divise que $0$, et que tout entier divise $0$.

**Étape 0. Trois outils.**

*Remarque (R).* Si $|P(r)| = |Q(r)|$, alors $P(r)$ et $Q(r)$ se divisent l'un l'autre, donc $f(P)(r)$ et $f(Q)(r)$ aussi, et ces deux entiers ont la même valeur absolue. En particulier, un polynôme $P$ et le polynôme constant égal à $P(r)$ prennent la même valeur en $r$, donc

$$|f(P)(r)| = |f(P(r))(r)|$$

où $f(P(r))$ désigne l'image du polynôme constant $P(r)$.

*Lemme 1.* Soient $U \neq 0$ et $V$ dans $\mathbb{Z}[X]$. Si $U(r)$ divise $V(r)$ pour une infinité d'entiers $r$, alors $U$ divise $V$ dans $\mathbb{Q}[X]$. En particulier, si $V \neq 0$, alors $\deg U \leqslant \deg V$.

*Preuve.* Écrivons $V = UW + R$ comme dans le rappel, et soit $N \geqslant 1$ un dénominateur commun des coefficients de $W$ et $R$. Alors $NW$ et $NR$ sont à coefficients entiers, et $NV = U \cdot (NW) + NR$. Pour chacun des entiers $r$ de l'énoncé, $U(r)$ divise $NV(r)$ et $U(r) \cdot (NW)(r)$, donc il divise $NR(r)$. Si $R \neq 0$, alors pour $|r|$ assez grand, $NR(r) \neq 0$ et $|NR(r)| < |U(r)|$ par le rappel. Or un entier non nul divisible par $U(r)$ a une valeur absolue au moins égale à $|U(r)|$. Comme il y a des $r$ convenables de valeur absolue aussi grande qu'on veut, c'est impossible. Donc $R = 0$.

*Lemme 2.* Si $U$ et $V$ sont à coefficients rationnels et si $|U(r)| = |V(r)|$ pour une infinité d'entiers $r$, alors $U = V$ ou $U = -V$.

*Preuve.* Le polynôme $U^2 - V^2 = (U - V)(U + V)$ s'annule en une infinité de points, donc il est nul. Un produit de deux polynômes non nuls n'est pas nul, donc $U - V = 0$ ou $U + V = 0$.

**Étape 1. $f(Q) = 0$ seulement si $Q = 0$.**

Supposons $f(Q) = 0$ et $Q \neq 0$. Choisissons un entier $r$ tel que $Q(r) \neq 0$, et soit $P$ le polynôme constant égal à $|Q(r)| + 1$. En $r$, l'entier $f(P)(r)$ divise $0 = f(Q)(r)$, donc $P(r)$ divise $Q(r)$. Mais $|Q(r)| + 1$ ne peut pas diviser l'entier non nul $Q(r)$, qui est plus petit en valeur absolue. Donc $Q = 0$.

**Étape 2. Une constante $C$ privilégiée.**

Soit $c$ un entier non nul. Pour tout entier $k$, la constante $c$ divise $X$ en $r = kc$. Donc $f(c)(kc)$ divise $f(X)(kc)$ pour une infinité d'entiers $kc$. Comme $f(c)$ et $f(X)$ sont non nuls (étape 1), le lemme 1 donne $\deg f(c) \leqslant \deg f(X)$.

Les degrés des $f(c)$ sont donc bornés. Choisissons un entier $C \neq 0$ tel que $\deg f(C)$ soit le plus grand possible. Par le lemme 1, $f(C)$ divise $f(X)$ dans $\mathbb{Q}[X]$ : il existe $G$ à coefficients rationnels, non nul, tel que

$$f(X) = G \cdot f(C)$$

**Étape 3. $f(kC)$ est un multiple constant de $f(C)$.**

Soit $k$ un entier non nul. En tout entier $r$, la constante $C$ divise la constante $kC$, donc $f(C)(r)$ divise $f(kC)(r)$. Par le lemme 1, $f(kC) = W \cdot f(C)$ avec $W$ à coefficients rationnels. Comme $f(kC) \neq 0$ et $\deg f(kC) \leqslant \deg f(C)$ par le choix de $C$, le polynôme $W$ est une constante. Donc $f(kC) = g_k\, f(C)$ pour un rationnel $g_k$.

**Étape 4. $|g_k| = |G(kC)|$ pour presque tout $k$.**

En $r = kC$, la constante $kC$ et le polynôme $X$ prennent la même valeur. Par (R), $|f(kC)(kC)| = |f(X)(kC)|$, c'est-à-dire

$$|g_k| \cdot |f(C)(kC)| = |G(kC)| \cdot |f(C)(kC)|$$

Le polynôme $f(C)$ n'a qu'un nombre fini de racines. Donc, sauf pour un nombre fini de $k$, on peut simplifier : $|g_k| = |G(kC)|$.

**Étape 5. $f(X + a) = \pm\, G(X + a) \cdot f(C)$ pour tout entier $a$.**

Fixons un entier $a$. En $r = kC - a$, la constante $kC$ et le polynôme $X + a$ prennent la même valeur. Par (R) et les étapes 3 et 4, sauf pour un nombre fini de $k$,

$$|f(X + a)(kC - a)| = |f(kC)(kC - a)| = |G(kC)| \cdot |f(C)(kC - a)|$$

Avec $T = kC - a$, on a $G(kC) = G(T + a)$. Les polynômes $f(X + a)$ et $G(X + a) \cdot f(C)$ ont donc la même valeur absolue en une infinité d'entiers $T$. Par le lemme 2, $f(X + a) = \pm\, G(X + a) \cdot f(C)$.

**Étape 6. $f(n) = \pm\, G(n) \cdot f(C)$ pour tout entier $n$.**

Fixons un entier $n$, et soit $a$ un entier quelconque. En $r = a$, la constante $n$ et le polynôme $X + (n - a)$ prennent la même valeur $n$. Par (R) et l'étape 5 (appliquée à $n - a$),

$$|f(n)(a)| = |f(X + n - a)(a)| = |G(n)| \cdot |f(C)(a)|$$

C'est vrai pour tout entier $a$. Par le lemme 2, $f(n) = \pm\, G(n) \cdot f(C)$, où $G(n)$ est un nombre.

**Étape 7. $f(P) = \pm\, G(P) \cdot f(C)$ pour tout polynôme $P$.**

Pour tout entier $r$, par (R) puis l'étape 6 appliquée à l'entier $P(r)$,

$$|f(P)(r)| = |f(P(r))(r)| = |G(P(r))| \cdot |f(C)(r)|$$

Par le lemme 2, $f(P) = \pm\, G(P) \cdot f(C)$, où $G(P)$ est le polynôme obtenu en remplaçant $X$ par $P$ dans $G$.

**Étape 8. $G$ est de la forme $bX^d$.**

D'abord, si $m$ et $n$ sont des entiers non nuls avec $m$ divisant $n$, alors $\frac{G(n)}{G(m)}$ est un entier. En effet, $G(m) \neq 0$, car $f(m) \neq 0$. Choisissons un entier $r$ tel que $f(C)(r) \neq 0$. En $r$, la constante $m$ divise la constante $n$, donc l'entier $f(m)(r) = \pm\, G(m)\,f(C)(r)$ divise l'entier $f(n)(r) = \pm\, G(n)\,f(C)(r)$. Leur quotient, $\pm \frac{G(n)}{G(m)}$, est donc un entier.

Écrivons $G = bX^d + b_{d-1}X^{d-1} + \cdots + b_0$ avec $b \neq 0$. Fixons un entier $k \geqslant 2$. Pour tout entier $n \geqslant 1$, le nombre $u_n = \frac{G(kn)}{G(n)}$ est un entier, puisque $n$ divise $kn$. Quand $n$ tend vers $+\infty$, en divisant en haut et en bas par $n^d$, on voit que $u_n$ tend vers $\frac{bk^d}{b} = k^d$. Une suite d'entiers qui tend vers l'entier $k^d$ finit par être égale à $k^d$ (dès que $|u_n - k^d| < 1$). Donc le polynôme $G(kX) - k^dG(X)$ s'annule en une infinité d'entiers $n$, et il est nul. Son coefficient de $X^j$ est $(k^j - k^d)\,b_j$. Pour $j < d$, on a $k^j \neq k^d$, donc $b_j = 0$. Ainsi $G = bX^d$.

**Étape 9. La forme de $f$.**

Posons $A = b \cdot f(C)$. Par les étapes 7 et 8, pour tout polynôme $P$,

$$f(P) = \pm\, A \cdot P^d$$

où le signe peut dépendre de $P$. Avec $P = 1$, on obtient $A = \pm f(1)$, donc $A$ est à coefficients entiers. Avec les constantes $P = 2$ et $Q = 3$ : pour tout entier $r$, $2$ ne divise pas $3$, donc $A(r) \cdot 2^d$ ne divise pas $A(r) \cdot 3^d$. Si on avait $A(r) = 0$, ce serait « $0$ divise $0$ », qui est vrai. Si on avait $d = 0$, ce serait « $A(r)$ divise $A(r)$ », qui est vrai aussi. Donc $A$ ne s'annule en aucun entier, et $d \geqslant 1$.

**Étape 10. Réciproque.**

Soit $d \geqslant 1$, soit $A \in \mathbb{Z}[X]$ qui ne s'annule en aucun entier, et choisissons pour chaque $P$ un signe $\varepsilon_P \in \{-1, 1\}$. Posons $f(P) = \varepsilon_P\, A \cdot P^d$, qui est bien à coefficients entiers. Pour tout entier $r$, les signes ne changent pas la divisibilité, et on peut simplifier par $A(r) \neq 0$ :

$$f(P)(r) \text{ divise } f(Q)(r) \iff P(r)^d \text{ divise } Q(r)^d \iff P(r) \text{ divise } Q(r)$$

la dernière équivalence venant du rappel. La condition est vérifiée.

**Conclusion : les solutions sont les fonctions $f(P) = \pm\, A \cdot P^d$, où $d \geqslant 1$ est un entier, $A$ est un polynôme à coefficients entiers qui ne s'annule en aucun entier, et le signe $\pm$ peut être choisi librement pour chaque polynôme $P$.**
