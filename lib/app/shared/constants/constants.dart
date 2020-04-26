import 'package:flutter/material.dart';

//Imagens do Asset
const String splash4k = 'assets/images/Splash4k.jpg';
const String splash2k = 'assets/images/Splash2k.jpg';
const String bg = 'assets/images/BG8.jpg';
const String tercoBranco = 'assets/images/terco-cut-white.png';
const String iconeBranco = 'assets/images/IconeBranco.png';

//Imagens Firebase Storage


const String bastismo = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fbatismo.jpg?alt=media&token=c96f6c95-8c77-4393-85c0-e17f43a2bc21';
const String catequese = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fcatequese.jpg?alt=media&token=67c4e76c-1611-462a-904b-0531c944d130';
const String crisma = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fcrisma.jpg?alt=media&token=0552ad4a-3f3f-4b2e-af7e-0fc1e655e731';
const String dizimo = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fdizimo.jpg?alt=media&token=6dc0c44d-e2c1-44ed-baff-7daf6f7bdfc5';
const String eac = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Feac.jpg?alt=media&token=4cd40c29-86b2-4de0-a49a-5747a456a7e1';
const String ecc = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fecc.jpg?alt=media&token=7df5420c-d773-4872-98cb-fcf36adfff8d';
const String ejc = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fejc.jpg?alt=media&token=d52317cf-cb09-4b91-a717-4f01f7cfb8bd';
const String grupo = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fgrupo.jpg?alt=media&token=48c4bded-4429-42c1-b5aa-0a5029b50935';
const String liturgia = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fliturgia.jpg?alt=media&token=bb5357dc-cfbf-4219-ae40-1b1a799cc8d1';
const String musica = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fmusica.jpg?alt=media&token=dc7ced7c-4f32-4a0e-9772-8960d34a826c';
const String pascom = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fpascom.jpg?alt=media&token=a410e4f4-6c3f-4d68-98eb-9f073427d0ee';
const String ejc2 = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fejc2.jpg?alt=media&token=ebd63ebd-52e1-481f-bdc0-73f188e8b46a';
const String mej = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fmej.jpg?alt=media&token=55af65cf-b491-4173-a4b5-c5d458aeefc0';
const String saude = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fsaude.jpg?alt=media&token=541e1300-d0dd-4b4c-9ce7-1d46a6009596';
const String nascituro = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fnascituro.jpg?alt=media&token=a086fe70-c678-4f3b-b624-94469cc7e883';
const String coroinhas = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FPastorais%2Fcoroinhas.jpg?alt=media&token=ae0acd71-e956-4ec8-91d2-e1cd3a0d1907';
const String saoLourencoDosIndios = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Imagens%2FCapelas%2FSaoLourencoDosIndios.jpg?alt=media&token=8abbff62-739b-4273-8956-7de2a36150ab';

const String facebook = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Icones%2Ff.png?alt=media&token=2fdf7fa1-2acc-4aba-90ee-1fc7a380d2ae';
const String instagram = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Icones%2Fi.png?alt=media&token=3e6bed0c-886b-4b48-8b24-ace072148064';
const String youtube = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Icones%2Fy2.png?alt=media&token=e5389218-2a14-4dec-a065-50ee6db65f47';
const String telefone = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Icones%2Ft.png?alt=media&token=8e1a62f2-2bdd-47fb-b7cc-e97384da832b';
const String mapa = 'https://firebasestorage.googleapis.com/v0/b/sao-lourenco.appspot.com/o/Icones%2Fm.png?alt=media&token=0a6c3f4c-70f4-4d1c-97c4-6f5c1e907bc6';

//Cores
const Color t1 = Color(0xff0D0A08);
const Color t2 = Color(0xff261E17);
const Color t3 = Color(0xff403328);
const Color t4 = Color(0xff6B5745);
const Color t5 = Color(0xff998060);
const Color t6 = Color(0xffd3c8bb);