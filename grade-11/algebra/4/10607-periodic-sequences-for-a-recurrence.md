---
id: "10607"
title: "Des suites périodiques pour une récurrence"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [suite-recurrente, suite-geometrique, periodicite, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 2 (algèbre)"
  reference: "2019-11_sujet-envoi-2-1.pdf, Exercices Seniors, exercice 13 ; corrigé 2020-01_corrige-commente-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/sujet-envoi-2-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-11_sujet-envoi-2-1.pdf"
---

## Statement

Une suite $(x_n)_{n \geqslant 1}$ est dite **périodique** s'il existe un entier $T \geqslant 1$ tel que $x_{n+T} = x_n$ pour tout $n \geqslant 1$.

Trouver toutes les suites périodiques $(x_n)_{n \geqslant 1}$ de réels strictement positifs telles que, pour tout $n \geqslant 1$,

$$x_{n+2} = \frac{1}{2}\left(\frac{1}{x_{n+1}} + x_n\right)$$

## Hints

1. Cherche d'abord des exemples. Une suite constante peut-elle convenir ? Et une suite qui alterne entre deux valeurs $a$ et $b$ ?
2. Multiplie la relation par $x_{n+1}$. Quelle quantité fait-elle apparaître des deux côtés ?
3. Pose $p_n = x_{n+1} x_n - 1$. Montre que $p_{n+1} = \frac{1}{2} p_n$.
4. Une suite géométrique de raison $\frac{1}{2}$ peut-elle être périodique sans être nulle ?

## Solution

**Étape 1. Faire apparaître les produits de deux termes voisins.**

Soit $(x_n)$ une suite qui convient, et $n \geqslant 1$. Multiplions la relation par $x_{n+1}$, qui n'est pas nul :

$$x_{n+2}\,x_{n+1} = \frac{1}{2}\left(1 + x_{n+1}\,x_n\right)$$

En retranchant $1$ des deux côtés :

$$x_{n+2}\,x_{n+1} - 1 = \frac{1}{2}\left(x_{n+1}\,x_n - 1\right)$$

Posons $p_n = x_{n+1}\,x_n - 1$. On vient de montrer que $p_{n+1} = \frac{1}{2}\,p_n$ pour tout $n$ : la suite $(p_n)$ est géométrique de raison $\frac{1}{2}$. Donc

$$p_n = \left(\frac{1}{2}\right)^{n-1} p_1$$

**Étape 2. Utiliser la périodicité.**

Si $(x_n)$ est périodique de période $T$, alors $(p_n)$ l'est aussi : $p_{n+T} = x_{n+T+1}\,x_{n+T} - 1 = x_{n+1}\,x_n - 1 = p_n$. En particulier $p_{1+T} = p_1$, c'est-à-dire

$$\left(\frac{1}{2}\right)^{T} p_1 = p_1, \qquad \text{donc} \qquad \left(1 - \frac{1}{2^T}\right) p_1 = 0$$

Comme $T \geqslant 1$, le nombre $1 - \frac{1}{2^T}$ n'est pas nul, donc $p_1 = 0$, et alors $p_n = 0$ pour tout $n$.

**Étape 3. Trouver la forme de la suite.**

On a donc $x_{n+1}\,x_n = 1$, soit $\frac{1}{x_{n+1}} = x_n$, pour tout $n$. En reportant dans la relation de l'énoncé :

$$x_{n+2} = \frac{1}{2}\left(x_n + x_n\right) = x_n$$

Les termes de rang impair sont donc tous égaux à $x_1$, et les termes de rang pair tous égaux à $x_2 = \frac{1}{x_1}$. En notant $a = x_1$, la suite est

$$a, \ \frac{1}{a}, \ a, \ \frac{1}{a}, \ \ldots$$

**Étape 4. Vérification.**

Réciproquement, soit $a > 0$ et la suite qui vaut $a$ aux rangs impairs et $\frac{1}{a}$ aux rangs pairs. Elle est périodique (de période $2$) et formée de réels strictement positifs. Pour tout $n$, $\frac{1}{x_{n+1}} = x_n$, donc

$$\frac{1}{2}\left(\frac{1}{x_{n+1}} + x_n\right) = \frac{1}{2}(x_n + x_n) = x_n = x_{n+2}$$

La relation est bien vérifiée.

**Conclusion : les suites cherchées sont exactement les suites $a, \frac{1}{a}, a, \frac{1}{a}, \ldots$ où $a$ est un réel strictement positif quelconque. Le cas $a = 1$ donne la suite constante égale à $1$.**

## Going further

Que se passe-t-il si on ne demande plus que la suite soit périodique ? Montre que $x_{n+1}\,x_n$ tend alors vers $1$, quelles que soient les valeurs de départ $x_1 > 0$ et $x_2 > 0$.
