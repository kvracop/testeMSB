# Teste Devops MSB

## Criação da Máquina Virtual Ubuntu 24.2 no VirtualBox

# Etapa 1: **Preparação do Ambiente VM/VPS**

1. **Instalar o VirtualBox**
    - Acesse VirtualBox Downloads e baixe a versão apropriada para seu sistema operacional.
    - Siga as instruções de instalação fornecidas no site.
2. **Baixar a Imagem ISO do Ubuntu**
    - Visite [Ubuntu Downloads](https://ubuntu.com/download/desktop) e baixe a imagem ISO do Ubuntu 24.2.
3. Baixe  e instale o OVA base com 3 núcleos, 4 de RAM, e 100 GB armazenamento
    - Link: https://drive.google.com/file/d/1xILMolsTIytXCE_79j0z6DGGV6AngPKZ/view?usp=sharing
4. Conecte via SSH com o comando: `ssh -p 2222 [jardel@localhost](mailto:jardel@localhost)` e password: `123`
5. Ultilize o comando `git clone https://github.com/kvracop/testeMSB.git` 
6. Ultilize o comando: `sudo su`
7. Ultilize o comando: `chmod 777 testeMSB/setup.sh`
8. Ultilize o comando:  `cd testeMSB`
9. Ultilize o comando:  `. setupVM.sh`
10. Ao finalizar a instalação ultilize o comando `cat installTest.log` para obter a porta de acesso ao AAPanel e criar o forward da máquina real para a máquina virtual
# Etapa 2: **Preparação dos containers**
1. Ultilize o comando:  `. setupConteiners.sh`
2. Para acessar a página do jenkins ultilize: http://localhost:8080/
3. Para acessar a página do aaPanel ultilize: usando [localhost](http://localhost) + porta e caminho de segurança presentes no arquivo `installTest.log`
4. Para acessar a página do GLPI ultilize: http://localhost:22571/
5. Para acessar a página do 8N8 ultilize:  http://localhost:5678/
6. Para acessar a página do gitlab_http ultilize: http://localhost:8081/
# Etapa 3: Automação do N8N
Para a etapa de automação faremos com que uma mensagem de ‘olá’ seja exibida de 1 em 1 minuto
