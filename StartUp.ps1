# ファイルを開く
$file = "C:\Users\[ユーザー名]\Desktop\myMemo.txt" #ファイルパスを指定
if (Test-Path $file){
    Invoke-Item $file
}


# フォルダを開く
$folder = "C:\Users\[ユーザー名]\Desktop\myFolder" #フォルダパスを指定
if (Test-Path $folder){
    Invoke-Item $folder
}


# Google Chromeを開く

$Chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe" #Google Chromeのパスを指定
#ページURLを指定
$Pages = 
    "https://mail.google.com/mail/u/0/#inbox", #Gmail
    "https://www.google.com/?hl=ja", #Googleトップページ
    "about:blank" #空白のタブ

for ($i = 0; $i -lt $Pages.Length; $i++){
    start $Chrome $Pages[$i]
    powershell Start-Sleep -m 5000 #順番に開くように待機
}
# 上4行の代わりに start $Chrome とすると単にChromeが起動する


# Microsoft Edgeを開く

$Edge = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" #Microsoft Edgeのパスを指定
#ページURLを指定
$Pages =
    "https://mail.google.com/mail/u/0/#inbox", #Gmail
    "https://www.google.com/?hl=ja", #Googleトップページ
    "about:blank" #空白のタブ

for ($i = 0; $i -lt $Pages.Length; $i++){
    start $Edge $Pages[$i]
    powershell Start-Sleep -m 5000 #順番に開くように待機
}
# 上4行の代わりに start $Edge とすると単にEdgeが起動する


