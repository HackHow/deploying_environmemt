# **在 Amazon Linux 進行快速部屬的注意事項**

## _shell script 內容的符號說明：_

- **使用"#"符號，表示為指令。可以視個人情況決定是否執行**
- **使用"##"符號，表示說明以下指令的功能，或是資料來源**
- **如果在下載過程中發生 fail 之類的情況，建議將檔案的指令一步一步貼到機器執行**

## _使用方式：_

> ### 方法一：

**你可以將檔案下載到 _local_ 端之後，透過 _scp_ 的方式傳送到你要使用的機器上。下方的指令是以傳送一個檔案為例，如果需要傳送整個資料夾，記得要加上 _`-r`_ 的參數**

`重要!!` **如果是透過 _scp_ 的方式將檔案傳送到機器上，可能會有編碼問題！**

### _解決方案一：_

**如果是使用 Visual Studio Code ，記得將右下角的 _LF or CRLF_ 統一設定為 _`LF`_ 後，進行存檔，再傳到機器上**

### _解決方案二：_

**如果已經上傳到機器上的話，可以透過 vim 的方式進入到檔案中，執行 _`:set ff=unix`_**

```sh
scp -i ~/<your key .pem file> <file path> ec2-user@<EC2 Public DNS>:<file destination in EC2>

ex: scp -i ~/my_key.pem quickly_deploying_nodejs.sh ec2-user@ec2-13-230-72-90.ap-northeast-1.compute.amazonaws.com:/home/ec2-user
```

> ### 方法二：

**在機器上新增空白的 .sh 檔，對新增的檔案進行編輯，將指令貼到該檔案中，存檔後，執行該檔案。以下指令作為範例**

```sh
touch deploying_nodejs.sh

sudo vim deploying_nodejs.sh
## paste command

sudo chmod +x deploying_nodejs.sh

## execute file
./deploying_nodejs.sh
```
