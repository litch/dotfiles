local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

PROMPT='${smiley} %3~$(git_prompt_info)%# '

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"

update_stack() {
  aws --region='us-east-1' opsworks create-deployment --stack-id='cdafd383-48e6-4c81-9ed5-93d36708c245' --command='{"Name": "update_custom_cookbooks"}'
}

deploy_af_stack() {
  aws --region='us-east-1' opsworks create-deployment --stack-id='cdafd383-48e6-4c81-9ed5-93d36708c245' --command='{"Name": "deploy"}' --app-id='2247e61d-0a59-4208-8c56-6d3f2bd6becc'
}

dep_af_staging() {
  aws --region='us-east-1' opsworks create-deployment --stack-id='dc6573c6-75d0-42a7-a619-fb818e29ae95' --app-id='b38b3217-dc7b-476f-a8f4-a58ff7be3908' --instance-ids='["3e3733d0-ef1c-4fe3-abf2-34909b34d158"]' --command='{"Name": "deploy"}'
}

res_af_staging() {
  aws --region='us-east-1' opsworks create-deployment --stack-id='dc6573c6-75d0-42a7-a619-fb818e29ae95' --app-id='b38b3217-dc7b-476f-a8f4-a58ff7be3908' --instance-ids='["3e3733d0-ef1c-4fe3-abf2-34909b34d158"]' --command='{"Name": "restart"}'
}

up() {
  vagrant provision
}

alias b="bundle"
alias bi="b install --path vendor"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

alias wow='gst'
alias very='git'
alias such='git'
