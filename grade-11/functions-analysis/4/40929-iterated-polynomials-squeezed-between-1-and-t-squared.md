---
id: "40929"
title: "Des polynômes itérés encadrés : 1 < S₄ ≤ S₃² ≤ t²S₄"
grade: 11
theme: functions-analysis
difficulty: 4
duration_min: 60
tags: [polynome, encadrement, majoration, minoration, second-degre, variations, changement-de-variable, parametre]
adapted_from: null
see_also: ["40925", "40926", "40927", "40928"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2025, mathématiques"
  reference: "cg-2025-s-sujet.pdf, exercice 2 « Suite positive et suite bornée », partie 2 « Propriété B », question 8 (a à f)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2025-s-sujet.pdf"
---

## Statement

Soit $\alpha$ un réel de l'intervalle $]1 ; \frac{9}{7}[$. Pour tout réel $x$, on pose
$S_0(x) = x$, $S_1(x) = 1$, puis, pour tout entier $k \geq 0$,
$$S_{k+2}(x) = S_{k+1}(x)^2 - \alpha S_k(x)^4 .$$
On note $t$ l'unique réel positif tel que $t^4 = \frac{\alpha + 2}{3}$. Le but est de démontrer
que $t > 1$ et que, pour tout réel $x \in [1 ; t]$,
$$1 < S_4(x) \leq S_3(x)^2 \leq t^2 S_4(x) .$$

1. Démontrer que $S_4(x) \leq S_3(x)^2$ pour tout réel $x$.
2. Démontrer que $0 < S_2(x)^2 \leq \frac{7(\alpha - 1)}{12}$ pour tout réel $x \in [1 ; t]$.
3. Démontrer que $1 < S_4(x)$ pour tout réel $x \in [1 ; t]$.
4. Démontrer que, lorsque $x = t$,
   $$S_3(x)^2 \leq \frac{2 + x^4}{3} \, S_4(x) \leq x^2 S_4(x) .$$
5. Étudier les variations de la fonction $x \mapsto \frac{S_4(x)}{S_3(x)^2}$ sur l'intervalle
   $[1 ; t]$.
6. Conclure.

## Hints

1. **Pour tout l'exercice.** Écrire $S_2$, $S_3$ et $S_4$. Poser $s = S_2(x)^2$ : alors
   $S_3 = s - \alpha$ et $S_4 = (s - \alpha)^2 - \alpha s^2$.
2. **Question 2.** Encadrer $x^4$, puis $1 - \alpha x^4$. On trouvera que
   $1 - \alpha t^4 = -\frac{(\alpha - 1)(\alpha + 3)}{3}$.
3. **Question 2.** L'inégalité demandée revient à $(\alpha - 1)(\alpha + 3)^2 \leq \frac{21}{4}$.
   Elle est très juste : calculer exactement la valeur en $\alpha = \frac{9}{7}$.
4. **Question 3.** Écrire $S_4 - 1 = (\alpha - 1)\left(\alpha + 1 - s^2 - \frac{2\alpha s}{\alpha - 1}\right)$
   et utiliser la question 2.
5. **Question 4.** Pour la seconde inégalité, factoriser $t^4 - 3t^2 + 2$.
6. **Question 4.** Pour la première, la ramener à
   $\alpha(\alpha + 8)s^2 \leq (\alpha - 1)(\alpha - s)^2$ avec $s = S_2(t)^2$. Poser
   $\beta = \alpha - 1 < \frac{2}{7}$ et majorer grossièrement le membre de gauche par
   $50\beta^3$.
7. **Question 5.** Écrire $\frac{S_4}{S_3^2} = 1 - \alpha\left(\frac{s}{\alpha - s}\right)^2$
   et regarder comment varie $s$ quand $x$ augmente.

## Solution

**Préliminaires.** On a $S_2(x) = 1 - \alpha x^4$, $S_3(x) = S_2(x)^2 - \alpha$ et
$S_4(x) = S_3(x)^2 - \alpha S_2(x)^4$. Avec $s = S_2(x)^2 \geq 0$ :
$$S_3 = s - \alpha, \qquad S_4 = (s - \alpha)^2 - \alpha s^2 .$$
Comme $1 < \alpha < \frac{9}{7}$, on a $1 < t^4 = \frac{\alpha + 2}{3} < \frac{23}{21}$, donc
$1 < t^2 < 2$ et $t > 1$. Dans toute la suite, on note $\beta = \alpha - 1$, avec
$0 < \beta < \frac{2}{7}$.

**1.** $S_4(x) = S_3(x)^2 - \alpha S_2(x)^4 \leq S_3(x)^2$, car $\alpha > 0$ et
$S_2(x)^4 \geq 0$.

**2.** Pour $x \in [1 ; t]$, on a $1 \leq x^4 \leq t^4 = \frac{\alpha + 2}{3}$, donc
$$1 - \frac{\alpha(\alpha + 2)}{3} \leq S_2(x) = 1 - \alpha x^4 \leq 1 - \alpha < 0 .$$
Or $\frac{\alpha(\alpha + 2)}{3} - 1 = \frac{\alpha^2 + 2\alpha - 3}{3} = \frac{(\alpha - 1)(\alpha + 3)}{3}$.
Donc $S_2(x)$ est strictement négatif, et $0 < S_2(x)^2 \leq \frac{(\alpha - 1)^2(\alpha + 3)^2}{9}$.

Il suffit donc que $\frac{(\alpha - 1)^2(\alpha + 3)^2}{9} \leq \frac{7(\alpha - 1)}{12}$, ce
qui, en divisant par $\alpha - 1 > 0$ et en multipliant par $9$, s'écrit
$(\alpha - 1)(\alpha + 3)^2 \leq \frac{21}{4}$. Le membre de gauche est le produit de deux
facteurs positifs qui augmentent avec $\alpha$, donc, pour $\alpha < \frac{9}{7}$,
$$(\alpha - 1)(\alpha + 3)^2 < \frac{2}{7} \times \left(\frac{30}{7}\right)^2 = \frac{1800}{343} = \frac{7200}{1372} < \frac{7203}{1372} = \frac{21}{4} .$$

**Conclusion :** $0 < S_2(x)^2 \leq \frac{7(\alpha - 1)}{12}$ pour $x \in [1 ; t]$.

**3.** Soit $x \in [1 ; t]$ et $s = S_2(x)^2$, de sorte que $0 < s \leq \frac{7\beta}{12}$. On a
$$S_4 - 1 = (1 - \alpha)s^2 - 2\alpha s + \alpha^2 - 1 = \beta \left(\alpha + 1 - s^2 - \frac{2\alpha s}{\beta}\right) .$$
D'après la question 2, $\frac{2\alpha s}{\beta} \leq \frac{7\alpha}{6}$ et
$s^2 \leq \frac{49\beta^2}{144} < \frac{49}{144} \times \frac{4}{49} = \frac{1}{36}$. Donc
$$\alpha + 1 - s^2 - \frac{2\alpha s}{\beta} > 1 - \frac{\alpha}{6} - \frac{1}{36} > 1 - \frac{3}{14} - \frac{1}{36} = \frac{191}{252} > 0 ,$$
en utilisant $\frac{\alpha}{6} < \frac{9}{42} = \frac{3}{14}$. Comme $\beta > 0$, on obtient
$S_4(x) > 1$.

**4.** Ici $x = t$, et $\frac{2 + t^4}{3} = \frac{1}{3}\left(2 + \frac{\alpha + 2}{3}\right) = \frac{\alpha + 8}{9}$.

*Seconde inégalité.* Comme $S_4(t) > 1 > 0$ (question 3), il suffit que
$\frac{2 + t^4}{3} \leq t^2$, c'est-à-dire $t^4 - 3t^2 + 2 \leq 0$, soit
$(t^2 - 1)(t^2 - 2) \leq 0$. C'est vrai puisque $1 < t^2 < 2$.

*Première inégalité.* Avec $s = S_2(t)^2$, elle s'écrit
$9(s - \alpha)^2 \leq (\alpha + 8)\left((s - \alpha)^2 - \alpha s^2\right)$, soit
$$\alpha(\alpha + 8)\, s^2 \leq (\alpha - 1)(\alpha - s)^2 . \qquad (\star)$$
D'après le calcul de la question 2, $S_2(t) = -\frac{\beta(\alpha + 3)}{3}$, donc
$s = \frac{\beta^2(\alpha + 3)^2}{9}$ et $s^2 = \frac{\beta^4(\alpha + 3)^4}{81}$. En divisant par
$\beta > 0$, $(\star)$ équivaut à
$$\frac{\alpha(\alpha + 8)(\alpha + 3)^4}{81} \, \beta^3 \leq (\alpha - s)^2 .$$

- Membre de gauche : pour $\alpha < \frac{9}{7}$,
  $\alpha(\alpha + 8)(\alpha + 3)^4 < \frac{9}{7} \times \frac{65}{7} \times \left(\frac{30}{7}\right)^4 = \frac{473\,850\,000}{117\,649} < 4050 = 81 \times 50$.
  Donc le membre de gauche est inférieur à $50\beta^3 < 50 \times \frac{4}{49}\,\beta = \frac{200}{49}\beta$.
- Membre de droite : d'après la question 2, $s \leq \frac{7\beta}{12}$, donc
  $\alpha - s \geq 1 + \beta - \frac{7\beta}{12} = 1 + \frac{5\beta}{12} > 0$, et
  $(\alpha - s)^2 \geq 1 + \frac{5\beta}{6}$.

Il suffit donc que $\frac{200}{49}\beta \leq 1 + \frac{5}{6}\beta$, c'est-à-dire
$\frac{955}{294}\beta \leq 1$. Or $\frac{955}{294}\beta < \frac{955}{294} \times \frac{2}{7} = \frac{955}{1029} < 1$.

**Conclusion :** $S_3(t)^2 \leq \frac{2 + t^4}{3} S_4(t) \leq t^2 S_4(t)$.

**5.** Pour $x \in [1 ; t]$, on a $s = S_2(x)^2 \leq \frac{7\beta}{12} < \frac{7}{12} \times \frac{2}{7} = \frac{1}{6}$,
donc $S_3(x) = s - \alpha < 0$ ne s'annule pas, et
$$\frac{S_4(x)}{S_3(x)^2} = \frac{(\alpha - s)^2 - \alpha s^2}{(\alpha - s)^2} = 1 - \alpha \left(\frac{s}{\alpha - s}\right)^2 .$$
Quand $x$ augmente dans $[1 ; t]$, $\alpha x^4 - 1$ augmente et reste positif (il vaut au moins
$\alpha - 1$), donc $s = (\alpha x^4 - 1)^2$ augmente. Ensuite
$\frac{s}{\alpha - s} = \frac{\alpha}{\alpha - s} - 1$ augmente avec $s$ (le dénominateur
$\alpha - s$ diminue en restant positif), et ce nombre est positif, donc son carré augmente aussi.

**Conclusion :** la fonction $x \mapsto \frac{S_4(x)}{S_3(x)^2}$ est décroissante sur
$[1 ; t]$.

**6.** Soit $x \in [1 ; t]$. D'après la question 5, puis la question 4,
$$\frac{S_4(x)}{S_3(x)^2} \geq \frac{S_4(t)}{S_3(t)^2} \geq \frac{1}{t^2} ,$$
donc $S_3(x)^2 \leq t^2 S_4(x)$. Avec les questions 1 et 3, on obtient pour tout $x \in [1 ; t]$
$$1 < S_4(x) \leq S_3(x)^2 \leq t^2 S_4(x) ,$$
et on a vu que $t > 1$.

**Bilan.** Pour $1 < \alpha < \frac{9}{7}$ et $t > 0$ tel que $t^4 = \frac{\alpha + 2}{3}$, on a
démontré que $t > 1$ et que $1 < S_4(x) \leq S_3(x)^2 \leq t^2 S_4(x)$ pour tout $x$ de
$[1 ; t]$. La borne $\frac{9}{7}$ est presque atteinte à la question 2 : c'est là que se
joue la limite de la méthode.

## Going further

- D'où vient cet encadrement ? Pour la suite $u_0 = u_1 = 1$, $u_{n+2} = u_{n+1}^2 - \alpha u_n^4$,
  on a $u_k = S_k(1)$, et l'encadrement permet de montrer que $u_{3j+1}$ fait plus que se mettre
  à la puissance $8$ à chaque étape : la suite n'est pas bornée. Voir l'exercice 40928.
- À la calculatrice, tracer $x \mapsto t^2 S_4(x) - S_3(x)^2$ sur $[1 ; t]$ pour
  $\alpha = \text{1,28}$. L'écart reste-t-il grand ?
