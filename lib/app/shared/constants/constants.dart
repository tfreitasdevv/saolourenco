import 'package:flutter/material.dart';

//Imagens do Asset
const String splash4k = 'assets/images/Splash4k.jpg';
const String splash2k = 'assets/images/Splash2k.jpg';
const String bg = 'assets/images/BG8.jpg';
const String tercoBranco = 'assets/images/terco-cut-white.png';
const String iconeBranco = 'assets/images/IconeBranco.png';

//Imagens Firebase Storage

const String bastismo =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fbatismo.jpg?alt=media&token=c96f6c95-8c77-4393-85c0-e17f43a2bc21';
const String catequese =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fcatequese.jpg?alt=media&token=67c4e76c-1611-462a-904b-0531c944d130';
const String crisma =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fcrisma.jpg?alt=media&token=0552ad4a-3f3f-4b2e-af7e-0fc1e655e731';
const String dizimo =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fdizimo.jpg?alt=media&token=6dc0c44d-e2c1-44ed-baff-7daf6f7bdfc5';
const String eac =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Feac.jpg?alt=media&token=4cd40c29-86b2-4de0-a49a-5747a456a7e1';
const String ecc =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fecc.jpg?alt=media&token=7df5420c-d773-4872-98cb-fcf36adfff8d';
const String ejc =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fejc.jpg?alt=media&token=d52317cf-cb09-4b91-a717-4f01f7cfb8bd';
const String grupo =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fgrupo.jpg?alt=media&token=48c4bded-4429-42c1-b5aa-0a5029b50935';
const String liturgia =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fliturgia.jpg?alt=media&token=bb5357dc-cfbf-4219-ae40-1b1a799cc8d1';
const String musica =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fmusica.jpg?alt=media&token=dc7ced7c-4f32-4a0e-9772-8960d34a826c';
const String pascom =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fpascom.jpg?alt=media&token=a410e4f4-6c3f-4d68-98eb-9f073427d0ee';
const String ejc2 =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fejc2.jpg?alt=media&token=ebd63ebd-52e1-481f-bdc0-73f188e8b46a';
const String mej =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fmej.jpg?alt=media&token=55af65cf-b491-4173-a4b5-c5d458aeefc0';
const String saude =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fsaude.jpg?alt=media&token=541e1300-d0dd-4b4c-9ce7-1d46a6009596';
const String acolitos =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Facolitos.jpg?alt=media&token=1e030601-0af3-4734-a4b3-3cb58e201b2d';
const String alfabetizacao =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Falfabetizacao.jpg?alt=media&token=52a17b71-24c0-446b-ad8e-f0e7d800c54f';
const String conferencia_sao_vicente =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fconferencia_sao_vicente.jpg?alt=media&token=ad5ca163-c6a2-4cc3-a507-b7b9b85faa66';
const String eventos =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Feventos.jpg?alt=media&token=eab0e5d2-6f1a-48bf-adb8-e59fa43cc3bb';
const String familiar =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Ffamiliar.jpg?alt=media&token=dfb46493-e94a-4202-9aba-13b04faa0dfe';
const String mae_tres_vezes =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fmae_tres_vezes.jpg?alt=media&token=bdf88723-960a-4cd7-bc06-f259c54c49a0';
const String promocao_humana =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fpromocao_humana.jpg?alt=media&token=6de82717-9989-44a5-b7d8-5d203f99d166';
const String nascituro =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fnascituro.jpg?alt=media&token=a086fe70-c678-4f3b-b624-94469cc7e883';
const String coroinhas =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fcoroinhas.jpg?alt=media&token=ae0acd71-e956-4ec8-91d2-e1cd3a0d1907';
const String saoLourencoDosIndios =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FCapelas%2FSaoLourencoDosIndios.jpg?alt=media&token=a2e682f5-32e9-4fde-863f-4f52816a6142';
const String meninoJesusDePraga =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FCapelas%2FMeninoJesusDePraga.jpg?alt=media&token=020b1551-e617-4ed9-8166-ae0eca18b47d';

