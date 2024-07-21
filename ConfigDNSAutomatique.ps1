# Script pour config DNS Cloudflare
# Auteur: Emile Fabrice ATANGANA ADZABA
# Description: Appliquer une configuration Cloudflare DNS à un utilisateur sur un poste de travail Windows afin de bloquer l'accès aux sites web adultes et autres malwares.


function Get-Login {

    [CmdletBinding()]
    param ([Parameter(Mandatory=$true)]$Nom,
           [Parameter(Mandatory=$true)]$Prenom)
    
    $Identifiant = (($Prenom).Substring(0,1)).ToLower() + "." + ($Nom).Tolower()

    return $Identifiant
        
}

$Login = Get-Login -

Write-Host "Résultat de la fonction : $Login" -ForegroundColor Green