---
id: "40924"
title: "Des écarts de somme bornée : la suite converge"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 40
tags: [suites, convergence, suite-croissante, valeur-absolue, majoration, suite-geometrique, logarithme]
adapted_from: null
see_also: ["40921", "40922", "40923"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2025, mathématiques"
  reference: "cg-2025-s-sujet.pdf, exercice 1 « Addition sur une parabole », partie 2, questions 8 et 9. Les résultats des questions 4 a) et 7 sont rappelés dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2025-s-sujet.pdf"
---

## Statement

**Partie A.** Soit $(u_n)$ une suite réelle. On pose $v_0 = 0$ et, pour tout $n \geq 1$,
$$v_n = \sum_{k=0}^{n-1} |u_{k+1} - u_k| .$$
On suppose que la suite $(v_n)$ est majorée, et on veut démontrer que la suite $(u_n)$ converge.

1. Démontrer que la suite $(v_n)$ converge.
2. Démontrer que pour tout entier naturel $n$,
   $$0 \leq u_{n+1} - u_n + |u_{n+1} - u_n| \leq 2|u_{n+1} - u_n| .$$
3. En déduire que la suite $(u_n + v_n)$ converge.
4. Conclure.

**Partie B.** Tout rationnel non nul $x$ s'écrit d'une seule façon $x = \frac{a}{b}$ avec $a$,
$b$ entiers, $b \geq 1$ et $\mathrm{PGCD}(a, b) = 1$ ; on pose $H(x) = \max(|a|, |b|)$ et
$h(x) = \ln H(x)$. Pour $x \neq 0$, on pose $D(x) = \frac{x^2 - 1}{2x}$. On admet les deux
résultats suivants.

- La suite définie par $x_0 = 3$ et $x_{n+1} = D(x_n)$ est bien définie : tous ses termes sont
  des rationnels non nuls.
- Il existe deux réels $m$ et $M$ tels que, pour tout rationnel $x \neq 0$,
  $$m + h(D(x)) \leq 2h(x) \leq h(D(x)) + M .$$

5. Pour tout entier naturel $n$, on pose $t_n = \frac{h(x_n)}{2^n}$. Démontrer que la suite
   $(t_n)$ converge.

## Hints

1. **Question 1.** Quel est le sens de variation de $(v_n)$ ?
2. **Question 2.** Pour un réel $d$, comparer $-|d|$, $d$ et $|d|$.
3. **Question 3.** Calculer $(u_{n+1} + v_{n+1}) - (u_n + v_n)$, puis écrire
   $u_n + v_n - u_0$ comme une somme.
4. **Question 4.** $u_n = (u_n + v_n) - v_n$.
5. **Question 5.** Calculer $t_{n+1} - t_n$ et le majorer en valeur absolue grâce au résultat
   admis.
6. **Question 5.** Appliquer la partie A à la suite $(t_n)$ : il faut majorer
   $\sum_{k=0}^{n-1} |t_{k+1} - t_k|$, et on reconnaît une somme géométrique.

## Solution

**1.** Pour tout $n$, $v_{n+1} - v_n = |u_{n+1} - u_n| \geq 0$, donc $(v_n)$ est croissante. Elle
est majorée par hypothèse. Une suite croissante et majorée converge : $(v_n)$ converge vers une
limite $V$, et $v_n \leq V$ pour tout $n$.

**2.** Posons $d = u_{n+1} - u_n$. On a toujours $-|d| \leq d \leq |d|$. En ajoutant $|d|$, on
obtient $0 \leq d + |d| \leq 2|d|$, ce qui est l'inégalité demandée.

**3.** Pour tout $n$,
$$(u_{n+1} + v_{n+1}) - (u_n + v_n) = (u_{n+1} - u_n) + |u_{n+1} - u_n| \geq 0$$
d'après la question 2, donc la suite $(u_n + v_n)$ est croissante. En additionnant ces égalités
pour $k = 0$ à $n - 1$ (la somme se télescope), et en utilisant l'autre moitié de la question 2 :
$$u_n + v_n - (u_0 + v_0) = \sum_{k=0}^{n-1} ((u_{k+1} - u_k) + |u_{k+1} - u_k|) \leq 2\sum_{k=0}^{n-1} |u_{k+1} - u_k| = 2v_n .$$
Donc $u_n + v_n \leq u_0 + 2v_n \leq u_0 + 2V$. La suite $(u_n + v_n)$ est croissante et majorée,
donc elle converge.

**4.** On a $u_n = (u_n + v_n) - v_n$, différence de deux suites convergentes.

**Conclusion :** la suite $(u_n)$ converge.

**5.** Posons $C = \max(-m, M)$. L'inégalité admise donne
$h(D(x)) - 2h(x) \leq -m \leq C$ et $2h(x) - h(D(x)) \leq M \leq C$, donc, pour tout rationnel
$x \neq 0$,
$$|h(D(x)) - 2h(x)| \leq C .$$
En particulier $C \geq 0$. Pour tout $n$, $x_n$ est un rationnel non nul et $x_{n+1} = D(x_n)$,
donc
$$|t_{n+1} - t_n| = \left| \frac{h(x_{n+1})}{2^{n+1}} - \frac{2h(x_n)}{2^{n+1}} \right| = \frac{|h(x_{n+1}) - 2h(x_n)|}{2^{n+1}} \leq \frac{C}{2^{n+1}} .$$
Par suite, pour tout $n \geq 1$,
$$\sum_{k=0}^{n-1} |t_{k+1} - t_k| \leq C\left(\frac{1}{2} + \frac{1}{4} + \cdots + \frac{1}{2^n}\right) = C\left(1 - \frac{1}{2^n}\right) \leq C .$$
Ces sommes sont donc majorées, et la partie A, appliquée à la suite $(t_n)$, montre que $(t_n)$
converge.

**Bilan.** Une suite dont la somme des écarts successifs $|u_{k+1} - u_k|$ reste bornée
converge. Appliqué aux hauteurs des rationnels $x_0 = 3$, $x_{n+1} = \frac{x_n^2 - 1}{2x_n}$, cela
montre que $\frac{\ln H(x_n)}{2^n}$ a une limite : le logarithme de la hauteur double à chaque
étape, à une erreur bornée près.

## Going further

- À la calculatrice, on trouve $t_0 \approx \text{1,10}$, $t_1 \approx \text{0,69}$, puis les
  termes se stabilisent vers $\text{0,80}$ environ. Les spécialistes appellent cette limite la
  « hauteur canonique » du point de départ.
- En notant $L$ la limite de $(t_n)$, montrer que $|t_n - L| \leq \frac{C}{2^n}$ pour tout $n$.
- Les deux résultats admis sont démontrés dans les exercices 40922 et 40923 (avec $m = -\ln 2$
  et $M = \ln 4$).
