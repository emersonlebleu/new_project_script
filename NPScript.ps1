
function New-project {
    param(
        [Parameter(Mandatory=$true)]
        [string[]]$foldername
    )
    Set-Location C:\Users\emers\Desktop\Code\Projects
    md $foldername
    Set-Location C:\Users\emers\Desktop\Code\Projects\$foldername
    New-Item README.md
    New-Item notes.txt
    
    git init
    git add .
    git commit -m "Initial Commit"

    gh repo create $foldername -y -d "New repo in process" --public
    git push origin main
    
    code README.md
}