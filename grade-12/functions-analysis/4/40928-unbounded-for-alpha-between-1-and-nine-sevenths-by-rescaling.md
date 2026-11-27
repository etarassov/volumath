---
id: "40928"
title: "uₙ₊₂ = uₙ₊₁² − αuₙ⁴ n'est pas bornée pour 1 < α < 9/7, et le cas α = 2"
grade: 12
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [suite-recurrente, suite-non-bornee, suite-bornee, recurrence-double, changement-de-variable, puissances, parametre]
adapted_from: null
see_also: ["40925", "40926", "40927", "40929"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2025, mathématiques"
  reference: "cg-2025-s-sujet.pdf, exercice 2 « Suite positive et suite bornée », partie 2 « Propriété B », questions 7 (a et b) et 9. À la question 7 a), le sujet suppose u_n² < t(α)² u_{n+1} (inégalité stricte) ; on écrit ici ≤, car l'hypothèse admise ne donne qu'une inégalité large et c'est ce que l'itération de la question 7 b) produit."
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

Dans les questions 1 et 2, $\alpha$ est un réel de l'intervalle $]1 ; \frac{9}{7}[$ et
$(u_n)$ est la suite associée. Pour tout réel $x$, on pose $S_0(x) = x$, $S_1(x) = 1$, puis, pour
tout entier $k \geq 0$,
$$S_{k+2}(x) = S_{k+1}(x)^2 - \alpha S_k(x)^4 .$$
On **admet** qu'il existe un réel $t > 1$ tel que, pour tout réel $x \in [1 ; t]$,
$$1 < S_4(x) \leq S_3(x)^2 \leq t^2 S_4(x) .$$

1. Soit $n \geq 0$ un entier tel que $1 \leq u_{n+1} \leq u_n^2 \leq t^2 u_{n+1}$. On pose
   $x_n = \sqrt{\frac{u_n^2}{u_{n+1}}}$. Démontrer que pour tout entier $k \geq 1$,
   $$u_{n+k} = u_{n+1}^{2^{k-1}} \, S_k(x_n) .$$
2. Le réel $\alpha$ vérifie-t-il la propriété $\mathcal{B}$ ?
3. On admet les résultats suivants : les réels de $[0 ; 1]$ vérifient $\mathcal{B}$ ; les réels
   strictement négatifs, les réels strictement supérieurs à $2$ et les réels de
   $[\frac{9}{7} ; 2[$ ne la vérifient pas. Quels sont les réels $\alpha$ qui
   vérifient la propriété $\mathcal{B}$ ?

## Hints

1. **Question 1.** Avec $w = u_{n+1}$, exprimer $u_n^4$ à l'aide de $x_n$ et de $w$. Vérifier
   la formule pour $k = 1$ et $k = 2$.
2. **Question 1.** Faire une récurrence « à deux pas » : si la formule est vraie aux rangs $k$
   et $k + 1$, elle est vraie au rang $k + 2$.
3. **Question 2.** L'hypothèse de la question 1 est-elle vraie pour $n = 0$ ? Écrire alors
   $u_3$ et $u_4$ à l'aide de $S_3(x_0)$ et $S_4(x_0)$.
4. **Question 2.** Montrer que si l'hypothèse de la question 1 est vraie au rang $n$, elle est
   vraie au rang $n + 3$, et que $u_{n+4} > u_{n+1}^8$.
5. **Question 3.** Quelles valeurs de $\alpha$ ne sont couvertes par aucun résultat ?

## Solution

**1.** Posons $w = u_{n+1} \geq 1$. Comme $u_n^2 \geq w > 0$, le réel $x_n$ est bien défini, et
$x_n^2 = \frac{u_n^2}{w}$, donc $u_n^4 = x_n^4 w^2$. Montrons la formule par récurrence à deux
pas.

- $k = 1$ : $w^{2^0} S_1(x_n) = w = u_{n+1}$.
- $k = 2$ : $u_{n+2} = w^2 - \alpha u_n^4 = w^2 - \alpha x_n^4 w^2 = w^2 (1 - \alpha x_n^4)$,
  et $S_2(x) = S_1(x)^2 - \alpha S_0(x)^4 = 1 - \alpha x^4$. Donc $u_{n+2} = w^2 S_2(x_n)$.
- Si la formule est vraie aux rangs $k$ et $k + 1$ (avec $k \geq 1$), alors, comme
  $\left(w^{2^{k-1}}\right)^4 = w^{2^{k+1}}$ et $\left(w^{2^k}\right)^2 = w^{2^{k+1}}$,
  $$u_{n+k+2} = u_{n+k+1}^2 - \alpha u_{n+k}^4 = w^{2^{k+1}} \left( S_{k+1}(x_n)^2 - \alpha S_k(x_n)^4 \right) = w^{2^{k+1}} S_{k+2}(x_n) .$$

La formule est donc vraie pour tout $k \geq 1$.

**2.** Appelons $(H_n)$ la condition $1 \leq u_{n+1} \leq u_n^2 \leq t^2 u_{n+1}$.

*La condition $(H_0)$ est vraie* : $u_1 = 1$ et $u_0^2 = 1$, et $1 \leq 1 \leq 1 \leq t^2$.

*Si $(H_n)$ est vraie, alors $(H_{n+3})$ est vraie et $u_{n+4} > u_{n+1}^8$.* En divisant
$(H_n)$ par $u_{n+1} > 0$, on obtient $1 \leq x_n^2 \leq t^2$, donc $x_n \in [1 ; t]$. Posons
$w = u_{n+1} \geq 1$. D'après la question 1,
$$u_{n+3} = w^4 S_3(x_n) \qquad \text{et} \qquad u_{n+4} = w^8 S_4(x_n) .$$
L'encadrement admis, appliqué en $x_n$, donne alors :

- $u_{n+4} = w^8 S_4(x_n) > w^8 \geq 1$, car $S_4(x_n) > 1$ et $w \geq 1$ ;
- $u_{n+3}^2 = w^8 S_3(x_n)^2 \geq w^8 S_4(x_n) = u_{n+4}$ ;
- $u_{n+3}^2 = w^8 S_3(x_n)^2 \leq w^8 t^2 S_4(x_n) = t^2 u_{n+4}$.

C'est exactement $(H_{n+3})$, et on a vu que $u_{n+4} > u_{n+1}^8$.

*Conclusion.* Par récurrence, $(H_{3j})$ est vraie pour tout entier $j$. Posons
$y_j = u_{3j+1}$. Alors $y_0 = 1$ et $y_{j+1} > y_j^8$ pour tout $j$. En particulier
$y_1 > 1$, et comme $y_j \geq 1$ entraîne $y_j^8 \geq y_j$, la suite $(y_j)$ est croissante. Pour
$j \geq 1$, on a donc $y_j \geq y_1$ et
$$y_{j+1} > y_j^8 = y_j \times y_j^7 \geq y_j \times y_1 .$$
Par récurrence, $y_j \geq y_1^j$ pour tout $j \geq 1$. Comme $y_1 > 1$, $y_1^j$ tend vers
$+\infty$, donc la suite $(u_n)$ n'est pas bornée.

**Conclusion :** aucun réel $\alpha \in ]1 ; \frac{9}{7}[$ ne vérifie $\mathcal{B}$.

**3.** Les intervalles $]-\infty ; 0[$, $[0 ; 1]$, $]1 ; \frac{9}{7}[$,
$[\frac{9}{7} ; 2[$ et $]2 ; +\infty[$ recouvrent tous les réels sauf $2$. Il reste
donc à étudier $\alpha = 2$. Alors $u_2 = 1 - 2 = -1$ et $u_3 = (-1)^2 - 2 \times 1^4 = -1$. Si
$u_n = u_{n+1} = -1$, alors $u_{n+2} = 1 - 2 = -1$. Par récurrence, $u_n = -1$ pour tout
$n \geq 2$ : la suite est bornée.

**Conclusion :** $\alpha$ vérifie la propriété $\mathcal{B}$ si et seulement si
$\alpha \in [0 ; 1]$ ou $\alpha = 2$.

**Bilan.** Pour $1 < \alpha < \frac{9}{7}$, en admettant l'encadrement de $S_3$ et $S_4$, la
suite associée n'est pas bornée : tous les trois rangs, le terme $u_{3j+1}$ fait plus que se
mettre à la puissance $8$. Avec les autres cas, admis à la question 3, la suite associée à $\alpha$ est bornée
exactement pour $\alpha \in [0 ; 1]$ et pour la valeur isolée $\alpha = 2$.

## Going further

- L'encadrement admis est démontré dans l'exercice 40929, avec le réel $t > 0$ tel que
  $t^4 = \frac{\alpha + 2}{3}$.
- Pourquoi la suite $(S_k(x))$ joue-t-elle le rôle de la suite $(u_n)$ « remise à l'échelle » ?
  Si l'on remplace $u_n$ par $\lambda u_n$ et $u_{n+1}$ par $\lambda^2 u_{n+1}$, que devient
  $u_{n+2}$ ?
- Pour le club : aucune question intermédiaire du sujet ne traite le cas $\alpha = 2$. L'oublier
  est le piège naturel de la question finale.
