
# Guide d'installation et d'exécution

Ce guide explique comment configurer l'environnement de développement pour ce projet Python.

## Prérequis

- Python 3.11 ou supérieur installé
- Pip (normalement inclus avec Python)

## 1. Création de l'environnement virtuel

Ouvrez un terminal (CMD, PowerShell ou Git Bash) et exécutez :

```bash
python -m venv .venv
```
## 2. Activation de l'environnement
Selon votre terminal :

### Windows (CMD)
```cmd
.\.venv\Scripts\activate
```
### Windows (PowerShell)
``` powershell
.\.venv\Scripts\Activate.ps1
```
### Linux/Mac
```bash
source .venv/bin/activate
```
Vous devriez voir (.venv) apparaître devant votre invite de commande.

## 3. Installation des dépendances
Avec l'environnement activé, installez les packages requis :

```bash
pip install -r requirements.txt
```
## 4. Exécution du programme
Lancez le script principal avec :

```bash
python main.py
```
## 5. Désactivation de l'environnement
Quand vous avez terminé :

```bash
deactivate
```
#### Dépannage
Problèmes d'activation sous PowerShell
Si vous obtenez une erreur de politique d'exécution :

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```
Fichier requirements.txt manquant
Si vous devez créer le fichier requirements.txt :

```bash
pip freeze > requirements.txt
```