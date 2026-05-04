# MOSANTU APP — Product Requirements Document (PRD)

- **Version**: 1.0  
- **Date**: Mai 2026  
- **Produit**: Denis  
- **Plateformes**: iOS • Android

> Ce document résume les exigences fonctionnelles et non-fonctionnelles fournies pour la v1.

## 1) Vision produit
Mosantu App est l'application mobile officielle de l'Église Des Saints. Elle unifie:
- vie liturgique (programmes, Bible, enseignements),
- vie communautaire (actualité, messagerie),
- expérience média (audio/vidéo/live),
- administration à deux niveaux (Église / Assemblée).

## 2) Navigation v1
6 onglets persistants:
1. Accueil
2. Bible
3. Actualités
4. Enseignements
5. Musique
6. Messages

## 3) Contraintes clés
- Authentification: Google OAuth uniquement.
- Rattachement obligatoire à une Assemblée (code à 4 chiffres).
- Mode hors connexion prioritaire (Bible + contenus vus/téléchargés).
- Français v1; i18n-ready.
- Pas d'appels audio/vidéo ni groupes en v1.

## 4) Architecture technique recommandée
- Flutter (mobile)
- Supabase (backend)
- FCM (push)
- PostHog/Mixpanel (analytics)
- Sentry (crash)

## 5) MVP (4–5 mois)
- Onboarding complet + association Assemblée
- 6 onglets fonctionnels
- Admin Église + Admin Assemblée
- Notifications culte/posts
- Offline cœur

## 6) KPIs 12 mois (cibles)
- 50 000 téléchargements
- 20 000 MAU
- 100+ Assemblées
- Rétention J30 ≥ 50%

