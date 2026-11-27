---
id: "40927"
title: "uₙ₊₂ = uₙ₊₁² − αuₙ⁴ n'est pas bornée pour 9/7 ≤ α < 2"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 60
tags: [suite-recurrente, suite-non-bornee, polynome, derivee, variations, signe, raisonnement-par-l-absurde, limite, parametre]
adapted_from: null
see_also: ["40925", "40926", "40928", "40929"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2025, mathématiques"
  reference: "cg-2025-s-sujet.pdf, exercice 2 « Suite positive et suite bornée », partie 2 « Propriété B », question 6 (a à e)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2025-s-sujet.pdf"
---

## Statement

Pour tout réel $\alpha$, on appelle *suite associée à $\alpha$* la suite $(u_n)$ définie par
$u_0 = u_1 = 1$ et, pour tout entier $n \geq 0$,
$$u_{n+2} = u_{n+1}^2 - \alpha u_n^4 .$$
On dit que $\alpha$ *vérifie la propriété $\mathcal{B}$* si la suite associée à $\alpha$ est
bornée.

Soient $\alpha$ un réel de l'intervalle $[\frac{9}{7} ; 2[$ et $(u_n)$ la suite
associée.

1. Pour tout réel $x$, on pose $P(x) = \alpha x^3 - x - 1$ et
   $Q(x) = 8x^3 - 116x^2 + 494x - 441$. Démontrer que
   $$P\left(\frac{11 - 2\alpha}{7}\right) = \frac{(2 - \alpha)\, Q(\alpha)}{7^3} .$$
2. Étudier les variations de la fonction $P$ sur l'intervalle $[1 ; +\infty[$ et de la fonction
   $Q$ sur l'intervalle $[1 ; 2]$.
3. Quel est le signe de $Q(\alpha)$ ?
4. Comparer les réels $\frac{11 - 2\alpha}{7}$ et $-u_3$.
5. Le réel $\alpha$ vérifie-t-il la propriété $\mathcal{B}$ ?

## Hints

1. **Question 1.** C'est un calcul : développer les deux membres, ou multiplier
   $P\left(\frac{11 - 2\alpha}{7}\right)$ par $7^3$ et développer.
2. **Question 3.** Calculer $Q\left(\frac{9}{7}\right)$.
3. **Question 4.** Calculer $u_3$ en fonction de $\alpha$, puis factoriser la différence. On
   pourra vérifier que $\frac{9}{7}$ et $2$ sont des racines.
4. **Question 5.** Poser $c = -u_3$. Les questions précédentes donnent $P(c) > 0$, c'est-à-dire
   $\alpha c^4 - c^2 > c$. Montrer que $\alpha X^4 - X^2 > X$ pour tout $X \geq c$.
5. **Question 5.** Raisonner par l'absurde : si la suite est bornée, la suite
   $v_n = \max(|u_0|, \ldots, |u_n|)$ est croissante et majorée, donc converge vers un réel $V$.
6. **Question 5.** Choisir $n$ tel que $\alpha v_n^4 - V^2 > V$, puis $k \leq n$ tel que
   $|u_k| = v_n$, et minorer $|u_{k+2}|$.

## Solution

**1.** On multiplie par $7^3$. En posant $y = 11 - 2\alpha$,
$$7^3 \, P\left(\frac{y}{7}\right) = \alpha y^3 - 49y - 343 .$$
On développe $y^3 = (11 - 2\alpha)^3 = 1331 - 726\alpha + 132\alpha^2 - 8\alpha^3$, donc
$$\alpha y^3 - 49y - 343 = -8\alpha^4 + 132\alpha^3 - 726\alpha^2 + 1331\alpha - 539 + 98\alpha - 343 ,$$
soit $-8\alpha^4 + 132\alpha^3 - 726\alpha^2 + 1429\alpha - 882$. De l'autre côté,
$$(2 - \alpha)(8\alpha^3 - 116\alpha^2 + 494\alpha - 441) = 16\alpha^3 - 232\alpha^2 + 988\alpha - 882 - 8\alpha^4 + 116\alpha^3 - 494\alpha^2 + 441\alpha ,$$
soit aussi $-8\alpha^4 + 132\alpha^3 - 726\alpha^2 + 1429\alpha - 882$. D'où l'égalité.

**2.** $P'(x) = 3\alpha x^2 - 1$. Pour $x \geq 1$, $P'(x) \geq 3\alpha - 1 > 0$ puisque
$\alpha \geq \frac{9}{7}$. Donc $P$ est strictement croissante sur $[1 ; +\infty[$.

$Q'(x) = 24x^2 - 232x + 494 = 2(12x^2 - 116x + 247)$. Le discriminant de
$12x^2 - 116x + 247$ est $116^2 - 4 \times 12 \times 247 = 13456 - 11856 = 1600 = 40^2$, et ses
racines sont $\frac{116 - 40}{24} = \frac{19}{6}$ et $\frac{116 + 40}{24} = \frac{13}{2}$. Sur
$[1 ; 2]$, on est avant la plus petite racine $\frac{19}{6}$, donc $Q'(x) > 0$ : $Q$ est
strictement croissante sur $[1 ; 2]$.

**3.** On calcule $Q\left(\frac{9}{7}\right)$ en mettant tout sur le dénominateur
$7^3 = 343$ : les quatre termes deviennent $\frac{8 \times 729}{343} = \frac{5832}{343}$,
$\frac{116 \times 81 \times 7}{343} = \frac{65772}{343}$,
$\frac{494 \times 9 \times 49}{343} = \frac{217854}{343}$ et
$\frac{441 \times 343}{343} = \frac{151263}{343}$. Donc
$$Q\left(\frac{9}{7}\right) = \frac{5832 - 65772 + 217854 - 151263}{343} = \frac{6651}{343} > 0 .$$
Comme $Q$ est croissante sur $[1 ; 2]$ et $\alpha \geq \frac{9}{7}$, on a
$Q(\alpha) \geq Q\left(\frac{9}{7}\right) > 0$.

**Conclusion :** $Q(\alpha) > 0$.

**4.** On a $u_2 = 1 - \alpha$ et $u_3 = (1 - \alpha)^2 - \alpha = \alpha^2 - 3\alpha + 1$. Donc
$$\frac{11 - 2\alpha}{7} - (-u_3) = \frac{11 - 2\alpha + 7\alpha^2 - 21\alpha + 7}{7} = \frac{7\alpha^2 - 23\alpha + 18}{7} = \frac{(7\alpha - 9)(\alpha - 2)}{7} .$$
Pour $\frac{9}{7} \leq \alpha < 2$, on a $7\alpha - 9 \geq 0$ et $\alpha - 2 < 0$, donc cette
différence est négative ou nulle.

**Conclusion :** $\frac{11 - 2\alpha}{7} \leq -u_3$, avec égalité seulement pour
$\alpha = \frac{9}{7}$.

**5.** Posons $c = -u_3$ et $x_0 = \frac{11 - 2\alpha}{7}$. Comme $\alpha \leq 2$,
$x_0 \geq \frac{11 - 4}{7} = 1$, et d'après la question 4, $c \geq x_0 \geq 1$. Comme $P$ est
croissante sur $[1 ; +\infty[$, avec les questions 1 et 3,
$$P(c) \geq P(x_0) = \frac{(2 - \alpha)Q(\alpha)}{343} > 0 .$$
Pour tout réel $X \geq c$, on a donc $P(X) \geq P(c) > 0$, et comme $X > 0$,
$$X \, P(X) = \alpha X^4 - X^2 - X > 0 , \qquad \text{c'est-à-dire} \qquad \alpha X^4 - X^2 > X . \qquad (\star)$$

Supposons par l'absurde que la suite $(u_n)$ est bornée. Posons
$v_n = \max(|u_0|, |u_1|, \ldots, |u_n|)$. La suite $(v_n)$ est croissante et majorée, donc
elle converge vers un réel $V$, et $|u_k| \leq v_k \leq V$ pour tout $k$. En particulier
$V \geq |u_3| = c$, donc d'après $(\star)$, $\alpha V^4 - V^2 > V$.

Comme $\alpha v_n^4 - V^2$ tend vers $\alpha V^4 - V^2$, qui est strictement plus grand que
$V$, il existe un rang $n$ tel que $\alpha v_n^4 - V^2 > V$. Soit $k \leq n$ un indice tel que
$|u_k| = v_n$. Alors
$$|u_{k+2}| = |u_{k+1}^2 - \alpha u_k^4| \geq \alpha u_k^4 - u_{k+1}^2 \geq \alpha v_n^4 - V^2 > V .$$
C'est absurde, puisque $|u_{k+2}| \leq V$.

**Conclusion :** aucun réel $\alpha \in [\frac{9}{7} ; 2[$ ne vérifie la propriété
$\mathcal{B}$.

**Bilan.** Pour $\frac{9}{7} \leq \alpha < 2$, la suite n'est pas bornée. Les calculs sur $P$
et $Q$ servent à prouver que $c = |u_3|$ vérifie $\alpha c^4 - c^2 > c$ : à partir de là, le
terme $\alpha u_k^4$ l'emporte toujours, deux rangs plus tard, sur le plus grand terme déjà
atteint.

## Going further

- Pour $\alpha = 2$, la question 4 donne une égalité de l'autre côté ($u_3 = -1$). Calculer la
  suite associée à $2$ : est-elle bornée ?
- Pour $\alpha > 2$, le même raisonnement marche avec $c = 1$ : voir l'exercice 40926. Pour
  $\alpha$ proche de $1$ (par exemple $\alpha = \text{1,2}$), on a $\alpha c^3 < c + 1$ et il
  faut une autre idée : voir les exercices 40928 et 40929.
