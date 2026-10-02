---
id: "7957"
title: "Une pile de fractions sans fin"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [fraction-continue, suite-recurrente, limite, racine-carree-de-2]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 42, niveau 1 (énoncé p. 282, solution p. 297, résolue par Maël Laoufi et Thibaut Desort)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

On s'intéresse à la « fraction continue »

$$1 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2 + \cdots}}}$$

où le motif « $2 + \dfrac1{\phantom{x}}$ » se répète indéfiniment.

Pour lui donner un sens, on définit la suite $(u_n)$ par

$$u_1 = 1 \qquad \text{et} \qquad u_{n+1} = 1 + \frac{1}{1 + u_n} \ \text{ pour tout } n \ge 1 .$$

1. Calculer $u_2$, $u_3$ et $u_4$, et vérifier que ce sont bien les fractions obtenues en arrêtant l'empilement après une, deux puis trois étages.
2. On admet que la suite $(u_n)$ converge vers une limite $\ell > 0$. Déterminer $\ell$.

## Hints

1. Pour la question 1, calcule pas à pas : $u_2 = 1 + \frac{1}{1+1}$, etc.
2. Pour comprendre la formule de récurrence, remarque que le dénominateur $2 + \frac{1}{2 + \cdots}$ vaut $1$ de plus que la fraction continue elle-même.
3. Pour la question 2, passe à la limite dans la relation $u_{n+1} = 1 + \frac{1}{1+u_n}$.
4. Tu obtiens une équation en $\ell$. Débarrasse-toi du dénominateur, puis reconnais une identité remarquable.

## Solution

**La réponse : $\ell = \sqrt{2}$.**

**Question 1 : les premiers termes.**

$$u_2 = 1 + \frac{1}{1 + 1} = 1 + \frac12 = \frac32 = \text{1,5} ,$$

$$u_3 = 1 + \frac{1}{1 + \frac32} = 1 + \frac{1}{\frac52} = 1 + \frac25 = \frac75 = \text{1,4} ,$$

$$u_4 = 1 + \frac{1}{1 + \frac75} = 1 + \frac{1}{\frac{12}{5}} = 1 + \frac{5}{12} = \frac{17}{12} \approx \text{1,4167} .$$

Ce sont bien les valeurs obtenues en arrêtant l'empilement. En arrêtant après un étage, on trouve $1 + \frac12 = \frac32$. En arrêtant après deux étages, le dénominateur vaut

$$2 + \frac12 = \frac52 , \qquad \text{d'où} \qquad 1 + \frac{1}{\frac52} = 1 + \frac25 = \frac75 .$$

En arrêtant après trois étages, le dénominateur vaut

$$2 + \frac{1}{\frac52} = 2 + \frac25 = \frac{12}{5} , \qquad \text{d'où} \qquad 1 + \frac{1}{\frac{12}{5}} = 1 + \frac{5}{12} = \frac{17}{12} .$$

*Pourquoi la formule de récurrence est-elle la bonne ?* Parce que le dénominateur $2 + \frac{1}{2 + \cdots}$ vaut exactement $1$ de plus que la fraction continue $1 + \frac{1}{2 + \cdots}$ : c'est le même empilement, avec un $2$ à la place du $1$ de tête. D'où la forme $u_{n+1} = 1 + \frac{1}{1 + u_n}$.

**Question 2 : la limite.**

Tous les termes de la suite sont supérieurs ou égaux à $1$ (une récurrence immédiate : si $u_n \ge 1$ alors $1 + u_n \ge 2 > 0$ et $u_{n+1} = 1 + \frac{1}{1+u_n} > 1$). La limite $\ell$ vérifie donc $\ell \ge 1$, et en particulier $1 + \ell \ne 0$.

En faisant tendre $n$ vers l'infini dans la relation $u_{n+1} = 1 + \dfrac{1}{1+u_n}$, on obtient

$$\ell = 1 + \frac{1}{1 + \ell} .$$

Isolons la fraction :

$$\ell - 1 = \frac{1}{1+\ell} .$$

Multiplions par $1 + \ell$ :

$$(\ell - 1)(\ell + 1) = 1 , \qquad \text{c'est-à-dire} \qquad \ell^2 - 1 = 1 ,$$

d'où $\ell^2 = 2$. Comme $\ell > 0$,

$$\ell = \sqrt{2} .$$

**Conclusion.** La fraction continue vaut $\boxed{\sqrt{2}}$.

*Contrôle :* $\sqrt2 \approx \text{1,41421}$, et les premiers termes $1 \ ; \ \text{1,5} \ ; \ \text{1,4} \ ; \ \text{1,41667}$ s'en approchent bien, alternativement par en dessous et par au-dessus.

## Going further

La convergence, admise dans l'énoncé, se démontre sans difficulté. Un calcul donne

$$u_{n+1} - \sqrt{2} = \frac{\left(1 - \sqrt2\right)\left(u_n - \sqrt2\right)}{1 + u_n} .$$

Comme $u_n \ge 1$, on a $1 + u_n \ge 2$, donc

$$\left|u_{n+1} - \sqrt2\right| \le \frac{\sqrt2 - 1}{2}\left|u_n - \sqrt2\right| \le \text{0,21} \times \left|u_n - \sqrt2\right| .$$

L'écart à $\sqrt2$ est donc divisé par près de cinq à chaque étape : la suite converge, et très vite.
