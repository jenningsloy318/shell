#!/bin/bash
echo -e "Getting all repos for the org.\n"
REMOTE_REPO_URLS=$(url -H "Authorization: token  <token>" -s 'https://api.github.com/orgs/<orgname>/repos?page=2?&per_page=200'  -k|jq -r .[].ssh_url)
REMOTE_REPO_COUNT=$(echo -e $REMOTE_REPO_URLS|wc -w)
PWD=$(pwd)

echo -e "Totally $REMOTE_REPO_COUNT repos will be processed!\n" 

for repo in $REMOTE_REPO_URLS 
do
  echo -e "Processing Repo $repo ..."
  cd $PWD
  REPO_NAME=$(echo $repo| awk -F"/" '{print $NF}'|awk -F"." '{print $1}')
  
  if [ -d $REPO_NAME ]; then 

    cd $REPO_NAME && git pull  && cd ..
  else
    cd $PWD && git clone $repo
  fi
  echo -e "\n"
done 