DEPLOY_PATH="~/bourscrap/"
BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CORE_PROJECT_NAME=$(a=$(dirname $0); echo ${a#.\\})

ssh $1 "mkdir -p $DEPLOY_PATH"
rsync --progress -r --delete $BASH_DIR $1:$DEPLOY_PATH
ssh $1 "cd $DEPLOY_PATH && cd $CORE_PROJECT_NAME && docker-compose down && docker-compose up -d --no-deps --build"