const String facebook =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Icones%2Ff.png?alt=media&token=2fdf7fa1-2acc-4aba-90ee-1fc7a380d2ae';
const String instagram =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Icones%2Fi.png?alt=media&token=3e6bed0c-886b-4b48-8b24-ace072148064';
const String youtube =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Icones%2Fy2.png?alt=media&token=e5389218-2a14-4dec-a065-50ee6db65f47';
const String telefone =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Icones%2Ft.png?alt=media&token=8e1a62f2-2bdd-47fb-b7cc-e97384da832b';
const String mapa =
    'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Icones%2Fm.png?alt=media&token=0a6c3f4c-70f4-4d1c-97c4-6f5c1e907bc6';

//Cores
const Color t1 = Color(0xff0D0A08);
const Color t2 = Color(0xff261E17);
const Color t3 = Color(0xff403328);
const Color t4 = Color(0xff6B5745);
const Color t5 = Color(0xff998060);
const Color t6 = Color(0xffd3c8bb);

//Textos longos
const String historia =
    "      A paróquia de São Lourenço foi criada em 1758, tendo como sede a capela de São Lourenço dos Índios, no morro de São Lourenço e de origem Jesuítica.\n\n      Com o crescimento da Freguesia, a Igreja Matriz de São Lourenço dos Índios, além de estar em mal estado, já não comportava os fiéis para a prática dos atos religiosos. Surgiu, então, a ideia de mudança da sede da matriz. O local escolhido pertencia ao general Castrioto, que abriu mão de um terço de seu valor, sendo o restante - 3 contos de réis - coberto através de subscrição popular.\n\n      A 14 de dezembro de 1873, colocou-se a primeira pedra, e dois dias depois iniciou-se a construção. Outros dizem que a Igreja de São Lourenço da Várzea foi construída para o acesso do pároco da Igreja de São Lourenço dos Índios, Rangel de Sampaio, que já estava bem idoso e não conseguia subir diariamente os caminhos de acesso ao morro de São Lourenço.\n\n      O projeto original, em estilo eclético, de tendência neoclássica, era do engenheiro Miranda Freitas, que, em 1882 foi substituído no comando da obra por Heitor de Cordoville, que alterou o projeto do formato da torre, em forma de uma flecha aguda, por um zimbório encimando os dois corpos decorados de colunas jônicas. Em 1883 foi realizada a bênção da cruz nova.\n\n      Embora houvesse celebração de cultos normalmente, as obras da igreja só foram concluídas em 1892. Em 1891, foram colocados na torre dois sinos, o maior doado por José Pereira de Souza e o menor pelo fazendeiro João Lopes Bastos.\n\n      Além dos problemas mais ou menos comuns em uma obra de tão grande porte, como a falta de verbas, o andamento da construção também foi prejudicado pela Revolta da Armada (1891-1892), pois ela foi ocupada como quartel pelo 34º Batalhão de Infantaria da Guarda Nacional de Niterói e, por isto, foi bombardeada pelas forças rebeldes. Em consequência, a Diocese foi transferida para a Igreja de São João Batista, desde então a catedral.\n\n      No ano de 1915 inicia-se a primeira reforma da igreja, também contando com diversas doações. Em 17 de junho de 1928 inaugurou-se ao redor da matriz a nova praça chamada de Dom Augustinho Benassi e o busto de seu patrono, de autoria de Laurindo Ramos. Em 1933 novamente decidiu-se por mais uma reforma na igreja, formando uma comissão tendo entre os integrantes João Brasil, José Rodrigues Coelho e comerciantes Eduardo Correia de Figueiredo Lima, Manuel Crista e José Ferreira Moreira; as obras foram concluídas em julho de 1935.\n\n      No dia 8 de dezembro de 1956 comemorando quarenta e três anos da primeira missa é inaugurado o novo altar do padroeiro. Em 4 de junho de 2001, a Igreja é tombada pela lei municipal nº 1835.\n\n      São Lourenço é festejado em 10 de agosto e a Igreja é subordinada à Arquidiocese de Niterói.";
