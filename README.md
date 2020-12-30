# Pacotes Inclusos:
PHP 
MySQL
Git
PhpMyAdmin
Composer
cURL

# Inicie a máquina virtual com o comando:

vagrant up

Quando tudo estiver pronto, um servidor web estará disponível no endereço http://localhost:8080, e a instalação do PHPMyAdmin está em http://localhost:8080/phpmyadmin, para acessar utilize:

Login: root
Senha: root

Coloque seu código no diretório "www". Todo o conteúdo dele estará disponível via http://localhost:8080. (Como teste, já existe um arquivo index.php que chama a função phpinfo() ).

# Comandos básicos Vagrant
vagrant up – para iniciar as VMs do projeto

vagrant halt – finalizar todas VMs

vagrant reload – executa o halt e em seguida up novamente

vagrant destroy – volte a maquina para o estado inicial

vagrant Snapshot Push – Salva o estado da maquina

vagrant Snapshot Pop – Volta ao último estado salvo

vagrant ssh – Conecta na VM por SSH dentro do terminal cmd

vagrant ssh-config – Visualiza as configurações SSH para conectar usando Putty


Obs: Creditos ao [EspecialistaTi]

