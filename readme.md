1. get images tag of images in gcr.io
```
curl https://gcr.io/v2/google-containers/{imag_name}/tags/list
```


2. disable beep soud for bash, edit /etc/inputrc, add/configure `set bell-style none` 


3. disable vim beep sound, add following line to /etc/vim/vimrc or ~/.vim/vimrc 
  ```sh
  "关闭vim的beep声音
  set visualbell
  set t_vb=
  ```