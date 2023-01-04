# jenkins-server-terraform

PROVISIONE SEU JENKINS NA AWS COM TERRAFORM.

Video: https://youtu.be/Zaa1ls2gX1s

OBS: A chave ssh contida no projeto, não está sendo utilizada em nenhum produto. Foi gerada apenas para compor esse projeto. 
Como boa prática, é aconselhavel regerar o par de chaves... 

Comandos para regerar o par de chaves

Entrar no diretório keys
```shell
cd keys
```

Executar o comando para gerar um novo par de chaves
```shell
ssh-keygen
```

No momento em que for solicitado o nome da chave, digitar da forma que está dentro das aspas: "./jenkins-manager"

Após isso, dar enter até finalizar o processo e pronto! Chaves recriadas!
