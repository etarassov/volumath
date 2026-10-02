---
id: "12879"
title: "Un milieu, une parallèle et une tangente"
grade: 10
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercle, tangente, milieu, symetrie, repere, coordonnees, cercle-circonscrit, triangles-semblables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2025"
  reference: "2025-10_Sujet-Test-3-2024-2025.pdf, test junior, exercice 3 ; corrigé 2025-10_Corrige-Test-3-2024-2025.pdf (le corrigé utilise des triangles semblables et le théorème de l'angle inscrit ; on donne ici une preuve par les coordonnées, valable pour toutes les figures, et la preuve du corrigé passe dans Pour aller plus loin)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-3-2024-2025.pdf"
---

## Statement

Soit $A$ et $C$ deux points distincts d'un cercle $\omega$, et $E$ le milieu du segment $[AC]$. Une droite qui passe par $E$, autre que $(AC)$, coupe le cercle $\omega$ en deux points $B$ et $D$. La parallèle à la droite $(AC)$ qui passe par $B$ recoupe le cercle $\omega$ au point $F$. Soit $G$ le symétrique du point $F$ par rapport au point $A$.

![Le cercle ω, les points A, E, C alignés, la droite (BD), le segment [BF] parallèle à (AC), le point G et, en pointillés, le cercle passant par A, D et G](12879-figure-1.svg)

Montrer que la droite $(AC)$ est tangente au cercle circonscrit au triangle $ADG$.

## Hints

1. Placez-vous dans un repère orthonormé d'origine $E$, où $A$ a pour coordonnées $(-1\,;0)$ et $C$ a pour coordonnées $(1\,;0)$. Où est le centre de $\omega$ ?
2. Si $B$ a pour coordonnées $(p\,;q)$, calculez les coordonnées de $F$, puis de $G$.
3. Le point $D$ est sur la droite $(EB)$ : il a des coordonnées de la forme $(\lambda p\,;\lambda q)$. Trouvez $\lambda$.
4. Un cercle tangent à l'axe des abscisses en $A$ a son centre sur la droite d'équation $x = -1$. Cherchez un tel cercle qui passe par $G$, puis vérifiez qu'il passe aussi par $D$.

## Solution

### Le repère

On prend la longueur $EA$ comme unité, et on se place dans le repère orthonormé d'origine $E$ dont l'axe des abscisses est la droite $(AC)$. Alors $A(-1\,;0)$ et $C(1\,;0)$.

Le centre $\Omega$ de $\omega$ est à égale distance de $A$ et de $C$, donc sur la médiatrice de $[AC]$, qui est l'axe des ordonnées : $\Omega(0\,;k)$ pour un certain réel $k$. Le rayon vérifie $r^2 = \Omega A^2 = 1 + k^2$. Un point $M(x\,;y)$ est donc sur $\omega$ si et seulement si $x^2 + (y - k)^2 = 1 + k^2$, c'est-à-dire

$$x^2 + y^2 - 2ky = 1.$$

### Les points B, F et G

On note $B(p\,;q)$, et on pose $\rho = p^2 + q^2$. Comme $B$ est sur $\omega$, on a $\rho - 2kq = 1$. La droite $(EB)$ n'est pas l'axe des abscisses, donc $q \neq 0$.

La symétrie par rapport à l'axe des ordonnées conserve $\omega$, puisqu'elle fixe son centre. Elle envoie $B$ sur le point $(-p\,;q)$, qui est donc sur $\omega$ et sur la droite horizontale qui passe par $B$, c'est-à-dire la parallèle à $(AC)$ passant par $B$. C'est le point $F$ :

$$F(-p\,;q).$$

Le point $A$ est le milieu de $[FG]$, donc $x_G = 2x_A - x_F = -2 + p$ et $y_G = 2y_A - y_F = -q$ :

$$G(p - 2\,;-q).$$

### Le point D

Le point $D$ est sur la droite $(EB)$, qui passe par l'origine : il existe un réel $\lambda$ tel que $D(\lambda p\,;\lambda q)$. Comme $D$ est sur $\omega$,

