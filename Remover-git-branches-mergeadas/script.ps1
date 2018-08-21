
for($i=0; $i -le 10; $i++){
    git branch "feature/$i"
    $j = $i +2
    git branch  "$i/$j" 
}
git branch

git branch --merged | ForEach-Object {$_.Trim() | Where-Object {$_ -notmatch "master"}} | ForEach-Object { git branch -d $_ }

git branch