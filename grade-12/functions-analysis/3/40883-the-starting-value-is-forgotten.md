---
id: "40883"
title: "Une suite qui oublie son premier terme"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 30
tags: [suites, limite, racine-carree, quantite-conjuguee, suite-geometrique, comparaison]
adapted_from: null
see_also: ["40881", "40882"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 1 « Étude d'une suite », partie 3 « Retour au cas général », questions 9 et 10"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

Pour tout réel $\alpha \geqslant 0$, on appelle *suite associée à $\alpha$* la suite $(u_n)$ définie par $u_0 = \alpha$ et

$$u_{n+1} = \frac{1}{n+1} + \sqrt{u_n} \quad \text{pour tout entier } n \geqslant 0.$$

On note $(t_n)$ la suite associée à $4$. On admet les résultats suivants, démontrés dans des parties précédentes :

- pour tout $\alpha \geqslant 0$, la suite associée à $\alpha$ vérifie $u_n \geqslant 1$ pour tout entier $n \geqslant 1$ ;
- la suite $(t_n)$ converge vers $1$, et $n\,(t_n - 1)$ tend vers $2$ quand $n$ tend vers $+\infty$.

Soit $\alpha \geqslant 0$ et $(u_n)$ la suite associée à $\alpha$.

1. La suite $(u_n)$ est-elle convergente ?
2. Déterminer la limite, quand $n$ tend vers $+\infty$, de
$$\frac{u_n - 1 - \frac{2}{n}}{\frac{1}{n}}.$$

## Hints

1. **Question 1.** Plutôt que d'étudier $(u_n)$ seule, comparez-la à $(t_n)$ : que devient l'écart $u_n - t_n$ d'un rang au suivant ?
2. **Question 1.** On a $u_{n+1} - t_{n+1} = \sqrt{u_n} - \sqrt{t_n}$. Multipliez et divisez par $\sqrt{u_n} + \sqrt{t_n}$, puis utilisez le fait que $u_n$ et $t_n$ valent au moins $1$.
3. **Question 1.** Vous devriez obtenir $\lvert u_{n+1} - t_{n+1} \rvert \leqslant \frac{1}{2} \lvert u_n - t_n \rvert$ pour $n \geqslant 1$. Qu'en déduire pour $\lvert u_n - t_n \rvert$ ?
4. **Question 2.** Écrivez le quotient comme $\left(n(t_n - 1) - 2\right) + n\,(u_n - t_n)$.

## Solution

**1.** Comparons $(u_n)$ à $(t_n)$. Pour tout $n \geqslant 0$,

$$u_{n+1} - t_{n+1} = \sqrt{u_n} - \sqrt{t_n} = \frac{u_n - t_n}{\sqrt{u_n} + \sqrt{t_n}}.$$

Pour $n \geqslant 1$, on a $u_n \geqslant 1$ et $t_n \geqslant 1$, donc $\sqrt{u_n} + \sqrt{t_n} \geqslant 2$, et

$$\lvert u_{n+1} - t_{n+1} \rvert \leqslant \frac{1}{2}\, \lvert u_n - t_n \rvert.$$

Posons $C = \lvert u_1 - t_1 \rvert$. Une récurrence immédiate donne, pour tout $n \geqslant 1$,

$$\lvert u_n - t_n \rvert \leqslant \frac{C}{2^{n-1}}.$$

Comme $\frac{1}{2^{n-1}}$ tend vers $0$ (suite géométrique de raison $\frac{1}{2}$), l'écart $u_n - t_n$ tend vers $0$. Or $t_n$ tend vers $1$, donc $u_n = t_n + (u_n - t_n)$ tend vers $1$.

Conclusion : oui, quel que soit $\alpha \geqslant 0$, la suite associée à $\alpha$ converge, et sa limite est $1$.

**2.** Pour $n \geqslant 1$,

$$\frac{u_n - 1 - \frac{2}{n}}{\frac{1}{n}} = n\,(u_n - 1) - 2 = (n\,(t_n - 1) - 2) + n\,(u_n - t_n).$$

Le premier terme tend vers $0$, car $n(t_n - 1)$ tend vers $2$.

Pour le second, $\lvert n\,(u_n - t_n) \rvert \leqslant \frac{2Cn}{2^n}$. Montrons que $\frac{n}{2^n}$ tend vers $0$. Pour cela, prouvons par récurrence que $2^n \geqslant n^2$ pour $n \geqslant 4$. C'est vrai pour $n = 4$, car $16 \geqslant 16$. Si $2^n \geqslant n^2$ avec $n \geqslant 4$, alors $2^{n+1} \geqslant 2n^2 = n^2 + n^2 \geqslant n^2 + 2n + 1 = (n+1)^2$, car $n^2 \geqslant 4n \geqslant 2n + 1$. Donc, pour $n \geqslant 4$,

$$0 \leqslant \frac{n}{2^n} \leqslant \frac{n}{n^2} = \frac{1}{n},$$

et $\frac{n}{2^n}$ tend vers $0$ par le théorème des gendarmes. Ainsi $n(u_n - t_n)$ tend vers $0$.

Conclusion : pour tout $\alpha \geqslant 0$, la limite cherchée est $0$.

**Bilan.** Le premier terme est vite oublié : deux suites associées se rapprochent l'une de l'autre au moins de moitié à chaque rang. Toutes convergent donc vers $1$, et toutes vérifient $u_n = 1 + \frac{2}{n} + \frac{r_n}{n}$ avec $r_n$ qui tend vers $0$, comme la suite partie de $4$.

## Going further

- Pour $\alpha = 0$, on a $C = \lvert 1 - 3 \rvert = 2$. Calculez à la calculatrice $u_n - t_n$ pour $n = 1, \ldots, 10$ et comparez au majorant $\frac{2}{2^{n-1}}$. Le facteur $\frac{1}{2}$ décrit-il bien la vitesse réelle ? Pourquoi peut-on s'y attendre, sachant que $\sqrt{u_n} + \sqrt{t_n}$ tend vers $2$ ?
- Pourquoi avoir besoin de la suite particulière partie de $4$ ? Parce qu'elle est décroissante et qu'on peut l'encadrer précisément. Une fois une suite bien comprise, la contraction ci-dessus transporte tout ce qu'on sait d'elle à toutes les autres.