$$\lambda^2 p^2 + \lambda^2 q^2 - 2k\lambda q = 1, \qquad \text{c'est-à-dire} \qquad \rho\lambda^2 - 2kq\,\lambda - 1 = 0.$$

On remplace $2kq$ par $\rho - 1$, et on factorise :

$$\rho\lambda^2 - (\rho - 1)\lambda - 1 = (\lambda - 1)(\rho\lambda + 1).$$

La solution $\lambda = 1$ donne le point $B$. L'autre point d'intersection est donc donné par $\lambda = -1/\rho$ :

$$D\left(-\frac{p}{\rho}\,;-\frac{q}{\rho}\right).$$

### Les cercles tangents à (AC) en A

Soit $m$ un réel non nul, et $\Gamma_m$ le cercle de centre $\Omega_m(-1\,;m)$ qui passe par $A$. Son rayon vaut $|m|$, donc un point $M(x\,;y)$ est sur $\Gamma_m$ si et seulement si $(x + 1)^2 + (y - m)^2 = m^2$, c'est-à-dire

$$(x + 1)^2 + y^2 = 2my.$$

Le rayon $[\Omega_m A]$ est vertical, donc perpendiculaire à $(AC)$ : **la droite $(AC)$ est tangente à $\Gamma_m$ en $A$.**

### Un tel cercle passe par G et par D

On calcule, pour $G$ :

$$(x_G + 1)^2 + y_G^2 = (p - 1)^2 + q^2 = \rho - 2p + 1.$$

Ce nombre est strictement positif, car $(p - 1)^2 + q^2 > 0$ puisque $q \neq 0$. On choisit

$$m = \frac{\rho - 2p + 1}{-2q},$$

qui est non nul. Alors $2m\,y_G = 2m \times (-q) = \rho - 2p + 1$ : le point $G$ est sur $\Gamma_m$.

Pour $D$ :

$$(x_D + 1)^2 + y_D^2 = \left(1 - \frac{p}{\rho}\right)^2 + \frac{q^2}{\rho^2} = 1 - \frac{2p}{\rho} + \frac{p^2 + q^2}{\rho^2} = 1 - \frac{2p}{\rho} + \frac{1}{\rho} = \frac{\rho - 2p + 1}{\rho},$$

et

$$2m\,y_D = \frac{\rho - 2p + 1}{-q} \times \left(-\frac{q}{\rho}\right) = \frac{\rho - 2p + 1}{\rho}.$$

Les deux nombres sont égaux : le point $D$ est aussi sur $\Gamma_m$.

### Conclusion

Les points $A$, $D$ et $G$ sont distincts : $y_A = 0$ alors que $y_D$ et $y_G$ ne sont pas nuls, et $y_D = y_G$ forcerait $\rho = 1$, puis $x_D = x_G$ forcerait $p = 1$ et donc $q = 0$. Trois points distincts d'un cercle ne sont pas alignés, et par trois points non alignés passe un seul cercle. Le cercle circonscrit au triangle $ADG$ est donc $\Gamma_m$.

**La droite $(AC)$ est tangente en $A$ au cercle circonscrit au triangle $ADG$.**

## Going further

Voici l'idée de la solution du corrigé, avec des angles. On admet le théorème de l'angle inscrit et le fait suivant : la droite $(AC)$ est tangente en $A$ au cercle circonscrit au triangle $ADG$ si l'angle $\widehat{DAC}$ est égal à l'angle inscrit $\widehat{DGA}$, quand $C$ et $G$ sont de part et d'autre de la droite $(AD)$.

1. Sur la figure, montrez que $\widehat{DEC} = \widehat{DBF} = \widehat{DAF}$ et que $\widehat{AFD} = \widehat{ACD}$. Déduisez-en que les triangles $ECD$ et $AFD$ sont semblables.
2. Déduisez-en que $FG/FD = CA/CD$, puis que les triangles $GFD$ et $ACD$ sont semblables. Concluez.
