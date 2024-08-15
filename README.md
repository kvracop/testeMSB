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
    ![Captura de tela 2024-08-13 205556](https://github.com/user-attachments/assets/31c11386-e9ab-4b65-8024-10f174476e50)
    ![Captura de tela 2024-08-14 164152](https://github.com/user-attachments/assets/d71e49bd-2658-4043-8aac-ea5dbea1ffac)
# Etapa 2: **Preparação dos containers**
1. Ultilize o comando:  `. setupConteiners.sh`
2. Para acessar a página do jenkins ultilize: http://localhost:8080/
   a. Obtenha a chave  com o comando: `cat testeMSB/chaveJenkins.txt`
3. Para acessar a página do aaPanel ultilize: usando [localhost](http://localhost) + porta e caminho de segurança presentes no arquivo `installTest.log`
4. Para acessar a página do GLPI ultilize: http://localhost:22571/
   a. Utilize a o login glpi e senha glpi
5. Para acessar a página do 8N8 ultilize:  http://localhost:5678/
   a. Siga os passos da instalação padrão da página
6. Para acessar a página do gitlab_http ultilize: http://localhost:8081/
   a. utiliza o login`root` e a senha obtida por meio do comando `cat testeMSB/senhaGitlab.txt`
# Etapa 3: Automação do N8N
1. Para a etapa de automação faremos com que uma mensagem de ‘olá’ seja exibida de 1 em 1 minuto
![Captura de tela 2024-08-15 111914](https://github.com/user-attachments/assets/b5ba5139-7dcf-4035-ac32-e5a5864b2d92)
Onde teremos dois nós, um nó de gastilho e um nó do tipo código com as seguintes configurações:
- Nó de gatilho
  ![Captura de tela 2024-08-15 111535](https://github.com/user-attachments/assets/e918e5cf-ac34-4daa-b6dc-e64a0ff92c20)
- Nó de código
  ![Captura de tela 2024-08-15 111555](https://github.com/user-attachments/assets/7afa11cf-8cd1-410e-91ce-8582fc6a8410)
