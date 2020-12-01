import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'politicaprivacidade.dart';
import 'orcamentosite.dart';
import 'orcamentoapp.dart';
import 'portfolio.dart';
import 'exemplodeappsembreve.dart';
import 'outrosservicos.dart';


void main() {runApp(MaterialApp(
	title: 'Organize Websites',
	 theme: ThemeData(
	   primarySwatch: Colors.orange[900],
         ),
         home: HomePage(),
      )
    );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organize Websites',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: 
        Container(
          color: Colors.black,
          child: 
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: 
                SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset('imagens/logo.png')
                    )
                  ]
                )
              ),
              SliverList(
                delegate: 
                SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(234, 85, 15, 1.0)),
                        child: 
                        ListTile(
                          title: Text('Crie Seu Site', style: TextStyle(fontSize: 20, color: Colors.white),),
                          subtitle: Text('Faça Seu Orçamento Aqui Para Ter O Seu Site Profissional Pelo Menor Preço!'),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => OrcamentoSite()));}
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(234, 85, 15, 1.0)),
                        child: 
                        ListTile(
                          title: Text('Crie Seu App', style: TextStyle(fontSize: 20, color: Colors.white),),
                          subtitle: Text('Faça Seu Orçamento Aqui Para Ter O Seu App Para Android e iPhone!'),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => OrcamentoApp()));}
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(234, 85, 15, 1.0)),
                        child: 
                        ListTile(
                          title: Text('Portfólio', style: TextStyle(fontSize: 20, color: Colors.white),),
                          subtitle: Text('Veja Aqui Os Serviços Que já Realizamos'),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Portfolio()));}
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(234, 85, 15, 1.0)),
                        child: 
                        ListTile(
                          title: Text('Exemplos de Apps', style: TextStyle(fontSize: 20, color: Colors.white),),
                          subtitle: Text('Aqui Você Vê Alguns Exemplos De Aplicativos Que Podemos Fazer'),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ExemploDeAppsEmBreve()));}
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(234, 85, 15, 1.0)),
                        child: 
                        ListTile(
                          title: Text('Nosso Site', style: TextStyle(fontSize: 20, color: Colors.white),),
                          subtitle: Text('Clique Aqui e Acesse Nosso Site'),
                          onTap: _launchURL4
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(234, 85, 15, 1.0)),
                        child: 
                        ListTile(
                          title: Text('Outros Serviços', style: TextStyle(fontSize: 20, color: Colors.white),),
                          subtitle: Text('Veja aqui outros serviços que prestamos!'),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => OutrosServicos()));}
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(234, 85, 15, 1.0)),
                        child: 
                        ListTile(
                          title: Text('Dominio Gratuito', style: TextStyle(fontSize: 20, color: Colors.white),),
                          subtitle: Text('Aprenda a ter um dominio gratuito!'),
                          onTap: _launchURL5
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(234, 85, 15, 1.0)),
                        child: 
                        ListTile(
                          title: Text('Hospedagem Gratuita', style: TextStyle(fontSize: 20, color: Colors.white),),
                          subtitle: Text('Aprenda a ter uma hospedagem gratuita!'),
                          onTap: _launchURL6
                        ),
                      ),
                    ),
                  ]
                )
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
                delegate: SliverChildListDelegate(
                  [
                    IconButton(icon: Icon(FontAwesome5Brands.whatsapp, color: Colors.white), onPressed: _launchURL),
                    IconButton(icon: Icon(FontAwesome5Brands.facebook, color: Colors.white), onPressed: _launchURL2),
                    IconButton(icon: Icon(FontAwesome5Brands.instagram, color: Colors.white), onPressed: _launchURL3),
                  ]
                )
              ),
              SliverList(
                delegate: 
                SliverChildListDelegate(
                  [
                    Container(
                      color: Color.fromRGBO(194, 35, 20, 1.0),
                      child:
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Somos uma empresa especializada em criação de Sites e Aplicativos para Android e iOS. Aqui respeitamos desde os pequenos aos grandes empresários e disponibilizamos valores acessíveis para todos, com a melhor qualidade disponível.', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w200), textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Nossa principal missão é proporcionar a todos o acesso ao mundo virtual, de maneira a colocar suas ideias, produtos e serviços disponíveis online para o mundo inteiro apreciar e ser beneficiado por isto!', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w200), textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Estamos sempre buscando a inovação, então junte-se a nós e venha fazer parte do maravilhoso mundo digital!', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w200), textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      )
                    ),
                  ]
                )
              ),
              SliverList(
                delegate: 
                SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Image.asset('imagens/logo-q.png'),
                    )
                  ]
                )
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: ListView(
              children: [
                DrawerHeader(
                  child: 
                  Center(
                    child: 
                    FlatButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}, 
                      child: Image.asset('imagens/logo-q.png')
                    ),
                  )
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white,),
                  title: Text('HOME', style: TextStyle(color: Colors.white),),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                ),
                ListTile(
                  leading: Icon(FontAwesome5Brands.whatsapp, color: Colors.white,),
                  title: Text('WHATSAPP', style: TextStyle(color: Colors.white),),
                  onTap: _launchURL
                ),
                ListTile(
                  leading: Icon(FontAwesome5Brands.facebook, color: Colors.white,),
                  title: Text('FACEBOOK', style: TextStyle(color: Colors.white),),
                  onTap: _launchURL2
                ),
                ListTile(
                  leading: Icon(FontAwesome5Brands.instagram, color: Colors.white,),
                  title: Text('INSTAGRAM', style: TextStyle(color: Colors.white),),
                  onTap: _launchURL3
                ),
                ListTile(
                  leading: Icon(FontAwesome.globe, color: Colors.white,),
                  title: Text('NOSSO SITE', style: TextStyle(color: Colors.white),),
                  onTap: _launchURL4
                ),
                ListTile(
                  leading: Icon(Icons.policy, color: Colors.white,),
                  title: Text('POLÍTICA DE PRIVACIDADE', style: TextStyle(color: Colors.white),),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaPrivacidade()));},
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: 
        BottomNavigationBar(
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: 
                IconButton(
                  icon: Icon(Icons.home, color: Colors.white,), 
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}
                ),
              ) 
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: 
                IconButton(
                  icon: Icon(FontAwesome.globe, color: Colors.white,), 
                  onPressed: _launchURL4
                ),
              ) 
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: 
                IconButton(
                  icon: Icon(Icons.exit_to_app, color: Colors.white,), 
                  onPressed: (){exit(0);},
                ),
              ) 
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'http://wa.me/5512996315501&text=';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'fb://page/1930496377253551/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'instagram://user?username=organize_websites';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'https://organizewebsites.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL5() async {
  const url = 'https://www.freenom.com/pt/index.html?lang=pt';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL6() async {
  const url = 'https://www.awardspace.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}